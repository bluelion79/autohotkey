import java.nio.file.*;
import java.nio.file.attribute.*;
import java.io.IOException;

public class DiskUsage {
    static final long K = 1024;

    static void printFileStore(FileStore store) throws IOException {
        long total = store.getTotalSpace() / K;
        long used = (store.getTotalSpace() - store.getUnallocatedSpace()) / K;
        long avail = store.getUsableSpace() / K;

        String s = store.toString();
        if (s.length() > 20) {
            System.out.println(s);
            s = "";
        }

        System.out.format("%-20s %12d %12d %12d\n", s, total, used, avail);
    }

    public static void main(String[] args) throws IOException {

        System.out.format("%-20s %12s %12s %12s\n", "Filesystem", "kbytes", "used", "avail");

        if (args.length == 0) {
            FileSystem fs = FileSystems.getDefault();

            for (FileStore store: fs.getFileStores()) {
                printFileStore(store);
            }

        } else {
            for (String file: args) {
                FileStore store = Files.getFileStore(Paths.get(file));
                printFileStore(store);
            }
        }
    }
}
