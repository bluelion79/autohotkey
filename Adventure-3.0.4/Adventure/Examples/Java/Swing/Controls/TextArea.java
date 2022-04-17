import java.awt.*;
import javax.swing.*;

class TextArea {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TextArea");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        Container panel = frame.getContentPane();

        JTextArea textArea = new JTextArea("test");
        textArea.setFont(new Font("Lucida Console", Font.PLAIN, 13));
        textArea.setLineWrap(true);
        textArea.setWrapStyleWord(true);

        JScrollPane scrollableTextArea = new JScrollPane(textArea);

        panel.add(scrollableTextArea);

        frame.setVisible(true);

        textArea.setSize(panel.getSize().width, panel.getSize().height);
    }
}
