import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.paint.Color;

public class TextExample extends Application {
    @Override
    public void start(Stage primaryStage) throws Exception {

        StackPane pane = new StackPane();

        Text text = new Text("Sample Text");
        text.setFont(Font.font("Verdana", FontWeight.BOLD, 50));
        Color fillColor = Color.rgb(63, 187, 227);
        Color strokeColor = Color.web("0x356BC0");
        text.setFill(fillColor);
        text.setStroke(strokeColor);
        text.setStrokeWidth(2);

        pane.getChildren().add(text);

        Scene scene = new Scene(pane, 800, 540);

        primaryStage.setTitle("Text Example");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
