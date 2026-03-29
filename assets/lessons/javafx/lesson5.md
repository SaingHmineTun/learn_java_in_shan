## **Lesson 5: The JavaFX Thread (Platform.runLater Intro)**

မိူဝ်ႈႁဝ်းတႅမ်ႈ App ဢၼ်မီးၵၢၼ်ႁဵတ်းသၢင်ႈၼမ် (မိူၼ်ၼင်ႇ လူတ်ႇၶေႃႈမုၼ်းၼိူဝ် Internet ဢမ်ႇၼၼ် ၼႄၶၢဝ်းယၢမ်း တိုၵ်ႉၼိမ်) ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **Multithreading** ၶႃႈ။ 
ၵူၺ်းၵႃႈ JavaFX မီးပိူင် (Rule) ဢၼ်ၼိုင်ႈဝႃႈ: **"ၵူႈလွင်ႈလွင်ႈ ဢၼ်ၵဵဝ်ႇလူၺ်ႈ UI (တုမ်ႇ၊ လိၵ်ႈ၊ သီ) တေလႆႈႁဵတ်းၵၢၼ်ၼိူဝ် JavaFX Application Thread ဢၼ်လဵဝ်ၵူၺ်း"**။

### **1. ပၼ်ႁႃ ၶွင် Thread (The Threading Problem)**
ပေႃးႁဝ်းသၢင်ႈ Thread ဢၼ်မႂ်ႇ (Background Thread) တႃႇႁဵတ်းၵၢၼ်ၼိုင်ႈဢၼ် ယဝ်ႉၵႂႃႇသင်ႇပိၼ်ႇလိၵ်ႈၼိူဝ် UI ၵမ်းသိုဝ်ႈၼၼ်ႉ Java တေ Error ၶႃႈ။ 
မၼ်းတေဝႃႈ `Not on FX application thread` ၼႆၶႃႈ။

### **2. Platform.runLater() ၸွႆႈသင်?**
`Platform.runLater()` ၼႆႉ ပဵၼ် Method ဢၼ်ၸွႆႈ "သူင်ႇ" ၵၢၼ် (Task) ဢၼ်ႁဝ်းၶႂ်ႈပိၼ်ႇၼိူဝ် UI ၼၼ်ႉ ၶိုၼ်းၵႂႃႇၼိူဝ် JavaFX Thread ၶႃႈ။
* မၼ်းတေ "ပႂ်ႇထႃႈ" (Queue) ဝႆႉ။
* ပေႃး JavaFX Thread တၼ်းလီယဝ်ႉ မၼ်းတေႁဵတ်းၵၢၼ် ပိၼ်ႇသီ ဢမ်ႇၼၼ် ပိၼ်ႇလိၵ်ႈ ႁႂ်ႈႁဝ်းၵမ်းလဵဝ်ၶႃႈ။



---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်ၼႄလွင်ႈၵၢၼ်ၸႂ်ႉ `Thread` တၢင်ႇဢၼ်သေ သူင်ႇၶေႃႈမုၼ်းမႃးၼႄၼိူဝ် UI လူၺ်ႈ `Platform.runLater()` ၶႃႈ။

```java
import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class ThreadApp extends Application {
    @Override
    public void start(Stage stage) {
        Label lblStatus = new Label("Waiting for Background Task...");

        VBox root = new VBox(20);
        root.setAlignment(Pos.CENTER);
        root.getChildren().add(lblStatus);

        // သၢင်ႈ Thread တၢင်ႇဢၼ် (Background Thread)
        Thread backgroundThread = new Thread(() -> {
            try {
                // ၼိူင်းဝႃႈ တိုၵ်ႉလူတ်ႇၶေႃႈမုၼ်းယူႇ 3 ၸႅၵ်ႉ
                Thread.sleep(3000); 

                // ၵၢၼ်ပိၼ်ႇလိၵ်ႈၼိူဝ် UI တေလႆႈၸႂ်ႉ Platform.runLater
                Platform.runLater(() -> {
                    lblStatus.setText("Task Completed Successfully!");
                    lblStatus.setStyle("-fx-text-fill: green; -fx-font-weight: bold;");
                });

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        backgroundThread.start(); // တႄႇႁဵတ်းၵၢၼ် Thread ၼွၵ်ႈ

        Scene scene = new Scene(root, 400, 200);
        stage.setTitle("Thread Lesson - Lesson 5");
        stage.setScene(scene);
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **JavaFX Thread:** ပဵၼ် Thread ဢၼ်လဵဝ်ၵူၺ်း ဢၼ်ၸၢင်ႈမႄး (Modify) UI လႆႈ။
* **Background Thread:** ၸႂ်ႉတႃႇႁဵတ်းၵၢၼ် ဢၼ်ၵိၼ်ၶၢဝ်းယၢမ်း (Network, Database) တႃႇဢမ်ႇႁႂ်ႈ App ၶၢင် (Freeze)။
* **Platform.runLater():** ပဵၼ် "ၵေႃတႆး" (Bridge) ဢၼ်ဢဝ်ၶေႃႈမုၼ်းမႃးပိၼ်ႇၼိူဝ် UI ႁႂ်ႈမၼ်းပဵၼ်ပိူင် (Rules) ၶႃႈ။

တွၼ်ႈသွၼ်ၼႆႉ တေပဵၼ်ပိုၼ်ႉထၢၼ် တွၼ်ႈတႃႇႁဝ်းတေတႅမ်ႈ **Lesson 6: Digital Clock** ၶႃႈ၊ ပေႃးႁဝ်းဢမ်ႇပွင်ႇၸႂ် Thread ႁဝ်းတေႁဵတ်းၼႃႇလိၵ်ႈ (Clock) တူင်ႉၼိုင်ဢမ်ႇလႆႈၶႃႈ။

**Shall we move to Lesson 6: Real-Time Data (Creating a Digital Clock)?**