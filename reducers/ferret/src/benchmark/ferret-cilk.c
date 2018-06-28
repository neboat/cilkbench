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


#define SERIALIZATION 0


#if SERIALIZATION == 0
#include <cilk.h>
#include <tlmm-cilk2c.h>
#include "cstack.h"
#include "printres.h"
#endif


static FILE *fout;
static int top_K = 10;
static const char *extra_params = "-L 8 - T 20";

static cass_table_t *table;
static cass_table_t *query_table;

static int vec_dist_id = 0;
static int vecset_dist_id = 0;

static const char *starting_dir;
static char path[BUFSIZ];


/* ------- The Helper Functions and related struct ------- */
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

// enter a directory
static inline void 
enter_directory(my_stack_t *const dir_stack, const char *dir, char *head) {

    DIR *pd = opendir(dir); // open the directory
    assert(pd != NULL);
    // store the data
    stack_data_t *data = (stack_data_t *) malloc(sizeof(stack_data_t));
    data->dir = pd;
    data->head = head;
    stack_push(dir_stack, data);
}

// leave the directory (now that we've completed it)
static inline void leave_directory(my_stack_t *const dir_stack) {
    stack_data_t *data = stack_pop(dir_stack);
    // close the directory file descriptor
    DIR *pd = data->dir;
    if(pd != NULL) {
        closedir(pd);
    }
    // remove the appended file name from the path
    data->head[0] = '\0';
    free(data);
}

// forward decl
static const char *
dispatch(my_stack_t *const dir_stack, const char *dir, char *head); 

// find the next item
static const char * read_next_item(my_stack_t *const dir_stack) {
    // if the stack is empty, we are done
    if( stack_is_empty(dir_stack) )
        return 0;

    // examine the top of the stack (current directory)
    struct dirent *ent = NULL;
    struct stack_data *data = stack_peek_top(dir_stack);
    // get the next file
    ent = readdir(data->dir);
    if(ent == NULL) {
        // we've finished the directory! close it and recurse back up the tree
        data = NULL;
        leave_directory(dir_stack);
        return read_next_item(dir_stack);
    } else {
        // figure out what to do with this file
        return dispatch(dir_stack, ent->d_name, data->head);
    }
}

// decide what to do with a file
static const char *
dispatch(my_stack_t *const dir_stack, const char *dir, char *head) {
    // if one of the special directories, skip
    if( dir[0] == '.' && 
            (dir[1] == 0 || (dir[1] == '.' && dir[2] == 0)) ) {
        // recurse to the next item
        return read_next_item(dir_stack); 
    }

    struct stat st;
    // append the file name to the path
    strcat(head, dir);
    int ret = stat(path, &st);
    assert(ret == 0);

    if( S_ISREG(st.st_mode) ) {
        // just return the loaded file
        size_t len = strlen(path);
        char *file_path = (char *) malloc( sizeof(char)*(len+1) );
        strncpy(file_path, path, len);
        file_path[len] = head[0] = '\0';
        return file_path;
    } else {
	assert( S_ISDIR(st.st_mode) ); 
        // append the path separator
        strcat(head, "/");
        // enter the directory
        enter_directory(dir_stack, path, head + strlen(head));
        // recurse for the next item
        return read_next_item(dir_stack);
    }
}

