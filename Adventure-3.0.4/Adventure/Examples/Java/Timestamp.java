import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

class Timestamp {
    public static void main(String[] args) {

        SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");

        String str = ft.format(new Date());

        System.out.println("Timestamp: " + str);
    }
}
