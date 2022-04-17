import javax.swing.*;

class InputDialog {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        // A dialog with a text field.
        String text = JOptionPane.showInputDialog(null, "Type in some text and press OK:");

        if (text == null) {
            // User clicked cancel.
        } else {
            JOptionPane.showMessageDialog(null, "Text entered: " + text);
        }
    }
}
