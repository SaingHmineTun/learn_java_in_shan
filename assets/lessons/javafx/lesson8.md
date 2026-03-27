## **Lesson 8: UI Refinement & Final Dashboard Assembly**

ၵၢၼ်သၢင်ႈ App ၼိုင်ႈဢၼ်ၼၼ်ႉ ဢမ်ႇၵူၺ်းၵႃႈ တႅမ်ႈ Code ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈ၊ ႁဝ်းတေလႆႈမႄး (Refine) ႁႂ်ႈမၼ်းတူၺ်းလီ (User Experience) ထႅင်ႈၶႃႈ။

### **1. ၵၢၼ်ၸတ်းဝၢင်း Layout ႁႂ်ႈမီးၸၼ်ႉ (Professional Layout)**
ႁဝ်းတေၸႂ်ႉ `VBox` တူဝ်ငဝ်ႈ (Root) သေ ဝၢင်း `HBox` သွၼ်ႉဝႆႉၼႂ်းမၼ်း ထႅင်ႈၵမ်းၼိုင်ႈ တႃႇမၢႆၸၼ်ႉၶေႃႈမုၼ်း:
* **Header:** သႂ်ႇ Logo လႄႈ ၸိုဝ်ႈ App။
* **Body:** ၼႄၶေႃႈမုၼ်း System (OS, User, Java)။
* **Footer:** ၼႄၼႃႇလိၵ်ႈ (Clock) ဢၼ်တူင်ႉၼိုင်ယူႇတႃႇသေႇ။

### **2. UI Refinement (ၵၢၼ်မႄးႁၢင်ႈၾၢင်)**
* **Padding & Insets:** သႂ်ႇၶွပ်ႇ (Margin) ႁႂ်ႈ Nodes ဢမ်ႇၵပ်းၶွပ်ႇ Window ပူတ်း။
* **Corner Radii:** မႄးႁဵတ်းႁႂ်ႈ Background ႁဝ်းမီးၸဵင်ႇမူၼ်း (Rounded Corners) လူၺ်ႈ CSS။
* **Drop Shadow:** သႂ်ႇႁူမ်ႈ (Shadow) ႁႂ်ႈလိၵ်ႈ ဢမ်ႇၼၼ် Logo တူၺ်းမီး Dimension ၶိုၼ်ႈမႃး။

---

### **Sample Code (Final Assembly)**

ၼႆႉပဵၼ် Code တူဝ်ယၢင်ႇ ဢၼ်တေပဵၼ် **Final Project** ၶွင် Module 1 ၶႃႈ။

```java
import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class FinalDashboard extends Application {

    @Override
    public void start(Stage stage) {
        // --- 1. UI Elements ---
        // Header Logo
        String logoPath = getClass().getResource("/logo.png").toExternalForm();
        ImageView logo = new ImageView(new Image(logoPath));
        logo.setFitWidth(60);
        logo.setPreserveRatio(true);

        Label lblTitle = new Label("SYSTEM MONITOR");
        lblTitle.setStyle("-fx-font-size: 22px; -fx-text-fill: #00d2ff; -fx-font-weight: bold;");

        // Body Information
        Label lblUser = new Label("Logged in as: " + System.getProperty("user.name"));
        Label lblOS = new Label("OS: " + System.getProperty("os.name"));
        
        String infoStyle = "-fx-text-fill: #ecf0f1; -fx-font-size: 14px;";
        lblUser.setStyle(infoStyle);
        lblOS.setStyle(infoStyle);

        // Footer Clock
        Label lblClock = new Label("00:00:00");
        lblClock.setStyle("-fx-font-size: 35px; -fx-text-fill: #f39c12; -fx-font-family: 'Courier New';");

        // --- 2. Layout Assembly ---
        VBox root = new VBox(15);
        root.setPadding(new Insets(30));
        root.setAlignment(Pos.CENTER);
        
        // CSS Style: Dark Mode with Rounded Borders
        root.setStyle(
            "-fx-background-color: #1e272e; " +
            "-fx-background-radius: 20px; " +
            "-fx-border-color: #00d2ff; " +
            "-fx-border-radius: 20px; " +
            "-fx-border-width: 2px;"
        );

        root.getChildren().addAll(logo, lblTitle, lblUser, lblOS, lblClock);

        // --- 3. Real-time Logic (Thread) ---
        Thread clockThread = new Thread(() -> {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
            while (true) {
                String timeNow = LocalTime.now().format(dtf);
                Platform.runLater(() -> lblClock.setText(timeNow));
                try { Thread.sleep(1000); } catch (InterruptedException e) { break; }
            }
        });
        clockThread.setDaemon(true);
        clockThread.start();

        // --- 4. Scene & Stage ---
        Scene scene = new Scene(root, 400, 450);
        // ႁဵတ်းႁႂ်ႈ Stage ပဵၼ် Transparent ဢမ်ႇၼၼ် မီး Style ဢၼ်ႁၢင်ႈလီ
        stage.setTitle("Mao Dashboard v1.0");
        stage.setScene(scene);
        stage.setResizable(false); // ဢမ်ႇပၼ်ယဵတ်ႈၶၼၢတ်ႉ
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **Assembly:** ၵၢၼ်ဢဝ် Code တၢင်းသဵင်ႈမႃးၸတ်းဝၢင်းႁႂ်ႈမၼ်းပဵၼ် ပိူင် (System) လဵဝ်ၵၼ်။
* **Polishing:** ၵၢၼ်မႄးသီ၊ မႄးၶွပ်ႇ လႄႈ မႄး Alignment ႁႂ်ႈ App ႁဝ်းတူၺ်း "Professional"။
* **Functionality:** App ႁဝ်းလူတ်ႇၶေႃႈမုၼ်း System လႆႈ လႄႈ ၼႃႇလိၵ်ႈၵေႃႈတူင်ႉၼိုင်လႆႈတႄႉၶႃႈ။



တွၼ်ႈသွၼ်ၼႆႉ ပဵၼ်ၵၢၼ်ယဝ်ႉတူဝ်ႈ **Module 1** ယဝ်ႉၶႃႈ! လုၵ်ႈႁဵၼ်းၶဝ်တေမီး App ဢၼ်ႁဵတ်းၵၢၼ်လႆႈတႄႉတႄႉ ၼႂ်းမိုဝ်းၶဝ်ယဝ်ႉ။

**Shall we move to Module 2 and start from Lesson 9: Introduction to Scene Builder & FXML Structure?**