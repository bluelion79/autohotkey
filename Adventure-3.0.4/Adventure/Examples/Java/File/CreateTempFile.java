import java.io.*;

class CreateTempFile {
    public static void main(String[] args) {
        try {
            // Create a temporary file
            File tempfile = File.createTempFile("~tmp", ".tmp");

            // Delete the file when the program exits.
            //temp.deleteOnExit();

            // Write to file
            FileOutputStream fos = new FileOutputStream(tempfile, false);
            OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
            BufferedWriter out = new BufferedWriter(osw);
            out.write("Some text...\n");
            out.close();

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }
}
