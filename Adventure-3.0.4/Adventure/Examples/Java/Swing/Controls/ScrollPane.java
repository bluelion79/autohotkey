import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ScrollPane implements ActionListener {

    private JFrame frame;
    private JPanel panel;
    private JScrollPane scroll;
    private JButton button1;
    private JButton button2;
    private JScrollBar bar;

    private void displayGUI() {

        frame = new JFrame("Scroll Pane");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        panel = new JPanel(null);
        panel.setPreferredSize(new Dimension(766, 1000));
        panel.setAutoscrolls(true);

        button1 = new JButton("Scroll to the bottom");
        button1.setBounds(10, 10, 200, 24);
        button1.addActionListener(this);

        button2 = new JButton("Scroll to the top");
        button2.setBounds(10, 960, 200, 24);
        button2.addActionListener(this);

        panel.add(button1);
        panel.add(button2);

        scroll = new JScrollPane(panel);

        bar = scroll.getVerticalScrollBar();

        frame.add(scroll);

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new ScrollPane().displayGUI();
            }
        };
        EventQueue.invokeLater(runnable);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        Object ctl = e.getSource();

        if (ctl == button1) {
            bar.setValue(bar.getMaximum());

        } else if (ctl == button2) {
            bar.setValue(0);
        }
    }
}
