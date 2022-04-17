import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class EditorPane {
    public static void main(String[] args) {

        final JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Editor Pane");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        // HTML 3.2
        String html = "<style>.TH {color: #FFFFFF; background-color: #00AEFF;}"
        + "#hdr {background-color: #0099CC; padding-left: 10px;}"
        + "#ftr {background-color: #EEFFCC; border: 1px dashed #48C746;}"
        + "TD {background-color: #E8FBFF;}</style>"

        + "<div id='hdr'>"
        + "<h3 style='color: #FFFFFF; font-family: Verdana; font-size: 9px'>Message</h3>"
        + "</div>"

        + "<b>Bold</b><br/>"
        + "<i>Italics</i><br/>"
        + "<a href='about:blank'>Link</a><hr/>"

        + "<center><table border='1'>"
        + "<tr><td class='TH'>ID</td><td class='TH'>Name</td><td class='TH'>Ordinal</td></tr>"
        + "<tr><td>1</td><td>One</td><td>First</td></tr>"
        + "<tr><td>2</td><td>Two</td><td>Second</td></tr>"
        + "</table></center><br/>"

        + "<div id='ftr'>Numbers</div><br/>";

        JEditorPane pane = new JEditorPane("text/html", html);
        pane.setEditable(true); // Default

        frame.setContentPane(pane);

        frame.setVisible(true);
    }
}
