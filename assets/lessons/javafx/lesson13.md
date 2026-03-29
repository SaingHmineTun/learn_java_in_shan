## **Lesson 13: Linking FXML to Controller (@FXML & fx:id)**

ၼႂ်း JavaFX, **FXML** ပဵၼ်တူဝ်သိမ်း "ႁၢင်ႈၾၢင်" (Design) သေ **Controller** ပဵၼ်တူဝ် "သင်ႇၵၢၼ်" (Logic)။ 
ႁဝ်းတေၸႂ်ႉ **fx:id** လႄႈ **@FXML** တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈသွင်ပိူင်ၼႆႉ ၵွင်ႉသၢႆၸူးၵၼ်လႆႈၶႃႈ။

### **1. Step 1: Setting fx:id (ၼႂ်း Scene Builder)**
တွၼ်ႈတႃႇ Java တေႁူႉဝႃႈ Label တူဝ်လႂ်ပဵၼ်တူဝ်လႂ်၊ ႁဝ်းတေလႆႈတင်ႈၸိုဝ်ႈ (ID) ပၼ်မၼ်းၶႃႈ။
* **Action:** လိူၵ်ႈ Node (မိူၼ်ၼင်ႇ TextField ဢမ်ႇၼၼ် Label)။
* **Code Tab:** တီႈၶွင် **fx:id**, တႅမ်ႈၸိုဝ်ႈဢၼ်ႁဝ်းၶႂ်ႈၸႂ်ႉ (မိူၼ်ၼင်ႇ `txtName` ဢမ်ႇၼၼ် `lblCardName`)။



### **2. Step 2: Controller Binding (ၵွင်ႉ Class)**
ႁဝ်းတေလႆႈသင်ႇ FXML ႁႂ်ႈမၼ်းႁူႉဝႃႈ တေလႆႈၵႂႃႇႁွင်ႉၸႂ်ႉ Java Class လႂ်ၶႃႈ။
* **Action:** ၼႂ်း Scene Builder, ၵႂႃႇတီႈ Panel ၽၢႆႇသၢႆႉတႂ်ႈ တီႈတွၼ်ႈ **Controller**။
* **Controller Class:** တႅမ်ႈသႂ်ႇ Full Path (မိူၼ်ၼင်ႇ `com.maomao.IdController`)။



---

### **3. Step 3: Sample FXML Code (`view.fxml`)**
ၼႆႉပဵၼ် Code ဢၼ်မီး **`fx:controller`** လႄႈ **`fx:id`** ဢၼ်ၵွင်ႉဝႆႉပၼ်ယဝ်ႉၶႃႈ:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<VBox fx:controller="com.maomao.IdController" spacing="10" alignment="CENTER" xmlns:fx="http://javafx.com/fxml">
    <children>
        <TextField fx:id="txtNameInput" promptText="Enter Student Name" />
        
        <Button text="Generate ID Card" />
        
        <Separator />
        
        <AnchorPane prefHeight="150" prefWidth="300" style="-fx-background-color: white; -fx-border-color: black;">
            <children>
                <Label fx:id="lblCardName" text="Name: -----" layoutX="20" layoutY="50" />
            </children>
        </AnchorPane>
    </children>
</VBox>
```

---

### **4. Step 4: Java Controller Code (`IdController.java`)**
ၼႂ်း Java, ႁဝ်းတေၸႂ်ႉ **`@FXML`** တႃႇႁွင်ႉ Object ၸိူဝ်းၼၼ်ႉမႃးၸႂ်ႉၶႃႈ:

```java
package com.maomao;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class IdController {

    // 1. ႁွင်ႉ TextField တီႈ UI မႃးၸႂ်ႉ (ID တေလႆႈမိူၼ်ၵၼ်)
    @FXML
    private TextField txtNameInput;

    // 2. ႁွင်ႉ Label တီႈ ID Card မႃးၸႂ်ႉ
    @FXML
    private Label lblCardName;

}
```



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **fx:controller:** ပဵၼ် "သၢႆၵွင်ႉ" ငဝ်ႈ (FXML ↔ Java Class)။
* **fx:id:** ပဵၼ် "ၸိုဝ်ႈမၢႆၾၢင်" ၶွင် UI Element (FXML ↔ Variable)။
* **@FXML:** ပဵၼ် "တူဝ်ႁွင်ႉ" UI Element မႃးၼႂ်း Java Code။