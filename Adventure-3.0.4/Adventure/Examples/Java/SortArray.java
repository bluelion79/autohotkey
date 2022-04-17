import java.util.Arrays;

class SortArray {
    public static void main(String[] args) {

        int[] numbers = {3, 1, 5, 2, 4};
        Arrays.sort(numbers);

        String[] strings = {"Screen", "Desktop", "TaskBar", "Application", "Window"};
        Arrays.sort(strings);

        System.out.println("Sorted numbers:");
        for(int i = 0; i < numbers.length; i++) {
            System.out.print(numbers[i] + "\n");
        }
        System.out.println();

        System.out.println("Sorted strings:");
        for(int i = 0; i < strings.length; i++) {
            System.out.print(strings[i] + "\n");
        }
        System.out.println();
    }
}
