import java.awt.*;
import javax.swing.*;

class Button {
    public static void main(String[] args) {

        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Button");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JButton button = new JButton("Button");
        button.setBounds(10, 10, 84, 24);

        final JPanel panel = new JPanel(null);
        panel.add(button);
        frame.add(panel);

        frame.setVisible(true);
    }
}
