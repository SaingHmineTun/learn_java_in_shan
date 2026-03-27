## **Lesson 12: Nesting Layouts (VBox & HBox for Student Info)**

မိူဝ်ႈႁဝ်းသၢင်ႈ **Student ID Card** ၼၼ်ႉ ၵၢၼ်ၸႂ်ႉ Layout လၢႆးလဵဝ်တေဢမ်ႇၵုမ်ႇထူၼ်ႈၶႃႈ။ 
ႁဝ်းတေလႆႈၸႂ်ႉလၢႆး **"Nesting"** (ၵၢၼ်သွၼ်ႉ) ၶႃႈ။

### **1. Why Nesting? (ၵွပ်ႈသင်ၸင်ႇသွၼ်ႉၵၼ်?)**
ဝူၼ်ႉတူၺ်းႁၢင်ႈၾၢင် ID Card ႁဝ်းၶႃႈ:
* **Horizontal:** ႁဝ်းမီး **ႁၢင်ႈလုၵ်ႈႁဵၼ်း** ယူႇၽၢႆႇသၢႆႉ လႄႈ **ၶေႃႈမုၼ်းလိၵ်ႈ** ယူႇၽၢႆႇၶႂႃ။ (ၸႂ်ႉ **HBox**)
* **Vertical:** ၼႂ်းတွၼ်ႈလိၵ်ႈၼၼ်ႉ ႁဝ်းမီး **ၸိုဝ်ႈ**၊ **ဢႃႇယု**၊ လႄႈ **ၸၼ်ႉႁဵၼ်း** သွၼ်ႉၵၼ်လူင်းမႃး။ (ၸႂ်ႉ **VBox**)

တွၼ်ႈတႃႇတေႁဵတ်းလႆႈၼင်ႇၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ **VBox** ဝၢင်းသွၼ်ႉဝႆႉၼႂ်း **HBox** ၼၼ်ႉယဝ်ႉၶႃႈ။



### **2. Practical Step: Building the Card Content**
ၼႂ်း Scene Builder ႁဝ်းတေႁဵတ်းၸွမ်းၼင်ႇၼႆၶႃႈ:
1.  **HBox (The Row):** လၢၵ်ႈ HBox မႃးဝၢင်းသႂ်ႇၼႂ်း Card AnchorPane ႁဝ်း။
2.  **ImageView:** လၢၵ်ႈ ImageView ဝၢင်းသႂ်ႇၼႂ်း HBox (တႃႇၼႄႁၢင်ႈလုၵ်ႈႁဵၼ်း)။
3.  **VBox (The Details - Nested):** လၢၵ်ႈ VBox မႃးဝၢင်းသႂ်ႇၼႂ်း HBox ၼၼ်ႉၵမ်းသိုဝ်ႈ (ဝၢင်းဝႆႉၽၢႆႇၶႂႃ ImageView)။
4.  **Labels:** လၢၵ်ႈ Label 3 ဢၼ် (ၸိုဝ်ႈ, ID, ၸၼ်ႉႁဵၼ်း) ဝၢင်းသႂ်ႇၼႂ်း VBox ၼၼ်ႉၶႃႈ။



### **3. Alignment & Spacing**
မိူဝ်ႈႁဝ်း Nesting ယဝ်ႉ၊ ၶေႃႈမုၼ်းၸၢင်ႈတူၺ်း "ၵပ်ႉ" (Crowded) ၵၼ်ၼႃႇ။ ႁဝ်းတေလႆႈမႄးၼႂ်း **Properties** tab:
* **Spacing:** မၵ်းမၼ်ႈတီႈပဝ်ႇ (Gap) ၼႂ်းၵႄႈ Nodes (မိူၼ်ၼင်ႇ 15px) တွၼ်ႈတႃႇႁႂ်ႈ Label တူၺ်းဢမ်ႇၵပ်ႉၵၼ်။
* **Alignment:** ၼႂ်း VBox မၵ်းမၼ်ႈႁႂ်ႈပဵၼ် `CENTER_LEFT` တႃႇႁႂ်ႈလိၵ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ယူႇဝႆႉၽၢႆႇသၢႆႉသေ မီးဝႆႉၼႂ်းၵၢင် Card ၶႃႈ။
* **Padding:** မၵ်းမၼ်ႈတီႈပဝ်ႇႁိမ်းၶွပ်ႇ (Margin) ၼႂ်း HBox တွၼ်ႈတႃႇႁႂ်ႈႁၢင်ႈ လႄႈ လိၵ်ႈ ဢမ်ႇၵႂႃႇတိတ်းၸပ်းၶွပ်ႇ Card ႁဵင်းၼႃႇၶႃႈ။

---

### **Sample FXML Code**
ၼႆႉပဵၼ်တူဝ်ယၢင်ႇ Code ဢၼ်ၵိူတ်ႇမႃးတီႈၵၢၼ် Nesting ၼၼ်ႉၶႃႈ:

```xml

<HBox alignment="CENTER_LEFT" spacing="20.0">
    <children>
        <ImageView fitHeight="120.0" fitWidth="120.0" preserveRatio="true" />

        <VBox alignment="CENTER_LEFT" spacing="10.0">
            <children>
                <Label style="-fx-font-weight: bold; -fx-font-size: 18;" text="Sai Mao" />
                <Label text="ID: TMK-2025-001" />
                <Label text="Class: JavaFX Programming" />
            </children>
        </VBox>
    </children>
    <padding>
        <Insets bottom="10.0" left="10.0" right="10.0" top="10.0" />
    </padding>
</HBox>

```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Nesting:** ပဵၼ်ၵၢၼ်ဢဝ် Layout ၼိုင်ႈဢၼ် ဝၢင်းသွၼ်ႉဝႆႉၼႂ်း Layout ထႅင်ႈဢၼ်ၼိုင်ႈ။
* **HBox:** ၸႂ်ႉတႃႇတမ်းဝၢင်း သၢႆႉတေႃႇၶႂႃ (Horizontal) မိူၼ်ၼင်ႇ Photo + Text။
* **VBox:** ၸႂ်ႉတႃႇတမ်းဝၢင်း ၼိူဝ်တေႃႇတႂ်ႈ (Vertical) မိူၼ်ၼင်ႇ List ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း။