import java.awt.FileDialog;
import java.io.*;
import javax.swing.*;

class ChooseFile2 {
    public static void main(String[] args) {

        JFrame frame = new JFrame("FileDialog Example");
        frame.setVisible(false);

        FileDialog fd = new FileDialog(frame, "Choose a file", FileDialog.LOAD);

        try {
            String currentPath = new java.io.File(".").getCanonicalPath();
            fd.setDirectory(currentPath);

        } catch (IOException e) {
        }

        fd.setFile("*.java");
        fd.setVisible(true);

        String selectedFile = fd.getFile();
        if (selectedFile != null) {
            JOptionPane.showMessageDialog(null, fd.getDirectory() + selectedFile);
        }

        System.exit(0);
    }
}
