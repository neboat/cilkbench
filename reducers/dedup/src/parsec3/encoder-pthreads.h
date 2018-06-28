#ifndef _ENCODER_PTHREADS_H
#define _ENCODER_PTHREADS_H

#define MAX_THREADS 1024

//Definition and basic functions for a two-level sequence number
typedef u_int32 sequence_number_t;

typedef struct _sequence_t {
  sequence_number_t l1num; //first level id
  sequence_number_t l2num; //second level id
} sequence_t;

//Returns TRUE if and only if s1 == s2
static inline int sequence_eq(sequence_t s1, sequence_t s2) {
  return (s1.l1num == s2.l1num) && (s1.l2num == s2.l2num);
}

//Returns TRUE if and only if s1 < s2
static inline int sequence_lt(sequence_t s1, sequence_t s2) {
    if(s1.l1num < s2.l1num) {
        return TRUE;
    } else {
        return (s1.l1num == s2.l1num) && (s1.l2num < s2.l2num);
    }
}

//Returns TRUE if and only if s1 > s2
static inline int sequence_gt(sequence_t s1, sequence_t s2) {
    if(s1.l1num > s2.l1num) {
        return TRUE;
    } else {
        return (s1.l1num == s2.l1num) && (s1.l2num > s2.l2num);
    }
}

//Increments a sequence number. The upper bound for the 2nd level number must be specified
static inline void sequence_inc(sequence_t *s, sequence_number_t ubound) {
    assert(s!=NULL);
    s->l2num++;
    if(s->l2num >= ubound) {
        s->l1num++;
        s->l2num=0;
    }
}

//Increments L1 level of a sequence number, resetting L2
static inline void sequence_inc_l1(sequence_t *s) {
    assert(s!=NULL);
    s->l1num++;
    s->l2num=0;
}

//Increments L2 level of a sequence number
static inline void sequence_inc_l2(sequence_t *s) {
    assert(s!=NULL);
    s->l2num++;
}

//Reset a sequence number.
static inline void sequence_reset(sequence_t *s) {
    assert(s!=NULL);
    s->l1num=0;
    s->l2num=0;
}
#endif  // _ENCODER_PTHREADS_H
