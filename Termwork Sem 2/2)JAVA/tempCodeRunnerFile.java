import java.io.*;
import java.net.*;

public class Prog2_server {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8080);
        System.out.println("Your server is started on port (8080)");

        Socket socket = serverSocket.accept();
        DataInputStream dataInput = new DataInputStream(socket.getInputStream());
        DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());

        String clientMessage = "";
        while (!clientMessage.equals("exit")) {
            clientMessage = dataInput.readUTF();
            System.out.println("Client says: " + clientMessage);
            dataOutputStream.writeUTF("Thank you : Your Message received");
            dataOutputStream.flush();
        }

        dataInput.close();
        socket.close();
        serverSocket.close();
    }
}