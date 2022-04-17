import java.awt.*;
import java.awt.datatransfer.*;

class SetClipboardText {
    public static void main(String[] args) {

        StringSelection ss = new StringSelection("New clipboard data!");

        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
    }
}
