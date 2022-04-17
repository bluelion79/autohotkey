import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class MessageBox extends Application {
    @Override
    public void start(Stage primaryStage) {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle("Title");
        alert.setHeaderText("Header Text");
        alert.setContentText("Details...");
        alert.showAndWait();

        alert = new Alert(AlertType.INFORMATION);
        alert.setTitle("Information Dialog");
        alert.setHeaderText(null);
        alert.setContentText("Without header text.\nAnother line of text.");
        alert.showAndWait();

        alert = new Alert(AlertType.ERROR);
        alert.setTitle("Error Dialog");
        alert.setHeaderText("An unexpected error occurred!");
        alert.showAndWait();

        alert = new Alert(AlertType.WARNING);
        alert.setTitle("Warning Dialog");
        alert.setHeaderText("Under no circumstances...");
        alert.showAndWait();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
