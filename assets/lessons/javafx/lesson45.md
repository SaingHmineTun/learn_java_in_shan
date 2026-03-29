## Lesson 45: Data Validation (Sanitizing Inputs)

မိူဝ်ႈႁဝ်းပႆႇသူင်ႇ Data ၵႂႃႇၸူး DAO တွၼ်ႈတႃႇ တွင်းမၢႆဝႆႉၼႂ်း Database ၼၼ်ႉ 
ႁဝ်းထုၵ်ႇလီ ၸႅတ်ႈတူၺ်း (Filter) ၶေႃႈမုၼ်းၼႂ်း Controller ၵွၼ်ႇၶႃႈ။



### 1. Why Validate? (ႁဵတ်းသင်လူဝ်ႇထတ်း?)
* **Prevent Crashes**: ၵႅတ်ႇၶႄ ယႃႇႁႂ်ႈဢႅပ်ႉလူႉၵွႆႇ မိူၼ်ၼင်ႇ `NumberFormatException` မိူဝ်ႈ User သႂ်ႇလိၵ်ႈၼႂ်းလွၵ်း Amount။
* **Data Integrity**: ႁႂ်ႈမႅၼ်ႈၸႂ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်သိမ်းၼၼ်ႉ မႅၼ်ႈပိူင်တႄႉ (ၼင်ႇ Amount တေဢမ်ႇပဵၼ်ၵႃႈ (-) ဢမ်ႇၼၼ် 0)။
* **User Experience**: ပၼ်တီႈၾၢင်ႉ (Alert) ႁႂ်ႈ User ႁူႉဝႃႈ ၶဝ်လိုမ်းသႂ်ႇလွၵ်းလႂ်။

---

### 2. Implementation (`ExpenseController.java`)

ႁဝ်းတေတႅမ်ႈ Method တွၼ်ႈတႃႇထတ်းတူၺ်း Boolean ဝႃႈ ၶေႃႈမုၼ်းသႅၼ်ႈသႂ်ယဝ်ႉႁႃႉ ၼႆၶႃႈ။

```java
private boolean isInputValid() {
    String errorMessage = "";

    // 1. ထတ်းတူၺ်းလွၵ်းပဝ်ႇ (Empty Fields)
    if (txtDescription.getText().isEmpty()) {
        errorMessage += "Description is required!\n";
    }
    if (comboCategory.getValue() == null) {
        errorMessage += "Please select a category!\n";
    }

    // 2. ထတ်းတူၺ်းမၢႆၼပ်ႉငိုၼ်း (Numeric Validation)
    try {
        double amount = Double.parseDouble(txtAmount.getText());
        if (amount <= 0) {
            errorMessage += "Amount must be greater than zero!\n";
        }
    } catch (NumberFormatException e) {
        errorMessage += "Invalid Amount (must be a number)!\n";
    }

    // 3. သင်မီး Error ႁႂ်ႈၼႄ Alert
    if (errorMessage.isEmpty()) {
        return true;
    } else {
        showAlert("Validation Error", errorMessage);
        return false;
    }
}

// Helper Method တွၼ်ႈတႃႇၼႄ Alert
private void showAlert(String title, String content) {
    Alert alert = new Alert(Alert.AlertType.ERROR);
    alert.setTitle(title);
    alert.setContentText(content);
    alert.showAndWait();
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Validation)

* **`Double.parseDouble()`**: ဢၼ်ၼႆႉၸွႆႈထတ်းဝႃႈ လိၵ်ႈဢၼ် User တႅမ်ႈမႃးၼၼ်ႉ ဢဝ်မႃးၼပ်ႉလႆႈတႄႉႁႃႉ။ သင်ပဵၼ် "ABC" ၼႆ မၼ်းတေတူၵ်းၸူး `catch` ၵမ်းလဵဝ်ၶႃႈ။
* **`errorMessage.isEmpty()`**: ပဵၼ်လၢႆးၵဵပ်းႁွမ် Error တင်းသဵင်ႈသေ ၼႄပၼ် User ၵမ်းလဵဝ် (ဢမ်ႇၼႄလၢႆပွၵ်ႈ)။
* **Sanitization**: ႁဝ်းၸၢင်ႈၸႂ်ႉ `.trim()` တွၼ်ႈတႃႇတတ်းပႅတ်ႈ "လွၵ်းပဝ်ႇ" (Spaces) ၽၢႆႇၼႃႈလႄႈၽၢႆႇလင် လိၵ်ႈ မိူဝ်ႈၽွင်းပႆႇ Save ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Validation First**: ယႃႇပေယုမ်ႇၸႂ် (Trust) User Input။ ထတ်းဢွၼ်တၢင်း မိူဝ်ႈပႆႇ Save တႃႇသေႇ။
* **Try-Catch**: ၸႂ်ႉတွၼ်ႈတႃႇၸတ်းၵၢၼ် မၢႆၼပ်ႉဢၼ်ၽိတ်းပိူင်။
* **Feedback**: မိူဝ်ႈ User သႂ်ႇၽိတ်း ၼႄပၼ် Alert ႁႂ်ႈၶဝ်ႁူႉ ၶဝ်ၽိတ်းသင်။ ၶႅမ်ႉတႃႇ User Experience။