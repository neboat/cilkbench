#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <math.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <unistd.h>
#include <pthread.h>
#include <cass.h>

extern "C" {
#include <cass_timer.h>
#include <../image/image.h>
}

#include "tbb/task_scheduler_init.h"
#include "tbb/pipeline.h"

#include <stack>

// #define PIPELINE_WIDTH 1024


struct load_data {
	int width, height;
	char *name;
	unsigned char *HSV, *RGB;
};

struct seg_data {
	int width, height, nrgn;
	char *name;
	unsigned char *mask;
	unsigned char *HSV;
};

struct extract_data {
	cass_dataset_t ds;
	char *name;
};

struct vec_query_data {
	char *name;
	cass_dataset_t *ds;
	cass_result_t result;
};

struct rank_data {
	char *name;
	cass_dataset_t *ds;
	cass_result_t result;
};

class Read : public tbb::filter {
private:
	struct stack_data {
		DIR *dir;
		char* head;
	};
	
	std::stack<stack_data*> stack;
	const char *starting_dir;
	char path[ BUFSIZ ];
	int first_call;
	int *cnt_enqueue;
public:
	Read( const char* starting_dir_, int *cnt_enqueue_ ) :
		filter( tbb::filter::serial ),
		starting_dir( starting_dir_ ),
		first_call(1),
		cnt_enqueue( cnt_enqueue_ )
	{};

	virtual ~Read() {
		// make sure the stack is empty
		while( ! stack.empty() ) {
			struct stack_data *x = stack.top();
			stack.pop();
			delete x;
		}
	};

	void* operator()( void* ) {
		if( first_call ) {
			// special handling at the start
			first_call = 0;
			path[0] = 0; // empty the path buffer
			if( ! strcmp( starting_dir, "." ) ) {
				// if they used the special directory notation,
				// make sure to enter the current directory before getting an item
				enter_directory( ".", path );
				return read_next_item();
			} else {
				// otherwise, we can just figure out what to do with the path provided
				return dispatch( starting_dir, path );
			}
		} else {
			// otherwise, just get the next item
			return read_next_item();
		}
	};
private:
	// find the next item
	load_data* read_next_item() {
		// if the stack is empty, we are done
		if( stack.empty() )
			return NULL;
		// examine the top of the stack (current directory)
		struct dirent *ent = NULL;
		struct stack_data *data = stack.top();
		// get the next file
		ent = readdir( data->dir );
		if( ent == NULL ) {
			// we've finished the directory! close it and recurse back up the tree
			data = NULL;
			leave_directory();
			return read_next_item();
		} else {
			// figure out what to do with this file
			return dispatch( ent->d_name, data->head );
		}
	};

	// decide what to do with a file
	load_data* dispatch( const char *dir, char *head ) {
		// if one of the special directories, skip
		if( dir[0] == '.' && ( dir[1] == 0 || ( dir[1] == '.' && dir[2] == 0 ) ) )
			return read_next_item(); // i.e. recurse to the next item

		struct stat st;
		// append the file name to the path
		strcat( head, dir );
		assert( stat( path, &st ) == 0 );
		if( S_ISREG( st.st_mode ) )
			// just return the loaded file
			return load_file( path, head );
		else if( S_ISDIR( st.st_mode ) ) {
			// append the path separator
			strcat( head, "/" );
			// enter the directory
			enter_directory( path, head + strlen( head ) );
			// recurse for the next item
			return read_next_item();
		}
		return NULL;
	};

	// enter a directory
	void enter_directory( const char *dir, char *head ) {
		// open the directory
		DIR *pd = opendir(dir);
		assert( pd != NULL );
		// store the data
		struct stack_data *data = new stack_data;
		data->dir = pd;
		data->head = head;
		// push onto the stack
		stack.push( data );
		return;
	};

	// leave the directory (now that we've completed it)
	void leave_directory() {
		// remove the top of the stack
		struct stack_data *data = stack.top();
		stack.pop();
		// close the directory file descriptor
		DIR *pd = data->dir;
		if( pd != NULL )
			closedir( pd );
		// remove the appended file name from the path
		reset_path_head( data->head );
		delete data;
		return;
	};

	// remove the appended part of the path
	void reset_path_head( char *head ) {
		head[0] = 0;
	};

	load_data* load_file( const char *file, char *head ) {
		// initialize the new token
		struct load_data *data = new load_data;
		// copy the file name to the token
		data->name = strdup( file );
		// read in the image - assert checks for errors
		assert( image_read_rgb_hsv( file, &data->width, &data->height, &data->RGB, &data->HSV ) == 0 );
		// reset the path buffer head
		reset_path_head( head );
		// increment enqueued counter
		(*cnt_enqueue)++;
		// return a pointer to the data 
		return data;
	};
};

