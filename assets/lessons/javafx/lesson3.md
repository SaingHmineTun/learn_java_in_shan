## **Lesson 3: Accessing System Properties (OS & User Data)**

ၼႂ်း Java ၼႆႉ မၼ်းမီး Class ဢၼ်ႁွင်ႉဝႃႈ `System` ဢၼ်ၸၢင်ႈၸွႆႈႁႂ်ႈႁဝ်း ႁူႉလႆႈၶေႃႈမုၼ်း Computer ဢၼ် App ႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၼၼ်ႉၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ Method ဢၼ်ႁွင်ႉဝႃႈ `System.getProperty("key")` တႃႇလူတ်ႇဢဝ်ၶေႃႈမုၼ်းၶႃႈ။

### **1. Key ဢၼ်လွင်ႈယႂ်ႇ (Common Property Keys)**
တွၼ်ႈတႃႇတေႁဵတ်း **System Info Dashboard** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Key ၸိူဝ်းၼႆႉၶႃႈ:
* `"os.name"` : တႃႇလူတ်ႇဢဝ် ၸိုဝ်ႈ Operating System (မိူၼ်ၼင်ႇ Windows 11, Mac OS X)။
* `"user.name"` : တႃႇလူတ်ႇဢဝ် ၸိုဝ်ႈ User ဢၼ်တိုၵ်ႉၸႂ်ႉ Computer ယူႇ။
* `"java.version"` : တႃႇလူတ်ႇဢဝ် Version ၶွင် Java ဢၼ် App ႁဝ်းၸႂ်ႉဝႆႉ။
* `"os.arch"` : တႃႇလူတ်ႇဢဝ် Architecture ၶွင် CPU (မိူၼ်ၼင်ႇ x86 ဢမ်ႇၼၼ် aarch64)။

### **2. ၵၢၼ်ၼႄၶေႃႈမုၼ်းၼိူဝ် UI**
မိူဝ်ႈႁဝ်းလႆႈၶေႃႈမုၼ်းမႃးပဵၼ် String ယဝ်ႉၼၼ်ႉ ႁဝ်းတေဢဝ်မႃးသႂ်ႇၼႂ်း `Label` လူၺ်ႈၵၢၼ်ၸႂ်ႉ `.setText()` ၶႃႈ။

---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်လူတ်ႇဢဝ်ၶေႃႈမုၼ်း System မႃးဝၢင်းၼႄဝႆႉၼိူဝ် Window App ႁဝ်းၶႃႈ။

```java
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class SystemInfoApp extends Application {
    @Override
    public void start(Stage stage) {
        // 1. လူတ်ႇဢဝ်ၶေႃႈမုၼ်း System
        String osName = System.getProperty("os.name");
        String userName = System.getProperty("user.name");
        String javaVer = System.getProperty("java.version");

        // 2. သၢင်ႈ Labels တႃႇၼႄၶေႃႈမုၼ်း
        Label lblUser = new Label("User: " + userName);
        Label lblOS = new Label("OS: " + osName);
        Label lblJava = new Label("Java Version: " + javaVer);

        // 3. ဝၢင်း Layout လူၺ်ႈ VBox
        VBox root = new VBox(15); // Spacing = 15
        root.setPadding(new Insets(20)); // Margin ၶွပ်ႇၼွၵ်ႈ = 20
        root.setAlignment(Pos.CENTER_LEFT);
        root.getChildren().addAll(lblUser, lblOS, lblJava);

        // 4. Scene & Stage
        Scene scene = new Scene(root, 350, 200);
        stage.setTitle("System Info - Lesson 3");
        stage.setScene(scene);
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **System.getProperty():** ပဵၼ်ၵၢၼ်ၸႂ်ႉ Code Java တႃႇတွင်ႈထၢမ်ၶေႃႈမုၼ်း Computer။
* **Dynamic Data:** App ႁဝ်းတေၼႄၶေႃႈမုၼ်း ဢၼ်တေပိူင်ႈၵၼ် Computer ၼိုင်ႈလုၵ်ႈလႄႈ ၼိုင်ႈလုၵ်ႈ။
* **String Concatenation:** ၵၢၼ်ဢဝ်လိၵ်ႈ ("User: ") မႃးမတ်ႉၸွမ်း Data ဢၼ်လႆႈမႃးၼၼ်ႉၶႃႈ။