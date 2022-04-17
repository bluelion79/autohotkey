import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import java.util.Optional;
import javafx.scene.control.ButtonType;

public class ConfirmDialog1 extends Application {
    @Override
    public void start(Stage primaryStage) {

        // OK-Cancel
        Alert confirm = new Alert(AlertType.CONFIRMATION);
        confirm.setTitle("Exit");
        confirm.setHeaderText("Are you sure you want to quit?");

        Optional<ButtonType> result = confirm.showAndWait();
        if (result.get() == ButtonType.OK) {
            // User selected OK.
        } else {
            // User selected Cancel.
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
