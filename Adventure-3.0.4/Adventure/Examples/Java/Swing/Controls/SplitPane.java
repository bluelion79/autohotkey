import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class SplitPane {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Split Pane");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JTextArea t1 = new JTextArea();
        t1.setPreferredSize(new Dimension(200, 320));
        JTextArea t2 = new JTextArea();
        JTextArea t3 = new JTextArea();

        JScrollPane scroll1 = new JScrollPane(t1);
        JScrollPane scroll2 = new JScrollPane(t2);
        JScrollPane scroll3 = new JScrollPane(t3);

        JSplitPane sp1 = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, scroll1, scroll2);

        JPanel panel1 = new JPanel(new GridLayout(1, 2));
        panel1.add(sp1);

        JPanel panel2 = new JPanel(new GridLayout(1, 1));
        panel2.add(scroll3);

        JSplitPane sp2 = new JSplitPane(JSplitPane.VERTICAL_SPLIT, panel1, panel2);
        frame.add(sp2);

        frame.setVisible(true);
    }
}
