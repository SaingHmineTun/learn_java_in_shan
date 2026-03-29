## 📘 Lesson 41: Designing the Expense Entry Form (Clean Architecture)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေၸႂ်ႉ **Scene Builder** တွၼ်ႈတႃႇဝၢင်း Component လႄႈ ၸႂ်ႉၾၢႆႇ **.css** တွၼ်ႈတႃႇတႅမ်ႈသီ လႄႈ Style ၶႃႈ။


### 1. UI Components Selection (ၶိူင်ႈဢၼ်လူဝ်ႇၸႂ်ႉ)

ႁဝ်းလူဝ်ႇမီး Label လႄႈ တူဝ်ႁပ်ႉၶေႃႈမုၼ်း (Input Controls) ၼင်ႇၼႆၶႃႈ:

* **Description**: ၸႂ်ႉ `TextField` (တွၼ်ႈတႃႇတႅမ်ႈဝႃႈ ၸၢႆႇၵႃႈသင်)
* **Amount**: ၸႂ်ႉ `TextField` (တွၼ်ႈတႃႇသႂ်ႇ ၵႃႈၶၼ်ငိုၼ်း)
* **Category**: ၸႂ်ႉ `ComboBox<String>` (တွၼ်ႈတႃႇလိူၵ်ႈ မိူၼ်ၼင်ႇ Food, Travel, Rent)
* **Date**: ၸႂ်ႉ `DatePicker` (တွၼ်ႈတႃႇလိူၵ်ႈဝၼ်းထီႉ ဢၼ်မီး Calendar ၼႂ်းတူဝ်)
* **Action**: ၸႂ်ႉ `Button` (Save Expense)

---

### 2. Scene Builder Layout (လၢႆးဝၢင်း Component)

1.  ပိုတ်ႇ Scene Builder သေ လၢၵ်ႈဢဝ် **VBox** မႃးဝၢင်း (တင်ႈ Alignment ပဵၼ် `TOP_CENTER`)။
2.  ထႅင်ႈ **GridPane** ဝႆႉၼႂ်း VBox (တင်ႈ `hgap`=10, `vgap`=10) တွၼ်ႈတႃႇၸတ်း Label လႄႈ Input ႁႂ်ႈသိုဝ်ႈၵၼ်။
3.  တင်ႈ **fx:id** ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင် တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉၼႂ်း Java ၶႃႈ:

| Component | Label Text | fx:id |
| :--- | :--- | :--- |
| **TextField** | Description: | `txtDescription` |
| **TextField** | Amount: | `txtAmount` |
| **ComboBox** | Category: | `comboCategory` |
| **DatePicker** | Date: | `datePicker` |
| **Button** | SAVE TRANSACTION | `btnSave` |



### 3. The FXML Structure (`ExpenseForm.fxml`)
ဝၢႆးသေဝၢင်းၼႂ်း Scene Builder ယဝ်ႉ ၶေႃႈမုၼ်း FXML တေဢွၵ်ႇမႃးၼင်ႇၼႆၶႃႈ:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<VBox alignment="TOP_CENTER" spacing="25.0" styleClass="main-container" 
      stylesheets="@style.css" xmlns:fx="http://javafx.com/fxml/1" 
      fx:controller="com.itsaimao.controller.ExpenseController">
    
    <Label text="DAILY EXPENSE ENTRY" styleClass="header-label" />

    <GridPane hgap="15.0" vgap="15.0" alignment="CENTER">
        <Label text="Description:" GridPane.rowIndex="0" GridPane.columnIndex="0" styleClass="form-label"/>
        <TextField fx:id="txtDescription" promptText="e.g. Lunch" GridPane.rowIndex="0" GridPane.columnIndex="1"/>

        <Label text="Amount (MMK):" GridPane.rowIndex="1" GridPane.columnIndex="0" styleClass="form-label"/>
        <TextField fx:id="txtAmount" promptText="0.00" GridPane.rowIndex="1" GridPane.columnIndex="1"/>

        <Label text="Category:" GridPane.rowIndex="2" GridPane.columnIndex="0" styleClass="form-label"/>
        <ComboBox fx:id="comboCategory" prefWidth="200.0" GridPane.rowIndex="2" GridPane.columnIndex="1"/>

        <Label text="Date:" GridPane.rowIndex="3" GridPane.columnIndex="0" styleClass="form-label"/>
        <DatePicker fx:id="datePicker" GridPane.rowIndex="3" GridPane.columnIndex="1"/>
    </GridPane>

    <Button fx:id="btnSave" onAction="#handleSave" text="SAVE TRANSACTION" styleClass="save-button" />
</VBox>
```

---

### 4. The External Stylesheet (`style.css`)
ႁဝ်းတေတႅမ်ႈ Design ဝႆႉၼႂ်းၾၢႆႇၼႆႉ ႁႂ်ႈမၼ်းတူၺ်း Professional လႄႈ ပဵၼ်ပိူင် Application တႄႉတႄႉၶႃႈ။

```css
/* Main Background */
.main-container {
    -fx-background-color: #f4f7f6;
    -fx-padding: 40;
}

/* Header Text */
.header-label {
    -fx-font-family: "Arial Black";
    -fx-font-size: 24px;
    -fx-text-fill: #2c3e50;
}

/* Form Labels */
.form-label {
    -fx-font-size: 14px;
    -fx-font-weight: bold;
    -fx-text-fill: #34495e;
}

/* Save Button Style */
.save-button {
    -fx-background-color: #2ecc71;
    -fx-text-fill: white;
    -fx-font-size: 16px;
    -fx-font-weight: bold;
    -fx-padding: 10 30;
    -fx-background-radius: 5;
    -fx-cursor: hand;
}

.save-button:hover {
    -fx-background-color: #27ae60;
}
```


### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ UI Design)

* **`GridPane`**: ၸွႆႈႁႂ်ႈ Label လႄႈ TextField မႅၼ်ႈလွၵ်းၵၼ် (Alignment) ဢမ်ႇဝႃႈ Window တေယႂ်ႇ ဢမ်ႇၼၼ် လဵၵ်ႉၶႃႈ။
* **`promptText`**: ၸွႆႈပၼ် "Hint" ၼႂ်း TextField ႁႂ်ႈ User ႁူႉဝႃႈလူဝ်ႇတႅမ်ႈသင်ၶႃႈ။
* **`DatePicker`**: သင်ၸႂ်ႉၼႆႉ မၼ်းၵႅတ်ႇၶႄ User တႅမ်ႈဝၼ်းထီႉၽိတ်း (Date format errors) ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students

* **Scene Builder**: ၸႂ်ႉဝၢင်းႁၢင်ႈၽၢင် (Drawing the UI)။
* **fx:id**: ပဵၼ် "ၸိုဝ်ႈ" ဢၼ် Java တေၸႂ်ႉႁွင်ႉဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ UI။
* **VBox & GridPane**: ပဵၼ်တူဝ်ၵုမ်းထိင်း Layout ႁႂ်ႈပရူဝ်ႇၵရႅမ််းႁဝ်းတူၺ်းငၢႆႈၶႃႈ။