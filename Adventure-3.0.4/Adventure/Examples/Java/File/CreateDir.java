import java.io.File;
import java.io.IOException;

class CreateDir {
    public static void main(String[] args) {

        String path = "Temp" + File.separator + "Files";

        File dir = new File(path);

        if (dir.isDirectory()) {
            System.out.println("Directory already exists.");

        } else {
            if (dir.mkdirs()) {
                System.out.println("Directory created.");

            } else {
                System.out.println("Failed to create directory.");
            }
        }
    }
}
