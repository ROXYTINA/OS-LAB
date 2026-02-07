import java.net.*;
import java.io.*;

public class DateClient {
    public static void main(String[] args) {
        try {
            // Connect to the server (localhost, port 6013)
            Socket sock = new Socket("172.28.164.70", 6013);

            // Read the data from the server
            BufferedReader bin = new BufferedReader(
                new InputStreamReader(sock.getInputStream())
            );

            String line;
            while ((line = bin.readLine()) != null) {
                System.out.println(line);
            }

            // Close the connection
            sock.close();
        } catch (IOException ioe) {
            System.err.println(ioe);
        }
    }
}
