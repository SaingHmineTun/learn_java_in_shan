## ## Lesson 72: Real-time Search (FilteredList)

ၵၢၼ်ႁဵတ်း Real-time Search ၼၼ်ႉ မီး 3 ၶၵ်ႉ ဢၼ်လွင်ႈယႂ်ႇၶႃႈ:
1.  **Wrap**: ဢဝ် `ObservableList` သႂ်ႇၶဝ်ႈၼႂ်း `FilteredList`။
2.  **Bind**: ၵွင်ႉ `txtSearch` (TextField) ၸူး `predicate` ၶေႃႈမုၼ်း။
3.  **Show**: ဢဝ် `FilteredList` ၼၼ်ႉ သႂ်ႇၼႄၼႂ်း TableView ၶႃႈ။



### 1. Implementation in `MemberController.java`

ႁဝ်းတေမႃးမႄးထႅမ် Logic ၼႆႉၼႂ်း Method `initialize` ၶႃႈ။

```java
// 1. တင်ႈ FilteredList (တႄႇတီႈ memberList ဢၼ်မီးယူႇယဝ်ႉ)
FilteredList<Member> filteredData = new FilteredList<>(memberList, p -> true);

// 2. တင်ႈ Listener ပၼ် TextField ႁႃၸိုဝ်ႈ
txtSearch.textProperty().addListener((observable, oldValue, newValue) -> {
    filteredData.setPredicate(member -> {
        // သင်ပဝ်ႇဝႆႉ ႁႂ်ႈၼႄတင်းသဵင်ႈ
        if (newValue == null || newValue.isEmpty()) {
            return true;
        }

        String lowerCaseFilter = newValue.toLowerCase();

        // ၵူတ်ႇထတ်းဝႃႈ ၸိုဝ်ႈ ဢမ်ႇၼၼ် မၢႆၾူၼ်း မီးၶေႃႈမုၼ်းဢၼ်ႁႃယူႇႁႃႉ?
        if (member.getFullName().toLowerCase().contains(lowerCaseFilter)) {
            return true; 
        } else if (member.getPhone().contains(lowerCaseFilter)) {
            return true;
        }
        return false; // ဢမ်ႇမႅၼ်ႈၵၼ်
    });
});

// 3. ဢဝ် FilteredList သႂ်ႇၶဝ်ႈ TableView
memberTable.setItems(filteredData);
```

---

### 2. Implementation in `BookController.java`

တွၼ်ႈတႃႇပပ်ႉလိၵ်ႈ (Books)၊ ႁဝ်းၸၢင်ႈႁႃလႆႈတင်း **Title, Author,** လႄႈ **ISBN** ၶႃႈ။

```java
FilteredList<Book> filteredBooks = new FilteredList<>(bookList, p -> true);

txtSearch.textProperty().addListener((obs, oldVal, newVal) -> {
    filteredBooks.setPredicate(book -> {
        if (newVal == null || newVal.isEmpty()) return true;

        String filter = newVal.toLowerCase();
        return book.getTitle().toLowerCase().contains(filter) ||
               book.getAuthor().toLowerCase().contains(filter) ||
               book.getIsbn().contains(filter) ||
               book.getCategory().toLowerCase().contains(filter);
    });
});

bookTable.setItems(filteredBooks);
```

---

### 3. FXML Update (Reminder)
ယႃႇလိုမ်းၵူတ်ႇထတ်းဝႃႈ ၼႂ်း FXML ႁဝ်းမီး `txtSearch` ဝႆႉယဝ်ႉႁႃႉၼႆၶႃႈ။

```xml
<TextField fx:id="txtSearch" promptText="ႁႃၸိုဝ်ႈ (Search...)" prefWidth="200" styleClass="search-field"/>
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ)

* **Predicate**: ပဵၼ် "ပိူင်တတ်းသိၼ်"။ သင်မၼ်းသူင်ႇ `true` မႃး၊ Data တူဝ်ၼၼ်ႉတေၼႄၼႂ်း Table၊ သင်ပဵၼ် `false` မၼ်းတေထုၵ်ႇသိမ်းဝႆႉ (Hide) ၶႃႈ။
* **Case Insensitivity**: ၵၢၼ်ၸႂ်ႉ `.toLowerCase()` ၸွႆႈႁႂ်ႈ User တႅမ်ႈလိၵ်ႈတူဝ်လူင် ဢမ်ႇၼၼ် တူဝ်လဵၵ်ႈၵေႃႈ ႁႃႁၼ်မိူၼ်ၵၼ်ၶႃႈ။
* **No Database Call**: ၵၢၼ် Search လၢႆးၼႆႉ မၼ်းႁႃၼႂ်း **Memory** (List ဢၼ်မီးယူႇယဝ်ႉ)၊ ၵွပ်ႈၼၼ် မၼ်းဝႆၼႃႇ လႄႈ ဢမ်ႇလူဝ်ႇၵႂႃႇႁွင်ႉ SQL ၵူႈပွၵ်ႈၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students

* **Instant Feedback**: လုၵ်ႈႁဵၼ်းတေႁူႉဝႃႈ ၵၢၼ်ႁဵတ်း App ႁႂ်ႈမၼ်း "တွပ်ႇဝႆ (Responsive)" ၼၼ်ႉ ႁဵတ်းႁႂ်ႈ User ၶႂ်ႈၸႂ်ႉလိူဝ်ၵဝ်ႇၶႃႈ။
* **Search Scope**: သွၼ်ၶဝ်ဝႃႈ ႁဝ်းလူဝ်ႇလိူၵ်ႈ Columns ဢၼ်လွင်ႈယႂ်ႇမႃးႁႃ (Title, ISBN) ဢမ်ႇၸႂ်ႈဝႃႈ ႁႃၵူႈ Column ၶႃႈ။

---

ၶႅမ်ႉယဝ်ႉႁႃႉၶႃႈ? သိုပ်ႇၵႂႃႇ **Lesson 73: Modality & Popups** တွၼ်ႈတႃႇသွၼ်လၢႆးသၢင်ႈ Window မႂ်ႇ ဢၼ်တေမႃး "လွႆး (Pop-up)" ၼိူဝ် Dashboard ႁဝ်း တွၼ်ႈတႃႇ Add/Edit လႆႈယဝ်ႉႁႃႉၶႃႈ?