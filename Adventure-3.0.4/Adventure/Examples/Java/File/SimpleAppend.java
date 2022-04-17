import java.io.*;

class SimpleAppend {
    public static void main(String[] args) {
        try {
            BufferedWriter out = new BufferedWriter(new FileWriter("Test File.txt", true));
            out.write("More text.\n");
            out.close();

        } catch (IOException e) {
        }
    }
}
