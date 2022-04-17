import javax.swing.*;

class ChooseFolder {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFileChooser fc = new JFileChooser("..");
        fc.setDialogTitle("Select a folder");
        fc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        fc.setApproveButtonText("OK");

        if (fc.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
            JOptionPane.showMessageDialog(null, fc.getSelectedFile());
        }
    }
}
