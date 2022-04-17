class Shape {
    public void message() {
        System.out.println("An abstract shape.");
    }
}

class Triangle extends Shape {
    @Override 
    public void message() {
        System.out.println("A triangle.");
    }
}

public class MethodOverriding {
    public static void main(String[] args) {

        Shape generic = new Shape();
        generic.message();

        Shape specific = new Triangle();  
        specific.message();
    }
}
