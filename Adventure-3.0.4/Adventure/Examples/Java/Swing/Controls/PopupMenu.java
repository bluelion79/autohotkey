import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class PopupMenu {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Popup Menu");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        final JPopupMenu popupmenu = new JPopupMenu();

        JMenuItem menuitem1 = new JMenuItem("Item 1");
        JMenuItem menuitem2 = new JMenuItem("Item 2");
        popupmenu.add(menuitem1);
        popupmenu.add(menuitem2);

        frame.addMouseListener(new MouseAdapter() {
            public void mousePressed(MouseEvent evt) {
                if (evt.isPopupTrigger()) {
                    popupmenu.show(evt.getComponent(), evt.getX(), evt.getY());
                }
            }
            public void mouseReleased(MouseEvent evt) {
                if (evt.isPopupTrigger()) {
                    popupmenu.show(evt.getComponent(), evt.getX(), evt.getY());
                }
            }
        });

        frame.setVisible(true);
    }
}
