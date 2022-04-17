import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ActionEventExample implements ActionListener {
    private JFrame frame;
    private JPanel panel;
    private JButton button1;
    private JButton button2;

    private void displayGUI() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        frame = new JFrame("Action Event Example");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        panel = new JPanel(null);

        button1 = new JButton("Button 1");
        button1.setBounds(10, 10, 80, 24);
        button1.addActionListener(this);

        button2 = new JButton("Button 2");
        button2.setBounds(10, 40, 80, 24);
        button2.addActionListener(this);

        panel.add(button1);
        panel.add(button2);
        frame.add(panel);

        frame.setVisible(true);

        frame.getRootPane().grabFocus();
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new ActionEventExample().displayGUI();
            }
        };
        EventQueue.invokeLater(runnable);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        Object ctl = e.getSource();

        if (ctl == button1) {
            JOptionPane.showMessageDialog(frame
            , "Button 1 clicked!", "Message", JOptionPane.INFORMATION_MESSAGE);

        } else if (ctl == button2) {
        }
    }
}
