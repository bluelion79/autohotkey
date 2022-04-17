class Strings {
    public static void main(String[] args) {

        // Simple String declaration
        String s1 = "Java";
        String s2 = "Development";

        // Concatenation using the "+" operator
        String s = s1 + " " + s2 + " ";

        // Concatenation using concat
        String s3 = "Kit";
        // concat: appends a string to the end of another string
        s = s.concat(s3);

        System.out.println(s);

        // String methods

        // length: returns the length of the specified string
        System.out.println("Length of the string: " + s.length());

        System.out.println();

        // charAt: returns the character at the specified position
        System.out.println("(Positions are zero-based.)");
        System.out.println("Character at position 2: " + s.charAt(2));
        // indexOf: returns the position of the first occurrence of the specified characters
        System.out.println("Position of \"Kit\": " + s.indexOf("Kit"));
        // lastIndexOf: returns the position of the last found occurrence of specified characters
        System.out.println("Last occurrence of 'v': " + s.lastIndexOf('v'));

        System.out.println();

        // toLowerCase: converts a string to lower case letters
        System.out.println("Lowercased: " + s.toLowerCase());
        // toUpperCase: converts a string to upper case letters
        System.out.println("Uppercased: " + s.toUpperCase());

        System.out.println();

        // startsWith: checks whether a string starts with specified characters
        System.out.println("Starts with \"JAVA\"?: " + s.startsWith("JAVA"));
        // contains: checks whether a string contains a sequence of characters
        System.out.println("Contains \"Dev\"?: " + s.contains("Dev"));
        // endsWith: checks whether a string ends with the specified characters
        System.out.println("Ends with \"Kit\"?: " + s.endsWith("Kit"));

        System.out.println();

        // replace: searches for and replaces with a string of a specified value
        System.out.println("Replace \"Java\" with \"Software\": " + s.replace("Java", "Software"));
        // replaceAll: replaces all substrings that matches a regular expression
        System.out.println("Replace all spaces: " + s.replaceAll("\\s", "."));
        // replaceFirst: replaces the first occurrence of a substring that matches a regular expression
        System.out.println("Replace the first space: " + s.replaceFirst("\\s", "+"));

        System.out.println();

        // substring: returns a new string which is a substring of the specified range
        String substr = s.substring(4, 17);
        System.out.println("Substring (4, 17): \"" + substr + "\"");
        // trim: removes whitespace from both ends of a string
        System.out.println("Trimmed: \"" + substr.trim() + "\"");

        System.out.println();

        // split: splits a string into an array of substrings
        System.out.println("String split:");
        String[] aString = s.split(" "); // or regex "\s"
        for (String ss : aString) {
            System.out.println(ss);
        }

        System.out.println();

        // A String is an array of characters
        char[] aChars = {'J', 'A', 'V', 'A'};
        s = new String(aChars);
        System.out.println(s);
        // toCharArray: converts a string to a new character array
        System.out.print("Char array: ");
        aChars = s.toCharArray();
        for (char c : aChars) {
            System.out.print(c + " ");
        }
        System.out.println();

        // equals: compares two strings, returning true of false
        System.out.println("Equals \"Java\"?: " + s.equals("Java"));
        // equalsIgnoreCase: compares two strings, ignoring case, returning true or false
        System.out.println("Equals \"Java\" (ignore case)?: " + s.equalsIgnoreCase("Java"));
        // compareTo: compares two strings
        System.out.println("Compared with \"ava\"?: " + s.compareTo("ava"));
        // compareToIgnoreCase(): compares two strings, ignoring case
        System.out.println("Compared with \"ava\" (ignore case)?: " + s.compareToIgnoreCase("ava"));

        System.out.println();

        // codePointAt: returns the Unicode value of the character at the specified index
        System.out.println("Unicode value of the first char: " + s.codePointAt(0));
        // getBytes: encodes a String into a sequence of bytes, storing the result into a byte array
        System.out.print("Sequence of bytes: ");
        byte[] aBytes = s.getBytes();
        for (int i = 0; i < aBytes.length; i++) {
            System.out.print(aBytes[i] + " ");
        }
        System.out.print("\nEncoded as UTF-16: ");
        try {
            aBytes = s.getBytes("UTF-16");
            for (int i = 0; i < aBytes.length; i++) {
                System.out.print(aBytes[i] + " ");
            }
        } catch (java.io.UnsupportedEncodingException e) {
        }
        System.out.println("\n");

        // toString: returns a String representation of an object
        int i = 10;
        double f = 2.5;
        System.out.println(Integer.toString(i));
        System.out.println(Double.toString(f));

        // printf: prints formatted output using the specified format arguments
        System.out.printf("%c %d %.2f 0x%H\n\n", 'A', 3, 3.14, 32);
    }
}
