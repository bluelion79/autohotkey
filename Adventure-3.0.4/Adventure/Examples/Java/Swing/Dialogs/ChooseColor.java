import javax.swing.*;
import java.awt.Color;

class ChooseColor {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
        }

        Color cc = JColorChooser.showDialog(null, "Choose a color", Color.magenta);

        //String sc = String.format("0x%02X%02X%02X", cc.getRed(), cc.getGreen(), cc.getBlue());

        if (cc != null) {
            JOptionPane.showMessageDialog(null, "Returned value: " + cc
                + "\nHex value: " + color2HexString("0x", cc)
                + "\nHTML notation: " + color2HexString("#", cc));
        }
    }

    public static String color2HexString(String prefix, Color color) {
        return prefix + Integer.toHexString(color.getRGB() & 0x00FFFFFF).toUpperCase();
    }
}
