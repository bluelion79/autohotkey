import java.awt.*;
import javax.swing.*;

class CenteredWindow {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Centered Window");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400, 400);

        //centerWindow(frame);
        frame.setLocationRelativeTo(null);

        frame.setVisible(true);
    }

    /*
    public static void centerWindow(Window frame) {
        Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (int) ((dimension.getWidth() - frame.getWidth()) / 2);
        int y = (int) ((dimension.getHeight() - frame.getHeight()) / 2);
        frame.setLocation(x, y);
    }
    */
}
