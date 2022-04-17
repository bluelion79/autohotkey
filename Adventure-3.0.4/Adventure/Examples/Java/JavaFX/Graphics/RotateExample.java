import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import java.io.FileInputStream; 
import java.io.FileNotFoundException;
import javafx.animation.RotateTransition;
import javafx.util.Duration;

public class RotateExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Rotate Example");

        ImageView view = loadImage("../Controls/Icons/Info.png");

        RotateTransition rt = new RotateTransition();
        rt.setDuration(Duration.millis(1000));
        rt.setNode(view);
        rt.setByAngle(360);
        rt.setCycleCount(50);
        rt.setAutoReverse(false);
        rt.play();

        StackPane root = new StackPane(view);
        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public ImageView loadImage(String filepath) {
        try {
            FileInputStream file = new FileInputStream(filepath);

            Image image = new Image(file);
            ImageView view = new ImageView(image);

            return view;

        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
