import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Spinner {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Spinner");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        //SpinnerNumberModel(int value, int minimum, int maximum, int stepSize)
        SpinnerModel value = new SpinnerNumberModel(1, 1, 10, 1);

        JSpinner spinner = new JSpinner(value);
        spinner.setBounds(10, 10, 80, 24);

        final JPanel panel = new JPanel(null);
        panel.add(spinner);
        frame.add(panel);

        frame.setVisible(true);
    }
}
