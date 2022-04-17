import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ButtonBar;

public class ConfirmDialog2 extends Application {
    @Override
    public void start(Stage primaryStage) {

        // Yes-No-Cancel
        Alert confirm = new Alert(AlertType.CONFIRMATION);
        confirm.setTitle("Confirm");
        confirm.setHeaderText("The file was modified.");
        confirm.setContentText("Do you want to save it?\n\n");

        ButtonType btnYes = new ButtonType("_Yes", ButtonBar.ButtonData.YES);
        ButtonType btnNo = new ButtonType("_No", ButtonBar.ButtonData.NO);
        ButtonType btnCancel = new ButtonType("_Cancel", ButtonBar.ButtonData.CANCEL_CLOSE);

        confirm.getButtonTypes().setAll(btnYes, btnNo, btnCancel);

        confirm.showAndWait().ifPresent(type -> {
            if (type == btnYes) {
                // User selected Yes.
            } else if (type == btnNo) {
                // User selected No.
            } else {
                // User selected Cancel.
            }
        });
    }

    public static void main(String[] args) {
        launch(args);
    }
}
