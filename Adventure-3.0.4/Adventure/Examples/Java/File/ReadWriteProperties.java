import java.util.Properties;
import java.io.*;

class ReadWriteProperties {
    public static void main(String[] args) {
        Properties properties = new Properties();

        // Load
        try {
            properties.load(new FileInputStream("PropertiesFile.cfg"));
        } catch (IOException e) {
        }

        // Get
        String bgcolor = properties.getProperty("options.bgcolor", "0xFFFFFF"); // Default value
        String fgcolor = properties.getProperty("options.fgcolor", "0x1F609F");

        System.out.println("BG color: " + bgcolor + "\nFG color: " + fgcolor);

        // Set
        properties.setProperty("feature.enabled", "1");
        properties.setProperty("options.bgcolor", "0xFAFAFA"); // New value

        // Store
        try {
            properties.store(new FileOutputStream("PropertiesFile.cfg"), null);
        } catch (IOException e) {
        }
    }
}
