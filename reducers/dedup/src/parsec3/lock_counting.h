#ifndef LOCK_COUNTING_H
#define LOCK_COUNTING_H

#if COUNT_LOCK
#include <pthread.h>

#define pthread_cond_signal(cond) my_pthread_cond_signal(cond) 
#define pthread_cond_broadcast(cond) my_pthread_cond_broadcast(cond) 
#define pthread_cond_wait(cond, mutex) my_pthread_cond_wait(cond, mutex) 

#define pthread_mutex_lock(mutex) my_pthread_mutex_lock(mutex) 
#define pthread_mutex_unlock(mutex) my_pthread_mutex_unlock(mutex) 
#define pthread_spin_lock(lock) my_pthread_mutex_lock(lock) 
#define pthread_spin_unock(lock) my_pthread_spin_unlock(lock) 

int my_pthread_cond_signal(pthread_cond_t *cond); 
int my_pthread_cond_broadcast(pthread_cond_t *cond); 
int my_pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex); 
int my_pthread_mutex_lock(pthread_mutex_t *mutex); 
int my_pthread_mutex_unlock(pthread_mutex_t *mutex); 
int my_pthread_spin_lock(pthread_spinlock_t *lock);
int my_pthread_spin_unlock(pthread_spinlock_t *lock); 

void lock_count_init(); 
void lock_count_destroy(); 
void add_my_count(); 
void print_global_counts(); 

#else
#define lock_count_init
#define lock_count_destroy
#define add_my_count
#define print_global_counts

#endif // COUNT_LOCK


#endif
