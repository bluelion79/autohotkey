import java.awt.*;
import javax.swing.*;

class CombinedLayout {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Combined Layout: BorderLayout + FlowLayout");

        final JPanel panel = new JPanel();
        panel.setLayout(new FlowLayout(FlowLayout.RIGHT));

        JButton button1 = createButton(panel, "OK");
        JButton button2 = createButton(panel, "Cancel");
        JButton button3 = createButton(panel, "Apply");

        final JPanel footer = new JPanel(new BorderLayout());
        footer.add(panel, BorderLayout.SOUTH);
        frame.add(footer);

        frame.pack();
        frame.setSize(600, 400);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public static JButton createButton(JPanel panel, String label) {
        JButton button = new JButton(label);
        button.setPreferredSize(new Dimension(80, 24));
        panel.add(button);
        return button;
    }
}
