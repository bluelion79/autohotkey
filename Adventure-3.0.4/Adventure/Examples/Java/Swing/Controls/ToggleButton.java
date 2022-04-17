import java.awt.*;
import javax.swing.*;

class ToggleButton {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Toggle Button");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JToggleButton button = new JToggleButton("Toggle");
        button.setBounds(10, 10, 84, 24);

        final JPanel panel = new JPanel(null);
        panel.add(button);
        frame.add(panel);

        frame.setVisible(true);
    }
}
