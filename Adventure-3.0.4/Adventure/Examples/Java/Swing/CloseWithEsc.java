import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class CloseWithEsc {
    public static void main(String[] args) {

        JFrame frame = new JFrame("Close with Esc");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setVisible(true);
        frame.setLocationRelativeTo(null);

        // anonymous inner class
        /*
        frame.addKeyListener(new KeyAdapter() { 
            public void keyPressed(KeyEvent evt) { 
                if (evt.getKeyCode() == KeyEvent.VK_ESCAPE) {
                    System.exit(0);
                }
            }
        });
        */

        frame.addKeyListener(new OnKeyPress());
    }

    public static class OnKeyPress extends KeyAdapter {
        public void keyPressed(KeyEvent evt) {
            if (evt.getKeyCode() == KeyEvent.VK_ESCAPE) {
                System.exit(0);
            }
        }
    }
}
