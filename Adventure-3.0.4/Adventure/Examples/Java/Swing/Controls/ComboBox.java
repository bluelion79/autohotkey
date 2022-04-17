import java.awt.*;
import javax.swing.*;

class ComboBox {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("ComboBox");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        String[] items = {"Item 1", "Item 2", "Item 3"};

        JComboBox cbx = new JComboBox<>(items);
        cbx.setEditable(true);
        cbx.setBounds(10, 10, 120, 24);

        final JPanel panel = new JPanel(null);
        panel.add(cbx);
        frame.add(panel);

        frame.setVisible(true);
    }
}
