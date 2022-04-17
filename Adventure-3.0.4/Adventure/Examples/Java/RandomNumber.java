import java.util.Random;

class RandomNumber {
    public static void main(String[] args) {
        Random rand = new Random();

        int upperBound = 100;
        int num = rand.nextInt(upperBound) + 1;
        //int random_int = (int)Math.floor(Math.random() * (max - min + 1) + min);

        System.out.println("Random number: " + num);
    }
}
