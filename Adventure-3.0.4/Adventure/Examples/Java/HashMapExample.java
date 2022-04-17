import java.util.HashMap;

class HashMapExample {
    public static void main(String[] args) {

        HashMap<Integer, String> webdev = new HashMap<Integer, String>();
        // Add items
        webdev.put(1, "HTML");
        webdev.put(2, "CSS");
        webdev.put(3, "JavaScript");
        webdev.put(4, "Flash");

        // Remove item
        webdev.remove(4);

        // Update items
        webdev.put(1, "HTML5");
        webdev.put(2, "CSS3");

        // Print values
        for (String s : webdev.values()) {
            System.out.println(s);
        }

        System.out.println();

        System.out.println("Contains key 1? " + webdev.containsKey(1));
        System.out.println("Contains value \"PHP\"? " + webdev.containsValue("PHP"));

        System.out.println();

        // Get size
        int size = webdev.size();
        System.out.println(size + " " + (size > 1 ? "items" : "item") + ":");

        // Print keys and values
        for (int i : webdev.keySet()) {
            System.out.println(i + ": " + webdev.get(i));
        }

        System.out.println();

        // Remove all items
        webdev.clear();
    }
}
