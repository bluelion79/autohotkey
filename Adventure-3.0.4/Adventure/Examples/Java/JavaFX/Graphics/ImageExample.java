import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import java.io.FileInputStream; 
import java.io.FileNotFoundException;

public class ImageExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Image Example");

        ImageView view = loadImage("../Controls/Icons/Info.png", 10, 10, -1, -1, true);

        Pane root = new Pane(view);
        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public ImageView loadImage(String filepath, int X, int Y, int width, int height, boolean preserveAR) {
        try {
            FileInputStream file = new FileInputStream(filepath);

            Image image = new Image(file);
            ImageView view = new ImageView(image);

            view.setX(X);
            view.setY(Y);

            if (width != -1) {
                view.setFitWidth(width);
                view.setFitHeight(height);
                view.setPreserveRatio(preserveAR);
            }

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
