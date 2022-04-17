import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.fxml.FXMLLoader;

public class Example1 extends Application {
    @Override
    public void start(Stage primaryStage) throws Exception {
        Scene scene = FXMLLoader.load(getClass().getResource("Example1.fxml"));
        primaryStage.setTitle("FXML Example 1");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
