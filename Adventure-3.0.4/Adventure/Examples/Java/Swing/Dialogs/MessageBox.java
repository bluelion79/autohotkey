import javax.swing.*;

class MessageBox {
    public static void main(String[] args) {

        // A simple message box
        JOptionPane.showMessageDialog(null, "Hello!");

        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JOptionPane.showMessageDialog(null, "System Look'n Feel!");

        // Error message
        String msg = "An unexpected error occurred.";
        JOptionPane.showMessageDialog(null, msg, "Error", JOptionPane.ERROR_MESSAGE);

        // Warning message
        msg = "Under no circumstances...";
        JOptionPane.showMessageDialog(null, msg, "Warning", JOptionPane.WARNING_MESSAGE);

        // HTML
        String html = "<html>"
        + "<div style=\"width: 300px; background-color: #0099CC; padding-left: 10px;\">"
        + "<h3 style='color: #FFFFFF; font-family: Verdana; font-size: 9px'>Message</h3>"
        + "</div><br/><br/><b>This</b> is <font color='red'>not</font> a <i>"
        + "simulation</i>!<br/><br/></html>";
        JOptionPane.showMessageDialog(null, html, "HTML", JOptionPane.PLAIN_MESSAGE);
    }
}
