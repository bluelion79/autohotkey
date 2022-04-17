import java.util.regex.Pattern;
import java.util.regex.Matcher;

class RegExExample {
    public static void main(String[] args) {

        String s = "Sample10Text20";

        Pattern p = Pattern.compile("(\\D+)"); // Groups of non-digits
        Matcher m = p.matcher(s);

        for (int i = 0; m.find(); i++) {
            System.out.println("Found: " + m.group(i));
        }
    }
}
