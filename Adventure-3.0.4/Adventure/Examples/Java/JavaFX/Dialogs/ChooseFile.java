import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.*;
import javafx.stage.FileChooser;
import java.io.File;

public class ChooseFile extends Application {
    private TextField tf;

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("FileChooser Example");

        Label lbl = new Label("File:");
        lbl.setLayoutX(10);
        lbl.setLayoutY(10);

        tf = new TextField();
        tf.setLayoutX(10);
        tf.setLayoutY(36);
        tf.setPrefWidth(690);
        tf.setPrefHeight(24);

        Button btn = new Button("Choose...");
        btn.setLayoutX(710);
        btn.setLayoutY(36);
        btn.setPrefWidth(80);
        btn.setPrefHeight(24);
        btn.setOnAction(e -> selectFile(primaryStage));

        Pane root = new Pane(lbl, tf, btn);

        primaryStage.setScene(new Scene(root, 800, 540));
        primaryStage.show();

        btn.requestFocus();
    }

    public void selectFile(Stage stage) {
        FileChooser fc = new FileChooser();

        fc.setInitialDirectory(new File("."));

        fc.getExtensionFilters().addAll(
            new FileChooser.ExtensionFilter("Java Files", "*.java"),
            new FileChooser.ExtensionFilter("Text Files", "*.txt")
        );

        File selectedFile = fc.showOpenDialog(stage);
        if (selectedFile != null) {
            tf.setText(selectedFile.toString());
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