class SegmentImage : public tbb::filter {
public:
	SegmentImage() :
		filter( tbb::filter::parallel )
	{};

	void* operator()( void* vitem ) {
		struct load_data *load;
		struct seg_data *seg;

		load	= (load_data*) vitem;
		seg	= new seg_data;

		seg->name 	= load->name;
		seg->width 	= load->width;
		seg->height 	= load->height;
		seg->HSV	= load->HSV;
		
		image_segment( &seg->mask, &seg->nrgn, load->RGB, 
                       load->width, load->height );

		delete load->RGB;
		delete load;

		return (void*) seg;
	};
};

class ExtractFeatures : public tbb::filter {
public:
	ExtractFeatures() :
		filter( tbb::filter::parallel )
	{};

	void* operator()( void* vitem ) {
		struct seg_data *seg;
		struct extract_data *extract;

		seg = (seg_data*) vitem;
		assert( seg != NULL );
		extract	= new extract_data;
		extract->name = seg->name;

		image_extract_helper( seg->HSV, seg->mask, seg->width, seg->height, seg->nrgn, &extract->ds );

		delete seg->mask;
		delete seg->HSV;
		delete seg;

		return (void*) extract;
	};
};

class QueryIndex : public tbb::filter {
private:
	int *vec_dist_id, *vecset_dist_id, *top_K;
	cass_table_t *table;
	const char *extra_params;
public:
	QueryIndex( int *vec_dist_id_, int *vecset_dist_id_, int *top_K_,
                cass_table_t *table_, const char *extra_params_ ) :
		filter( tbb::filter::parallel ),
		vec_dist_id( vec_dist_id_ ),
		vecset_dist_id( vecset_dist_id_ ),
		top_K( top_K_ ),
		table( table_ ),
		extra_params( extra_params_ )
	{};

	void* operator()( void* vitem ) {
		struct extract_data *extract;
		struct vec_query_data *vec;
		cass_query_t query;

		extract		= (extract_data*) vitem;
		assert( extract != NULL );
		vec 		= new vec_query_data;
		vec->name 	= extract->name;

		memset( &query, 0, sizeof query );
		query.flags 		= CASS_RESULT_LISTS | CASS_RESULT_USERMEM;
		vec->ds = query.dataset = &extract->ds;
		query.vecset_id 	= 0;
		query.vec_dist_id 	= *vec_dist_id; // pass in
		query.vecset_dist_id	= *vecset_dist_id; // pass in
		query.topk 		= 2 * *top_K; // pass in
		query.extra_params 	= extra_params; // pass in

		cass_result_alloc_list( &vec->result, vec->ds->vecset[0].num_regions, query.topk );

		cass_table_query( table, &query, &vec->result ); // pass in

        // XXX Shouldn't we actually delte this here?
        // delete extract;

		return (void*) vec;
	};
};

class RankCandidates : public tbb::filter {
private:
	int *vec_dist_id, *vecset_dist_id, *top_K;
	cass_table_t* query_table;
public:
	RankCandidates( int *vec_dist_id_, int *vecset_dist_id_, int *top_K_, cass_table_t *query_table_ ) :
		filter( tbb::filter::parallel ),
		vec_dist_id( vec_dist_id_ ),
		vecset_dist_id( vecset_dist_id_),
		top_K( top_K_ ),
		query_table( query_table_ )
	{};

	void* operator()( void* vitem ) {
		struct vec_query_data *vec;
		struct rank_data *rank;
		cass_result_t *candidate;
		cass_query_t query;

		vec 		= (vec_query_data*) vitem;
		assert( vec != NULL );
		rank 		= new rank_data;
		rank->name 	= vec->name;

		query.flags 		= CASS_RESULT_LIST | CASS_RESULT_USERMEM | CASS_RESULT_SORT;
		query.dataset 		= vec->ds;
		query.vecset_id 	= 0;
		query.vec_dist_id 	= *vec_dist_id; // pass in
		query.vecset_dist_id 	= *vecset_dist_id; // pass in
		query.topk 		= *top_K; // pass in
		query.extra_params 	= NULL;

		candidate = cass_result_merge_lists( &vec->result, (cass_dataset_t*) query_table->__private, 0 ); // pass in
		query.candidate = candidate;

		cass_result_alloc_list( &rank->result, 0, *top_K ); // pass in
		cass_table_query( query_table, &query, &rank->result );

		cass_result_free( &vec->result );
		cass_result_free( candidate );
		free( candidate );
		cass_dataset_release( vec->ds );
		free( vec->ds );
		delete vec;

		return (void*) rank;
	};
};

