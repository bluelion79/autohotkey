// javac -encoding utf8 WriteUTF8File1.java

import java.io.*;

class WriteUTF8File1 {
    public static void main(String[] args) {
        WriteUTF8File("Test File.txt", "Some text... Ω");
    }

    public static void WriteUTF8File(String filepath, String text) {
        try {
            File f = new File(filepath);
            FileOutputStream fos = new FileOutputStream(f);
            OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
            BufferedWriter out = new BufferedWriter(osw);
            out.write('\uFEFF'); // BOM
            out.write(text);
            out.flush();
            out.close();
        } catch (IOException e) {
        }
    }
}
