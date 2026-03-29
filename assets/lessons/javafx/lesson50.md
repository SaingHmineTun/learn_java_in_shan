## Lesson 50: The Power of ObservableList (Reactive Data Binding)

**ObservableList** ပဵၼ် List ဢၼ်ၸၢင်ႈ "ပၼ်ၸွပ်ႇႁူႉ" (Observe) လႆႈ။ 
မိူဝ်ႈမီးၵၢၼ်ထႅင်ႈ (Add)၊ မႄး (Update) ဢမ်ႇၼၼ် ထွၼ် (Delete) ၶေႃႈမုၼ်းၼႂ်း List ၼႆႉ၊ 
**TableView** တေလႅၵ်ႈလၢႆႈႁၢင်ႈၽၢင်မၼ်းၸွမ်း ၵမ်းလဵဝ် (Automatic Refresh) ၶႃႈ။



### 1. Declaring the List (ၵၢၼ်တင်ႈသဵၼ်ႈမၢႆ)

ႁဝ်းတေတႅမ်ႈဝႆႉၼႂ်း **Controller** ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ `FXCollections` တွၼ်ႈတႃႇသၢင်ႈမၼ်းမႃးၶႃႈ။

```java
// 1. တင်ႈ ObservableList တွၼ်ႈတႃႇၵဵပ်း Proverb Objects
private ObservableList<Proverb> proverbList = FXCollections.observableArrayList();
```

---

### 2. Binding to TableView (ၵၢၼ်ၵွင်ႉၸူး Table)

ၼႂ်း Method `initialize()` ဝၢႆးသေတင်ႈ Column ယဝ်ႉ၊ ႁဝ်းလူဝ်ႇလၢတ်ႈပၼ် Table ဝႃႈ "ႁႂ်ႈတူၺ်းၶေႃႈမုၼ်းလုၵ်ႉတီႈ List ၼႆႉ" ၼႆၶႃႈ။

```java
@Override
public void initialize(URL location, ResourceBundle resources) {
    // ... (Setup CellValueFactory ဢၼ်သွၼ်မႃးၼႂ်း Lesson 49) ...

    // 2. ၵွင်ႉ List ၸူး TableView
    tableProverbs.setItems(proverbList);
}
```

---

### 3. Adding Data (ၵၢၼ်ထႅင်ႈၶေႃႈမုၼ်း)

မိူဝ်ႈႁဝ်းထႅင်ႈ Data ၼႂ်း `proverbList`၊ မၼ်းတေ "ဢွၵ်ႇ" မႃးၼိူဝ် Table ႁင်းၵူၺ်းမၼ်း ဢမ်ႇလူဝ်ႇႁွင်ႉ `table.refresh()` ၶႃႈ။

```java
private void loadSampleData() {
    // ထႅင်ႈၶေႃႈမုၼ်းလူင်း List
    proverbList.add(new Proverb(1, "ၵ", "ၵၵ ၶၢႆၶၢႆ - ငိုၼ်းႁၢႆ ၵွပ်ႈဢမ်ႇၼပ်ႉ"));
    proverbList.add(new Proverb(2, "ၵ", "ၵ ၸဵဝ်းပွၵ်ႈ - ၵၢမ်ႇ မျွၵ်ႈပၼ်"));
    
    // TableView တေၼႄၶေႃႈမုၼ်း 2 ထႅဝ်ၼႆႉ ၵမ်းလဵဝ်ၶႃႈ!
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Reactive Data)

* **`FXCollections.observableArrayList()`**: ဢၼ်ၼႆႉပဵၼ် Wrapper ဢၼ်ႁေႃႇ `ArrayList` ဝႆႉသေ ထႅင်ႈပၼ် "Listeners"။ မိူဝ်ႈ Data လႅၵ်ႈလၢႆႈ၊ မၼ်းတေမွၵ်ႇလၢတ်ႈ (Trigger) ပၼ် UI ၵမ်းလဵဝ်ၶႃႈ။
* **`setItems()`**: ပဵၼ်ၵၢၼ်သၢင်ႈ "သၢႆၵွင်ႉ" (Link)။ ဝၢႆးသေၼဵၵ်း `setItems` ယဝ်ႉ၊ ႁဝ်းမႄးတီႈ List ၵေႃႈ UI တေလႅၵ်ႈၸွမ်းတႃႇသေႇၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students

* **Standard List**: မိူၼ်ၼင်ႇ "ပပ်ႉဢၼ်တႅမ်ႈယဝ်ႉ" (Static)၊ မႄးၵေႃႈ ၵူၼ်းဢမ်ႇႁူႉ။
* **ObservableList**: မိူၼ်ၼင်ႇ "Digital Screen" (Reactive)၊ မႄးတီႈ Computer... ၼႃႈၸေႃးလႅၵ်ႈၸွမ်း ၵမ်းလဵဝ်။
* **Best Practice**: ၼႂ်း JavaFX, သင်ၶႂ်ႈၼႄ Data ၼႂ်း TableView, ListView ဢမ်ႇၼၼ် ComboBox... လူဝ်ႇၸႂ်ႉ **ObservableList** တႃႇသေႇၶႃႈ။