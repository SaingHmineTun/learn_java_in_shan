## Lesson 63: SQL UPDATE (Editing Records)

ၵၢၼ်မႄးၶေႃႈမုၼ်းၼႆႉ ပႅၵ်ႇပိူင်ႈၵၼ်တင်း `INSERT` (ဢၼ်သၢင်ႈမႂ်ႇ) ဢေႃႈ။ 
ႁဝ်းလူဝ်ႇလၢတ်ႈပၼ် Database ဝႃႈ "လူဝ်ႇမႄး Column လႂ်" လႄႈ "လူဝ်ႇမႄးတူဝ်လႂ် (ID လႂ်)" ၼႆၶႃႈ။



### 1. The UPDATE Query
ပိူင်တႅမ်ႈ SQL UPDATE တေလူဝ်ႇမီး `WHERE` clause တႃႇသေႇ တွၼ်ႈတႃႇလၢတ်ႈပၼ် Database ဝႃႈ လူဝ်ႇမႄးပပ်ႉလိၵ်ႈ "တူဝ်လႂ်" (Primary Key) ၼႆၶႃႈ။

```sql
UPDATE books SET title = ?, author = ?, isbn = ? WHERE id = ?;
```

---

### 2. Implementation in DAO (`BookDAO.java`)

ၼႂ်း Java, ႁဝ်းတေသူင်ႇ Object `Book` ဢၼ်မီးၶေႃႈမုၼ်းမႂ်ႇ ၶဝ်ႈမႃးၼႂ်း Method ၼႆႉၶႃႈ။

```java
public boolean updateBook(Book book) {
    String sql = "UPDATE books SET title = ?, author = ?, isbn = ? WHERE id = ?";
    
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        
        // 1. တင်ႈ Parameter ၸွမ်းထႅဝ်
        pstmt.setString(1, book.getTitle());
        pstmt.setString(2, book.getAuthor());
        pstmt.setString(3, book.getIsbn());
        
        // 2. တင်ႈ ID တွၼ်ႈတႃႇမႄးႁႂ်ႈမႅၼ်ႈတူဝ် (လွင်ႈယႂ်ႇသုတ်း!)
        pstmt.setInt(4, book.getId());
        
        // 3. Execute သေထတ်းတူၺ်းဝႃႈ မီး Row လႅၵ်ႈလၢႆႈႁႃႉ?
        int rowsUpdated = pstmt.executeUpdate();
        return rowsUpdated > 0; 
        
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 3. FXML & Controller Interaction
တွၼ်ႈတႃႇၼႃႈၸေႃး "မႄးၶေႃႈမုၼ်း" (Edit View), ႁဝ်းတေၸႂ်ႉ `TextField` ႁပ်ႉ Data မႂ်ႇၶႃႈ။

**`EditBookView.fxml`**
```xml
<VBox spacing="10" alignment="CENTER" prefWidth="400">
    <TextField fx:id="txtTitle" promptText="Book Title" />
    <TextField fx:id="txtAuthor" promptText="Author Name" />
    <TextField fx:id="txtIsbn" promptText="ISBN Number" />
    <Button text="Update Book" onAction="#handleUpdate" />
</VBox>
```

**`EditBookController.java`**
```java
@FXML
private void handleUpdate() {
    // 1. ႁွမ်ႁႅၼ်း Object Book မႂ်ႇ (ID လူဝ်ႇမီးဝႆႉယဝ်ႉလုၵ်ႉတီႈ InitData)
    currentBook.setTitle(txtTitle.getText());
    currentBook.setAuthor(txtAuthor.getText());
    currentBook.setIsbn(txtIsbn.getText());

    // 2. သူင်ႇၵႂႃႇမႄးၼႂ်း DB ၽၢၼ်ႇทาง DAO
    BookDAO dao = new BookDAO();
    if (dao.updateBook(currentBook)) {
        System.out.println("✅ Book updated successfully!");
    } else {
        System.out.println("❌ Update failed!");
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ SQL UPDATE)

* **`executeUpdate()`**: ၸႂ်ႉတွၼ်ႈတႃႇ Query ဢၼ်လႅၵ်ႈလၢႆႈ Data (INSERT, UPDATE, DELETE)။ မၼ်းတေသူင်ႇတူဝ်ၼပ်ႉထႅဝ် (Rows) ဢၼ်ထုၵ်ႇမႄးၼၼ်ႉမႃးၶႃႈ။
* **The Dangerous WHERE**: သင်ႁဝ်းလူဝ်ႇမႄးပပ်ႉလိၵ်ႈ ID 5 ၵူၺ်း၊ ၵူၺ်းၵႃႈလိုမ်းသႂ်ႇ `WHERE id = 5` ၼႆ... MySQL တေၵႂႃႇလႅၵ်ႈလၢႆႈပပ်ႉလိၵ်ႈ "တင်းသဵင်ႈ" ၼႂ်း Database ႁႂ်ႈပဵၼ်ၸိုဝ်ႈလဵဝ်ၵၼ်သဵင်ႈသဵင်ႈၶႃႈ။ လူဝ်ႇၾၢင်ႉၼႃႇၶႃႈ!
* **Optimistic Locking Concept**: ၼႂ်း Software ယႂ်ႇယႂ်ႇ၊ ႁဝ်းၸၢင်ႈထႅင်ႈ Column `version` တွၼ်ႈတႃႇၸႅတ်းဝႃႈ ၽူႈၸႂ်ႉတိုဝ်းသွင်ၵေႃႉ ဢမ်ႇလႆႈမႄး Data တူဝ်လဵဝ်ၵၼ်ၼႂ်းၶိင်ႇလဵဝ်ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **UPDATE**: ပဵၼ်ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယဝ်ႉ။
* **WHERE**: ပဵၼ် "မၢႆၸီႉ" ဢၼ်သင်ႇႁႂ်ႈမႄးလႆႈမႅၼ်ႈတူဝ်။
* **DAO Pattern**: ႁဵတ်းႁႂ်ႈ Code UI ႁဝ်းသႅၼ်ႈသႂ် ယွၼ်ႉ Logic ယူႇၼႂ်း DAO တင်းသဵင်ႈၶႃႈ။