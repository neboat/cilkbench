#include <stdio.h>
#include <stdlib.h>
#include <cilk.h>

static void 
print_runtime_helper(Cilk_time *tm_elapsed, int size, int summary) {

    int i; 
    double time[size], total = 0;
    double ave, std_dev = 0, dev_sq_sum = 0;

    for (i = 0; i < size; i++) {
        time[i] = Cilk_wall_time_to_sec (tm_elapsed[i]);
        if(!summary) {
            printf ("Running time %d: %4lf s\n", (i + 1), time[i]);
        }
        total += time[i];
    }
    ave = total / size;
    
    if( size > 1 ) {
        for (i = 0; i < size; i++) {
            dev_sq_sum += ( (ave - time[i]) * (ave - time[i]) );
        }
        std_dev = dev_sq_sum / (size-1);
    }

    printf( "Running time average: %4lf s\n", ave );
    if( std_dev != 0 ) {
        printf( "Std. dev: %4lf s (%2.3f\%)\n", std_dev, 100.0*std_dev/ave );
    }
}

void print_runtime(Cilk_time *tm_elapsed, int size) {
    print_runtime_helper(tm_elapsed, size, 0);
}

void print_runtime_summary(Cilk_time *tm_elapsed, int size) {
    print_runtime_helper(tm_elapsed, size, 1);
}

void print_max_space_usage(int pages_used, int stacks_used) {

    printf( "Max pages used: %d.\n", pages_used );
    if(stacks_used >= 0) {
        printf( "Max stacks used: %d.\n", stacks_used );
    } else {
        printf( "Max stacks used: stats N/A.\n" );
    }
}

void print_space_usage(int *pages_used, int *stacks_used, int size) {
    int i; 
    int pages, stacks;
    int max_pages_used = 0, max_stacks_used = 0;

    for (i = 0; i < size; i++) {
        pages = pages_used[i];
        printf ("Pages used %d: %d.\n", (i+1), pages);
        if( max_pages_used < pages ) {
            max_pages_used = pages;
        }
    }   
    printf( "Max pages used: %d.\n", max_pages_used );
        
    for (i = 0; i < size; i++) {
        stacks = stacks_used[i];
        printf ("Stacks used %d: %d.\n", (i+1), stacks);
        if( max_stacks_used < stacks ) {
            max_stacks_used = stacks;
        }
    }
    printf( "Max stacks used: %d.\n", max_stacks_used );

}

