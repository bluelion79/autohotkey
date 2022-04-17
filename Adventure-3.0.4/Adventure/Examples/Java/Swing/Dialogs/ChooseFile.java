import javax.swing.*;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter; 

class ChooseFile {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFileChooser fc = new JFileChooser(".");

        FileFilter javaFilter = new FileNameExtensionFilter("Java Files", "java"); 
        fc.setFileFilter(javaFilter);

        int retval = fc.showOpenDialog(null);

        if (retval == JFileChooser.APPROVE_OPTION) {
            JOptionPane.showMessageDialog(null, fc.getSelectedFile());
        }
    }
}
