import java.util.concurrent.RecursiveTask;
import java.util.concurrent.ForkJoinPool;

class SumTask extends RecursiveTask<Integer> {
    private int[] arr;
    private int start, end;

    SumTask(int[] arr, int start, int end) {
        this.arr = arr;
        this.start = start;
        this.end = end;
    }

    @Override
    protected Integer compute() {
        if (end - start <= 2) { // small enough to compute directly
            int sum = 0;
            for (int i = start; i < end; i++)
                sum += arr[i];
            return sum;
        } else {
            int mid = (start + end) / 2;
            SumTask left = new SumTask(arr, start, mid);
            SumTask right = new SumTask(arr, mid, end);
            left.fork(); // run asynchronously
            int rightResult = right.compute(); // run in current thread
            int leftResult = left.join();
            return leftResult + rightResult;
        }
    }
}

public class ForkJoin {
    public static void main(String[] args) {
        ForkJoinPool pool = new ForkJoinPool();
        int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8 };

        int sum = pool.invoke(new SumTask(arr, 0, arr.length));
        System.out.println("Total sum: " + sum);
    }
}
