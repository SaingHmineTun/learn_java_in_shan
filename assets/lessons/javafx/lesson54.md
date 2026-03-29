## Lesson 54: Real-Time Search (FilteredList & Predicates)

ၼႂ်း JavaFX, ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇ Query SELECT ၼႂ်း Database ၵူႈပွၵ်ႈဢၼ် User ၼဵၵ်းလိၵ်ႈၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ **FilteredList** တွၼ်ႈတႃႇ "ၸႅတ်ႈ" (Filter) ၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယဝ်ႉၼႂ်း Memory ႁႂ်ႈမၼ်းဝႆးသုတ်းၶႃႈ။



### 1. Declaring the FilteredList
ႁဝ်းလူဝ်ႇလႅၵ်ႈလၢႆႈလၢႆးဝၢင်း `items` ၼႂ်း Controller ၶႃႈ။

```java
// 1. တင်ႈ FilteredList ႁေႃႇ ObservableList ႁဝ်းဝႆႉ
private FilteredList<Proverb> filteredData;

@Override
public void initialize(URL location, ResourceBundle resources) {
    // ... (Setup Columns) ...

    // 2. သၢင်ႈ FilteredList လုၵ်ႉတီႈ proverbList
    filteredData = new FilteredList<>(proverbList, p -> true);

    // 3. ဢဝ် FilteredList သႂ်ႇၼႂ်း Table တႅၼ်းတူဝ်ၵဝ်ႇ
    tableProverbs.setItems(filteredData);
}
```

---

### 2. Implementing the Search Logic
ႁဝ်းလူဝ်ႇမီး `TextField` (ၼင်ႇ `txtSearch`) တွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈလုၵ်ႉတီႈ User ၶႃႈ။

```java
@FXML
private TextField txtSearch;

private void setupSearch() {
    // 4. ထတ်းတူၺ်း ၵူႈပွၵ်ႈဢၼ် User တႅမ်ႈလိၵ်ႈ (Listener)
    txtSearch.textProperty().addListener((observable, oldValue, newValue) -> {
        filteredData.setPredicate(proverb -> {
            // သင်လွၵ်း Search ပဝ်ႇဝႆႉ ႁႂ်ႈၼႄတင်းသဵင်ႈ
            if (newValue == null || newValue.isEmpty()) {
                return true;
            }

            String lowerCaseFilter = newValue.toLowerCase();

            // ထတ်းတူၺ်းဝႃႈ လိၵ်ႈဢၼ်ႁႃၼၼ်ႉ မီးၼႂ်း Proverb ႁႃႉ?
            if (proverb.getProverbText().toLowerCase().contains(lowerCaseFilter)) {
                return true;
            } else if (proverb.getProverbKey().contains(newValue)) {
                return true;
            }
            
            return false; // သင်ဢမ်ႇမႅၼ်ႈ ဢမ်ႇၼႄ
        });
    });
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Search)

* **`Predicate`**: ပဵၼ် "ငဝ်းလၢႆးတႃႇၸႅတ်ႈတူၺ်း" (Condition) ၶႃႈ။ သင်မၼ်းသူင်ႇၶိုၼ်း `true` ၼႆ Row ၼၼ်ႉတေဢွၵ်ႇမႃး၊ သင် `false` ၼႆ မၼ်းတေႁၢႆဝႆႉၶႃႈ။
* **`textProperty().addListener`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၼႃႇ! မၼ်းတေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈ 1 တူဝ်။ ဢမ်ႇလူဝ်ႇၼဵၵ်းတုမ်ႇ "Search" ၵေႃႈလႆႈၶႃႈ။
* **Performance**: ၵၢၼ် Filter ၼိူဝ် Memory (ObservableList) ဝႆးလိူဝ်ၵၢၼ်ၵႂႃႇထၢမ် Database ၶႃႈ။ တွၼ်ႈတႃႇ 2,600 Rows ၼႆႉ Java ႁဵတ်းလႆႈၼႂ်းၶိင်ႇ (Milliseconds) ၵူၺ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **FilteredList**: မိူၼ်ၼင်ႇ "ၵႅဝ်ႈတႃ" ဢၼ်လိူၵ်ႈတူၺ်းလႆႈ ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈႁၼ်။
* **Real-time UX**: ၵၢၼ်ႁႃလိၵ်ႈဢၼ်ဝႆး တေႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်း Professional လႄႈ ၸႂ်ႉငၢႆႈၶႃႈ။
* **Unicode Support**: ယွၼ်ႉႁဝ်းၸႂ်ႉ `contains()`, မၼ်းတေႁႃလိၵ်ႈတႆးလႆႈၵူႈတူဝ်ၶႃႈ။