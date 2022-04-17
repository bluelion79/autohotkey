import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.paint.Color;
import javafx.scene.effect.Reflection;

public class ReflectionExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Reflection Effect");

        Text text = new Text("Reflection");

        text.setFont(Font.font("Verdana", FontWeight.BOLD, 50));
        Color fillColor = Color.web("0xDDDDBB");
        Color strokeColor = Color.web("0x000000");
        text.setFill(fillColor);
        text.setStroke(strokeColor);
        text.setStrokeWidth(2);

        Reflection reflection = new Reflection();
        text.setEffect(reflection);

        Scene scene = new Scene(new StackPane(text), 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
