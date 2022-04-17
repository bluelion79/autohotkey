import java.awt.*;
import javax.swing.*;

class BasicShapes extends JComponent {
    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D)g;

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        g2d.setColor(new Color(0, 142, 188));

        g2d.drawRect(10, 10, 100, 100);
        g2d.fillRect(120, 10, 100, 100);

        g2d.drawOval(10, 120, 100, 100);
        g2d.fillOval(120, 120, 100, 100);

        g2d.drawArc(230, 10, 100, 100, 0, 270);
        g2d.fillArc(230, 120, 100, 100, 0, 270);

        g2d.drawRoundRect(340, 10, 100, 100, 15, 15);
        g2d.fillRoundRect(340, 120, 100, 100, 15, 15);
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Basic Shapes");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(468, 270);
        frame.setLocationRelativeTo(null);

        frame.getContentPane().add(new BasicShapes());

        frame.setVisible(true);
    }
}
