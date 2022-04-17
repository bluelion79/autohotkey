import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Button;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class ButtonExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Button Example");

        Button btn = new Button("Button");
        btn.setLayoutX(10);
        btn.setLayoutY(10);
        btn.setMinSize(80, 24);
        btn.setOnAction(e -> buttonClick());

        Pane root = new Pane();
        root.getChildren().add(btn);

        primaryStage.setScene(new Scene(root, 800, 540));
        primaryStage.show();
    }

    public void buttonClick() {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle("Message");
        alert.setHeaderText("Button clicked!");
        alert.setContentText("Details...");
        alert.showAndWait();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
