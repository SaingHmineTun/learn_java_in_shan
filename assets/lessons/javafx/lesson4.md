## **Lesson 4: Programmatic Styling (CSS-in-Java)**

ၵၢၼ်သႂ်ႇ Style ၼႂ်း Java Code ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Method ဢၼ်ႁွင်ႉဝႃႈ `.setStyle()` ၶႃႈ။ 
ၶေႃႈၵႂၢမ်း ဢၼ်ႁဝ်းတေတႅမ်ႈသႂ်ႇၼႂ်းမၼ်းၼၼ်ႉ မၼ်းတေမိူၼ်တင်း **CSS (Cascading Style Sheets)** ဢၼ်ၸႂ်ႉၼႂ်း Website 
ၵူၺ်းၵႃႈ တေလႆႈမီး `-fx-` တီႈၼႃႈမၼ်းၵူႈပွၵ်ႈၶႃႈ။

### **1. Properties ဢၼ်ၸႂ်ႉၼမ် (Common CSS Properties)**
* `"-fx-background-color"` : တႃႇသႂ်ႇသီပိုၼ်ႉလင် (မိူၼ်ၼင်ႇ #2c3e50 ဢမ်ႇၼၼ် linear-gradient)။
* `"-fx-text-fill"` : တႃႇပိၼ်ႇသီလိၵ်ႈ (မိူၼ်ၼင်ႇ white, yellow)။
* `"-fx-font-size"` : တႃႇမၵ်းမၼ်ႈ ၶၼ်ယႂ်တူဝ်လိၵ်ႈ (မိူၼ်ၼင်ႇ 18px)။
* `"-fx-font-weight"` : တႃႇႁဵတ်းႁႂ်ႈလိၵ်ႈၼႃ (မိူၼ်ၼင်ႇ bold)။
* `"-fx-border-color"` : တႃႇသႂ်ႇသီၶွပ်ႇ (Border)။

### **2. ၵၢၼ်ၸႂ်ႉ Hex Color Codes**
တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းတူၺ်း "Modern" ၼၼ်ႉ ႁဝ်းတေဢမ်ႇၸႂ်ႉ "red" ဢမ်ႇၼၼ် "blue" ၵမ်းသိုဝ်ႈ၊ ႁဝ်းတေၸႂ်ႉ Hex Codes မိူၼ်ၼင်ႇ `#2196F3` (Blue) ဢမ်ႇၼၼ် `#1ABC9C` (Teal) ၶႃႈ။

---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်တေမႄး Dashboard ႁဝ်းႁႂ်ႈပဵၼ် **Dark Mode** လႄႈ မီးသီသၼ်တူၺ်းလီၶႃႈ။

```java
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class StyledApp extends Application {
    @Override
    public void start(Stage stage) {
        // 1. သၢင်ႈ Labels
        Label lblTitle = new Label("SYSTEM INFORMATION");
        Label lblUser = new Label("User: " + System.getProperty("user.name"));

        // 2. သႂ်ႇ Style လူၺ်ႈ .setStyle()
        // Title Style (လိၵ်ႈၼႃ၊ သီလိူင်၊ ၶၼၢတ်ႉယႂ်ႇ)
        lblTitle.setStyle("-fx-font-size: 20px; -fx-font-weight: bold; -fx-text-fill: #F1C40F;");
        
        // User Label Style (သီၶၢဝ်)
        lblUser.setStyle("-fx-text-fill: white; -fx-font-size: 14px;");

        // 3. ဝၢင်း Layout လႄႈ သႂ်ႇ Style ပိုၼ်ႉလင် (Dark Blue)
        VBox root = new VBox(15);
        root.setAlignment(Pos.CENTER);
        root.setPadding(new Insets(20));
        root.setStyle("-fx-background-color: #2C3E50; -fx-border-color: #34495E; -fx-border-width: 5px;");

        root.getChildren().addAll(lblTitle, lblUser);

        // 4. Scene & Stage
        Scene scene = new Scene(root, 400, 250);
        stage.setTitle("Styled Dashboard - Lesson 4");
        stage.setScene(scene);
        stage.show();
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **.setStyle():** ပဵၼ်ၵၢၼ်သႂ်ႇသီ လႄႈ မႄးႁၢင်ႈၾၢင် Nodes လူၺ်ႈ Java Code။
* **CSS Syntax:** ၸႂ်ႉၶေႃႈၵႂၢမ်း CSS ၵူၺ်းၵႃႈ တေလႆႈမီး `-fx-` တီႈၽၢႆႇၼႃႈ Property ၼၼ်ႉၵူႈဢၼ်။
* **Hex Colors:** ၸႂ်ႉသီ ဢၼ်မီးမၢႆ Hex တႃႇႁႂ်ႈ App ႁဝ်းတူၺ်းလီ။

