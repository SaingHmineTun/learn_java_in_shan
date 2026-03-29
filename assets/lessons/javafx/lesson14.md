## **Lesson 14: Event Handling (The 'Generate' Button)**

ၼႂ်း JavaFX, **Event** ပဵၼ်လွင်ႈတူင်ႉၼိုင် ဢၼ်ပဵၼ်မႃးယဝ်ႉၶႃႈ။ တူဝ်ဢၼ်လွင်ႈယႂ်ႇသုတ်း တွၼ်ႈတႃႇ Button ၼႂ်း **Student ID Maker** ႁဝ်းၵေႃႈပဵၼ် **`onAction`** ၶႃႈ။

### **1. What is onAction?**
**`onAction`** ပဵၼ် Event ဢၼ်တေၵိပဵၼ်မႃး မိူဝ်ႈ User "တဵၵ်း" (Click) တုမ်ႇ `Generate` ၼၼ်ႉၶႃႈ။
* **In Scene Builder:** ႁဝ်းတေလႆႈတႅမ်ႈၸိုဝ်ႈ Method ဝႆႉၼႂ်းတွၼ်ႈ **Code > On Action** (မိူၼ်ၼင်ႇ `#handleGenerate`)။
* **In Java Controller:** ႁဝ်းတေလႆႈတႅမ်ႈ Method ဢၼ်မီးၸိုဝ်ႈမိူၼ်ၵၼ် သေၸႂ်ႉ **`@FXML`** ဝႆႉၽၢႆႇၼႃႈမၼ်းၶႃႈ။



### **2. Practical Logic: Generating the ID Card**
မိူဝ်ႈ User တဵၵ်းတုမ်ႇ Generate ယဝ်ႉ၊ App ႁဝ်းလူဝ်ႇႁဵတ်းၵၢၼ် 3 ၶၵ်ႉတွၼ်ႈ:
1.  **Get Data:** ဢဝ်လိၵ်ႈတီႈ TextField (ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း)။
2.  **Process:** ၸတ်းတူၺ်းဝႃႈ မီးလိၵ်ႈဝႆႉတေႉႁႃႉ (Validation)။
3.  **Display:** ဢဝ်လိၵ်ႈၼၼ်ႉၵႂႃႇၼႄၼႂ်း Label ၶွင် ID Card Preview။

#### **Java Controller Code:**
```java
@FXML
private TextField txtNameInput; // TextField တႃႇတႅမ်ႈၸိုဝ်ႈ

@FXML
private Label lblCardName; // Label ၼႂ်း ID Card Preview

// Method ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈတဵၵ်းပုမ်ႇ Generate
@FXML
private void handleGenerate() {
    String name = txtNameInput.getText(); // 1. ဢဝ်လိၵ်ႈ
    
    if (name.trim().isEmpty()) { // 2. ၵတ်ႉတူၺ်း (Validation)
        lblCardName.setText("Name: (Please enter name)");
    } else {
        lblCardName.setText("Name: " + name); // 3. ၼႄလိၵ်ႈ (Display)
    }
}
```



### **3. Sample FXML Code for Button**
ၼႂ်းၾၢႆႇ FXML ၶူး၊ Button ၼၼ်ႉတေမီး `onAction` ၵွင်ႉဝႆႉၼင်ႇၼႆၶႃႈ:

```xml
<Button text="Generate ID Card" onAction="#handleGenerate" 
        style="-fx-background-color: #3498db; -fx-text-fill: white;">
    <font>
        <Font name="System Bold" size="14.0" />
    </font>
</Button>
```

### **4. Steps in Scene Builder**
1.  လိူၵ်ႈ **Button** (Generate)။
2.  ၵႂႃႇတီႈ **Inspector > Code** (ၽၢႆႇၶႂႃ)။
3.  ၼႂ်းၶွင်ႇ **On Action**, တႅမ်ႈၸိုဝ်ႈ Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Java (မိူၼ်ၼင်ႇ `handleGenerate`)။ **(ဢမ်ႇလူဝ်ႇသႂ်ႇ # ၼႂ်း Scene Builder ၶႃႈ၊ မၼ်းတေသႂ်ႇပၼ်ႁင်းမၼ်းၼႂ်း FXML)**။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **onAction:** ပဵၼ် Event ငဝ်ႈမၼ်း တွၼ်ႈတႃႇ Button ႁဵတ်းၵၢၼ်။
* **Method Binding:** ၸိုဝ်ႈ Method ၼႂ်း Java လႄႈ ၼႂ်း Scene Builder တေလႆႈမိူၼ်ၵၼ်။
* **Interactive UI:** ၸွႆႈႁႂ်ႈ User လႄႈ App ၵပ်းသိုပ်ႇ (Interact) ၵၼ်လႆႈ တွၼ်ႈတႃႇသၢင်ႈ ID Card ၶႃႈ။