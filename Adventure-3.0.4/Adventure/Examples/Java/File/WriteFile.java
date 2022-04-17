// javac -encoding utf8 WriteFile.java

import java.io.IOException;
import java.io.File;
import java.io.Writer;
import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.FileOutputStream;

class WriteFile {
    public static void main(String[] args) {
        String filepath = "";
        String content = "Some text... Ω";

        try {
            filepath = "UTF-8 with BOM.txt";
            writeFile(filepath, content, "UTF-8", true, false);

            filepath = "UTF-16 LE with BOM.txt";
            writeFile(filepath, content, "UTF-16LE", true, false);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void writeFile(String filepath, String content, String encoding, boolean BOM, boolean append)
    throws IOException {
        File file = new File(filepath);

        Writer writer = null;
        try {
            writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, append), encoding));

            if (BOM) {
                writer.write('\uFEFF');
            }

            writer.write(content);

        } finally {
            if (writer != null) {
                writer.flush();
                writer.close();
            }
        }
    }
}
