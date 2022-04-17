import java.awt.*;
import java.awt.datatransfer.*;
import javax.swing.*;
import java.io.*;

class GetClipboardText {
    public static void main(String[] args) {

        Transferable t = Toolkit.getDefaultToolkit().getSystemClipboard().getContents(null);

        try {
            if (t != null && t.isDataFlavorSupported(DataFlavor.stringFlavor)) {
                String s = (String)t.getTransferData(DataFlavor.stringFlavor);
                JOptionPane.showMessageDialog(null, s, "Clipboard Text", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (UnsupportedFlavorException e) {
        } catch (IOException e) {
        }
    }
}
