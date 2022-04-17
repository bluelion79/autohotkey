class BubbleSort {
    public static void main(String[] args) {
        int[] numbers = {3, 1, 5, 2, 4};

        System.out.println("Array before sorting:");
        for(int i = 0; i < numbers.length; i++) {  
            System.out.print(numbers[i] + " ");
        }  
        System.out.println();
                  
        sortNumbers(numbers);

        System.out.println("Array after sorting:");
        for(int i = 0; i < numbers.length; i++) {
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }

    public static void sortNumbers(int[] arr) {
        int n = arr.length;
        int temp = 0;

        for (int i = 0; i < n; i++) {
            for (int j = 1; j < (n - i); j++) {
                if (arr[j - 1] > arr[j]) {
                    temp = arr[j - 1];
                    arr[j - 1] = arr[j];
                    arr[j] = temp;
                }
            }
        }
    }
}
