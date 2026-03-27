## **Lesson 7: Adding Background Images & Graphics to Containers**

ၼႂ်း JavaFX ၼႆႉ ၵၢၼ်သႂ်ႇႁၢင်ႈၽၢႆႇလင် (Background) ၼၼ်ႉ ႁဝ်းၸၢင်ႈႁဵတ်းလႆႈ 2 သဵၼ်ႈတၢင်း:
ၸႂ်ႉ CSS (`-fx-background-image`) ဢမ်ႇၼၼ် 
ၸႂ်ႉ Java Code (`BackgroundImage` class) ၶႃႈ။

### **1. Using CSS for Backgrounds**
ၼႆႉပဵၼ်လၢႆးငၢႆႈသုတ်း။ ႁဝ်းတေၸႂ်ႉ `.setStyle()` သေ မၵ်းမၼ်ႈ URL ၶွင်ႁၢင်ႈၽၢႆႇလင်ၶႃႈ။
* **Properties ဢၼ်ၸႂ်ႉၼမ်:**
    * `-fx-background-image`: တီႈယူႇၶွင်ၾၢႆႇႁၢင်ႈ (URL)။
    * `-fx-background-repeat`: တေႁႂ်ႈမၼ်းသိုပ်ႇၵၼ် (repeat) ႁႃႉ ဢမ်ႇၼၼ် (no-repeat)။
    * `-fx-background-size`: တႃႇမၵ်းမၼ်ႈ တင်းယႂ်ႇႁၢင်ႈ (မိူၼ်ၼင်ႇ `cover` ႁႂ်ႈမၼ်းတဵမ် Window)။
    * `-fx-background-position`: တီႈဝၢင်း (မိူၼ်ၼင်ႇ `center`)။

### **2. Using Image & ImageView**
သင်ႁဝ်းၶႂ်ႈသႂ်ႇ Icon ဢမ်ႇၼၼ် Logo ၼႂ်း Dashboard ႁဝ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ `ImageView` ၶႃႈ။
* `Image`: ပဵၼ်တူဝ်လူတ်ႇဢဝ် Data ႁၢင်ႈ။
* `ImageView`: ပဵၼ်တူဝ် "Node" ဢၼ်တေဢဝ်ႁၢင်ႈမႃးၼႄၼိူဝ် Scene။



---

### **Sample Code (ပိုၼ်ႉထၢၼ်)**

ၼႆႉပဵၼ် Code ဢၼ်တေမႄး Dashboard ႁဝ်းႁႂ်ႈမီးႁၢင်ႈၽၢႆႇလင် လႄႈ မီး Logo တူၺ်းလီၶႃႈ။

```java
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class GraphicApp extends Application {
    @Override
    public void start(Stage stage) {
        try {
            // 1. လူတ်ႇ Logo (ImageView) ၼႂ်း Resources
            // တေလႆႈဢဝ် logo.png သႂ်ႇဝႆႉၼႂ်း resources
            String logoPath = getClass().getResource("/logo.png").toExternalForm();
            Image logoImg = new Image(logoPath); 
            ImageView logoView = new ImageView(logoImg);
            logoView.setFitWidth(100);
            logoView.setPreserveRatio(true);

            Label lblTitle = new Label("MAO APP GALLERY");
            lblTitle.setStyle("-fx-font-size: 24px; -fx-text-fill: white; -fx-font-weight: bold;");

            // 2. ဝၢင်း Layout လႄႈ သႂ်ႇ Background Image 
            VBox root = new VBox(20);
            root.setAlignment(Pos.CENTER);
            
            // လူတ်ႇ Background ၼႂ်း Resources
            String bgPath = getClass().getResource("/bg.jpg").toExternalForm();
            root.setStyle(
                "-fx-background-image: url('" + bgPath + "'); " +
                "-fx-background-size: cover; " +
                "-fx-background-position: center;"
            );

            root.getChildren().addAll(logoView, lblTitle);

            Scene scene = new Scene(root, 500, 350);
            stage.setTitle("Graphics Fixed - Lesson 7");
            stage.setScene(scene);
            stage.show();

        } catch (Exception e) {
            System.out.println("Error: ဢမ်ႇႁၼ်ၾၢႆႇႁၢင်ႈၼႂ်း Resources ၶႃႈ!");
            e.printStackTrace();
        }
    }
}
```

---

### **ၵေႃႈႁုပ်ႈ (Summary)**
* **CSS Background:** ၸႂ်ႉတႃႇမႄးသီ ဢမ်ႇၼၼ် သႂ်ႇႁၢင်ႈၽၢႆႇလင်တူဝ် Layout (VBox/HBox)။
* **ImageView:** ၸႂ်ႉတႃႇၼႄႁၢင်ႈ မိူၼ်ၼင်ႇ Logo, Icons ဢမ်ႇၼၼ် Photo ၼႂ်း App။
* **Asset Management:** ၵၢၼ်ၸတ်းၵၢၼ် ၾၢႆႇႁၢင်ႈ (Path) ႁႂ်ႈမၼ်းလႅတ်းလီ တႃႇတေဢမ်ႇ Error မိူဝ်ႈလူတ်ႇႁၢင်ႈၶႃႈ။

တွၼ်ႈသွၼ်ၼႆႉ တေၸွႆႈႁႂ်ႈ App ႁဝ်းတူၺ်း "Commercial" ၶိုၼ်ႈမႃးတႄႉတႄႉယဝ်ႉၶႃႈ။
**Shall we move to Lesson 8: UI Refinement & Final Dashboard Assembly?**