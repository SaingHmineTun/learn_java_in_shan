## 📘 Lesson 56: Pagination Logic (Handling Large Data)

**Pagination** ၼႆႉ ပဵၼ်ၵၢၼ်ၸႅၵ်ႇ Data ဢၼ်ယႂ်ႇႁႅင်းပူၼ်ႉၼႃႇ ႁႂ်ႈပဵၼ်တွၼ်ႈဢွၼ်ႇၼႆၶႃႈ။
မိူၼ်ၼင်ႇ ႁဝ်းၼႄပၼ် 50 ပုၵ်ႈၼႂ်း ၼႃႈၼိုင်ႈၼႆႉ တေႁဵတ်းႁႂ်ႈ ၵူၼ်းၸႂ်ႉတိုဝ်း တေဢမ်ႇတူၵ်းၸႂ် လႄႈ
Computer ၵေႃႈတေႁဵတ်းၵၢၼ်ဝႆးၶႃႈ။

### 1. The Pagination Control

ၼႂ်း JavaFX မီး Control ဢၼ်ၸိုဝ်ႈဝႃႈ **Pagination** ႁင်းၵူၺ်းမၼ်းၶႃႈ။ သင်သႂ်ႇမၼ်းယဝ်ႉၼႆႉ ၶိုၼ်းဢဝ် TableView သႂ်ႇဝႆႉၼႂ်း `<fx:define>` သေၶႃႈ။
ၼႆၸိုင် ႁဝ်းတေလႆႈဢဝ် TableView ႁဝ်း
ယူႇၼႂ်းမၼ်း ၼင်ႇၼႆၶႃႈ

```xml

<Pagination VBox.vgrow="ALWAYS" fx:id="pagination" />

<fx:define>
    <TableView fx:id="tableProverbs">
        <columns>
            <TableColumn fx:id="colId" prefWidth="50" text="ID" />
            <TableColumn fx:id="colKey" prefWidth="100" text="Key" />
            <TableColumn fx:id="colProverb" prefWidth="600" text="Proverb" />
        </columns>
        <columnResizePolicy>
            <TableView fx:constant="CONSTRAINED_RESIZE_POLICY" />
        </columnResizePolicy>
    </TableView>
</fx:define>
```

တီႈၼႂ်း Java ၼႆႉ ႁဝ်းၵွင်ႉၵၼ်တင်း pagination သေ ၶိုၼ်းမၵ်းမၼ်ႈဝႆႉပၼ်ဝႃး
ၼိုင်ႈၼႃႈလႂ် တေၼႄပၼ် ၵႂၢမ်းၵပ်းထုၵ်ႇ လၢႆတူဝ်ၼႆၶႃႈ။

```java
private final static int ROWS_PER_PAGE = 50;
@FXML
private Pagination pagination; // လၢၵ်ႈဝၢင်းၼႂ်း Scene Builder
```

---

### 2. Creating the Page Factory

ႁဝ်းလူဝ်ႇတႅမ်ႈ Page Factory တွၼ်ႈတႃႇၼပ်ႉဢၢၼ်ႇဝႃႈ... သင်ယူႇၼႃႈ 1 လူဝ်ႇဢဝ် Data
တႄႇတီႈ Index လႂ် ၵႂႃႇၸူး Index လႂ်ၶႃႈ။
ၵွပ်ႈႁဝ်း ၶႂ်ႈၵွင်ႉၸွမ်း filteredData ၼႆလႄႈ ယႃႇပေႇၸႂ်ႉတိုဝ်း proverbList ၶႃႈ

