import java.awt.*;
import javax.swing.*;

class FlowLayoutExample {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Flow Layout");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JButton button1 = new JButton("Button 1");
        JButton button2 = new JButton("Button 2");
        JButton button3 = new JButton("Button 3");
        JButton button4 = new JButton("Button 4");
        JButton button5 = new JButton("Button 5");

        final JPanel panel = new JPanel(); // Default: FlowLayout
        panel.add(button1);
        panel.add(button2);
        panel.add(button3);
        panel.add(button4);
        panel.add(button5);

        frame.add(panel);
        frame.pack();
        frame.setVisible(true);
    }
}
