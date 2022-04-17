import java.awt.*;
import javax.swing.*;

class RadioButton {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Radio Buttons");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        ButtonGroup group = new ButtonGroup();

        JRadioButton rb1 = new JRadioButton("Option 1");
        rb1.setBounds(10, 10, 120, 24);
        rb1.setSelected(true);
        group.add(rb1);

        JRadioButton rb2 = new JRadioButton("Option 2");
        rb2.setBounds(10, 42, 120, 24);
        group.add(rb2);

        final JPanel panel = new JPanel(null);
        panel.add(rb1);
        panel.add(rb2);
        frame.add(panel);

        frame.setVisible(true);
    }
}
