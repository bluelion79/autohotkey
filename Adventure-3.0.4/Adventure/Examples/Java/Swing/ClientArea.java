import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ClientArea {
    private void createWindow() {
        final JFrame frame = new JFrame("Client Area");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);
        frame.setLocationRelativeTo(null);

        frame.addComponentListener(new ComponentAdapter() {
            @Override
            public void componentResized(ComponentEvent e) {
                // Window size
                String windowSize = frame.getWidth() + " x " + frame.getHeight();
                //Dimension dimSize = e.getComponent().getSize();
                //String windowSize = dimSize.width + " x " + dimSize.height;

                // Client size
                Rectangle rect = frame.getContentPane().getBounds();
                String clientSize = "(" + rect.width + " x " + rect.height + ")";

                System.out.println(windowSize + " " + clientSize);
            }
        });

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new ClientArea().createWindow();
            }
        };
        EventQueue.invokeLater(runnable);
    }
}
