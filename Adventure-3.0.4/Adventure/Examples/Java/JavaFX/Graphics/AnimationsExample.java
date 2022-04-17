import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import java.io.FileInputStream; 
import java.io.FileNotFoundException;
import javafx.animation.Transition;
import javafx.animation.FadeTransition;
import javafx.animation.RotateTransition;
import javafx.animation.ScaleTransition;
import javafx.animation.TranslateTransition;
import javafx.util.Duration;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Button;
import javafx.scene.control.Control;
import javafx.animation.Animation;
import javafx.animation.Animation.Status;

public class AnimationsExample extends Application {
    private ImageView view;
    private ComboBox<String> cbx;

    private RotateTransition rt = new RotateTransition();
    private ScaleTransition st = new ScaleTransition();
    private TranslateTransition tt = new TranslateTransition();
    private FadeTransition ft = new FadeTransition();

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Animations Example");

        view = loadImage("../Controls/Icons/Info.png", (800/2) - (96/2), (540/2) - (96/2), -1, -1, true);

        cbx = new ComboBox<>();
        setBounds(cbx, 10, 10, 120, 24);
        cbx.getItems().add("Fade");
        cbx.getItems().add("Rotate");
        cbx.getItems().add("Scale");
        cbx.getItems().add("Translate");
        cbx.getSelectionModel().select(1);

        Button btnStart = new Button("Start");
        btnStart.setDefaultButton(true);
        setBounds(btnStart, 140, 10, 84, 24);
        btnStart.setOnAction(e -> start());

        Button btnStop = new Button("Stop");
        setBounds(btnStop, 232, 10, 84, 24);
        btnStop.setOnAction(e -> stop());

        Pane root = new Pane(cbx, btnStart, btnStop, view);

        Scene scene = new Scene(root, 800, 540);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public void setBounds(Control ctl, int x, int y, int width, int height) {
        ctl.setLayoutX(x);
        ctl.setLayoutY(y);
        ctl.setPrefWidth(width);
        ctl.setPrefHeight(height);
    }

    public void start() {
        String animtype = cbx.getValue();

        if (animtype == "Rotate" && !isRunning(rt)) {
            rotate();

        } else if (animtype == "Scale" && !isRunning(st)) {
            scale();

        } else if (animtype == "Translate" && !isRunning(tt)) {
            translate();

        } else if (animtype == "Fade" && !isRunning(ft)) {
            fade();
        }
    }

    public boolean isRunning(Transition t) {
        return t.getStatus() == Animation.Status.RUNNING;
    }

    public void stop() {
        String animtype = cbx.getValue();

        if (animtype == "Rotate") {
            rt.stop();

        } else if (animtype == "Scale") {
            st.stop();

        } else if (animtype == "Translate") {
            tt.stop();

        } else if (animtype == "Fade") {
            ft.stop();
        }
    }

    public void rotate() {
        rt.setDuration(Duration.millis(1500));
        rt.setNode(view);
        rt.setByAngle(360);
        rt.setCycleCount(-1);
        rt.setAutoReverse(false);
        rt.play();
    }

    public void scale() {
        st.setDuration(Duration.millis(1000));
        st.setNode(view);
        st.setByX(1.5);
        st.setByY(1.5);
        st.setCycleCount(-1);
        st.setAutoReverse(true);
        st.play();
    }

    public void translate() {
        tt.setDuration(Duration.millis(2000));
        tt.setNode(view);
        tt.setFromX(-300);
        tt.setToX(300);
        tt.setCycleCount(-1);
        tt.setAutoReverse(true);
        tt.play();
    }

    public void fade() {
        ft.setDuration(Duration.millis(2500));
        ft.setNode(view);
        ft.setToValue(0);
        ft.setCycleCount(-1);
        ft.setAutoReverse(true);
        ft.play();
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
