## **Lesson 16: Project: Finalizing the Student ID Maker UI**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးၸတ်းၵၢၼ် UI ႁဝ်းႁႂ်ႈမီး 2 ၽၢႆႇ (Split View):
1.  **Left Side (Input Form):** တီႈတႅမ်ႈၸိုဝ်ႈ လႄႈ လိူၵ်ႈၶေႃႈမုၼ်း။
2.  **Right Side (ID Card Preview):** တီႈၼႄႁၢင်ႈၾၢင် ID Card ဢၼ်တေဢွၵ်ႇမႃး။

### **1. The Layout Architecture**
ႁဝ်းတေၸႂ်ႉ **HBox** ပဵၼ်တူဝ်ယႂ်ႇသုတ်း တွၼ်ႈတႃႇၸႅၵ်ႇၼႃႈจอ ပဵၼ်သွင်ၽၢႆႇၶႃႈ။

* **Root Node:** `AnchorPane` (တွၼ်ႈတႃႇ Responsive)
* **Main Container:** `HBox` (တွၼ်ႈတႃႇဝၢင်း Input လႄႈ Preview ၼႄၵၼ်)
    * **Child 1 (VBox):** တီႈဝၢင်း `TextField`, `ComboBox`, လႄႈ `Button` (Generate)။
    * **Child 2 (AnchorPane):** တီႈဝၢင်း ID Card Template ဢၼ်ႁဝ်း Design ဝႆႉၼၼ်ႉၶႃႈ။



### **2. Final FXML Code (`student_id_maker.fxml`)**
ၼႆႉပဵၼ် Code ဢၼ်ႁူမ်ႈဢဝ်တင်း Nesting, Anchors, လႄႈ ID ၸိူဝ်းၼၼ်ႉဝႆႉၶႃႈ:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.image.*?>
<?import javafx.geometry.Insets?>

<AnchorPane prefHeight="400.0" prefWidth="700.0" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.maomao.IdController">
   <children>
      <HBox spacing="30.0" AnchorPane.bottomAnchor="20.0" AnchorPane.leftAnchor="20.0" AnchorPane.rightAnchor="20.0" AnchorPane.topAnchor="20.0">
         <children>
            
            <VBox prefWidth="250.0" spacing="15.0">
               <children>
                  <Label text="Student Registration" style="-fx-font-size: 20; -fx-font-weight: bold;" />
                  <TextField fx:id="txtNameInput" promptText="Full Name" />
                  <TextField fx:id="txtIdInput" promptText="Student ID (e.g. TMK-001)" />
                  <Button onAction="#handleGenerate" text="Generate ID Card" prefWidth="250.0" style="-fx-background-color: #2ecc71; -fx-text-fill: white;" />
               </children>
            </VBox>

            <AnchorPane fx:id="cardTemplate" prefHeight="220.0" prefWidth="380.0" style="-fx-background-color: white; -fx-border-color: #bdc3c7; -fx-border-radius: 15; -fx-background-radius: 15;">
               <children>
                  <HBox alignment="CENTER_LEFT" layoutX="20.0" layoutY="30.0" spacing="20.0">
                     <children>
                        <ImageView fx:id="imgStudent" fitHeight="130.0" fitWidth="110.0" preserveRatio="true">
                           <image>
                              <Image url="@../images/user_placeholder.png" />
                           </image>
                        </ImageView>
                        <VBox alignment="CENTER_LEFT" spacing="8.0">
                           <children>
                              <Label fx:id="lblCardName" text="STUDENT NAME" style="-fx-font-size: 18; -fx-font-weight: bold;" />
                              <Label fx:id="lblCardId" text="ID: 000000" textFill="#7f8c8d" />
                              <Label text="Thung Mao Kham School" textFill="#3498db" style="-fx-font-size: 12;" />
                           </children>
                        </VBox>
                     </children>
                  </HBox>
               </children>
            </AnchorPane>

         </children>
      </HBox>
   </children>
</AnchorPane>
```



### **3. Final Controller Logic (`IdController.java`)**
တွၼ်ႈတႃႇႁႂ်ႈ UI ၼႆႉႁဵတ်းၵၢၼ်လႆႈတႄႉ ၼႂ်း Controller ႁဝ်းတေလႆႈမီး Method ၼင်ႇၼႆၶႃႈ:

```java
@FXML
private void handleGenerate() {
    // ဢဝ်လိၵ်ႈတီႈ Input Form
    String name = txtNameInput.getText();
    String id = txtIdInput.getText();

    // ၵတ်ႉတူၺ်း လွင်ႈပဝ်ႇ/ဢမ်ႇပဝ်ႇ
    if (name.isEmpty() || id.isEmpty()) {
        System.out.println("Please fill all fields!");
        return;
    }

    // ဢဝ်ၵႂႃႇၼႄၼႂ်း ID Card Preview
    lblCardName.setText(name.toUpperCase());
    lblCardId.setText("ID: " + id);
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary of Module 2)**
* **Visual Design:** ႁဝ်းၸႂ်ႉ **Scene Builder** တႃႇ Design ႁၢင်ႈၾၢင် App ႁႂ်ႈဝႆး။
* **Layout Mastery:** ႁဝ်းပွင်ႇၸႂ်ၵၢၼ်ၸႂ်ႉ **AnchorPane**, **VBox**, လႄႈ **HBox** သွၼ်ႉၵၼ် (Nesting)။
* **Connectivity:** ႁဝ်းၵွင်ႉ UI လႄႈ Java Code ႁူမ်ႈၵၼ်လႆႈလူၺ်ႈ **@FXML** လႄႈ **fx:id**။

ယိၼ်းၸူမ်းၸွမ်းၶူးတႄႇတႄႇၶႃႈ! Module 2 ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉ။ ၵမ်းၼႆႉ App Student ID Maker ႁဝ်း မီး "ႁၢင်ႈၾၢင်" လႄႈ "မၢၵ်ႇႁူဝ်ၸႂ်" ဢၼ်ၵွင်ႉၵၼ်ဝႆႉယဝ်ႉၶႃႈ။

**Shall we move to Module 3: Advanced UI & CSS (Styling your App)?**