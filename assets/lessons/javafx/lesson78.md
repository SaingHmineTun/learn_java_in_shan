## Lesson 78: Search & Filter Transactions

ၼႂ်းၼႃႈလိၵ်ႈ Transactions ၼႆႉ ၶေႃႈမုၼ်းမၼ်းတေၼမ်မႃးတိၵ်းတိၵ်း။ ႁဝ်းလူဝ်ႇလႆႈႁဵတ်းႁႂ်ႈ Admin ႁႃလႆႈလူၺ်ႈ **ၸိုဝ်ႈ Member** ဢမ်ႇၼၼ် **ၸိုဝ်ႈပပ်ႉ** ၵမ်းလဵဝ် မိူဝ်ႈတိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၼၼ်ႉၶႃႈ။

### 1. The Real-time Filter Logic (လၢႆးႁဵတ်း Filter)

ႁဝ်းတေဢဝ် `ObservableList` လုၵ်ႉတီႈ DAO မႃးသႂ်ႇၼႂ်း `FilteredList` သေ ၵပ်းသိုပ်းဝႆႉတင်း `txtSearch`။



#### **Implementation in TransactionController.java:**

```java
private FilteredList<Transaction> filteredData;

private void setupSearch() {
    // 1. ဢဝ် Data တင်းသဵင်ႈသႂ်ႇၼႂ်း FilteredList
    ObservableList<Transaction> allTransactions = transDAO.findAll();
    filteredData = new FilteredList<>(allTransactions, p -> true);

    // 2. တင်ႈပၼ် Listener ႁႂ်ႈမၼ်း Filter မိူဝ်ႈတႅမ်ႈလိၵ်ႈ
    txtSearch.textProperty().addListener((observable, oldValue, newValue) -> {
        filteredData.setPredicate(transaction -> {
            // သင်ဢမ်ႇတႅမ်ႈသင် ႁႂ်ႈၼႄတင်းသဵင်ႈ
            if (newValue == null || newValue.isEmpty()) {
                return true;
            }

            String lowerCaseFilter = newValue.toLowerCase();

            // ႁႃလူၺ်ႈၸိုဝ်ႈ Member
            if (transaction.getMember().getFullName().toLowerCase().contains(lowerCaseFilter)) {
                return true;
            } 
            // ႁႃလူၺ်ႈၸိုဝ်ႈပပ်ႉ
            else if (transaction.getBook().getTitle().toLowerCase().contains(lowerCaseFilter)) {
                return true;
            }
            // ႁႃလူၺ်ႈ Status (BORROWED/RETURNED)
            else if (transaction.getStatus().toLowerCase().contains(lowerCaseFilter)) {
                return true;
            }

            return false; // သင်ဢမ်ႇမႅၼ်ႈသင် ဢမ်ႇၼႄ
        });
    });

    // 3. ဢဝ် FilteredList သႂ်ႇၼႂ်း Table
    transactionTable.setItems(filteredData);
}
```

---

### 2. Why use Real-time Filter? (ပဵၼ်သင်လူဝ်ႇႁဵတ်းၼင်ႇၼႆ?)

* **User Experience (UX)**: Admin ဢမ်ႇလူဝ်ႇၼဵၵ်း Button "Search" ၵူႈပွၵ်ႈ။ ၶေႃႈမုၼ်းတေ "တူင်ႉၼိုင်" (React) ၸွမ်းလိၵ်ႈဢၼ်တႅမ်ႈဝႆႉၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။
* **Efficiency**: ႁဝ်းဢမ်ႇလူဝ်ႇ Query Database ၵူႈပွၵ်ႈ တွၼ်ႈတႃႇ Search။ ႁဝ်း Filter ၼိူဝ် Memory (RAM) ၵမ်းလဵဝ် ႁဵတ်းႁႂ်ႈ App ႁဝ်းဝႆးၶႃႈ။
* **Consistency**: ႁဝ်းၸႂ်ႉလွၵ်းလၢႆးလဵဝ်ၵၼ်တင်းၼႃႈလိၵ်ႈ Books လႄႈ Members, မၼ်းႁဵတ်းႁႂ်ႈ App ႁဝ်းမီး Standard မိူၼ်ၵၼ်တင်းမူတ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students

* **Predicate Logic**: ၵၢၼ်ၸႂ်ႉ `setPredicate` ၼၼ်ႉ မိူၼ်ၼင်ႇၵၢၼ်ႁဵတ်း "သႅင်ႇ (Sieve)" တွၼ်ႈတႃႇလိူၵ်ႈဢဝ်ၵွႆး ၶေႃႈမုၼ်းဢၼ်ႁဝ်းလူဝ်ႇၼၼ်ႉၶႃႈ။
* **Nested Object Search**: ယွၼ်ႉ `Transaction` model ႁဝ်း မီး `Member` လႄႈ `Book` objects ယူႇၼႂ်းတူဝ်မၼ်း, ႁဝ်းၸၢင်ႈ "ၸူၵ်း" ဢဝ်ၸိုဝ်ႈမႃး Filter လႆႈငၢႆႈငၢႆႈၶႃႈ။
* **Search Field Style**: ယႃႇလိုမ်းၸႂ်ႉ `.search-field` ၼႂ်း `style.css` တွၼ်ႈတႃႇႁႂ်ႈ TextField ႁဝ်းတူၺ်းလီ လႄႈ ၸႅၵ်ႇလႆႈငၢႆႈၶႃႈ။