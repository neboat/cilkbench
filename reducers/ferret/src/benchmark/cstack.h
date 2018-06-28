#ifndef _CSTACK_H_
#define _CSTACK_H_

/*
#define PREAMBLE\
    alloca(ZERO);\
    CilkWorkerState *ws = get_tls_ws();\
	CilkStackFrame * cilk_frame = INIT_FRAME();\
	STORE_RBP(cilk_frame->rbp);\
	STORE_RSP(cilk_frame->rsp);\
	STORE_RIP(cilk_frame->rip);\
	RESTORE_CILK_FRAME(cilk_frame);
*/

#define PREAMBLE\
    int stolen = 0;\
    alloca(ZERO);\
    CilkStackFrame * cilk_frame;\
    CilkWorkerState * ws = tls_ws;\
    INIT_FRAME();\
    RESTORE_CILK_FRAME(cilk_frame);

// cilk_frame is not initialized until pipe_frame is restored
#define PIPE_PREAMBLE\
    int stolen = 0;\
    alloca(ZERO);\
    CilkPipeFrame *pipe_frame;\
    CilkStackFrame *cilk_frame;\
    CilkWorkerState * ws = tls_ws;\
    INIT_PIPE_FRAME();\
    RESTORE_CILK_FRAME(pipe_frame);\
    cilk_frame = &(pipe_frame->sframe);

// this is executed everytime the iteration is invoked (including when it 
// resumes from suspension.
// Still need alloca(ZERO) to get rbp and rsp (to figure out frame size)
#define PIPE_ITER_PREAMBLE\
    alloca(ZERO);\
    CilkWorkerState *ws = tls_ws;\
    CilkStackFrame *cilk_frame = &(iframe->sframe);\
    if(cilk_frame->entry == 0) {\
        GET_CALLEE_RIP(cilk_frame->rip);\
        Cilk_cilk2c_push_pipe_control_frame(ws, iframe);\
        Cilk_cilk2c_enter_frame(ws, cilk_frame);\
    }\
    iframe->status = ACTIVE;

#define PRE_SPAWN(n) {\
    CLOBBER_CALLEE_SAVED_REGS();\
    cilk_frame->entry = n;\
    PUSH_FRAME(cilk_frame);\
}

// just need to ensure everything written to the pipe control stack 
// is indeed flushed
#define PRE_SPAWN_ITER(n) {\
    CLOBBER_CALLEE_SAVED_REGS();\
    cilk_frame->entry = n;\
    Cilk_membar_StoreStore();\
}

#define POST_SPAWN(n) {\
    POP_FRAME(cilk_frame);\
    if(0) {\
    _cilk_sync ## n:\
        stolen = 1;\
	CLOBBER_CALLEE_SAVED_REGS();\
        RESTORE_TLS_WS();\
    }\
}

#define CILK_SYNC(n) {\
    cilk_frame->entry = n;\
    if(stolen) {\
	    CHECK_SYNC(cilk_frame);\
    }\
	if(0) {\
	    _cilk_sync ## n:\
		CLOBBER_CALLEE_SAVED_REGS();\
        RESTORE_TLS_WS();\
        stolen = 0;\
    }\
}

// Need to compile spawn and sync differently for iteration function
// because it uses heap-based cactus stack
#define PIPE_ITER_PRE_SPAWN(n) PRE_SPAWN_NO_CLOBBER(n)
#define PIPE_ITER_POST_SPAWN(n) {\
    POP_FRAME(cilk_frame);\
    if(0) {\
    _cilk_sync ## n:\
        iframe->stolen = 1;\
        RESTORE_TLS_WS();\
    }\
}
#define PIPE_ITER_CILK_SYNC(n) {\
    cilk_frame->entry = n;\
    if(iframe->stolen) {\
	CHECK_SYNC(cilk_frame);\
    }\
    if(0) {\
    _cilk_sync ## n:\
        iframe->stolen = 0;\
        RESTORE_TLS_WS();\
    }\
}


#define CILK_SYNC(n) {\
    cilk_frame->entry = n;\
    if(stolen) {\
        CHECK_SYNC(cilk_frame);\
    }\
    if(0) {\
    _cilk_sync ## n:\
	CLOBBER_CALLEE_SAVED_REGS();\
        RESTORE_TLS_WS();\
        stolen = 0;\
    }\
}

#define PRE_SPAWN_NO_CLOBBER(n) {\
    cilk_frame->entry = n;\
    PUSH_FRAME(cilk_frame);\
}

#define POST_SPAWN_NO_CLOBBER(n) {\
    POP_FRAME(cilk_frame);\
	if(0) {\
	    _cilk_sync ## n:\
        stolen = 1;\
        RESTORE_TLS_WS();\
    }\
}

#define CILK_SYNC_NO_CLOBBER(n) {\
    cilk_frame->entry = n;\
    if(stolen) {\
	    CHECK_SYNC(cilk_frame);\
    }\
	if(0) {\
	    _cilk_sync ## n:\
        RESTORE_TLS_WS();\
        stolen = 0;\
    }\
}

#define NEXT(iframe) ++(iframe->stage);

#endif  // _CSTACK_H_
