import java.net.*;
import java.io.*;

public class DateServer {
    public static void main(String[] args) {
        try {
            // Create the server socket on port 6013
            ServerSocket sock = new ServerSocket(6013);
            System.out.println("Server is running on port 6013...");

            while (true) {
                // Wait for a client
                Socket client = sock.accept();
                System.out.println("Client connected.");

                // Send the date to the client
                PrintWriter pout = new PrintWriter(client.getOutputStream(), true);
                pout.println(new java.util.Date().toString());

                // Close the client connection
                client.close();
            }
        } catch (IOException ioe) {
            System.err.println(ioe);
        }
    }
}

