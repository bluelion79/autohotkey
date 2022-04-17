import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class ButtonIcon {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Button");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        ImageIcon icon = new ImageIcon("Icons/Save.png");
        JButton button = new JButton(icon);
        button.setBounds(10, 10, 84, 24);
        button.setText("Save");
        button.setToolTipText("Save file");
        button.setMnemonic(KeyEvent.VK_S);

        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(frame, "Button clicked.");
            }
        });

        final JPanel panel = new JPanel(null);
        panel.add(button);
        frame.add(panel);

        frame.setVisible(true);

        frame.getRootPane().grabFocus();
    }
}
