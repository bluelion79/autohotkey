import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class AddRemoveItems implements ActionListener {
    private JFrame frame;
    private JTextField textField;
    private JPanel panel;
    private JButton buttonAdd;
    private JButton buttonRmv;
    private JList list;
    private DefaultListModel<String> listModel;

    public void displayGUI() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Add/Remove Items");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        panel = new JPanel(null);

        textField = new JTextField("Item n");
        textField.setBounds(10, 10, 200, 24);

        buttonAdd = new JButton("Add");
        buttonAdd.setBounds(220, 10, 80, 24);
        buttonAdd.addActionListener(this);

        buttonRmv = new JButton("Remove");
        buttonRmv.setBounds(220, 38, 80, 24);
        buttonRmv.addActionListener(this);

        listModel = new DefaultListModel<>();
        listModel.addElement("Item 1");
        listModel.addElement("Item 2");
        listModel.addElement("Item 3");

        list = new JList<>(listModel);
        list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        list.setSelectedIndex(0);
        list.setVisibleRowCount(3);
        JScrollPane scroll = new JScrollPane(list);
        scroll.setBounds(10, 38, 200, 300);

        panel.add(textField);
        panel.add(buttonAdd);
        panel.add(buttonRmv);
        panel.add(scroll);

        frame.add(panel);

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new AddRemoveItems().displayGUI();
            }
        };
        EventQueue.invokeLater(runnable);
    }

    public void actionPerformed(ActionEvent event) {
        Object whichbtn = event.getSource();

        if (whichbtn == buttonAdd) {
            if (!textField.getText().isEmpty()) {
                listModel.addElement(textField.getText());
            } else {
                JOptionPane.showMessageDialog(null, "The field is empty.");
            }

        } else if (whichbtn == buttonRmv) {
            int index = list.getSelectedIndex();
            if (index != -1) {
                listModel.remove(index);                
            } else {
                JOptionPane.showMessageDialog(null, "No item selected.");
            }
        }
    }
}
