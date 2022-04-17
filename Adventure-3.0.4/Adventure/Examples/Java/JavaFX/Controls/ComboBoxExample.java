import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Button;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class ComboBoxExample extends Application {
    private ComboBox<String> cbx;

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("ComboBox Example");

        cbx = new ComboBox<>();
        cbx.setLayoutX(10);
        cbx.setLayoutY(10);
        cbx.setPrefWidth(120);
        cbx.setPrefHeight(24);
        cbx.setEditable(true);
        cbx.setOnAction(e -> cbxHandler());

        cbx.getItems().add("Item 1");
        cbx.getItems().add("Item 2");
        cbx.getItems().add("Item 3");

        Button btn = new Button("Get Value");
        btn.setLayoutX(138);
        btn.setLayoutY(10);
        btn.setPrefWidth(84);
        btn.setPrefHeight(24);
        btn.setOnAction(e -> cbxHandler());

        Pane root = new Pane();
        root.getChildren().addAll(cbx, btn);

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public void cbxHandler() {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle("ComboBox");
        alert.setHeaderText("Selected item: " + cbx.getValue());
        alert.showAndWait();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
