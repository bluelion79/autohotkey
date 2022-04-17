import java.awt.*;
import javax.swing.*;

class ProgressBar {
    private JFrame frame;
    private JPanel panel;
    private JProgressBar progress;

    public void createWindow() {
        try {
            UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");
        } catch (Exception e) {
        }

        frame = new JFrame("Progress Bar");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        progress = new JProgressBar(0, 100);
        progress.setBounds(10, 10, 310, 22);
        progress.setValue(0);
        progress.setStringPainted(true);

        panel = new JPanel(null);
        panel.setBackground(Color.white);
        panel.add(progress);
        frame.add(panel);

        frame.setVisible(true);

        performTask();
    }

    public void performTask() {
        Thread t = new Thread(() -> {
            int i = 0;
            try {
                while (i <= 100) {
                    progress.setValue(i);
     
                    Thread.sleep(50); // milliseconds
                    i++;
                }
            } catch (Exception e) {
            }
        });
        t.start();
    }

    public static void main(String[] args) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                new ProgressBar().createWindow();
            }
        };
        EventQueue.invokeLater(runnable);
    }
}
