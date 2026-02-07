	#include <stdio.h>
#include <pthread.h>

#define NUM_THREADS 5

void* print_message(void* threadid) {
    long tid = (long)threadid;
    printf("Hello from thread %ld\n", tid);

    // Keep thread alive for 5 seconds
    sleep(50);

    pthread_exit(NULL);
}


int main() {
    pthread_t threads[NUM_THREADS];
    int rc;
    long t;

    for (t = 0; t < NUM_THREADS; t++) {
        printf("Creating thread %ld\n", t);
        rc = pthread_create(&threads[t], NULL, print_message, (void*)t);
        if (rc) {
            printf("ERROR; return code from pthread_create() is %d\n", rc);
            return -1;
        }
    }

    // Wait for all threads to complete
    for (t = 0; t < NUM_THREADS; t++) {
        pthread_join(threads[t], NULL);
    }

    printf("All threads completed.\n");
    return 0;
}
