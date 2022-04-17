import java.awt.*;

class EnumFonts {
    public static void main(String[] args) {
        System.out.println("Available Fonts:\n");

        GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
        String fonts[] = ge.getAvailableFontFamilyNames();

        for (int i = 0; i < fonts.length; i++) {
            System.out.println(fonts[i]);
        }

        System.out.println();
    }
}
