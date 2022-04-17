import javax.swing.*;

public class TabbedPaneWithIcons {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFrame frame = new JFrame("Tabbed Pane with Icons");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLayout(null);
        frame.setLocationRelativeTo(null);

        // File tab
        JPanel p1 = createPanel();

        JButton btn = new JButton("Choose...");
        btn.setLocation(10, 10);
        btn.setSize(100, 24);
        p1.add(btn);

        // Options tab
        JPanel p2 = createPanel();

        JCheckBox chk = new JCheckBox("Enabled");
        chk.setBounds(10, 10, 100, 24);
        chk.setOpaque(false);
        p2.add(chk);

        // Advanced tab
        JPanel p3 = createPanel();

        JLabel lbl = new JLabel("Parameters: ");
        lbl.setBounds(10, 10, 104, 24);
        p3.add(lbl);

        JTextField edt = new JTextField();
        edt.setLocation(110, 10);
        edt.setSize(200, 24);
        p3.add(edt);

        ImageIcon icon1 = new ImageIcon("Icons/Save.png");
        ImageIcon icon2 = new ImageIcon("Icons/Clipboard.png");
        ImageIcon icon3 = new ImageIcon("Icons/Properties.png");

        // Main control
        JTabbedPane tp = new JTabbedPane(JTabbedPane.TOP, JTabbedPane.WRAP_TAB_LAYOUT);
        tp.setBounds(10, 10, 400, 220);
        tp.addTab("File", icon1, p1, "File options");
        tp.addTab("Options", icon2, p2, "Additional options");
        tp.addTab("Advanced", icon3, p3, "Advanced options");

        frame.getContentPane().add(tp);
        frame.setVisible(true);
    }

    private static JPanel createPanel() {
        JPanel p = new JPanel();
        p.setLayout(null);
        p.setLocation(0, 0);
        p.setOpaque(false);
        return p;
    }
}
