import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Label {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Label");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JLabel label = new JLabel("Label");
        label.setBounds(10, 10, 100, 24);

        final JPanel panel = new JPanel(null);
        panel.add(label);
        frame.add(panel);

        frame.setVisible(true);
    }
}
