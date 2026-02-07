import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class CachedThread {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newCachedThreadPool();

        for (int i = 0; i < 10; i++) {
            int taskId = i;
            executor.submit(() -> {
                System.out.println("Task " + taskId + " running in " + Thread.currentThread().getName());
            });
        }

        executor.shutdown();
    }
}
