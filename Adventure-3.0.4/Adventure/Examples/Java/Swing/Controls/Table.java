import java.awt.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

class Table {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFrame frame = new JFrame("Table");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        Object[][] cellData = {
            {"1", "Item 1", "Yes"},
            {"2", "Item 2", "Yes"},
            {"3", "Item 3", "No"},
            {"4", "Item 4", "Yes"},
            {"5", "Item 5", "No"},
        };

        // Columns
        String[] colNames = new String[] {"ID", "Name", "Verified"};
        final Class[] columnClass = new Class[] {
            Integer.class, String.class, String.class
        };

        // Table model
        DefaultTableModel model = new DefaultTableModel(cellData, colNames) {
            @Override
            public boolean isCellEditable(int row, int column)
            {
                return false;
            }
            @Override
            public Class<?> getColumnClass(int columnIndex)
            {
                return columnClass[columnIndex];
            }
        };

        JTable table = new JTable(model);
        table.setRowHeight(20);

        table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        table.getColumnModel().getColumn(0).setPreferredWidth(30);
        table.getColumnModel().getColumn(1).setPreferredWidth(200);
        table.getColumnModel().getColumn(2).setPreferredWidth(110);

        JPanel panel = new JPanel(null);

        JScrollPane scroll = new JScrollPane(table);
        scroll.setBounds(10, 10, 764, 250);

        panel.add(scroll);
        frame.add(panel);

        frame.setVisible(true);
    }
}
