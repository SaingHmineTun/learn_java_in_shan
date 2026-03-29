## 📘 Lesson 53: Mapping Results to TableView

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေႁဵတ်းႁႂ်ႈ `ObservableList` ႁဝ်း ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Database သေ ၼႄၼိူဝ် TableView ႁင်းၵူၺ်းမၼ်းၶႃႈ။



### 1. Linking DAO to Controller

ႁဝ်းတေတႅမ်ႈ Method ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉ `getAllProverbs()` ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း **Lesson 52** ၶႃႈ။

```java
// ၼႂ်း ProverbController.java
private void loadProverbsFromDatabase() {
    // 1. သၢင်ႈ Object ၶေႃႈ DAO
    ProverbDAO dao = new ProverbDAO();
    
    // 2. လူတ်ႇၶေႃႈမုၼ်းတင်းသဵင်ႈသေ သႂ်ႇၼႂ်း ObservableList ႁဝ်း
    // ႁဝ်းၸႂ်ႉ setAll တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းတင်းသဵင်ႈ ၼႂ်းပွၵ်ႈလဵဝ်
    proverbList.setAll(dao.getAllProverbs());
    
    System.out.println("✅ Loaded " + proverbList.size() + " proverbs.");
}
```

---

### 2. Auto-Loading on Start

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းပိုတ်ႇမႃးယဝ်ႉ ၼႄၶေႃႈမုၼ်းၵမ်းလဵဝ်၊ ႁဝ်းလူဝ်ႇႁွင်ႉ Method ၼႆႉဝႆႉၼႂ်း **`initialize()`** ၶႃႈ။

```java
@Override
public void initialize(URL location, ResourceBundle resources) {
    // Setup Columns (Lesson 49)
    colId.setCellValueFactory(new PropertyValueFactory<>("id"));
    colKey.setCellValueFactory(new PropertyValueFactory<>("proverbKey"));
    colProverb.setCellValueFactory(new PropertyValueFactory<>("proverbText"));

    // Binding List (Lesson 50)
    tableProverbs.setItems(proverbList);

    // 3. လူတ်ႇၶေႃႈမုၼ်းလုၵ်ႉ DB မႃးၼႄၵမ်းလဵဝ်
    loadProverbsFromDatabase();
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Data Mapping)

* **`setAll()` vs `addAll()`**: ႁဝ်းၸႂ်ႉ `setAll()` ယွၼ်ႉမၼ်းတေ "ပၢတ်ႇ" (Clear) ၶေႃႈမုၼ်းၵဝ်ႇဢွၵ်ႇၵွၼ်ႇ သေၸင်ႇသႂ်ႇၶေႃႈမုၼ်းမႂ်ႇၶဝ်ႈၵႂႃႇ။ မၼ်းၸွႆႈႁႂ်ႈၶေႃႈမုၼ်းႁဝ်း ဢမ်ႇသွၼ်ႉ (Duplicate) ၵၼ်ၶႃႈ။
* **Lazy Loading Concept**: ယွၼ်ႉၶေႃႈမုၼ်းမီး 2,600+ ပုၵ်ႈ၊ ၵၢၼ်လူတ်ႇၼႂ်း `initialize()` ၸၢင်ႈႁဵတ်းႁႂ်ႈ App တူၵ်းၸႂ် (Freeze) ၶႃႈ။ တွၼ်ႈတႃႇ Developer ဢၼ်ၶႅမ်ႉ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `Task` ဢမ်ႇၼၼ် `Thread` တွၼ်ႈတႃႇလူတ်ႇ Data ၽၢႆႇလင် (Background) ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **The Bridge**: Controller ပဵၼ်တူဝ်ၵွင်ႉ ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ DAO သေ သႂ်ႇၼႂ်း TableView။
* **Observable Advantage**: ႁဝ်းၵူၺ်းလူဝ်ႇသႂ်ႇ Data ၼႂ်း `proverbList`၊ TableView တေမႄးႁၢင်ႈၼႄပၼ် ႁင်းၵူၺ်းမၼ်း (ယွၼ်ႉႁဝ်း `setItems` ဝႆႉယဝ်ႉ)။
* **Data Refresh**: သင်ဝၼ်းၼႃႈ ႁဝ်းမီးတုမ်ႇ "Refresh", ႁဝ်းၵေႃႈၵူၺ်းလူဝ်ႇႁွင်ႉ `loadProverbsFromDatabase()` ထႅင်ႈပွၵ်ႈၼိုင်ႈၵူၺ်းၶႃႈ။