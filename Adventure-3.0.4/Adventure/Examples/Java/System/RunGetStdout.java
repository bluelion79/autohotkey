import java.io.IOException;
import java.io.InputStream;

class RunGetStdout {
    public static void main(String[] args) {
        try {
            String command = "ping -n 1 google.com";
            Process child = Runtime.getRuntime().exec(command);

            InputStream in = child.getInputStream();

            System.out.println("Command output:");

            int c;
            while ((c = in.read()) != -1) {
                System.out.print((char)c);
                System.out.flush();
            }
            in.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
