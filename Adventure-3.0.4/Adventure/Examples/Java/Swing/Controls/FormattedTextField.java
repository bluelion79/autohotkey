import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.text.MaskFormatter;
import java.text.ParseException;

class FormattedTextField {
    public static void main(String[] args) {
        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Formatted Text Field");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        MaskFormatter mask = null;
        try {
            mask = new MaskFormatter("'#HHHHHH");
            mask.setPlaceholderCharacter('_');
        } catch (ParseException e) {
        }

        JFormattedTextField hexfield = new JFormattedTextField(mask);
        hexfield.setBounds(10, 10, 120, 24);

        final JPanel panel = new JPanel(null);
        panel.add(hexfield);
        frame.add(panel);

        frame.setVisible(true);
    }
}
