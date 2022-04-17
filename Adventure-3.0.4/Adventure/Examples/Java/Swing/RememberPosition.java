import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import java.util.Properties;

class RememberPosition {
    public static void main(String[] args) {
        final String progname = "RememberPosition";

        final JFrame frame = new JFrame("Remember Position");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        final Properties properties = new Properties();
        try {
            properties.load(new FileInputStream(progname + ".cfg"));
        } catch (IOException e) {
        }

        // Load window settings
        try {
            int x = Integer.parseInt(properties.getProperty("window.x", "100"));
            int y = Integer.parseInt(properties.getProperty("window.y", "100"));
            int w = Integer.parseInt(properties.getProperty("window.w", "800"));
            int h = Integer.parseInt(properties.getProperty("window.h", "600"));
            frame.setLocation(x, y);
            frame.setSize(w, h);

        } catch (NumberFormatException e) {
        }

        frame.setVisible(true);

        frame.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent event) {
                // Save window settings
                properties.setProperty("window.x", "" + frame.getX());
                properties.setProperty("window.y", "" + frame.getY());
                properties.setProperty("window.w", "" + frame.getSize().width);
                properties.setProperty("window.h", "" + frame.getSize().height);

                try {
                    properties.store(new FileOutputStream(progname + ".cfg"), null);
                } catch (IOException e) {
                }
            }
        });
    }
}
