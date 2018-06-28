/* AUTORIGHTS
Copyright (C) 2007 Princeton University
      
This file is part of Ferret Toolkit.

Ferret Toolkit is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software Foundation,
Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
*/
#include <stdio.h>
#include <math.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <unistd.h>
#include <cass.h>
#include <cass_stat.h>
#include <cass_timer.h>
#include <../image/image.h>


static FILE *fout;
static int top_K = 10;
static const char *extra_params = "-L 8 - T 20";

static cass_table_t *table;
static cass_table_t *query_table;

static int vec_dist_id = 0;
static int vecset_dist_id = 0;


/* ------- The Helper Functions ------- */
static char path[BUFSIZ];

static void do_query(const char *);
static int scan_dir(const char *, char *head);

/**
 * path: the whole absolute path
 * dir:  the whole path for the dir that we are opening
 * head: pointer pointing into the last part of the path string
 **/
static int dir_helper(char *dir, char *head) {
	DIR *pd = NULL;
	struct dirent *ent = NULL;
	int result = 0;
	pd = opendir(dir);
	if (pd == NULL) goto except;
	for (;;) {
		ent = readdir(pd);
		if (ent == NULL) break;
		if (scan_dir(ent->d_name, head) != 0) return -1;
	}
	goto final;

except:
	result = -1;
	perror("Error:");
final:
	if (pd != NULL) closedir(pd);
	return result;
}


/**
 * path: the whole absolute path
 * entry_name: the name of the entry that we are scanning 
 *             (only the name, not the basename)
 * head: pointer pointing into the last part of the path string
 **/
static int scan_dir(const char *entry_name, char *head) {

	struct stat st;
	int ret;
	/* test for . and .. */
	if (entry_name[0] == '.') {
		if (entry_name[1] == 0) return 0;
		else if (entry_name[1] == '.') {
			if (entry_name[2] == 0) return 0;
		}
	}

	/* append the name to the path */
	strcat(head, entry_name);
	ret = stat(path, &st);
	if (ret != 0) {
		perror("Error:");
		return -1;
	}
    // S_ISREG -- check if this is a regular file 
	if(S_ISREG(st.st_mode)) {
        do_query(path);
    } else if(S_ISDIR(st.st_mode)) {
		strcat(head, "/");
		dir_helper(path, head + strlen(head));
	}
	/* removed the appended part */
	head[0] = 0;
	return 0;
}


/* ------ The Stages ------ */
static void scan(const char *query_dir) {
	const char *dir = query_dir;

	path[0] = 0;

	if(strcmp(dir, ".") == 0) {
		dir_helper(".", path);
	} else {
		scan_dir(dir, path);
	}
}

static void do_query(const char *name) {

	cass_dataset_t ds;
	cass_query_t query;
	cass_result_t result;
	cass_result_t *candidate;

	unsigned char *HSV, *RGB;
	unsigned char *mask;
	int width, height, nrgn;
	int r;

    // this is the first (serial) stage in TBB
	r = image_read_rgb_hsv(name, &width, &height, &RGB, &HSV);
	assert(r == 0);

    // this is the second (parallel) stage in TBB
	image_segment(&mask, &nrgn, RGB, width, height);

    // this is the third (parallel) stage in TBB
	image_extract_helper(HSV, mask, width, height, nrgn, &ds);

	/* free image & map */
	free(HSV);
	free(RGB);
	free(mask);

    // this is the fourth (parallel) stage in TBB
	memset(&query, 0, sizeof(query));
	query.flags = CASS_RESULT_LISTS | CASS_RESULT_USERMEM;

	query.dataset = &ds;
	query.vecset_id = 0;
	query.vec_dist_id = vec_dist_id;
	query.vecset_dist_id = vecset_dist_id;
	query.topk = 2*top_K;
	query.extra_params = extra_params;

	cass_result_alloc_list(&result, ds.vecset[0].num_regions, query.topk);
	cass_table_query(table, &query, &result);

    // this is the fifth (parallel) stage in TBB
	memset(&query, 0, sizeof(query));
    // query in the vector-level (see manual/ferret.pdf, sec 3.12)
	query.flags = CASS_RESULT_LIST | CASS_RESULT_USERMEM | CASS_RESULT_SORT;
	query.dataset = &ds;
	query.vecset_id = 0;
	query.vec_dist_id = vec_dist_id;
	query.vecset_dist_id = vecset_dist_id;
	query.topk = top_K;
	query.extra_params = NULL;

    // merge result lists between src (result) and dest 
    // (query_table->__private), and return the merged results; 
    // dest is only read but not written.
	candidate = cass_result_merge_lists(&result, 
                    (cass_dataset_t *)query_table->__private, 0);
	query.candidate = candidate;

	cass_result_free(&result);

	cass_result_alloc_list(&result, 0, top_K);
    // this refines the query results and only search within what's in
    // candidates (see manual/ferret.pdf sec 3.12)
	cass_table_query(query_table, &query, &result);

    // we can free the candidate now since our answer is in the result struct
	cass_result_free(candidate);
	free(candidate);
	cass_dataset_release(&ds);

    // this is the the last (serial) stage in TBB
    // print out the results
	fprintf(fout, "%s", name);
	ARRAY_BEGIN_FOREACH(result.u.list, cass_list_entry_t p) {
		char *obj = NULL;
		if (p.dist == HUGE) continue;
		cass_map_id_to_dataobj(query_table->map, p.id, &obj);
		assert(obj != NULL);
		fprintf(fout, "\t%s:%g", obj, p.dist);
	} ARRAY_END_FOREACH;
	fprintf(fout, "\n");

	cass_result_free(&result);
}

int main(int argc, char *argv[]) {

    char *db_dir = NULL;
    const char *table_name = NULL;
    const char *query_dir = NULL;
    const char *output_path = NULL;
    cass_env_t *env;

    stimer_t tmr;
	int ret, i;

	if (argc < 6) {
		printf("%s <database> <table> <query dir> <top K> <out>\n",
               argv[0]); 
		return 0;
	}
	db_dir = argv[1];
	table_name = argv[2];
	query_dir = argv[3];
	top_K = atoi(argv[4]);

	output_path = argv[5];
	fout = fopen(output_path, "w");
	assert(fout != NULL);

	cass_init();

	ret = cass_env_open(&env, db_dir, 0);
	if (ret != 0) { printf("ERROR: %s\n", cass_strerror(ret)); return 0; }

	vec_dist_id = cass_reg_lookup(&env->vec_dist, "L2_float");
	assert(vec_dist_id >= 0);

	vecset_dist_id = cass_reg_lookup(&env->vecset_dist, "emd");
	assert(vecset_dist_id >= 0);

	i = cass_reg_lookup(&env->table, table_name);
	table = query_table = cass_reg_get(&env->table, i);
	i = table->parent_id;
	if (i >= 0) {
		query_table = cass_reg_get(&env->table, i);
	}
	if (query_table != table) {
        cass_table_load(query_table);
    }
	cass_map_load(query_table->map);
	cass_table_load(table);

	image_init(argv[0]);

	stimer_tick(&tmr);
	scan(query_dir);
	stimer_tuck(&tmr, "QUERY TIME");

	ret = cass_env_close(env, 0);
	if(ret != 0) { 
        printf("ERROR: %s\n", cass_strerror(ret)); return 0; 
    }

	cass_cleanup();
	image_cleanup();
	fclose(fout);

	return 0;
}

