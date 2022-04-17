import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class SwingTemplate implements ActionListener {
    private JFrame frame;
    private JPanel panel;

    private void createWindow() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        frame = new JFrame("Swing Template");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        panel = new JPanel(null);
        frame.add(panel);

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new SwingTemplate().createWindow();
            }
        };
        EventQueue.invokeLater(runnable);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
    }
}
