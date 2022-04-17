import javax.swing.*;

public class TabbedPane {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Tabbed Pane");
        frame.setSize(800, 600);
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
        edt.setBounds(110, 10, 200, 24);
        p3.add(edt);

        // Main control
        JTabbedPane tp = new JTabbedPane(JTabbedPane.TOP, JTabbedPane.WRAP_TAB_LAYOUT);
        tp.setBounds(10, 10, 400, 220);
        tp.add("File", p1);
        tp.add("Options", p2);
        tp.add("Advanced", p3);

        final JPanel panel = new JPanel(null);
        panel.add(tp);
        frame.add(panel);

        frame.setVisible(true);
    }

    private static JPanel createPanel() {
        JPanel p = new JPanel(null);
        p.setLocation(0, 0);
        p.setOpaque(false);
        return p;
    }
}
