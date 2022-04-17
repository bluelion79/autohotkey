import java.awt.*;
import javax.swing.*;

class GridLayoutExample {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Grid Layout");

        final JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(4, 3));

        for (int i = 1; i < 10; i++) {
            createButton(panel, Integer.toString(i));
        }
        createButton(panel, "*");
        createButton(panel, "0");
        createButton(panel, "#");

        frame.add(panel);
        frame.pack();

        frame.setSize(300, 360);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public static JButton createButton(JPanel panel, String label) {
        JButton button = new JButton(label);
        button.setFont(new Font("Serif", Font.BOLD, 36));
        panel.add(button);
        return button;
    }
}
