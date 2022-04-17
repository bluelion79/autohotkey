import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Map;
import java.util.TreeMap;

public class WordCounter {
    public static void main(String[] args) {
        try {
            File f = new File("WordCounter.java"); // This file

            Scanner sc;
            sc = new Scanner(f);
            sc.useDelimiter("[^a-zA-Z'-]+");

            Map<String, Integer> wordCount = new TreeMap<String, Integer>();

            while (sc.hasNext()) {
                String word = sc.next();

                if (!wordCount.containsKey(word)) {
                    wordCount.put(word, 1); // Add keyword
                } else {
                    wordCount.put(word, wordCount.get(word) + 1); // Increment counter
                }
            }

            System.out.println(wordCount.size() + " entries:\n");

            for (String word : wordCount.keySet()) {
                System.out.println(word + " " + wordCount.get(word));
            }

            System.out.println();

        } catch(IOException e) {
            System.out.println(e.getMessage());
        }
    }
}
