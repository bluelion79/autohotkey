class VariadicFunction {
    public static void main(String[] args) {
        new VariadicFunction("before", "now", "after");
    }

    VariadicFunction(String... strings) {
        showStrings(strings);
    }

    void showStrings(String... strings) {
        for (int i = 0; i < strings.length; i++) {
            System.out.print(strings[i]);

            if (i < (strings.length - 1)) {
                System.out.print(", ");
            }
        }
        System.out.println();
    }
}
