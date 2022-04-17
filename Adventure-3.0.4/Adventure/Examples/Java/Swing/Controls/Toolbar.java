import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Toolbar {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Toolbar");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        final JPanel panel = new JPanel(null);
        frame.add(panel);

        JButton button1 = addToolbarButton("Icons/Save.png", "Save");
        JButton button2 = addToolbarButton("Icons/Clipboard.png", "Copy to Clipboard");
        JButton button3 = addToolbarButton("Icons/Properties.png", "Properties");

        JToolBar toolbar = new JToolBar();
        toolbar.setBounds(0, 0, 800, 28);
        toolbar.setFloatable(false);
        toolbar.add(button1);
        toolbar.add(button2);
        toolbar.addSeparator();
        toolbar.add(button3);

        panel.add(toolbar);

        frame.setVisible(true);

        frame.getRootPane().grabFocus();
    }

    public static JButton addToolbarButton(String iconpath, String tooltip) {
        ImageIcon icon = new ImageIcon(iconpath);
        JButton button = new JButton(icon);
        button.setToolTipText(tooltip);
        return button;
    }
}
