## Lesson 66: UI Loaders (ProgressIndicator & Threading)

တွၼ်ႈတႃႇၼႄ ProgressIndicator ႁႂ်ႈမၼ်း "မူၼ်း" လႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Background Thread** ၶႃႈ။ သင်ႁဝ်း Load Data ၼႂ်း JavaFX Main Thread (UI Thread) တူဝ်လဵဝ်ၵူၺ်း၊ UI တေၶႅင် (Freeze) သေ တူဝ်မူၼ်းၼၼ်ႉၵေႃႈ တေဢမ်ႇတူင်ႉၼိုင်ၶႃႈ။



### 1. FXML Setup (`LibraryView.fxml`)
ႁဝ်းလူဝ်ႇဢဝ် **StackPane** မႃးႁေႃႇ TableView ဝႆႉ သေဢဝ် ProgressIndicator ဝၢင်းသွၼ်ႉၼိူဝ်မၼ်းၶႃႈ။

```xml
<StackPane VBox.vgrow="ALWAYS">
    <Pagination fx:id="pagination" />
    
    <ProgressIndicator fx:id="loader" maxWidth="50" maxHeight="50" visible="false" />
</StackPane>
```

---

### 2. Implementation with Task (`LibraryController.java`)
ႁဝ်းတေၸႂ်ႉ Class **`Task`** တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background ၶႃႈ။

```java
private void loadDataWithLoader() {
    // 1. ၼႄ Loader သေ ပိၵ်ႉ Table ဝႆႉၵွၼ်ႇ
    loader.setVisible(true);
    pagination.setDisable(true);

    // 2. သၢင်ႈ Task တွၼ်ႈတႃႇၵႂႃႇဢဝ် Data ၼႂ်း DB
    Task<List<Book>> loadTask = new Task<List<Book>>() {
        @Override
        protected List<Book> call() throws Exception {
            Thread.sleep(1500); // ၸမ်းႁဵတ်းႁႂ်ႈမၼ်းၼၢၼ်း (ဢืดႃ) ပႅပ်ႉၼိုင်ႈ
            return bookDAO.getAll(); 
        }
    };

    // 3. မိူဝ်ႈ Task ႁဵတ်းယဝ်ႉ (Success)
    loadTask.setOnSucceeded(e -> {
        bookList.setAll(loadTask.getValue());
        updatePagination();
        
        loader.setVisible(false); // ပိၵ်ႉ Loader
        pagination.setDisable(false); // ပိုတ်ႇ Table ၶိုၼ်း
    });

    // 4. မိူဝ်ႈ Task ၽိတ်းပႅတ်ႈ (Failed)
    loadTask.setOnFailed(e -> {
        loader.setVisible(false);
        showWarning("Failed to load data!");
    });

    // 5. တႄႇႁဵတ်းၵၢၼ် Background Thread
    new Thread(loadTask).start();
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ UI Loader)

* **`StackPane`**: ၸွႆႈႁႂ်ႈႁဝ်းဝၢင်း UI သွၼ်ႉၵၼ်လႆႈ။ မိူဝ်ႈ Data ပႆႇမႃး ႁဝ်းဢဝ် Loader ဝၢင်းဝႆႉၵၢင်ၼႃႈၸေႃး တႅၼ်းတီႈ TableView ၶႃႈ။
* **`Task<V>`**: ပဵၼ် Class ဢၼ် JavaFX ပၼ်မႃးတွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Background။ မၼ်းမီး Method `setOnSucceeded` ဢၼ်တေလႅၵ်ႈလၢႆႈ UI ပၼ်ႁင်းၵူၺ်းမၼ်း မိူဝ်ႈၵၢၼ်ယဝ်ႉတူဝ်ႈၶႃႈ။
* **Threading**: ၵၢၼ်ယႅၵ်း Thread ႁဵတ်းႁႂ်ႈ User ၸၢင်ႈၼဵၵ်း Menu တၢင်ႇဢၼ်လႆႈယူႇ မိူဝ်ႈ App တိုၵ်ႉလူတ်ႇ Data ၼၼ်ႉၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **User Experience**: ၵၢၼ်ၼႄ Loader ႁဵတ်းႁႂ်ႈ User ၼႄႉၸႂ်ဝႃႈ App တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။
* **No More Freezing**: ၸႂ်ႉ Background Thread တွၼ်ႈတႃႇၵႅတ်းပၼ်ႁႃ "App ၶႅင်"။
* **Visual Feedback**: လွင်ႈ "တူင်ႉၼိုင်" (Animation) ၼိူဝ် UI ႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်း Modern လႄႈ Professional ၶိုၼ်းၼမ်ၼႃႇၶႃႈ။