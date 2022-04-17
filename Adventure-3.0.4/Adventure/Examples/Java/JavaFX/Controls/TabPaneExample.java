import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.Control;
import javafx.scene.control.TabPane;
import javafx.scene.control.TabPane.TabClosingPolicy;
import javafx.scene.control.Tab;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;

public class TabPaneExample extends Application {
    @Override
    public void start(Stage primaryStage) {
        TabPane tabPane = new TabPane();
        setBounds(tabPane, 0, 0, 800, 540);
        tabPane.setTabMinWidth(100);
        tabPane.setTabClosingPolicy(TabClosingPolicy.UNAVAILABLE);

        // Tab 1
        Pane pane1 = new Pane();
        Button btn = new Button("Choose...");
        setBounds(btn, 10, 10, 100, 24);
        pane1.getChildren().add(btn);

        // Tab 2
        Pane pane2 = new Pane();
        CheckBox chk = new CheckBox("Enabled");
        chk.setSelected(true);
        setBounds(chk, 10, 10, 120, 24);
        pane2.getChildren().add(chk);

        Tab tab1 = new Tab("File", pane1);
        Tab tab2 = new Tab("Options", pane2);
        tabPane.getTabs().addAll(tab1, tab2);

        Pane root = new Pane();
        root.getChildren().add(tabPane);

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setTitle("TabPane Example");
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