class Write : public tbb::filter {
private:
	FILE *fout;
	cass_table_t *query_table;
	int *cnt_enqueue, *cnt_dequeue;
public:
	Write( FILE *fout_, cass_table_t *query_table_, int *cnt_enqueue_, int *cnt_dequeue_ ) :
		filter( tbb::filter::serial ),
		fout( fout_ ),
		query_table( query_table_ ),
		cnt_enqueue( cnt_enqueue_ ),
		cnt_dequeue( cnt_dequeue_ )
	{};

	void* operator()( void* vitem ) {
		struct rank_data *rank;

		rank = (rank_data*) vitem;
		assert( rank != NULL );

		fprintf( fout, "%s", rank->name ); // pass in

		ARRAY_BEGIN_FOREACH(rank->result.u.list, cass_list_entry_t p)
		{
			char *obj = NULL;
			if (p.dist == HUGE) continue;
			cass_map_id_to_dataobj(query_table->map, p.id, &obj); // pass in
			assert(obj != NULL);
			fprintf(fout, "\t%s:%g", obj, p.dist);
		} ARRAY_END_FOREACH;

		fprintf( fout, "\n" );

		cass_result_free( &rank->result );
		delete rank->name;
		delete rank;

		// add the count printer
		(*cnt_dequeue)++;

		return NULL;
	};
};

int main( int argc, char *argv[] ) {
// Setup 
	tbb::task_scheduler_init init( tbb::task_scheduler_init::deferred );

	stimer_t tmr;

	int ret, i;

	int cnt_enqueue = 0;
	int cnt_dequeue = 0;

	if (argc < 8) {
		printf("%s <database> <table> <query dir> <top K> <n> <out> <depth>\n",
               argv[0]); 
		return 0;
	}

	const char *extra_params = (char *)"-L 8 - T 20";

	cass_env_t *env;
	cass_table_t *table;
	cass_table_t *query_table;

	int vec_dist_id = 0;
	int vecset_dist_id = 0;

	char *db_dir 	= argv[1];
	const char *table_name	= argv[2];
	const char *query_dir 	= argv[3];

	int top_K 	= atoi( argv[4] );
	int nthreads 	= atoi( argv[5] );

	init.initialize( nthreads );

	const char *output_path = argv[6];
	int num_tokens 	= atoi( argv[7] );

	FILE *fout = fopen( output_path, "w" );
	assert( fout != NULL );

	cass_init();

	if( ( ret = cass_env_open( &env, db_dir, 0 ) ) != 0 ) {
		printf( "ERROR: %s\n", cass_strerror( ret ) ); 
		return 0;
	}

	assert( (vec_dist_id = cass_reg_lookup(&env->vec_dist, "L2_float")) >= 0 );
	assert( (vecset_dist_id = cass_reg_lookup(&env->vecset_dist, "emd")) >= 0 );

	i = cass_reg_lookup( &env->table, table_name );
	table = query_table = (cass_table_t *) cass_reg_get( &env->table, i );

	if( (i = table->parent_id) >= 0 ) {
		query_table = (cass_table_t *)cass_reg_get( &env->table, i );
    }
	if( query_table != table ) {
		cass_table_load( query_table );
    }

	cass_map_load( query_table->map );
	cass_table_load( table );

	image_init( argv[0] );

	stimer_tick( &tmr );

    // Create pipeline stages
	Read reader( query_dir, &cnt_enqueue );
	SegmentImage seg;
	ExtractFeatures	ext;
	QueryIndex query( &vec_dist_id, &vecset_dist_id, 
                       &top_K, table, extra_params );
	RankCandidates rank( &vec_dist_id, &vecset_dist_id, &top_K, query_table );
	Write write( fout, query_table, &cnt_enqueue, &cnt_dequeue );
	tbb::pipeline pipe;

	pipe.add_filter( reader );
	pipe.add_filter( seg );
	pipe.add_filter( ext );
	pipe.add_filter( query );
	pipe.add_filter( rank );
	pipe.add_filter( write );

    // Run pipeline
	// pipe.run( PIPELINE_WIDTH );
    pipe.run( num_tokens );

    // Clean up 
	assert( cnt_enqueue == cnt_dequeue );
	pipe.clear();

	stimer_tuck( &tmr, "QUERY TIME" );

	if( ( ret = cass_env_close( env, 0 ) ) != 0 ) {
		printf( "ERROR: %s\n", cass_strerror( ret ) );
		return 0;
	}

	cass_cleanup();
	image_cleanup();
	fclose( fout );

	return 0;
}
