#include <windows.h>
#include <stdio.h>

#define NUM_THREADS 5

DWORD WINAPI ThreadFunc(LPVOID lpParam)
{
    int threadNum = *(int *)lpParam;
    DWORD tid = GetCurrentThreadId();
    printf("Hello from thread %d, TID = %lu\n", threadNum, tid);
    Sleep(50000);
    return 0;
}

int main()
{
    HANDLE threads[NUM_THREADS];
    int threadNums[NUM_THREADS];

    for (int i = 0; i < NUM_THREADS; i++)
    {
        threadNums[i] = i;
        threads[i] = CreateThread(NULL, 0, ThreadFunc, &threadNums[i], 0, NULL);
        if (threads[i] == NULL)
        {
            printf("Error creating thread %d\n", i);
            return 1;
        }
    }


    // Wait for all threads to finish
    WaitForMultipleObjects(NUM_THREADS, threads, TRUE, INFINITE);
    

    printf("All threads finished.\n");
    return 0;
}
