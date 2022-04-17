import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.TitledPane;
import javafx.scene.control.Label;

public class TitledPaneExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("TitledPane Example");

        Label lbl = new Label("Palestine");

        TitledPane tp = new TitledPane("Show answer", lbl);
        tp.setLayoutX(10);
        tp.setLayoutY(10);
        tp.setPrefWidth(140);
        tp.setPrefHeight(24);

        tp.setExpanded(false);

        Pane root = new Pane(tp);
        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
