import javax.swing.*;

class ConfirmDialog {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        // A dialog with the buttons Yes|No|Cancel.
        int answer = JOptionPane.showConfirmDialog(null, "The file was modified. Do you want to save it?");

        if (answer == JOptionPane.YES_OPTION) {
            // User clicked YES.
        } else if (answer == JOptionPane.NO_OPTION) {
            // User clicked NO. 
        } else {
            // User clicked CANCEL.
        }
    }
}
