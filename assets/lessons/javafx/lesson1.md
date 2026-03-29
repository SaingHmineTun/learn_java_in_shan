## **Lesson 1: The Anatomy of a JavaFX App (Stage & Scene)**

တွၼ်ႈတႃႇတေပွင်ႇၸႂ်ဝႃႈ JavaFX Desktop App ၼိုင်ႈဢၼ် ၵေႃႇသၢင်ႈဝႆႉၼင်ႇႁိုဝ်ၼၼ်ႉ 
ႁဝ်းၸၢင်ႈၼိူင်းတူၺ်း မိူၼ်ၼင်ႇၵၢၼ်ၼႄ **"ၸၢတ်ႈသႅင်း" (Theater)** ၼၼ်ႉၶႃႈ။

### **1. The Stage (ပၢင်ႇၸၢတ်ႈ)**
**Stage** ၼႆႉ မၼ်းပဵၼ် ၶူင်ႇၸၢတ်ႈ တီႈဢၼ်ႁဝ်းႁၼ်ယူႇၼိူဝ်ၼႃႈ Computer ႁဝ်းၼၼ်ႉၶႃႈ။
* မၼ်းပဵၼ် တီႈထိင်းသိမ်းၵူႈလွင်ႈလွင်ႈ ဢၼ်ၼႄဝႆႉၼႂ်း App။
* ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ ႁူဝ်ၶေႃႈ (**Title**), တၢင်းၵႂၢင်ႈတၢင်းသုင် (**Width/Height**) လႄႈ ၸၢင်ႈပိၵ်ႉ (Close) မၼ်းလႆႈ။
* ၼႂ်း JavaFX တေႁွင်ႉဝႃႈ `Stage` ၶႃႈ။

### **2. The Scene (ၼႃႈလိၵ်ႈ / သႅင်း)**
**Scene** ၼႆႉ ပဵၼ် "ၼႃႈလိၵ်ႈ" ဢၼ်ယူႇၼႂ်း Stage ၶႃႈ။
* မၼ်းမိူၼ်ၼင်ႇ ၽိုၼ်ၸေႈပဝ်ႇ ဢၼ်ႁဝ်းတေဝၢင်း (UI Elements) သႂ်ႇဝႆႉယဝ်ႉၶႃႈ။
* ၼႂ်း Stage ၼိုင်ႈဢၼ် ႁဝ်းၸၢင်ႈပိၼ်ႇ **Scene** မၼ်းလႆႈလၢႆလၢႆဢၼ် (မိူၼ်ၼင်ႇ ပိၼ်ႇၼႃႈ Login ၵႂႃႇၼႃႈ Dashboard)။



### **3. The Scene Graph & Nodes**
ၵူႈလွင်ႈလွင်ႈ ဢၼ်ႁဝ်းႁၼ်ယူႇၼႂ်း Scene ၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Nodes** ၶႃႈ။
* **Root Node:** ပဵၼ်တူဝ်ငဝ်ႈ ဢၼ်ထိင်း Nodes တၢင်ႇၸိူဝ်းဝႆႉ (မိူၼ်ၼင်ႇ VBox, HBox)။
* **Leaf Nodes:** ပဵၼ်တူဝ်တေႉ ဢၼ်ယူႇၼႂ်း Root Node ထႅင်ႈၵမ်းၼိုင်ႈ မိူၼ်ၼင်ႇ **Button** (တုမ်ႇ), **Label** (လိၵ်ႈ), **TextField** (တီႈတႅမ်ႈလိၵ်ႈ) ၸိူဝ်းၼႆႉၶႃႈ။

---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်တေၼႄႁႂ်ႈႁၼ်ဝႃႈ Stage, Scene လႄႈ Nodes ၵပ်းသၢၼ်ၵၼ်ၼင်ႇႁိုဝ်ၶႃႈ။

```java
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class MyFirstApp extends Application {
    @Override
    public void start(Stage primaryStage) {
        // 1. သၢင်ႈ Node (လိၵ်ႈ)
        Label myLabel = new Label("မႂ်ႇသုင် JavaFX!");

        // 2. သၢင်ႈ Root Node (တီႈဝၢင်းၶူဝ်း)
        StackPane root = new StackPane();
        root.getChildren().add(myLabel);

        // 3. သၢင်ႈ Scene (ၼႃႈလိၵ်ႈ)
        Scene myScene = new Scene(root, 400, 300);

        // 4. သႂ်ႇၼႂ်း Stage (ပၢၼ်ႇၶူပ်ႇ)
        primaryStage.setTitle("Mao App Gallery");
        primaryStage.setScene(myScene);
        primaryStage.show(); // ၼႄၼႃႈ Window
    }

    public static void main(String[] args) {
        launch(args);
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
1. **Stage:** Window
2. **Scene:** Content
3. **Nodes:** Elements

ပေႃးႁဝ်းတေပိၼ်ႇၼႃႈ Application ႁဝ်းၼၼ်ႉ၊ Stage တေပဵၼ်တူဝ်ၵဝ်ႇ ၵူၺ်းၵႃႈ ႁဝ်းတေပိၼ်ႇ **Scene** မၼ်းၵူၺ်းၶႃႈ။