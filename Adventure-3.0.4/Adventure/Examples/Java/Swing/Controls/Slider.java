import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Slider {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Slider");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        int minimum = 0;
        int maximum = 100;
        int initValue = 33;

        JSlider slider = new JSlider(JSlider.HORIZONTAL, minimum, maximum, initValue);
        slider.setBounds(10, 10, 300, 24);

        final JPanel panel = new JPanel(null);
        panel.add(slider);
        frame.add(panel);

        frame.setVisible(true);
    }
}
