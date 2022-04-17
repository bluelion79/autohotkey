import java.awt.*;
import javax.swing.*;

class List {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("List");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        String[] items = new String[30];
        for (int i = 0; i < 30; i++) {
            items[i] = "Item " + (i + 1);
        }

        //String[] items = {"Item 1", "Item 2", "Item 3"};

        JList list = new JList<>(items);
        list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        list.setSelectedIndex(0);
        list.setVisibleRowCount(3);  

        JScrollPane scroll = new JScrollPane(list);
        scroll.setBounds(10, 10, 250, 400);

        final JPanel panel = new JPanel(null);
        panel.add(scroll);
        frame.add(panel);

        frame.setVisible(true);
    }
}
