## Lesson 46: The 'Save' Button (Bridging UI to DB)

မိူဝ်ႈ User ၼဵၵ်းတုမ်ႇ Save ၼၼ်ႉ တီႈၼႂ်း Controller တေၸတ်းၵၢၼ် ၼင်ႇၼႆၶႃႈ:



### 1. The Save Workflow (လၢႆးႁဵတ်းၵၢၼ်)
1.  **Validate**: ထတ်းတူၺ်း Input ႁႂ်ႈသႅၼ်ႈသႂ် (Lesson 45)။
2.  **Extract**: ဢဝ်ၶေႃႈမုၼ်းတီႈ UI (TextFields, DatePicker)။
3.  **Map**: သႂ်ႇၶေႃႈမုၼ်း ၸိူဝ်းၼၼ်ႉ ၼႂ်း **Expense Object** (Lesson 43)။
4.  **Persist**: သူင်ႇ Object ၼၼ်ႉၵႂႃႇပၼ် **DAO** တွၼ်ႈတႃႇသိမ်းၼႂ်း MySQL (Lesson 44)။

---

### 2. Implementation (`ExpenseController.java`)

မိူဝ်ႈၽွင်းၼဵၵ်းတုမ်ႇ Save ၼၼ်ႉ ႁဝ်းတေႁွင်ႉ handleSave() method ၼင်ႇတီႈတႂ်ႈၶႃႈ

```java
@FXML
private void handleSave() {
    // 1. ထတ်းတူၺ်း Input ၵွၼ်ႇ (Validation)
    if (isInputValid()) {
        
        // 2. ၵဵပ်းႁွမ်ၶေႃႈမုၼ်းတီႈ UI
        String desc = txtDescription.getText().trim();
        double amount = Double.parseDouble(txtAmount.getText());
        String cat = comboCategory.getValue();
        LocalDate date = datePicker.getValue();

        // 3. သၢင်ႈ Object မႃးတီႈ Model
        Expense newExpense = new Expense(desc, amount, cat, date);

        // 4. သူင်ႇၵႂႃႇၸူး DAO တွၼ်ႈတႃႇသိမ်းၼႂ်း Database
        ExpenseDAO dao = new ExpenseDAO();
        dao.addExpense(newExpense);

        // 5. ၼႄ Alert ဝႃႈသိမ်းယဝ်ႉတူဝ်ႈ (User Feedback)
        showAlert(Alert.AlertType.INFORMATION, "Success", "Expense saved successfully!");
        
        // 6. ၽဵဝ်ႈပတ်ႉ ဢၼ်လႆႈသႂ်ႇဝႆႉ (Clear Fields)
        clearFields();
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Bridging)

* **Object-Oriented Bridge**: ႁဝ်းတေဢမ်ႇသူင်ႇ SQL String လုၵ်ႉတီႈ Controller ၶႃႈ။ ႁဝ်းသူင်ႇ **Object** (Expense) ၵႂႃႇၵူၺ်း။ ၼႆႉပဵၼ်လၢႆးႁဵတ်း ဢၼ်ၸႅၵ်ႇပုၼ်ႈၽွၼ်းၵၼ် (Separation of Concerns) ၶႅမ်ႉသုတ်းၶႃႈ။
* **`trim()`**: ၸွႆႈတတ်းပႅတ်ႈ Spaces ဢၼ်ဢမ်ႇလူဝ်ႇ ႁႂ်ႈၶေႃႈမုၼ်းၼႂ်း DB ႁဝ်းသႅၼ်ႈသႂ်ၶႃႈ။
* **Error Propagation**: သင် DAO မီးပၼ်ႁႃ (ၼင်ႇ DB Offline)၊ ႁဝ်းလူဝ်ႇမီး Try-Catch ဝႆႉတွၼ်ႈတႃႇၼႄ Alert ပၼ် User ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **The Controller**: ပဵၼ်တူဝ်ၵွင်ႉ (Bridge) ၼႂ်းၵႄႈ UI လႄႈ Database။
* **The Pattern**: Validation ➡️ Mapping ➡️ Saving။
* **Architecture**: ၵၢၼ်တႅမ်ႈ Code ၸႅၵ်ႇပဵၼ်ၸၼ်ႉ (Layers) ႁဵတ်းႁႂ်ႈ App ႁဝ်းၵႅၼ်ႇၶႅင် လႄႈ မႄးငၢႆႈၶႃႈ။