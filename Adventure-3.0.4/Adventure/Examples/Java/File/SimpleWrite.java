import java.io.*;

class SimpleWrite {
    public static void main(String[] args) {
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter("Test File.txt"));
            out.write("Some text.\n");
            out.close();

        } catch (IOException e) {
        }
    }
}
