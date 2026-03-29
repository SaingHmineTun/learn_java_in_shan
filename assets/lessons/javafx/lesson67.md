## Lesson 67: Custom Dialogs and Popup Windows

ၵၢၼ်ပိုတ်ႇ Window မႂ်ႇၼႂ်း JavaFX လူဝ်ႇမီး **Stage** တူဝ်မႂ်ႇ။ တွၼ်ႈတႃႇႁႂ်ႈမၼ်းတူၺ်းမိူၼ် Dialog တႄႉတႄႉ၊ ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ်လွင်ႈ **Modality** ၶႃႈ။



### 1. Creating the Dialog Layout (`BookDialog.fxml`)
ၼႃႈၸေႃးၼႆႉ တေမီးလွၵ်းတႅမ်ႈၶေႃႈမုၼ်းပပ်ႉလိၵ်ႈ ဢၼ်ႁဝ်းၸႂ်ႉလႆႈတင်း Add လႄႈ Edit ၶႃႈ။

```xml
<VBox spacing="15" style="-fx-padding: 25; -fx-background-color: white;" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.itsaimao.controller.BookDialogController">
    <Label fx:id="lblHeader" text="ADD NEW BOOK" style="-fx-font-size: 18px; -fx-font-weight: bold;" />
    <TextField fx:id="txtTitle" promptText="Book Title" prefHeight="40" />
    <TextField fx:id="txtAuthor" promptText="Author" prefHeight="40" />
    <TextField fx:id="txtIsbn" promptText="ISBN" prefHeight="40" />
    <HBox spacing="10" alignment="CENTER_RIGHT">
        <Button text="Cancel" onAction="#handleCancel" />
        <Button text="Save Book" onAction="#handleSave" style="-fx-background-color: #27ae60; -fx-text-fill: white;" />
    </HBox>
</VBox>
```

---

### 2. Logic to Open the Dialog (`LibraryController.java`)
ၼႆႉပဵၼ် Method ဢၼ် "ၵႅၼ်ႇ" (Solid) သုတ်း တွၼ်ႈတႃႇပိုတ်ႇ Dialog ၶႃႈ:

```java
private void showBookDialog(Book book, String title) {
    try {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("/view/BookDialog.fxml"));
        Parent root = loader.load();

        // 1. သၢင်ႈ Stage မႂ်ႇ
        Stage dialogStage = new Stage();
        dialogStage.setTitle(title);
        
        // 2. တင်ႈ Modality (လွင်ႈယႂ်ႇသုတ်း!)
        // မၼ်းတေလူဝ်ႇပိၵ်ႉ Window ၼႆႉၵွၼ်ႇ ၸင်ႇတေၵႂႃႇၼဵၵ်း Window လင်လႆႈ
        dialogStage.initModality(Modality.APPLICATION_MODAL);
        dialogStage.initOwner(tableBooks.getScene().getWindow()); // တင်ႈ "ပေႃႈမႄႈ" Window
        
        dialogStage.setScene(new Scene(root));

        // 3. သူင်ႇ Data ၵႂႃႇၸူး Dialog (Lesson 60)
        BookDialogController controller = loader.getController();
        controller.setBook(book); 
        controller.setDialogStage(dialogStage);

        // 4. ပိုတ်ႇသေ "ၵိုတ်း" ဝႆႉ (Wait)
        dialogStage.showAndWait();
        
        // 5. မိူဝ်ႈ Dialog ပိၵ်ႉယဝ်ႉ၊ Refresh Table ၶိုၼ်း
        loadDataFromDatabase();

    } catch (IOException e) {
        e.printStackTrace();
    }
}
```

---

### 3. Controller for Dialog (`BookDialogController.java`)

```java
public class BookDialogController {
    @FXML private TextField txtTitle, txtAuthor, txtIsbn;
    private Stage dialogStage;
    private Book book;

    public void setBook(Book book) {
        this.book = book;
        if (book != null) { // သင်ပဵၼ်ၵၢၼ် Edit
            txtTitle.setText(book.getTitle());
            txtAuthor.setText(book.getAuthor());
            txtIsbn.setText(book.getIsbn());
        }
    }

    @FXML
    private void handleSave() {
        // Logic တွၼ်ႈတႃႇ Save လူင်း DB ၽၢၼ်ႇทาง BookDAO
        // ...
        dialogStage.close(); // ပိၵ်ႉ Window မိူဝ်ႈယဝ်ႉ
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Custom Dialog)

* **`Modality.APPLICATION_MODAL`**: ႁဵတ်းႁႂ်ႈ Window ၼႆႉပဵၼ် "တူဝ်ယႂ်ႇ" သုတ်းၼိူဝ်ၼႃႈၸေႃး။ User တေဢမ်ႇၸၢင်ႈၵႂႃႇၼဵၵ်း "Delete" ဢမ်ႇၼၼ် "Search" ၼႂ်းၼႃႈၸေႃးလင် လႆႈ တေႃႇပေႃး Dialog ၼႆႉပိၵ်ႉၶႃႈ။
* **`showAndWait()`**: ပႅၵ်ႇပႄင်ႇတင်း `show()`။ Method ၼႆႉတေ "ၵိုတ်း" Code ၼႂ်း LibraryController ဝႆႉ တေႃႇပေႃး User ပိၵ်ႉ Dialog။ ၼႆႉၸွႆႈႁႂ်ႈႁဝ်း Refresh Data လႆႈထႅတ်ႉထႅတ်ႉ ဝၢႆးသေ User မႄးၶေႃႈမုၼ်းယဝ်ႉၶႃႈ။
* **`initOwner()`**: ၸွႆႈႁႂ်ႈ Windows တင်းသွင်ဢၼ် "ၵွင်ႉ" ၵၼ်။ သင်ႁဝ်း Minimize Window ယႂ်ႇ၊ Dialog ၵေႃႈတေ Minimize ၸွမ်းၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Modal Dialog**: ပဵၼ် Window ဢၼ်လူဝ်ႇ "တွပ်ႇ" ၵွၼ်ႇၸင်ႇၵႂႃႇလႆႈ။
* **User Focus**: ၸွႆႈႁႂ်ႈ User မီးသတိ (Focus) ၵူၺ်းၼိူဝ်ၵၢၼ် Add/Edit ဢၼ်ၶဝ်ႁဵတ်းယူႇၼၼ်ႉ။
* **Professional UI**: ၵၢၼ်ယႅၵ်းၼႃႈၸေႃး Add/Edit ဢွၵ်ႇပဵၼ် Popup ႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်းသႅၼ်ႈသႂ် လႄႈ ၸႂ်ႉငၢႆႈၶိုၼ်းၼမ်ၼႃႇၶႃႈ။
