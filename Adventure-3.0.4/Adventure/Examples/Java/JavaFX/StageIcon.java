import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.image.Image;

public class StageIcon extends Application {
    @Override
    public void start(Stage stage) {
        Pane root = new Pane();
        Scene scene = new Scene(root, 800, 540);

        stage.setTitle("Stage Icon");
        stage.setScene(scene);
        //stage.getIcons().add(new Image("file:Controls/Icons/Info.png"));
        stage.getIcons().add(new Image(getClass().getResourceAsStream("Controls/Icons/Info.png")));
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
