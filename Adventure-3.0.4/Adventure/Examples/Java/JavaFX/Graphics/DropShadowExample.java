import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.effect.DropShadow;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;

public class DropShadowExample extends Application {
    public void start(Stage primaryStage) {
        primaryStage.setTitle("DropShadow Effect");

        DropShadow dropShadow = new DropShadow();
        dropShadow.setOffsetX(20);
        dropShadow.setOffsetY(20);
        dropShadow.setColor(Color.web("#1F609F"));

        Circle circle = new Circle();
        circle.setRadius(100);
        circle.setFill(Color.web("#1E90FF"));
        circle.setEffect(dropShadow);

        Scene scene = new Scene(new StackPane(circle), 800, 540);
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
