import java.io.File;

class FileExist {
    public static void main(String[] args)
    {
        System.out.println(fileExist("Test File.txt") ? "File exists." : "File not found.");
    }

    // Checks whether a file exists.
    public static boolean fileExist(String filePath) {
        return new File(filePath).exists();
    }
}
