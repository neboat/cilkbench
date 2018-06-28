#ifndef _PRINTRES_H_
#define _PRINTRES_H_

void print_runtime(Cilk_time *time, int size);
void print_runtime_summary(Cilk_time *time, int size);
void print_space_usage(int *pages_used, int *stacks_used, int size);

#endif  // _PRINTRES_H_
