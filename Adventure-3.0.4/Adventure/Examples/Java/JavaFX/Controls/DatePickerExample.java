import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Button;
import java.time.LocalDate;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class DatePickerExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("DatePicker Example");

        DatePicker dp = new DatePicker();
        dp.setLayoutX(10);
        dp.setLayoutY(10);
        dp.setPrefWidth(180);
        dp.setPrefHeight(24);

        Button btn = new Button("Get Value");
        btn.setLayoutX(200);
        btn.setLayoutY(10);
        btn.setPrefWidth(80);
        btn.setPrefHeight(24);

        btn.setOnAction(e -> {
            LocalDate value = dp.getValue();
            if (value != null) {
                Alert alert = new Alert(AlertType.INFORMATION);
                alert.setTitle("Date");
                alert.setHeaderText(value.toString());
                alert.showAndWait();
            }
        });

        Pane root = new Pane(dp, btn);
        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
