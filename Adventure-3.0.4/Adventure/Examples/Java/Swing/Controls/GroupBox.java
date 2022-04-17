import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.TitledBorder;

class GroupBox {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Group Box");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JCheckBox chk1 = new JCheckBox("Option 1");
        chk1.setBounds(10, 20, 120, 24);
        JCheckBox chk2 = new JCheckBox("Option 2");
        chk2.setBounds(10, 50, 120, 24);
        JCheckBox chk3 = new JCheckBox("Option 3");
        chk3.setBounds(10, 80, 120, 24);

        final JPanel panel = new JPanel(null);

        JPanel group = new JPanel(null);
        group.setBorder(new TitledBorder("Options"));
        group.setBounds(4, 4, 250, 114);
        group.add(chk1);
        group.add(chk2);
        group.add(chk3);

        panel.add(group);
        frame.add(panel);

        frame.setVisible(true);
    }
}