/* ------ The Stages ------ */
static const char * scan_dir_and_get_next_file(my_stack_t *const dir_stack) {
    static int first_call = 1;

    if(first_call) {
        // special handling at the start
        first_call = 0;

        path[0] = 0; // empty the path buffer
        if( strcmp(starting_dir, ".") == 0 ) {
            // if they used the special directory notation,
            // make sure to enter the current directory before getting an item
            enter_directory(dir_stack, ".", path);
            return read_next_item(dir_stack);
        } else {
            // otherwise, we can figure out what to do with the path provided
            return dispatch(dir_stack, starting_dir, path);
        }
    } else {
        // otherwise, just get the next item
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

	cass_result_alloc_list(result, ds.vecset[0].num_regions, query.topk);
	cass_table_query(table, &query, result);

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
	candidate = cass_result_merge_lists(result, 
                    (cass_dataset_t *)query_table->__private, 0);
	query.candidate = candidate;

	cass_result_free(result);

	cass_result_alloc_list(result, 0, top_K);
    // this refines the query results and only search within what's in
    // candidates (see manual/ferret.pdf sec 3.12)
	cass_table_query(query_table, &query, result);

    // we can free the candidate now since our answer is in the result struct
	cass_result_free(candidate);
	free(candidate);
	cass_dataset_release(&ds);
}

// this is the the last (serial) stage in TBB
// print out the results
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

#if SERIALIZATION == 0
// these are needed for pipe_for
#define SUSPEND_WAIT 1000
__thread int wait = 0;

extern int ZERO;   // need this for ever Cilk function

typedef struct __ferret_pipe_iter_context {
    const char *img_path;
    uint32_t stage;
    cass_result_t result;
} PipeIterCtx;

static CilkPipeIterFrame * __ferret_iter(CilkPipeIterFrame *iframe) {

    uint32_t pstage = INIT_STAGE_VAL;
    PIPE_ITER_PREAMBLE

    switch(iframe->sframe.entry) {
        case 1: goto _cilk_sync1;
    }

    // pipe_stage_continue(0);  or PNEXT(0); so no initial check left

    PipeIterCtx *ctx = (PipeIterCtx *)iframe->stack_context;
    const char *img_path = ctx->img_path;
    uint32_t stage = INIT_STAGE_VAL;  // XXX always need this local var

    // user-defined iter-local var --- if the variable is alive across 
    // an SNEXT, it would need to be stored in the PipeIterCtx
    do_query(img_path, &(ctx->result));

    {   // pipe_stage_wait(0);  or SNEXT(0);
        stage = stage + 1; // increment the stage counter
        iframe->stage = stage;
        // if the prev iter has some stage val larger than this stage
        // simply continue without checking left
        if(pstage > stage) goto skip;

        CilkPipeIterFrame *const prev = iframe->left;

        pstage = prev->stage;
        if (pstage <= stage) {
            for (wait = 0; wait < SUSPEND_WAIT; ++wait) { }

            pstage = prev->stage;
            if(pstage <= stage) {
                // Cilk_fence(); // flush out the status for the left 
                iframe->status = SUSPENDING; // Now prepare to suspend ... 
                Cilk_fence(); // flush out the status for the left 

                pstage = prev->stage;
                if (pstage <= stage) {  // check left again
                    // Cilk_exit_state(tls_ws, STATE_CHECK_LEFT);
                    // check left again; the steal protocol guarantees that, 
                    // once this frame is stolen again, it may continue.
                    iframe->sframe.entry = 1;
                    ctx->stage = stage; // nothing else changed 
                    // go back to runtime and suspend this frame
                    Cilk_cilk2c_suspend_iter_frame(ws, iframe);
                } else {
                    iframe->status = ACTIVE;
                }
            }
        }
        if(0) {
        _cilk_sync1:
            RESTORE_TLS_WS();
            ctx = (PipeIterCtx *)iframe->stack_context;
            img_path = ctx->img_path;  // Restore stack contents
        }
    }
skip:;
    output_result(img_path, &(ctx->result));
    free((void *)img_path);

    // END_ITER ... pipe_end_iter()?
    iframe->stage = SENTINAL_STAGE_VAL; 
    Cilk_fence();
    
    Cilk_cilk2c_before_return_pipe_iter(ws, iframe);

    return iframe;
}

static void __ferret_pipe_for(my_stack_t *const dir_stack) {
    PIPE_PREAMBLE;

    switch(cilk_frame->entry) {
        case 1: goto _cilk_sync1;
        case 2: goto _cilk_sync2;
    }

    // initialization that needs to be done when this function is first invoked 
    Cilk_cilk2c_create_and_init_pipe_iter_frames(ws, pipe_frame,
                                                 sizeof(PipeIterCtx),
                                                 __ferret_iter);
    CilkPipeIterFrame *iframe =
        pipe_frame->iframe_buffer[pipe_frame->buf_index];
    pipe_frame->buf_index =
        (pipe_frame->buf_index + 1) % pipe_frame->iframe_buf_size;
    iframe->status = ACTIVE; // set it to be active

    const char * img_path;
    while((img_path = scan_dir_and_get_next_file(dir_stack)) != 0) {

        iframe->stage = INIT_STAGE_VAL;
        iframe->sframe.entry = 0;
        iframe->iteration = pipe_frame->right_most_iter++;
        ((PipeIterCtx *)iframe->stack_context)->img_path = img_path;

        PRE_SPAWN_ITER(1)
        CilkPipeIterFrame *tmp = __ferret_iter(iframe);
        // explicit POST_SPAWN w/ special things for pipe_for
        POP_ITER_FRAME(tmp);

        if(0) {
        _cilk_sync1:
            stolen = 1;
            CLOBBER_CALLEE_SAVED_REGS();
            RESTORE_TLS_WS();
            uint32_t buf_index = pipe_frame->buf_index;
            if( (buf_index+1) == pipe_frame->iframe_buf_size) {
                pipe_frame->buf_index = 0;
            } else {
                pipe_frame->buf_index = buf_index + 1;
            }
            iframe = pipe_frame->iframe_buffer[buf_index];
            iframe->status = ACTIVE; // set it to be active
        }
    }
    CILK_SYNC(2);
    
    // Have to free frames in iframe_buffer
    for (int i = 0; i < pipe_frame->iframe_buf_size; ++i) {
        CilkPipeIterFrame *iframe = pipe_frame->iframe_buffer[i];
        // the stack context is reused and only free at the end of pipe_for 
        Cilk_internal_free_fast(ws, iframe->stack_context, sizeof(PipeIterCtx));
        Cilk_destroy_frame_fast(ws, &(iframe->sframe));
    }
    // Have to free the iframe_buffer itself
    Cilk_internal_free_fast(ws, pipe_frame->iframe_buffer,
        sizeof(CilkPipeIterFrame *) * pipe_frame->iframe_buf_size);
    Cilk_cilk2c_before_return(ws, cilk_frame);
}
#endif  // SERIALIZATION == 0

int cilk_main(int argc, char *argv[]) {

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

    // initialize the DB
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

    my_stack_t dir_stack;
    dir_stack.head = NULL;

#if SERIALIZATION
/* Would like to do this, but this shares len, and I am not sure whether 
   it's doable by the compiler
    size_t volatile len = 0;
    do {   // pipe_for
        char img_path[BUFSIZ];
        img_path[0] = '\0';
        len = scan_dir_and_get_next_file(&dir_stack, img_path);
        // pipe_stage_continue(0);  or PNEXT(0);
        if(len != 0) {
            cass_result_t result;
            do_query(img_path, &result);
            // pipe_stage_wait(0);  or SNEXT(0);
            output_result(img_path, &result);
        }
    } while(len != 0);
*/
    const char * img_path;
    while((img_path = scan_dir_and_get_next_file(&dir_stack)) != 0) {
        // pipe_stage_continue(0);  or PNEXT(0);
        cass_result_t result;
        do_query(img_path, &result);
        // pipe_stage_wait(0);  or SNEXT(0);
        output_result(img_path, &result);
        free((void *)img_path);
    }
#else 
    __ferret_pipe_for(&dir_stack);
#endif

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

