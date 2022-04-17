import java.awt.*;
import javax.swing.*;

class MinimumSize {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Minimum Size");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        frame.setSize(800, 600);
        frame.setMinimumSize(new Dimension(500, 300));

        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
