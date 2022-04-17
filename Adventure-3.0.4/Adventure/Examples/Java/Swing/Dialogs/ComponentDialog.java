import javax.swing.*;

class ComponentDialog {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
            //UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");
        } catch (Exception e) {
        }

        ImageIcon icon = new ImageIcon("../Controls/Icons/Info.png");

        Object[] ctls = new Object[8];
        ctls[0] = "Name:";
        ctls[1] = new JTextField("username");
        ctls[2] = "Type:";
        String[] options = {"1", "2", "3"};
        JComboBox cb = new JComboBox<>(options);
        ctls[3] = cb;
        ctls[4] = "Password:";
        ctls[5] = new JPasswordField("password");
        ctls[6] = new JCheckBox("Remember password");
        ctls[7] = " ";

        String[] buttons = {"Save", "Cancel"};

        int result = JOptionPane.showOptionDialog(null, ctls, "Title",
                     JOptionPane.DEFAULT_OPTION, JOptionPane.PLAIN_MESSAGE,
                     icon, buttons, buttons[0]);

        if (result == 0) {
            String name = ((JTextField) ctls[1]).getText();
            int option = ((JComboBox) ctls[3]).getSelectedIndex() + 1;
            JOptionPane.showMessageDialog(null, "Name: " + name + "\nOption: " + option);
        } else {
        }
    }
}
