import javax.swing.*;

class EnumLookAndFeels {
    public static void main(String[] args) {
        System.out.println("Available Look and Feels:\n");

        UIManager.LookAndFeelInfo[] info = UIManager.getInstalledLookAndFeels();

        for (int i = 0; i < info.length; i++) {
            String name = info[i].getName();
            String className = info[i].getClassName();

            System.out.println(name);
            System.out.println(className + "\n");
        }
    }
}