```java
//private void setupPagination() {
//    int totalPages = (int) Math.ceil((double) proverbList.size() / ROWS_PER_PAGE);
//    pagination.setPageCount(totalPages);
//
//    pagination.setPageFactory(pageIndex -> {
//        // 1. တတ်း Data ၸွမ်းၼႃႈ
//        int fromIndex = pageIndex * ROWS_PER_PAGE;
//        int toIndex = Math.min(fromIndex + ROWS_PER_PAGE, proverbList.size());
//
//        // 2. သႂ်ႇ Data ၼႂ်း Table
//        tableProverbs.setItems(FXCollections.observableArrayList(proverbList.subList(fromIndex, toIndex)));
//
//        // 3. သူင်ႇ TableView ၵႂႃႇၼႄၼႂ်း Pagination (Important!)
//        return tableProverbs;
//    });
//}
private void setupPagination() {
    // 1. တင်ႈတူဝ်ၼပ်ႉၼႃႈ ၸွမ်းၼင်ႇ Data ဢၼ် Filter ယဝ်ႉ (filteredData)
    int totalPages = (int) Math.ceil((double) filteredData.size() / ROWS_PER_PAGE);
    pagination.setPageCount(totalPages > 0 ? totalPages : 1); // ယႃႇႁႂ်ႈပဵၼ် 0

    pagination.setPageFactory(pageIndex -> {
        int fromIndex = pageIndex * ROWS_PER_PAGE;
        // 2. တူၺ်း Size လုၵ်ႉတီႈ filteredData
        int toIndex = Math.min(fromIndex + ROWS_PER_PAGE, filteredData.size());

        if (fromIndex > toIndex) {
            tableProverbs.setItems(FXCollections.emptyObservableList());
        } else {
            // 3. တတ်းဢဝ် Data လုၵ်ႉတီႈ filteredData မႃးၼႄ
            tableProverbs.setItems(FXCollections.observableArrayList(filteredData.subList(fromIndex, toIndex)));
        }

        return tableProverbs;
    });
}
```

### 3. Refresh after filtering
တီႈ Searching ၼၼ်ႉၵေႃႈ ဝၢႆးသေ ၸႅတ်ႈဢွၵ်ႇ ၶေႃႈမုၼ်းယဝ်ႉၼႆ ယႃႇလိုမ်း ႁွင်ႉပၼ် setupPagination() ၶႃႈ

```java
private void setupSearch() {
        txtSearch.textProperty().addListener((observable, oldValue, newValue) -> {
            filteredData.setPredicate(proverb -> {
                if (newValue == null || newValue.isEmpty()) return true;

                String lowerCaseFilter = newValue.toLowerCase();
                return proverb.getProverb().toLowerCase().contains(lowerCaseFilter) ||
                        proverb.getKey().contains(newValue);
            });

            // *** လွင်ႈယႂ်ႇသုတ်း: မိူဝ်ႈ Filter ယဝ်ႉ၊ လူဝ်ႇတင်ႈ Pagination မႂ်ႇ ***
            setupPagination();
        });
    }
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Pagination)

* **`subList(from, to)`**: ပဵၼ်ၵၢၼ် "တတ်း" ဢဝ်ၶေႃႈမုၼ်းတွၼ်ႈဢွၼ်ႇ လုၵ်ႉတီႈ List ဢၼ်ယႂ်ႇ။
* **`Math.ceil()`**: ၸွႆႈၼပ်ႉဝႃႈ သင်မီးၶေႃႈမုၼ်း 2,624 ပုၵ်ႈ၊ ၼႃႈၼိုင်ႈၼႄ 50... ႁဝ်းတေလူဝ်ႇ 53 ၼႃႈ (
  ၼႃႈသုတ်းတေမီး 24 ပုၵ်ႈ) ၶႃႈ။
* **Lazy Rendering**: JavaFX တေ "သၢင်ႈ" UI တႃႇ Rows ၸိူဝ်း ၵေႃႈမိူဝ်ႈ User
  ၼဵၵ်းၵႂႃႇၼႃႈၼၼ်ႉၵူၺ်း။ ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်း "ဝႆးလႅတ်း" (High Performance) ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students

* **Big Data Strategy**: ယႃႇပေၼႄ Data ၼမ်ၼႃၼႂ်းပွၵ်ႈလဵဝ်။
* **User Control**: ပၼ် User လိူၵ်ႈ "ၼႃႈ" ဢၼ်ၶဝ်ၶႂ်ႈတူၺ်း။
* **Smooth UI**: ၵၢၼ်ၸႂ်ႉ Pagination ၸွႆႈႁႂ်ႈ App ဢမ်ႇ "ၵိုတ်း" (Not Responding) မိူဝ်ႈလူတ်ႇ Data
  ၼမ်ၼမ်ၶႃႈ။