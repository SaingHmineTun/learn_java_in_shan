## **Lesson 6: Real-Time Data (Creating a Digital Clock)**

ၵၢၼ်သၢင်ႈၼႃႈလိၵ်ႈၼႆႉ မၼ်းတေလႆႈမီးၵၢၼ် "ႁဵတ်းသၢင်ႈၶိုၼ်း" (Update) ၶေႃႈမုၼ်းၶၢဝ်းယၢမ်း တႃႇသေႇ။ 
ၼႂ်း Java ႁဝ်းတေၸႂ်ႉ `LocalTime` တႃႇလူတ်ႇဢဝ်ၶၢဝ်းယၢမ်း ယၢမ်းလဵဝ် လႄႈ ၸႂ်ႉ `DateTimeFormatter` တႃႇမႄးႁၢင်ႈၾၢင်မၼ်းၶႃႈ။

### **1. Logic ၶွင် Digital Clock**
* **Step 1:** သၢင်ႈ Thread တၢင်ႇဢၼ် (Background Thread) ဢၼ်တေႁဵတ်းၵၢၼ် "Loop" တႃႇသေႇ။
* **Step 2:** ၼႂ်း Loop ၼၼ်ႉ ႁႂ်ႈမၼ်း "လိုဝ်ႈ" (`Thread.sleep`) ဝႆႉ 1 ၸႅၵ်ႉၵၼ်ႉ (1000ms)။
* **Step 3:** လူတ်ႇဢဝ်ၶၢဝ်းယၢမ်း ယၢမ်းလဵဝ် (HH:mm:ss)။
* **Step 4:** သူင်ႇၶၢဝ်းယၢမ်းၼၼ်ႉ ၵႂႃႇပိၼ်ႇၼိူဝ် UI လူၺ်ႈ `Platform.runLater()` ၶႃႈ။

### **2. DateTimeFormatter ဢၼ်ၸႂ်ႉၼမ်**
* `"HH:mm:ss"` : ၼႄ ၸူဝ်ႇမူင်း (24h) : မိၼိတ်ႉ : ၸႅၵ်ႉၵၼ်ႉ။
* `"hh:mm:ss a"` : ၼႄ ၸူဝ်ႇမူင်း (12h) : မိၼိတ်ႉ : ၸႅၵ်ႉၵၼ်ႉ လႄႈ AM/PM။

---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်တေႁဵတ်းႁႂ်ႈ Label ၼိုင်ႈဢၼ် ပဵၼ်ၼႃႇလိၵ်ႈတူင်ႉၼိုင်ယူႇတႃႇသေႇၶႃႈ။

```java
import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class ClockApp extends Application {
    @Override
    public void start(Stage stage) {
        Label lblClock = new Label("00:00:00");
        lblClock.setStyle("-fx-font-size: 50px; -fx-text-fill: #2ecc71; -fx-font-family: 'Courier New';");

        VBox root = new VBox(lblClock);
        root.setAlignment(Pos.CENTER);
        root.setStyle("-fx-background-color: black;");

        // သၢင်ႈ Thread တႃႇ Update ၼႃႇလိၵ်ႈ
        Thread clockThread = new Thread(() -> {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
            while (true) {
                try {
                    // လူတ်ႇဢဝ်ၶၢဝ်းယၢမ်း ယၢမ်းလဵဝ်
                    String currentTime = LocalTime.now().format(dtf);

                    // သူင်ႇၵႂႃႇပိၼ်ႇၼိူဝ် UI
                    Platform.runLater(() -> lblClock.setText(currentTime));

                    // လိုဝ်ႈဝႆႉ 1 ၸႅၵ်ႉၵၼ်ႉ
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    break; 
                }
            }
        });
        
        clockThread.setDaemon(true); // ႁႂ်ႈ Thread ပိၵ်ႉၸွမ်း App
        clockThread.start();

        Scene scene = new Scene(root, 400, 200);
        stage.setTitle("Digital Clock - Lesson 6");
        stage.setScene(scene);
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **LocalTime.now():** ပဵၼ်ၵၢၼ်လူတ်ႇဢဝ်ၶၢဝ်းယၢမ်း ၼႂ်း Computer ႁဝ်းယၢမ်းလဵဝ်။
* **DateTimeFormatter:** ပဵၼ်ၵၢၼ်မႄးႁၢင်ႈၾၢင် String ႁႂ်ႈမၼ်းလီတူၺ်း။
* **Loop + Platform.runLater:** ပဵၼ်ပိုၼ်ႉထၢၼ် ၵၢၼ်သၢင်ႈ App ဢၼ်မီး Real-time Data (မိူၼ်ၼင်ႇ တူၺ်းၵႃႈၶၼ် သိုဝ်ႉၶၢႆၶမ်း ဢမ်ႇၼၼ် တူၺ်းၶေႃႈမုၼ်း CPU) ၶႃႈ။
