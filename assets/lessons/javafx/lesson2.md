## **Lesson 2: Layout Basics (The "VBox" & "HBox" Strategy)**

တွၼ်ႈတႃႇတေဝၢင်း Nodes မိူၼ်ၼင်ႇ Button လႄႈ Label ႁႂ်ႈမၼ်းပဵၼ်ၸၼ်ႉပဵၼ်တႅဝ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Layout Panes** ၶႃႈ။ 
ဢၼ်လွင်ႈယႂ်ႇသေပိူၼ်ႈမီး 2 မဵဝ်း:

### **1. VBox (Vertical Box)**
**VBox** ၼႆႉ မၼ်းတေဝၢင်း Nodes တၢင်ႇၸိူဝ်းသႂ်ႇဝႆႉ ၸၼ်ႉၼိူဝ်လူင်းတႂ်ႈ (Vertical) ၶႃႈ။
* မၼ်းၶပ်ႉပၼ် Node လူၺ်ႈ ၼိူဝ်တေႃႇတႂ်ႈၶႃႈ။
* ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ တၢင်းၵႂၢင်ႈ (Spacing) ၼႂ်းၵႄႈ Nodes ၼၼ်ႉလႆႈ။
* **ၸႂ်ႉတႃႇ:** သၢင်ႈ Login Form ဢမ်ႇၼၼ် Sidebar ဢၼ်မီး Menu လူင်းမႃးတႂ်ႈ။



### **2. HBox (Horizontal Box)**
**HBox** ၼႆႉ မၼ်းတေဝၢင်း Nodes တၢင်ႇၸိူဝ်းသႂ်ႇဝႆႉ ၽၢႆႇသၢႆႉၵႂႃႇၽၢႆႇၶႂႃ (Horizontal) ၶႃႈ။
* မၼ်းဝၢင်း Node ဝႆႉ ပဵၼ်ထႅဝ် (Row) လဵဝ်ၵၼ်။
* **ၸႂ်ႉတႃႇ:** သၢင်ႈ Navbar ဢမ်ႇၼၼ် တီႈဝၢင်း Button "Save" လႄႈ "Cancel" ႁႂ်ႈမၼ်းယူႇၶႅၼ်ႈၵၼ်။



---

### **Important Properties (လွင်ႈလွင်ႈယႂ်ႇ)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Layout ၼႆႉ မီး 2 ပိူင် ဢၼ်ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ (Set value) မၼ်း:
1. **Spacing:** တၢင်းၵႂၢင်ႈ ၼႂ်းၵႄႈ Buttons ဢမ်ႇၼၼ် Labels ၼိုင်ႈဢၼ်လႄႈ ၼိုင်ႈဢၼ်။
2. **Alignment:** တီႈဝၢင်း (မိူၼ်ၼင်ႇ ယူႇၵၢင် `Pos.CENTER`, ယူႇၽၢႆႇသၢႆႉၼိူဝ် `Pos.TOP_LEFT`)။

---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်တေၼႄႁႂ်ႈႁၼ်ဝႃႈ VBox လႄႈ HBox ႁဵတ်းၵၢၼ်ၸွမ်းၵၼ်ၼင်ႇႁိုဝ်ၶႃႈ။

```java
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class LayoutApp extends Application {
    @Override
    public void start(Stage stage) {
        // 1. သၢင်ႈ Nodes
        Label title = new Label("System Dashboard");
        Button btn1 = new Button("Settings");
        Button btn2 = new Button("Logout");

        // 2. သၢင်ႈ HBox တႃႇ Button 2 ဢၼ် (ယူႇၶႅၼ်ႈၵၼ်)
        HBox buttonBox = new HBox(10); // Spacing = 10
        buttonBox.setAlignment(Pos.CENTER);
        buttonBox.getChildren().addAll(btn1, btn2);

        // 3. သၢင်ႈ VBox တႃႇ Layout တူဝ်ငဝ်ႈ (ယူႇၼိူဝ်လူင်းတႂ်ႈ)
        VBox root = new VBox(20); // Spacing = 20
        root.setAlignment(Pos.CENTER);
        root.getChildren().addAll(title, buttonBox);

        // 4. Scene & Stage
        Scene scene = new Scene(root, 400, 300);
        stage.setTitle("Mao App Gallery - Lesson 2");
        stage.setScene(scene);
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **VBox:** တူဝ်ဝၢင်းၶူဝ်း ၼိူဝ်လူင်းတႂ်ႈ (Column)။
* **HBox:** တူဝ်ဝၢင်းၶူဝ်း သၢႆႉၵႂႃႇၶႂႃ (Row)။
* **Padding/Spacing:** တၢင်းၵႂၢင်ႈ ႁႂ်ႈ App ႁဝ်းတူၺ်းငၢႆႈ လႄႈ ဢမ်ႇၵႅပ်ႈပူတ်း။