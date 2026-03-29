## Lesson 55: Custom Cell Factories (Adding Icons)

ၼႂ်း JavaFX, **Cell Factory** ပဵၼ်တူဝ်ဢၼ် "သၢင်ႈ" ႁၢင်ႈၽၢင် Row ၵူႈဢၼ်ၶႃႈ။ 
ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈမၼ်း "သႂ်ႇပႃး Icon" ၸွမ်းၼင်ႇ **Proverb Key** (တူဝ်လိၵ်ႈတႄႇ) ၼၼ်ႉၶႃႈ။



### 1. Why use Cell Factories?
* **Visual Aid**: User တေႁူႉလႆႈဝႃႈ ၶေႃႈမုၼ်းၼႆႉ ပဵၼ်မဵဝ်းသင် လႆႈငၢႆႈလူၺ်ႈ ၸႂ်ႉတိုဝ်း Icon။
* **Custom Styling**: ႁဝ်းၸၢင်ႈမႄးသီ (Color) ဢမ်ႇၼၼ် Font ၼႂ်း Column လႆႈၶႃႈ။
* **Interactivity**: ႁဝ်းၸၢင်ႈထႅင်ႈ တုမ်ႇ (Buttons) ဢမ်ႇၼၼ် Checkbox ၶဝ်ႈၵႂႃႇၼႂ်း Table လႆႈၶႃႈ။

---

### 2. Implementation: The Icon Cell Factory

ႁဝ်းတေမႄး `colKey` ႁႂ်ႈမၼ်းၼႄ **Icon** သီသွမ်ႇသွမ်ႇ ႁူမ်ႈၸွမ်းတူဝ်လိၵ်ႈၶႃႈ။

```java
private void setupCustomCells() {
    colKey.setCellFactory(column -> {
        return new TableCell<Proverb, String>() {
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);

                if (item == null || empty) {
                    setText(null);
                    setGraphic(null);
                } else {
                    // 1. သၢင်ႈ Icon (ႁဝ်းၸၢင်ႈၸႂ်ႉ FontAwesome ဢမ်ႇၼၼ် Image)
                    Label iconLabel = new Label("🔖"); // ၸႂ်ႉ Emoji ဢမ်ႇၼၼ် SVG
                    iconLabel.setStyle("-fx-text-fill: #3498db; -fx-font-size: 14px;");

                    // 2. တင်ႈ Layout ၼႂ်း Cell
                    HBox container = new HBox(8, iconLabel, new Label(item));
                    container.setAlignment(Pos.CENTER_LEFT);

                    // 3. ၼႄၼိူဝ် UI
                    setGraphic(container);
                }
            }
        };
    });
}
```

---

### 3. Styling the Rows (CSS)
ႁဝ်းၸၢင်ႈၸႂ်ႉ `setRowFactory` တွၼ်ႈတႃႇမႄးသီ Row မိူဝ်ႈ User ဢဝ် Mouse ၵႂႃႇၸီႉ (Hover) ၶႃႈ။

```css
/* ၼႂ်း style.css */
.table-row-cell:hover {
    -fx-background-color: #ecf0f1;
    -fx-cursor: hand;
}

.table-row-cell:selected {
    -fx-background-color: #3498db;
    -fx-text-background-color: white;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Cell Factory)

* **`updateItem()`**: ဢၼ်ၼႆႉပဵၼ် "ႁူဝ်ၸႂ်" မၼ်းၶႃႈ။ JavaFX တေႁွင်ႉၸႂ်ႉ Method ၼႆႉ ၵူႈပွၵ်ႈ မိူဝ်ႈမၼ်းတေၼႄ Data ၼိူဝ် Screen။
* **`setGraphic()`**: ပဵၼ်ၵၢၼ်ဢဝ် **Node** (မိူၼ်ၼင်ႇ HBox, Label, Button) သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း Cell တႅၼ်းလိၵ်ႈယူဝ်းယူဝ်းၶႃႈ။
* **Memory Management**: ႁဝ်းလူဝ်ႇထတ်းတူၺ်း `if (empty)` တႃႇသေႇ၊ သင်ဢမ်ႇၼၼ် Row ဢၼ်ပဝ်ႇယူႇၼၼ်ႉ တေၸၢင်ႈၼႄ Icon ၽိတ်းပိူင်ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Cell Factory**: ပဵၼ်ၵၢၼ် "တႅမ်ႈႁၢင်ႈ" ပၼ် Column ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈ။
* **Graphic Over Text**: ႁဝ်းၸၢင်ႈဢဝ် "ႁၢင်ႈ" (Graphic) မႃးၼႄ ၸွမ်းတူဝ်လိၵ်ႈ လႆႈၵူႈပိူင်။
* **User Experience**: ၵၢၼ်သႂ်ႇ Icon ႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်း Professional လႄႈ ၸႂ်ႉငၢႆႈ (Intuitive) လိူဝ်ၵဝ်ႇၶႃႈ။