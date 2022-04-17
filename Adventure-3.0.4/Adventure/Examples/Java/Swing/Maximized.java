import java.awt.*;
import javax.swing.*;

class Maximized {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Maximized");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);

        frame.setExtendedState(frame.getExtendedState() | JFrame.MAXIMIZED_BOTH);
    }
}
