import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.paint.Color;
import javafx.scene.paint.CycleMethod;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;

public class LinearGradientExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("LinearGradient Example");

        Stop[] stops = new Stop[] {
            new Stop(0, Color.DARKSLATEBLUE),
            new Stop(1, Color.rgb(63, 187, 227))
        };

        LinearGradient lg = new LinearGradient(0, 0, 1, 0, true, CycleMethod.NO_CYCLE, stops);

        Pane root = new Pane();
        root.setBackground(new Background(new BackgroundFill(lg, null, null)));

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
