import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.ColorPicker;
import javafx.scene.paint.Color;

public class ColorPickerExample extends Application {
    private Scene scene;
    private ColorPicker cp;

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Color Picker Example");

        cp = new ColorPicker();
        cp.setLayoutX(10);
        cp.setLayoutY(10);
        cp.setOnAction(e -> cpClick());

        Group group = new Group(cp);
        scene = new Scene(group, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public void cpClick() {
        Color value = cp.getValue();
        scene.setFill(value);
    }

    public static void main(String[] args) {
        launch(args);
    }
}
