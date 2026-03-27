## **Lesson 23: Final Project: The Polished Student ID Maker**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁူမ်ႈဢဝ် **Layout**, **CSS**, **Custom Fonts**, လႄႈ **Image Export** မႃးဝၢင်းဝႆႉၼႂ်း Project လဵဝ်ၵၼ်ၶႃႈ။



### 1. FXML Code (`StudentID.fxml`)
*လိၵ်ႈသပ်းလႅင်း: ဢၼ်ၼႆႉပဵၼ် ႁၢင်ႈၽၢင် (Structure) ၶေႃႈမုၼ်းၶႃႈ။*

```xml
<?xml version="1.0" encoding="UTF-8"?>

<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.image.*?>

<AnchorPane prefHeight="400.0" prefWidth="600.0" stylesheets="@style.css" xmlns="http://javafx.com/javafx/17" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.tmk.IDController">
   <children>
      <VBox layoutX="30.0" layoutY="50.0" spacing="15.0" styleClass="input-container">
         <children>
            <Label text="သွၵ်ႈသႂ်ႇၶေႃႈမုၼ်း (Input Data)" styleClass="header-text"/>
            <TextField fx:id="txtName" promptText="ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း..."/>
            <TextField fx:id="txtID" promptText="မၢႆၾၢင်လုၵ်ႈႁဵၼ်း..."/>
            <TextField fx:id="txtMajor" promptText="ပၢႆးပၺ်ႇၺႃႇ..."/>
            <Button mnemonicParsing="false" onAction="#handleGenerate" text="ႁဵတ်းပၼ်ၵၢတ်ႉ (Generate)" styleClass="gen-button"/>
             <Button mnemonicParsing="false" onAction="#handleSave" text="ထုၵ်ႈဢွၵ်ႇၵၢတ်ႉ (Print)"
                 styleClass="gen-button"/>
         </children>
      </VBox>

      <Pane fx:id="idCard" layoutX="300.0" layoutY="80.0" prefHeight="200.0" prefWidth="280.0" styleClass="id-card">
         <children>
            <Label layoutX="14.0" layoutY="14.0" text="THUNG MAO KHAM SCHOOL" styleClass="school-name"/>
            <Label fx:id="lblDisplayName" layoutX="20.0" layoutY="80.0" text="NAME" styleClass="card-name"/>
            <Label fx:id="lblDisplayID" layoutX="20.0" layoutY="115.0" text="ID: 0000" styleClass="card-info"/>
            <Label fx:id="lblDisplayMajor" layoutX="20.0" layoutY="140.0" text="MAJOR" styleClass="card-info"/>
            <Separator layoutX="15.0" layoutY="40.0" prefWidth="250.0" />
         </children>
      </Pane>
   </children>
</AnchorPane>
```

---

### 2. CSS Code (`style.css`)
*လိၵ်ႈသပ်းလႅင်း: ဢၼ်ၼႆႉပဵၼ် တီႈမႄးႁၢင်ႈ (Design) ႁႂ်ႈၵၢတ်ႉႁဝ်းလဝ်းၶႃႈ။*

```css
/* Background application */
.root {
    -fx-background-color: #f0f3f5;
}

/* Header Text */
.header-text {
    -fx-font-size: 16px;
    -fx-font-weight: bold;
    -fx-text-fill: #2c3e50;
}

/* ID Card Design */
.id-card {
    -fx-background-color: linear-gradient(to bottom right, #ffffff, #e1e8ee);
    -fx-border-color: #3498db;
    -fx-border-radius: 15;
    -fx-background-radius: 15;
    -fx-effect: dropshadow(three-pass-box, rgba(0,0,0,0.2), 10, 0, 0, 5);
}

.school-name {
    -fx-font-size: 14px;
    -fx-font-weight: bold;
    -fx-text-fill: #2980b9;
}

.card-name {
    -fx-font-size: 20px;
    -fx-font-weight: bold;
    -fx-text-fill: #333333;
}

.card-info {
    -fx-font-size: 13px;
    -fx-text-fill: #555555;
}

/* Button Styling */
.gen-button {
    -fx-background-color: #27ae60;
    -fx-text-fill: white;
    -fx-font-weight: bold;
    -fx-cursor: hand;
}

.gen-button:hover {
    -fx-background-color: #2ecc71;
}
```

