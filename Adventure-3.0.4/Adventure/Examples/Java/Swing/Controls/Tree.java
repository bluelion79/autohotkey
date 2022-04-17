import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.tree.*;

class Tree {
    static DefaultMutableTreeNode root, child1, child2, node, leaf;

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        JFrame frame = new JFrame("Tree Example");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        root = new DefaultMutableTreeNode("All Items");
        node = new DefaultMutableTreeNode("More");
        leaf = new DefaultMutableTreeNode("Item 1");
        node.add(leaf);
        root.add(node);
        child1 = new DefaultMutableTreeNode("Item 1");
        root.add(child1);
        child2 = new DefaultMutableTreeNode("Item 2");
        root.add(child2);

        JTree tree = new JTree(root);
        tree.setShowsRootHandles(true);

        // Icons
        DefaultTreeCellRenderer renderer = (DefaultTreeCellRenderer) tree.getCellRenderer();
        ImageIcon closedIcon = new ImageIcon("Icons/ClosedFolder.png");
        renderer.setClosedIcon(closedIcon);
        ImageIcon openIcon = new ImageIcon("Icons/OpenFolder.png");
        renderer.setOpenIcon(openIcon);
        ImageIcon leafIcon = new ImageIcon("Icons/Properties.png");
        renderer.setLeafIcon(leafIcon);

        JScrollPane scroll = new JScrollPane(tree);
        scroll.setBounds(10, 10, 250, 400);

        final JPanel panel = new JPanel(null);
        panel.add(scroll);
        frame.add(panel);

        frame.setVisible(true);
    }
}
