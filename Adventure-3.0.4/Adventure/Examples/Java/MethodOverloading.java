class MethodOverloading {

    public static void main(String[] args) {
        count(3);
        System.out.println();

        count(3, true);
        System.out.println();

        count(10, 14);
        System.out.println();

        count(14, 10);
        System.out.println();

        Integer[] numbers = {1, 2, 3, 4};
        System.out.println(count(numbers));
    }

    public static void count(int max) {
        count(1, max);
    }

    public static void count(int max, boolean backwards) {
        if (backwards) {
            count(max, 1);
        } else {
            count(max);
        }
    }

    public static void count(int start, int end) {
        if (start > end) {
            for (int i = start; i >= end; i--) {
                System.out.println(i);
            }
        } else {
            for (int i = start; i <= end; i++) {
                System.out.println(i);
            }
        }
    }

    public static Integer count(Object[] items) {
        return items.length;
    }
}
