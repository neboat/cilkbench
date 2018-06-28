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

// C++ headers 
#include <new>
#include <iostream>
#include <string>

#include <cilk/cilk.h>
#include <cilk/reducer.h>

static FILE *fout;
static int top_K = 10;
static const char *extra_params = "-L 8 - T 20";

static cass_table_t *table;
static cass_table_t *query_table;

static int vec_dist_id = 0;
static int vecset_dist_id = 0;

static char path[BUFSIZ];

class ferret_iter; // fwd decl
static ferret_iter *iter_obj = NULL;

// fwd decl
static void do_query(const char *);
static int scan_dir(const char *, char *head);

// decl for the string holder, to hold file path for each iteration
struct str_holder_monoid: cilk::monoid_base<std::string> {
    static void reduce(std::string *left, std::string *right) {
        // NOTE: don't actually care the value, 
        // left->assign(*right);  // NOTE: could use move if C++11 is avail
    }
    static void identity(std::string *p) { 
        new (p) std::string();
    }
};
cilk::reducer<str_holder_monoid> file_path;

struct iter_frame_monoid : cilk::monoid_base<CilkPipeIterFrame *iframe> {
private:
    CilkPipeIterFrame **iframe_list_;
    CilkPipeIterFrame *curr_;
    int next_avail_ind_;
    int outstanding_iter_;
    int buf_size_;

// XXX This is wrong.  These should be inside a reducer type class
// Not in the monoid
public: 
    // create a list of iter frames 
    iter_frame_monoid() : outstanding_iter_(1), next_avail_ind_(1) {
        iframe_list_ = Cilk_cilk2c_create_and_init_iter_frames(&buf_size_);
        curr_ = iframe_list_[0];
    }

    CilkPipeIterFrame * get_next_avail_frame() {
        return curr_;
    }

    // When steal occur, move to the next index
    static void* allocate(size_t s) const { 
        // XXX: Check for pedigree to ensure it's called serially
        curr_ = iframe_list[next_avail_ind_]; 
        next_avail_ind_++;
        if(next_avail_ind_ == buf_size_) 
            next_avail_ind_ = 0;
    }
    static void reduce(std::string *left, std::string *right) {
    }
    static void identity(CilkPipeIterFrame *p) { 
        
    }
};

// NOTE: This is meant to be a library
// COUNTER_T type must overload operator ++, =, and > 
// It must also provide an initial and end value that can be used to represent 
// the initial stage and one past the final stage.
template<typename counter_t, typename... args> 
class pipe_iter {

private:
    counter_t counter_;
    counter_t end_val_;

public:
    pipe_iter(counter_t init_val, counter_t end_val): 
        counter_(init_val), end_val_(end_val) { }
    ~pipe_iter() { }

    // XXX: Need to use a reducer to hook up with the left guy as prev
    void iter_wait() {
        counter_++;
        // if(left->counter_ <= counter_) { // XXX how do we get left?
            // suspend ... 
        // }
    }

    // NOTE: simply increment the counter and return
    void iter_continue() {
        counter_++;
    }

    inline void iter_end() {
        counter_ = end_val_;
    }

    // XXX: Do nothing for now; need to sync all iterations 
    inline void sync_all() {
    }

    inline void setup_iter() {
        
    }

    virtual void iter_body(args... parameters) = 0;
};

// NOTE: declaring the specialized iter object for this program
// Need to use public inheritance to allow invoking of pipe_iter's public 
// member functions via a ferret_iter object 
class ferret_iter : public pipe_iter<uint32_t, const char *> {
public:
    ferret_iter() : pipe_iter(0, 0xffffffff) { std::cout << "Calling ctor.\n"; }
    void iter_body(const char *fpath) {
        // XXX: Calling parent directly here, although if we had a real 
        // compiler, this would be done in the spawn helper
        pipe_iter::setup_iter(); 
        // XXX actually detach at this point

        do_query(fpath);
    }
};


/* ------- The Helper Functions ------- */

static int dir_helper(const char *dir, char *head) {
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

static void
spawn_iter_body_helper(ferret_iter *iter_obj, 
                       cilk::reducer<str_holder_monoid> *file_path) {

    // XXX touch the reducer in the iter obj here
    iter_obj->access_iframe_list();

    // return the current frame if no steal has occured
    // return the next avail frame if steals have occured
    // return null if this should suspend
    CilkPipeIterFrame *iframe = iter_obj->get_next_avail_frame();
    __cilkrts_stack_frame *sf = iframe;

    if(iframe == NULL) {
        sf = alloca( sizeof(__cilkrts_stack_frame) );
        if(!__builtin_setjmp(sf->ctx)) {
            goBackToRuntime(ws);
        } else { // this is where we resume for reaching throttling limit
            iframe = iter_obj->get_next_avail_frame();
            assert(iframe != NULL);
            sf = iframe;
        }
    }
     
    __cilkrts_enter_frame_fast(sf);
    __cilkrts_detach(sf);

    do_query(iframe, (*file_path)().c_str());

    __cilkrts_pop_frame(sf); 
    if(sf->flags) {
        __cilkrts_leave_frame(sf);
    }
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
        // do_query(path);
        // NOTE; copy the content of path into the view of file_path
        file_path().assign(path);
        // XXX call this
        // cilk_spawn_async iter_obj->iter_body(file_path().c_str()); 
        // gets compiled into this:
        spwan_iter_body_helper(iter_obj, file_path);
        // cilk_sync;  // XXX: Is this really necessary?

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

    iter_obj->iter_wait();

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

    iter_obj->iter_end();
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
	table = query_table = (cass_table_t *) cass_reg_get(&env->table, i);
	i = table->parent_id;
	if (i >= 0) {
		query_table = (cass_table_t *) cass_reg_get(&env->table, i);
	}
	if (query_table != table) {
        cass_table_load(query_table);
    }
	cass_map_load(query_table->map);
	cass_table_load(table);

	image_init(argv[0]);

    // NOTE; create the iter object
    ferret_iter iter_obj_;
    iter_obj = &iter_obj_;

	stimer_tick(&tmr);
	scan(query_dir);
	stimer_tuck(&tmr, "QUERY TIME");

    // XXX; this is where all iters should return; implicitly called 
    // when the object is destructed; how do we implement this? 
    // Can't reuse cilk_sync 
    iter_obj_.sync_all();

	ret = cass_env_close(env, 0);
	if(ret != 0) { 
        printf("ERROR: %s\n", cass_strerror(ret)); return 0; 
    }

	cass_cleanup();
	image_cleanup();
	fclose(fout);

	return 0;
}

