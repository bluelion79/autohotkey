import java.awt.*;
import javax.swing.*;

class CheckBox {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("CheckBox");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JCheckBox checkbox = new JCheckBox("CheckBox");
        checkbox.setBounds(10, 10, 120, 24);
        checkbox.setSelected(true);

        final JPanel panel = new JPanel(null);
        panel.add(checkbox);
        frame.add(panel);

        frame.setVisible(true);
    }
}
