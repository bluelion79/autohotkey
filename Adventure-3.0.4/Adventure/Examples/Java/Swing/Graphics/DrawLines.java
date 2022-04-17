import java.awt.*;
import javax.swing.*;

class DrawLines extends JComponent {
    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D)g;

        int[] values = {320, 102, 278, 209, 421, 369, 456, 357, 310, 119, 157, 397};

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        int y2 = (values.length + 1) * 25;

        g2d.setColor(Color.blue);
        g2d.drawLine(20, 25, 20, y2);
        g2d.drawLine(20, y2, 560, y2);

        for (int i = 0; i < values.length; i++) {
            GradientPaint grad = new GradientPaint(0, 0, Color.white, 10, 80, Color.green);
            g2d.setPaint(grad);
            g2d.fillRect(20, 25 * (i + 1), values[i], 10);

            g2d.setColor(Color.black);
            g2d.drawRect(20, 25 * (i + 1), values[i], 10);
        }
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Sales");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);
        frame.setLocationRelativeTo(null);

        frame.getContentPane().setBackground(Color.white);
        frame.getContentPane().add(new DrawLines());

        frame.setVisible(true);
    }
}
