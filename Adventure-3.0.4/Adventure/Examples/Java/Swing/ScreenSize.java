import java.awt.*;
import javax.swing.*;

class ScreenSize {
    public static void main(String args[]) {
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();

        JOptionPane.showMessageDialog(null
            , (int) dim.getWidth() + " x " + (int) dim.getHeight()
            , "Screen resolution"
            , JOptionPane.INFORMATION_MESSAGE);
    }
}
