import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Control;
import javafx.scene.control.TextField;

public class TextFieldExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("TextField Example");

        TextField tf1 = new TextField("Initial text");
        setBounds(tf1, 10, 10, 250, 24);

        TextField tf2 = new TextField();
        setBounds(tf2, 10, 44, 250, 24);
        tf2.setPromptText("Placeholder text");

        Pane root = new Pane(tf1, tf2);

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public void setBounds(Control ctl, int x, int y, int width, int height) {
        ctl.setLayoutX(x);
        ctl.setLayoutY(y);
        ctl.setPrefWidth(width);
        ctl.setPrefHeight(height);
    }

    public static void main(String[] args) {
        launch(args);
    }
}
