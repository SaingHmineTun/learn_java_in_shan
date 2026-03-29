## **Lesson 21: Working with Dialogs & Alerts**

ၼႂ်း **Student ID Maker** ႁဝ်း၊ သင် User ဢမ်ႇတႅမ်ႈၸိုဝ်ႈသေ တဵၵ်းတုမ်ႇ Generate ၵႂႃႇ၊ 
App ႁဝ်းလူဝ်ႇမီးလၢႆး "လၢတ်ႈ" ၸူးၶဝ်ဝႃႈ "ၶႅၼ်းတေႃႈ တႅမ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းဢွၼ်တၢင်းၶႃႈ" ၼႆယဝ်ႉ။

### **1. Types of Alerts (မဵဝ်းၶွင် Alert)**
JavaFX မီး `Alert` Class ဢၼ်ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈငၢႆႈငၢႆႈ 4-5 မဵဝ်းၶႃႈ:
* **INFORMATION:** တႃႇၼႄၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ "Save ယဝ်ႉတူဝ်ႈယဝ်ႉ")။
* **WARNING:** တႃႇပၼ်ၾၢင်ႉ (မိူၼ်ၼင်ႇ "ပႆႇလႆႈလိူၵ်ႈႁၢင်ႈ")။
* **ERROR:** တႃႇၼႄပၼ်ႁႃ (မိူၼ်ၼင်ႇ "လူတ်ႇၾၢႆႇဢမ်ႇလႆႈ")။
* **CONFIRMATION:** တႃႇထၢမ် (မိူၼ်ၼင်ႇ "ၶႂ်ႈမွတ်ႇ (Delete) တႄႉႁႃႉ?")။



### **2. Practical Logic: Validation Feedback**
ႁဝ်းတေမႃးမႄး Code ၼႂ်း `handleGenerate` ႁဝ်း ႁႂ်ႈမၼ်းၵတ်ႉတူၺ်း (Validate) ၶေႃႈမုၼ်းဢွၼ်တၢင်းၶႃႈ။

**ၼႂ်း IdController.java:**
```java
@FXML
private void handleGenerate() {
    String name = txtNameInput.getText();

    // ၵတ်ႉတူၺ်းဝႃႈ လိၵ်ႈပဝ်ႇယူႇႁႃႉ?
    if (name.trim().isEmpty()) {
        // 1. သၢင်ႈ Alert
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.setTitle("Validation Error");
        alert.setHeaderText("Missing Information");
        alert.setContentText("Please enter the student name before generating.");

        // 2. ၼႄ Alert သေပႂ်ႉႁႂ်ႈ User တဵၵ်း OK
        alert.showAndWait();
        return; // ၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ် ဝႆႉတီႈၼႆႈ
    }

    // သင်မီးၸိုဝ်ႈယဝ်ႉ ၸင်ႇသိုပ်ႇႁဵတ်းၵၢၼ်
    lblCardName.setText(name);
}
```



### **3. Customizing Dialogs (Optional)**
သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Dialog တူၺ်းလီ လႄႈ မီးသီမိူၼ်တင်း App ႁဝ်း:
* ႁဝ်းၸၢင်ႈသႂ်ႇ CSS ၸူး Alert ၼၼ်ႉလႆႈၶႃႈ။
* ၸႂ်ႉ `alert.getDialogPane().getStylesheets().add(...)` တႃႇၵွင်ႉ CSS ၶႃႈ။

### **4. Best Practices for Feedback**
* **Be Clear:** တႅမ်ႈလိၵ်ႈႁႂ်ႈ User ပွင်ႇၸႂ်ငၢႆႈဝႃႈ ၶဝ်လူဝ်ႇသိုပ်ႇႁဵတ်းသင်။
* **Don't Overuse:** ဢမ်ႇလူဝ်ႇၼႄ Alert ၼမ်ၼမ်၊ သင်ပဵၼ်လႆႈ ၸႂ်ႉ Label သီလႅင်ၼႄဝႆႉတႂ်ႈ TextField ၵေႃႈတေတူၺ်းလီၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Alert Class:** ၶိူင်ႈမိုဝ်းတႃႇသၢင်ႈ Pop-up တႃႇၼႄပၼ် User။
* **Validation:** ၵၢၼ်ၸတ်းတူၺ်းၶေႃႈမုၼ်း ဢွၼ်တၢင်း ပႆႇသိုပ်ႇႁဵတ်းၵၢၼ်တၢင်ႇလွင်ႈ။
* **showAndWait():** သင်ႇႁႂ်ႈ App ပႂ်ႉႁႂ်ႈ User တဵၵ်း OK ဢွၼ်တၢင်း ၸင်ႇသိုပ်ႇလႆႈ။