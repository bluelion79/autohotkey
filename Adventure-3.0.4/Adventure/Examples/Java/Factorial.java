class Factorial {
    public static int factorial(int n) {
        if (n == 1 || n == 0) {
            return 1;            
        }

        for (int i = n; i > 0; i--, n *= (i > 0 ? i : 1)) {
        }

        return n;
    }

    public static void main(String[] args) {
        for (int i = 0; i <= 10; i++) {
            System.out.println("Factorial of " + i + ": " + factorial(i));
        }
    }
}
