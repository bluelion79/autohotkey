import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

class WriteUTF8File2 {
    public static void main(String[] args) throws IOException {

        try (BufferedWriter out = Files.newBufferedWriter(Paths.get("Test File.txt"), StandardCharsets.UTF_8)) {
            out.write('\uFEFF');
            out.write("Some text... Ω");
            out.close();
        }
    }
}
