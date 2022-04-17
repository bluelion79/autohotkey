import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Label;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

public class LabelExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Label Example");

        Label lbl = new Label("Hello!");
        lbl.setLayoutX(10);
        lbl.setLayoutY(10);
        lbl.setFont(Font.font("Segoe UI", FontWeight.BOLD, 14));

        Pane pane = new Pane();
        pane.getChildren().add(lbl);

        Scene scene = new Scene(pane, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
