import java.awt.*;
import javax.swing.*;

class Circle extends JComponent {
    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D)g;

        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        g2d.setColor(new Color(0, 142, 188));

        float strokeThickness = 5.0f;
        BasicStroke stroke = new BasicStroke(strokeThickness);
        g2d.setStroke(stroke);

        g2d.drawOval(10, 10, getSize().width - 23, getSize().height - 23);
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Circle");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);
        frame.setLocationRelativeTo(null);

        frame.getContentPane().setBackground(Color.white);
        frame.getContentPane().add(new Circle());

        frame.setVisible(true);
    }
}
