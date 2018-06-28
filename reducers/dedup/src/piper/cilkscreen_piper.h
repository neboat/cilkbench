#ifndef __CILKSCREEN_PIPER_H_
#define __CILKSCREEN_PIPER_H_

//#include <limits>
// Maximum value we should use for a stage.
//const int64_t PIPER_MAX_STAGE = std::numeric_limits<int64_t>::max() - 2;

const int64_t PIPER_MAX_STAGE = 12490891892;

// Macros for metadata needed for race detection of a pipe_while.


#define __cilkscreen_force_runtime_start() \
    do {                                   \
    _Cilk_for(int i = 0; i < 10; ++i) { }   \
    } while (0)

#define __cilkscreen_pipe_while_enter(loop_name)                      \
    do {                                                              \
      __notify_zc_intrinsic((void*)"cilk_pipe_enter_begin", 0);       \
      __notify_zc_intrinsic((void*)"cilk_pipe_enter_end", loop_name); \
    } while (0)

#define __cilkscreen_pipe_while_leave(loop_name)                        \
    do {                                                                \
      __notify_zc_intrinsic((void*)"cilk_pipe_leave_begin", loop_name); \
      __notify_zc_intrinsic((void*)"cilk_pipe_leave_end", loop_name);   \
    } while (0)

#define __cilkscreen_pipe_iter_enter(iter)                              \
    do {                                                                \
        int64_t data[1] = {(iter)};                                     \
      __notify_zc_intrinsic((void*)"cilk_pipe_iter_enter_begin", data); \
      __notify_zc_intrinsic((void*)"cilk_pipe_iter_enter_end", data);   \
    } while (0)

#define __cilkscreen_pipe_iter_leave(iter)                              \
    do {                                                                \
        int64_t data[1] = {(iter)};                                     \
      __notify_zc_intrinsic((void*)"cilk_pipe_iter_leave_begin", data); \
      __notify_zc_intrinsic((void*)"cilk_pipe_iter_leave_end", data);   \
    } while (0)

#define __cilkscreen_pipe_wait(stage)                             \
    do {                                                          \
      int64_t data[1] = { (stage)  };                             \
      __notify_zc_intrinsic((void*)"cilk_pipe_wait_begin", data); \
      __notify_zc_intrinsic((void*)"cilk_pipe_wait_end", data);   \
    } while (0)

#define __cilkscreen_pipe_continue(stage)                             \
    do {                                                              \
      int64_t data[1] = { (stage)  };                                 \
      __notify_zc_intrinsic((void*)"cilk_pipe_continue_begin", data); \
      __notify_zc_intrinsic((void*)"cilk_pipe_continue_end", data);   \
    } while (0)


#endif // !defined(__CILKSCREEN_PIPER_H_)
