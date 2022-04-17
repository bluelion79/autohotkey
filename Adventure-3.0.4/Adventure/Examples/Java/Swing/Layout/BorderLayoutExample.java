import java.awt.*;
import javax.swing.*;

class BorderLayoutExample {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Border Layout");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JButton button1 = new JButton("North");
        JButton button2 = new JButton("Center");
        JButton button3 = new JButton("West");
        JButton button4 = new JButton("South");
        JButton button5 = new JButton("East");

        final JPanel panel = new JPanel(new BorderLayout());
        panel.add(button1, BorderLayout.NORTH);
        panel.add(button2, BorderLayout.CENTER);
        panel.add(button3, BorderLayout.WEST);
        panel.add(button4, BorderLayout.SOUTH);
        panel.add(button5, BorderLayout.EAST);

        frame.add(panel);
        frame.pack();
        frame.setVisible(true);
    }
}
