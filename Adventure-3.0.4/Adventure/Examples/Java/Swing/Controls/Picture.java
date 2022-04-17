import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Picture {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Picture");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        ImageIcon icon = new ImageIcon("Icons/Info.png");
        // Scale icon
        Image image = icon.getImage();
        Image newimg = image.getScaledInstance(64, 64, java.awt.Image.SCALE_SMOOTH);
        icon = new ImageIcon(newimg);

        JLabel label = new JLabel(icon);
        label.setBounds(10, 10, 64, 64);

        final JPanel panel = new JPanel(null);
        panel.add(label);
        frame.add(panel);

        frame.setVisible(true);
    }
}
