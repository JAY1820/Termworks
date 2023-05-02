import java.io.*;
import java.net.*;

public class Prog2_client {
    public static void main(String[] args) throws IOException {
        Socket socket = new Socket("localhost", 8080);
        
        DataInputStream datainput = new DataInputStream(socket.getInputStream());
        DataOutputStream dataOutput = new DataOutputStream(socket.getOutputStream());

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        String serverMessage = "";
        String clientMessage = "";

        while (!clientMessage.equals("exit")) {
            clientMessage = bufferedReader.readLine();
            dataOutput.writeUTF(clientMessage);
            dataOutput.flush();
            serverMessage = datainput.readUTF();
            System.out.println("Server says: " + serverMessage);
        }

        dataOutput.close();
        socket.close();
    }
}