#include <stdio.h>
#include <pthread.h>
#include <inttypes.h>

#if COUNT_LOCK
__thread int64_t cond_sig_count = 0;
__thread int64_t cond_wait_count = 0;
__thread int64_t lock_count = 0;
__thread int64_t unlock_count = 0;
__thread int64_t spin_lock_count = 0;
__thread int64_t spin_unlock_count = 0;

int64_t g_cond_sig_count = 0;
int64_t g_cond_wait_count = 0;
int64_t g_lock_count = 0;
int64_t g_unlock_count = 0;
int64_t g_spin_lock_count = 0;
int64_t g_spin_unlock_count = 0;

pthread_spinlock_t cond_sig_count_lock;
pthread_spinlock_t cond_wait_count_lock;
pthread_spinlock_t lock_count_lock;
pthread_spinlock_t unlock_count_lock;
pthread_spinlock_t spin_lock_count_lock;
pthread_spinlock_t spin_unlock_count_lock;

int my_pthread_cond_signal(pthread_cond_t *cond) {
    cond_sig_count++;
    int res = pthread_cond_signal(cond);    
    return res;
} 

int my_pthread_cond_broadcast(pthread_cond_t *cond) {
    cond_sig_count++;
    int res = pthread_cond_broadcast(cond);    
    return res;
} 

int my_pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex) {
    cond_wait_count++;
    int res = pthread_cond_wait(cond, mutex);    
    return res;
} 

int my_pthread_mutex_lock(pthread_mutex_t *mutex) {
    lock_count++;
    int res = pthread_mutex_lock(mutex);    
    return res;
} 

int my_pthread_mutex_unlock(pthread_mutex_t *mutex) {
    unlock_count++;
    int res = pthread_mutex_unlock(mutex);    
    return res;
} 

int my_pthread_spin_lock(pthread_spinlock_t *lock) {
    spin_lock_count++;
    int res = pthread_spin_lock(lock);    
    return res;
} 

int my_pthread_spin_unlock(pthread_spinlock_t *lock) {
    spin_unlock_count++;
    int res = pthread_spin_unlock(lock);    
    return res;
} 

void lock_count_init() {
    pthread_spin_init(&cond_sig_count_lock, PTHREAD_PROCESS_SHARED);
    pthread_spin_init(&cond_wait_count_lock, PTHREAD_PROCESS_SHARED);
    pthread_spin_init(&lock_count_lock, PTHREAD_PROCESS_SHARED);
    pthread_spin_init(&unlock_count_lock, PTHREAD_PROCESS_SHARED);
    pthread_spin_init(&spin_lock_count_lock, PTHREAD_PROCESS_SHARED);
    pthread_spin_init(&spin_unlock_count_lock, PTHREAD_PROCESS_SHARED);
}

void lock_count_destroy() {
    pthread_spin_destroy(&cond_sig_count_lock);
    pthread_spin_destroy(&cond_wait_count_lock);
    pthread_spin_destroy(&lock_count_lock);
    pthread_spin_destroy(&unlock_count_lock);
    pthread_spin_destroy(&spin_lock_count_lock);
    pthread_spin_destroy(&spin_unlock_count_lock);
}

void add_my_count() {
    if(cond_sig_count > 0) {
        pthread_spin_lock(&cond_sig_count_lock);
        g_cond_sig_count += cond_sig_count;
        pthread_spin_unlock(&cond_sig_count_lock);
    }
    if(cond_wait_count > 0) {
        pthread_spin_lock(&cond_wait_count_lock);
        g_cond_wait_count += cond_wait_count;
        pthread_spin_unlock(&cond_wait_count_lock);
    }
    if(lock_count > 0) {
        pthread_spin_lock(&lock_count_lock);
        g_lock_count += lock_count;
        pthread_spin_unlock(&lock_count_lock);
    }
    if(unlock_count > 0) {
        pthread_spin_lock(&unlock_count_lock);
        g_unlock_count += unlock_count;
        pthread_spin_unlock(&unlock_count_lock);
    }
    if(spin_lock_count > 0) {
        pthread_spin_lock(&spin_lock_count_lock);
        g_spin_lock_count += spin_lock_count;
        pthread_spin_unlock(&spin_lock_count_lock);
    }
    if(spin_unlock_count > 0) {
        pthread_spin_lock(&spin_unlock_count_lock);
        g_spin_unlock_count += spin_unlock_count;
        pthread_spin_unlock(&spin_unlock_count_lock);
    }
}

void print_global_counts() {

    fprintf(stderr, "cond_sig_count: %ld.\n", g_cond_sig_count);
    fprintf(stderr, "cond_wait_count: %ld.\n", g_cond_wait_count);
    fprintf(stderr, "lock_count: %ld.\n", g_lock_count);
    fprintf(stderr, "unlock_count: %ld.\n", g_unlock_count);
    fprintf(stderr, "spin_lock_count: %ld.\n", g_spin_lock_count);
    fprintf(stderr, "spin_unlock_count: %ld.\n", g_spin_unlock_count);
}

#endif
