import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.scene.control.ToolBar;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.scene.control.ContentDisplay;
import javafx.scene.control.Tooltip;
import javafx.scene.control.Separator;

public class ToolbarExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Toolbar Example");

        Button btn1 = createToolbarButton("Open", "Icons/OpenFolder.png", "Open", false);
        Button btn2 = createToolbarButton("", "Icons/Save.png", "Save", true);
        Button btn3 = createToolbarButton("", "Icons/Properties.png", "Properties", true);

        ToolBar toolbar = new ToolBar(btn1, btn2, new Separator(), btn3);

        BorderPane root = new BorderPane();
        root.setTop(toolbar);

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public Button createToolbarButton(String label, String iconPath, String tooltip, boolean iconOnly) {

        ImageView view = new ImageView(iconPath);

        Button btn = new Button(label);
        btn.setTooltip(new Tooltip(tooltip));

        btn.setGraphic(view);
        if (iconOnly) {
            btn.setContentDisplay(ContentDisplay.GRAPHIC_ONLY);
        }

        return btn;
    }

    public static void main(String[] args) {
        launch(args);
    }
}
