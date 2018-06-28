#include <assert.h>

#include "../config.h"
#include "util.h"
#include "queue.h"

// to supress compiler warning for unused var when NDEBUG is defined
#ifdef NDEBUG
#define USE(var) (void)(var)
#else
#define USE(var)
#endif


#include <pthread.h>


void queue_init(queue_t * que, size_t size, int nProducers) {
    pthread_mutex_init(&que->mutex, NULL);
    pthread_cond_init(&que->notEmpty, NULL);
    pthread_cond_init(&que->notFull, NULL);

    int ret = ringbuffer_init(&(que->buf), size);
    USE(ret);
    assert(ret == 0);
    que->nProducers = nProducers;
    que->nTerminated = 0;
}

void queue_destroy(queue_t * que) {
    pthread_mutex_destroy(&que->mutex);
    pthread_cond_destroy(&que->notEmpty);
    pthread_cond_destroy(&que->notFull);

    ringbuffer_destroy(&(que->buf));
}

/* Private function which requires synchronization */
static inline int queue_isTerminated(queue_t * que) {
    assert(que->nTerminated <= que->nProducers);
    return que->nTerminated == que->nProducers;
}

void queue_terminate(queue_t * que) {
    pthread_mutex_lock(&que->mutex);

    que->nTerminated++;
    assert(que->nTerminated <= que->nProducers);

    if(queue_isTerminated(que)) pthread_cond_broadcast(&que->notEmpty);
    pthread_mutex_unlock(&que->mutex);
}

int queue_dequeue(queue_t *que, ringbuffer_t *buf, int limit) {
    int i;

    pthread_mutex_lock(&que->mutex);
    while (ringbuffer_isEmpty(&que->buf) && !queue_isTerminated(que)) {
        pthread_cond_wait(&que->notEmpty, &que->mutex);
    }

    if (ringbuffer_isEmpty(&que->buf) && queue_isTerminated(que)) {
        pthread_mutex_unlock(&que->mutex);
        return -1;
    }

    // NOTE: This can be optimized by copying whole segments of pointers 
    // with memcpy. However, `limit' is typically small so the performance 
    // benefit would be negligible.
    for(i=0; i<limit && !ringbuffer_isEmpty(&que->buf) && 
                        !ringbuffer_isFull(buf); i++) {
        void *temp;
        int rv;

        temp = ringbuffer_remove(&que->buf);
        assert(temp!=NULL);
        rv = ringbuffer_insert(buf, temp);
        USE(rv);
        assert(rv==0);
    }

    if(i>0) pthread_cond_signal(&que->notFull);
    pthread_mutex_unlock(&que->mutex);

    return i;
}

int queue_enqueue(queue_t *que, ringbuffer_t *buf, int limit) {
    int i;

    pthread_mutex_lock(&que->mutex);
    assert(!queue_isTerminated(que));
    while (ringbuffer_isFull(&que->buf))
        pthread_cond_wait(&que->notFull, &que->mutex);

    // NOTE: This can be optimized by copying whole segments of pointers 
    // with memcpy. However, `limit' is typically small so the performance 
    // benefit would be negligible.
    for(i=0; i<limit && !ringbuffer_isFull(&que->buf) && 
                        !ringbuffer_isEmpty(buf); i++) {
        void *temp;
        int rv;

        temp = ringbuffer_remove(buf);
        assert(temp!=NULL);
        rv = ringbuffer_insert(&que->buf, temp);
        assert(rv==0);
    }
    if(i>0) pthread_cond_signal(&que->notEmpty);
    pthread_mutex_unlock(&que->mutex);

    return i;
}

