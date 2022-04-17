import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class EnvironmentVariables {
    public static void main(String[] args) throws Exception {

        Map<String, String> envMap = System.getenv();
        SortedMap<String, String> sortedEnvMap = new TreeMap<String, String>(envMap);
        Set<String> keySet = sortedEnvMap.keySet();

        for (String key : keySet) {
            String value = envMap.get(key);
            System.out.println(key + "=" + value);
        }
    }
}
