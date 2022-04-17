import java.awt.*;
import javax.swing.*;

class PasswordField {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Password Field");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JPasswordField passfield = new JPasswordField("PASSWORD");
        passfield.setBounds(10, 10, 250, 24);

        final JPanel panel = new JPanel(null);
        panel.add(passfield);
        frame.add(panel);

        frame.setVisible(true);
    }
}
