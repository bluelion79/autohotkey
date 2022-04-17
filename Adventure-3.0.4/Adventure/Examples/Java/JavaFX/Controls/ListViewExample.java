import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.control.TextField;
import javafx.scene.control.Button;
import javafx.scene.control.ListView;

public class ListViewExample extends Application {
    private TextField tf;
    private ListView<String> lv;

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("ListView Example");

        tf = new TextField("New Item");
        tf.setLayoutX(10);
        tf.setLayoutY(10);
        tf.setPrefWidth(200);
        tf.setPrefHeight(24);

        Button btnAdd = new Button("Add");
        btnAdd.setLayoutX(220);
        btnAdd.setLayoutY(10);
        btnAdd.setPrefWidth(80);
        btnAdd.setPrefHeight(24);
        btnAdd.setOnAction(e -> addItem());

        Button btnRmv = new Button("Remove");
        btnRmv.setLayoutX(220);
        btnRmv.setLayoutY(40);
        btnRmv.setPrefWidth(80);
        btnRmv.setPrefHeight(24);
        btnRmv.setOnAction(e -> removeItem());

        lv = new ListView<>();
        lv.setLayoutX(10);
        lv.setLayoutY(40);
        lv.setPrefWidth(200);
        lv.setPrefHeight(300);

        lv.getItems().addAll("Item 1", "Item 2", "Item 3");

        Pane root = new Pane(tf, btnAdd, btnRmv, lv);
        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public void addItem() {
        String item = tf.getText();
        if (item != "") {
            lv.getItems().add(item);
        }
    }

    public void removeItem() {
        int index = lv.getSelectionModel().getSelectedIndex();
        if (index != -1) {
            lv.getItems().remove(index);
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
