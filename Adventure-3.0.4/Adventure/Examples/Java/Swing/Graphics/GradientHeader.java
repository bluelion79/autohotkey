import java.awt.*;
import javax.swing.*;

class GradientHeader extends JComponent {
    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D)g;

        int width = getSize().width;

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        Color startColor = new Color(0x3F, 0xBB, 0xE3);
        Color endColor = new Color(0x00, 0x80, 0xC0);

        GradientPaint grad = new GradientPaint(0, 0, startColor, 0, 80, endColor);
        g2d.setPaint(grad);

        g2d.fillRect(0, 0, width, 80);
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Gradient");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);
        frame.setLocationRelativeTo(null);

        frame.getContentPane().setBackground(Color.white);
        frame.getContentPane().add(new GradientHeader());

        frame.setVisible(true);
    }
}
