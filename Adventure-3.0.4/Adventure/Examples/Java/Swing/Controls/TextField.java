import java.awt.*;
import javax.swing.*;

class TextField {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Text Field");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JTextField textfield = new JTextField("Initial Text");
        textfield.setBounds(10, 10, 250, 24);

        final JPanel panel = new JPanel(null);
        panel.add(textfield);
        frame.add(panel);

        frame.setVisible(true);
    }
}
