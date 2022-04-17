import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Set;
import java.util.Iterator;

public class EnumSystemProperties {
    public static void main(String[] args) {
        Properties systemProperties = System.getProperties();
        SortedMap sortedSystemProperties = new TreeMap(systemProperties);
        Set keySet = sortedSystemProperties.keySet();
        Iterator iterator = keySet.iterator();

        while (iterator.hasNext()) {
            String propertyName = (String) iterator.next();
            String propertyValue = systemProperties.getProperty(propertyName);
            System.out.println(propertyName + ": " + propertyValue);
        }
    }
}