---

### 3. Java Controller (`IDController.java`)
*လိၵ်ႈသပ်းလႅင်း: ဢၼ်ၼႆႉပဵၼ် ပၢႆးဝူၼ်ႉ (Logic) တွၼ်ႈတႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၶႃႈ။*

```java
package com.tmk;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;

public class IDController {

    @FXML private TextField txtName, txtID, txtMajor;
    @FXML private Label lblDisplayName, lblDisplayID, lblDisplayMajor;
    @FXML private Pane idCard;

    @FXML
    private void handleGenerate() {
        // 1. ၵဵပ်းဢဝ်လိၵ်ႈတီႈ TextField (Get values)
        String name = txtName.getText();
        String id = txtID.getText();
        String major = txtMajor.getText();

        // 2. ထတ်းတူၺ်းဝႃႈ လိၵ်ႈပဝ်ႇယူႇႁႃႉ (Check if empty)
        if (name.isEmpty() || id.isEmpty()) {
            lblDisplayName.setText("သႂ်ႇၸိုဝ်ႈၵွၼ်ႇၶႃႈ!");
            return;
        }

        // 3. သႂ်ႇၶေႃႈမုၼ်းၼႂ်းၵၢတ်ႉ (Update Card Labels)
        lblDisplayName.setText(name.toUpperCase());
        lblDisplayID.setText("ID: " + id);
        lblDisplayMajor.setText("MAJOR: " + major);

        // 4. သႂ်ႇ Animation လဵၵ်ႉၼွႆႉ (Optional effect)
        idCard.setOpacity(0.0);
        new Thread(() -> {
            try {
                Thread.sleep(100);
                idCard.setOpacity(1.0);
            } catch (InterruptedException e) {}
        }).start();
    }

    @FXML
    private void handleSave() {
        // 1. "ထၢႆႇႁၢင်ႈ" (Snapshot) တူဝ် cardTemplate
        WritableImage image = cardTemplate.snapshot(new SnapshotParameters(), null);

        // 2. မၵ်းမၼ်ႈ Path တီႈတေသိမ်း (Desktop ဢမ်ႇၼၼ် Folder Project)
        FileChooser fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("PNG Files", "*.png"));
        File saveFile = fileChooser.showSaveDialog(cardTemplate.getScene().getWindow());


        try {
            // 3. ပိၼ်ႇ JavaFX Image ႁႂ်ႈပဵၼ်ၾၢႆႇ .png တႄႉๆ
            ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", saveFile);

            // 4. ၼႄ Alert ဝႃႈသိမ်းယဝ်ႉတူဝ်ႈယဝ်ႉ
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setContentText("ID Card saved successfully as student_id.png");
            alert.show();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

---


### **ႁူဝ်ႁုပ်ႈ (Module 3 Final Summary)**
* **Polished UI:** ႁဝ်းၸႂ်ႉ **CSS** တႃႇမႄး App ႁႂ်ႈႁၢင်ႈလီ လႄႈ Professional။
* **Localization:** ႁဝ်းၸႂ်ႉ **Shan Fonts** တွၼ်ႈတႃႇၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉၼႂ်း Community။
* **Utility:** App ႁဝ်းၸၢင်ႈ **Snapshot** သေသိမ်းပဵၼ်ၾၢႆႇႁၢင်ႈ တႃႇဢဝ်ၵႂႃႇ Print ဢွၵ်ႇလႆႈတႄႉၶႃႈ။
