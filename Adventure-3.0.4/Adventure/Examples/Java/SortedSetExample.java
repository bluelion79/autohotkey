import java.util.*;

class SortedSetExample {
    public static void main(String[] args) {

        HashMap<String, String> java = new HashMap<String, String>();

        java.put("jar", "Create and manage Java Archive (JAR) files.");
        java.put("java", "The launcher for Java applications.");
        java.put("javac", "The compiler for the Java programming language.");
        java.put("javadoc", "API documentation generator.");
        java.put("javaw", "The launcher for GUI applications (no console).");
        java.put("jdb", "The Java Debugger.");

        List<String> sortedKeys = new ArrayList<>(java.keySet());
        Collections.sort(sortedKeys);
        for (String key : sortedKeys) {
            System.out.println(key + ": " + java.get(key));
        }

        /*
        SortedSet<String> keys = new TreeSet<>(java.keySet());
        for (String key : keys) {
            String value = java.get(key);
            System.out.println(key + ": " + value);
        }
        */

        System.out.println();
    }
}
