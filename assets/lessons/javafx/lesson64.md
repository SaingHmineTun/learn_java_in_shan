## Lesson 64: SQL DELETE (Removing Records with Confirmation)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေႁဵတ်းႁႂ်ႈ App ႁဝ်း ထွၼ်ပပ်ႉလိၵ်ႈဢွၵ်ႇလႆႈ လူၺ်ႈၸႂ်ႉတိုဝ်း **Primary Key (ID)** ၶႃႈ။



### 1. The DELETE Query
SQL တွၼ်ႈတႃႇထွၼ်ၶေႃႈမုၼ်းၼႆႉ ငၢႆႈၼႃႇၶႃႈ၊ ၵူၺ်းၵႃႈလူဝ်ႇမီး `WHERE` တႃႇသေႇၶႃႈ။

```sql
DELETE FROM books WHERE id = ?;
```

---

### 2. Implementation in DAO (`BookDAO.java`)
ႁဝ်းတေသူင်ႇ `id` ၶေႃႈပပ်ႉလိၵ်ႈ ၶဝ်ႈမႃးတွၼ်ႈတႃႇလူတ်းၶႃႈ။

```java
public boolean deleteBook(int id) {
    String sql = "DELETE FROM books WHERE id = ?";
    
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        
        pstmt.setInt(1, id);
        
        int affectedRows = pstmt.executeUpdate();
        return affectedRows > 0;
        
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 3. FXML & Controller Interaction
ႁဝ်းတေမီးပုမ်ႇ "Delete" ၼိူဝ် UI ၶႃႈ။

**`LibraryView.fxml`**
```xml
<HBox spacing="10">
    <Button fx:id="btnDelete" text="Delete Selected" onAction="#handleDelete" 
            style="-fx-background-color: #e74c3c; -fx-text-fill: white;" />
</HBox>
```

**`LibraryController.java`**
မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇ Delete, ႁဝ်းတေၸႂ်ႉ **`Alert`** တွၼ်ႈတႃႇထၢမ် Confirmation ၶႃႈ။

```java
@FXML
private void handleDelete() {
    // 1. ဢဝ် Book ဢၼ် User ၼဵၵ်းလိူၵ်ႈဝႆႉၼႂ်း Table
    Book selectedBook = tableBooks.getSelectionModel().getSelectedItem();

    if (selectedBook == null) {
        showAlert(Alert.AlertType.WARNING, "No Selection", "Please select a book to delete.");
        return;
    }

    // 2. သၢင်ႈ Confirmation Dialog
    Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
    alert.setTitle("Confirm Deletion");
    alert.setHeaderText("Delete Book");
    alert.setContentText(" Are you sure you want to delete: " + selectedBook.getTitle() + "?");

    // 3. ထတ်းတူၺ်းဝႃႈ User ၼဵၵ်း 'OK' ႁႃႉ?
    Optional<ButtonType> result = alert.showAndWait();
    if (result.isPresent() && result.get() == ButtonType.OK) {
        BookDAO dao = new BookDAO();
        if (dao.deleteBook(selectedBook.getId())) {
            // လူတ်းဢွၵ်ႇၼိူဝ် UI (ObservableList) ၸွမ်း
            bookList.remove(selectedBook);
            showAlert(Alert.AlertType.INFORMATION, "Success", "Book deleted successfully!");
        } else {
            showAlert(Alert.AlertType.ERROR, "Error", "Could not delete book from database.");
        }
    }
}
```



---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ SQL DELETE)

* **`showAndWait()`**: Method ၼႆႉတေ "ၵိုတ်း" (Freeze) ၵၢၼ်ႁဵတ်းၵၢၼ် App ဝႆႉ တေႃႇပေႃး User တွပ်ႇ Dialog ၼၼ်ႉၶႃႈ။ မၼ်းသူင်ႇ `Optional<ButtonType>` ၶိုၼ်းမႃး ႁႂ်ႈႁဝ်းၸႅတ်းဝႃႈ ၼဵၵ်းပုမ်ႇလႂ်ၶႃႈ။
* **UI Synchronization**: ဝၢႆးသေလူတ်းၼႂ်း Database ယဝ်ႉ၊ လူဝ်ႇဢဝ် `bookList.remove(selectedBook)` ၸွမ်း ၼင်ႇႁႂ်ႈ TableView လႅၵ်ႈလၢႆႈၸွမ်း (ယွၼ်ႉမၼ်းပဵၼ် ObservableList) ၶႃႈ။
* **Safety First**: တူဝ်ႇသေႇလူဝ်ႇမီး `WHERE` clause။ သင်ၶူးတႅမ်ႈ `DELETE FROM books` ၵူၺ်း... ၶေႃႈမုၼ်းပပ်ႉလိၵ်ႈတင်းသဵင်ႈ တေႁၢႆၵႂႃႇၼႂ်းပွၵ်ႈလဵဝ်ၶႃႈ!

---

### 🎓 Summary for Thung Mao Kham Students
* **Confirmation Logic**: ပဵၼ်ၵၢၼ်ၵႅတ်း "ၵၢၼ်ၼဵၵ်းၽိတ်း" (Accidental Clicks)။
* **Primary Key (ID)**: ၸႂ်ႉတွၼ်ႈတႃႇၸႅတ်း Row ဢၼ်လူဝ်ႇလူတ်း ႁႂ်ႈမႅၼ်ႈတူဝ်။
* **User Experience (UX)**: ၵၢၼ်ၼႄ Alert ႁဵတ်းႁႂ်ႈ User ႁူႉဝႃႈ App တေႁဵတ်းသင် လႄႈ ၸွႆႈႁႂ်ႈၶဝ်မီးလွင်ႈၼႄႉၸႂ်ၶႃႈ။

ၵျႅမ််းယဝ်ႉၶႃႈ ၶူးသၢႆမၢဝ်း! မိူဝ်ႈလဵဝ် App Library ႁဝ်း မီးၵၢၼ်လူတ်းၶေႃႈမုၼ်း ဢၼ်ပူတ်ႇၽေးယဝ်ႉၶႃႈ။

**Next Step:** ႁဝ်းတေမႃးသိုပ်ႇ **Lesson 65: The DAO Pattern: Professional Code Architecture** တွၼ်ႈတႃႇသွၼ်လွင်ႈၵၢၼ်ၸတ်း Code ႁႂ်ႈပဵၼ်ပိူင် Professional သုတ်း ၵမ်းလဵဝ်ႁႃႉၶႃႈ?