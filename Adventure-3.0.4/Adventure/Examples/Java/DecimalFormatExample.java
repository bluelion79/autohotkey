import java.text.DecimalFormat;

class DecimalFormatExample {
    public static void main(String[] args) {

        double income = 123456.789;

        DecimalFormat ft = new DecimalFormat("$###,###.##");

        System.out.println("Formatted decimal value: " + ft.format(income));
    }
}
