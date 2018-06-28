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

#include "cilkscreen_piper.h"


static FILE *fout;
static int top_K = 10;
static const char *extra_params = "-L 8 - T 20";

static cass_table_t *table;
static cass_table_t *query_table;

static int vec_dist_id = 0;
static int vecset_dist_id = 0;

static const char *starting_dir;
static char path[BUFSIZ];


typedef struct stack_data {
    DIR *dir;
    char* head;
    struct stack_data *next;
} stack_data_t;

typedef struct stack {
    stack_data_t *head;
} my_stack_t;

static inline int stack_is_empty(my_stack_t *const stack) {
    return stack->head == NULL;
}

static inline void stack_push(my_stack_t *const stack, stack_data_t *data) {
    data->next = stack->head;
    stack->head = data;
}

static inline stack_data_t * stack_pop(my_stack_t *const stack) {
    stack_data_t *ret = NULL;
    if(stack->head) {
        ret = stack->head; 
        stack->head = stack->head->next;
    }
    return ret;
}

static inline stack_data_t * stack_peek_top(my_stack_t *const stack) {
    return stack->head; 
}

static inline void 
enter_directory(my_stack_t *const dir_stack, const char *dir, char *head) {

    DIR *pd = opendir(dir);
    assert(pd != NULL);
    stack_data_t *data = (stack_data_t *) malloc(sizeof(stack_data_t));
    data->dir = pd;
    data->head = head;
    stack_push(dir_stack, data);
}

static inline void leave_directory(my_stack_t *const dir_stack) {
    stack_data_t *data = stack_pop(dir_stack);
    DIR *pd = data->dir;
    if(pd != NULL) {
        closedir(pd);
    }
    data->head[0] = '\0';
    free(data);
}

static const char *
dispatch( my_stack_t *const dir_stack, const char *dir, char *head); 

static const char * read_next_item(my_stack_t *const dir_stack) {
    if( stack_is_empty(dir_stack) )
        return 0;

    struct dirent *ent = NULL;
    struct stack_data *data = stack_peek_top(dir_stack);
    ent = readdir(data->dir);
    if(ent == NULL) {
        data = NULL;
        leave_directory(dir_stack);
        return read_next_item(dir_stack);
    } else {
        return dispatch(dir_stack, ent->d_name, data->head);
    }
}

static const char *
dispatch(my_stack_t *const dir_stack, const char *dir, char *head) {
    if( dir[0] == '.' && 
            (dir[1] == 0 || (dir[1] == '.' && dir[2] == 0)) ) {
        return read_next_item(dir_stack); 
    }

    struct stat st;
    strcat(head, dir);
    int ret = stat(path, &st);
    assert(ret == 0);

    if( S_ISREG(st.st_mode) ) {
        size_t len = strlen(path);
        char *file_path = (char *) malloc( sizeof(char)*(len+1) );
        strncpy(file_path, path, len);
        file_path[len] = head[0] = '\0';
        return file_path;
    } else if( S_ISDIR(st.st_mode) ) {
        strcat(head, "/");
        enter_directory(dir_stack, path, head + strlen(head));
        return read_next_item(dir_stack);
    }
}

static const char * scan_dir_and_get_next_file(my_stack_t *const dir_stack) {
    static int first_call = 1;

    if(first_call) {
        first_call = 0;

        path[0] = 0;
        if( strcmp(starting_dir, ".") == 0 ) {
            enter_directory(dir_stack, ".", path);
            return read_next_item(dir_stack);
        } else {
            return dispatch(dir_stack, starting_dir, path);
        }
    } else {
        return read_next_item(dir_stack);
    }
}

static void do_query(const char *name, cass_result_t *const result) {

	cass_dataset_t ds;
	cass_query_t query;
	cass_result_t *candidate;

	unsigned char *HSV, *RGB;
	unsigned char *mask;
	int width, height, nrgn;
	int r;

	r = image_read_rgb_hsv(name, &width, &height, &RGB, &HSV);
	assert(r == 0);

	image_segment(&mask, &nrgn, RGB, width, height);

	image_extract_helper(HSV, mask, width, height, nrgn, &ds);

	free(HSV);
	free(RGB);
	free(mask);

	memset(&query, 0, sizeof(query));
	query.flags = CASS_RESULT_LISTS | CASS_RESULT_USERMEM;

	query.dataset = &ds;
	query.vecset_id = 0;
	query.vec_dist_id = vec_dist_id;
	query.vecset_dist_id = vecset_dist_id;
	query.topk = 2*top_K;
	query.extra_params = extra_params;

	cass_result_alloc_list(result, ds.vecset[0].num_regions, query.topk);
	cass_table_query(table, &query, result);

	memset(&query, 0, sizeof(query));
	query.flags = CASS_RESULT_LIST | CASS_RESULT_USERMEM | CASS_RESULT_SORT;
	query.dataset = &ds;
	query.vecset_id = 0;
	query.vec_dist_id = vec_dist_id;
	query.vecset_dist_id = vecset_dist_id;
	query.topk = top_K;
	query.extra_params = NULL;

	candidate = cass_result_merge_lists(result, 
                    (cass_dataset_t *)query_table->__private, 0);
	query.candidate = candidate;

	cass_result_free(result);

	cass_result_alloc_list(result, 0, top_K);
	cass_table_query(query_table, &query, result);

	cass_result_free(candidate);
	free(candidate);
	cass_dataset_release(&ds);
}

static void output_result(const char *name, cass_result_t *result) {

	fprintf(fout, "%s", name);
	ARRAY_BEGIN_FOREACH(result->u.list, cass_list_entry_t p) {
		char *obj = NULL;
		if (p.dist == HUGE) continue;
		cass_map_id_to_dataobj(query_table->map, p.id, &obj);
		assert(obj != NULL);
		fprintf(fout, "\t%s:%g", obj, p.dist);
	} ARRAY_END_FOREACH;
	fprintf(fout, "\n");

	cass_result_free(result);
}

int main(int argc, char *argv[]) {

    char *db_dir = NULL;
    const char *table_name = NULL;
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
    starting_dir = argv[3];
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

    _Cilk_spawn printf("Force inside Cilk region.\n");

    stimer_tick(&tmr);

    my_stack_t dir_stack;
    dir_stack.head = NULL;

    const char * img_path;
    int iter_count = 0;
    
    __cilkscreen_pipe_while_enter("ferret_pipeline");
    while((img_path = scan_dir_and_get_next_file(&dir_stack)) != 0) {

        __cilkscreen_pipe_iter_enter(iter_count);
        // pipe_stage_continue;
        __cilkscreen_pipe_continue(1);
        cass_result_t result;
        do_query(img_path, &result);
        // pipe_stage_wait; 
        __cilkscreen_pipe_wait(2);
        output_result(img_path, &result);
        free((void *)img_path);

        __cilkscreen_pipe_iter_leave(iter_count);
        iter_count++;
    }
    __cilkscreen_pipe_while_leave("ferret_pipeline");

    stimer_tuck(&tmr, "QUERY TIME");

    _Cilk_sync;

    ret = cass_env_close(env, 0);
    if(ret != 0) { 
        printf("ERROR: %s\n", cass_strerror(ret)); return 0; 
    }

    cass_cleanup();
    image_cleanup();
    fclose(fout);

    return 0;
}
