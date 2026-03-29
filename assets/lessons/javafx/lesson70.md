## Lesson 70: Managing Book Inventory (Full CRUD)

ၵၢၼ်ၸတ်းၵၢၼ် Inventory ဢၼ်လီၼႆႉ လူဝ်ႇမီးၵၢၼ်ၸႅတ်ႈ (Validation) ႁႂ်ႈႁူႉတႅတ်ႈတေႃးဝႃႈ တိုၵ်ႉမီးပပ်ႉယူႇ လႄႈ ၶေႃႈမုၼ်းမႅၼ်ႈၸွမ်းပိူင်ၶႃႈ။



### 1. Database Table Update (SQL)
ႁဝ်းလူဝ်ႇမႄး Table `books` ႁႂ်ႈမီးလွၵ်းၵဵပ်းတူဝ်ၼပ်ႉၶႃႈ:

```sql
ALTER TABLE books 
ADD COLUMN quantity INT DEFAULT 1,
ADD COLUMN available_qty INT DEFAULT 1;
```

---

### 2. The DAO Logic (`BookDAO.java`)
ၼႂ်း `save` လႄႈ `update`, ႁဝ်းလူဝ်ႇထႅင်ႈ Logic တွၼ်ႈတႃႇၵုမ်းတူဝ်ၼပ်ႉပပ်ႉၶႃႈ။

```java
public boolean save(Book book) {
    String sql = "INSERT INTO books (title, author, isbn, quantity, available_qty) VALUES (?, ?, ?, ?, ?)";
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        
        pstmt.setString(1, book.getTitle());
        pstmt.setString(2, book.getAuthor());
        pstmt.setString(3, book.getIsbn());
        pstmt.setInt(4, book.getQuantity());
        pstmt.setInt(5, book.getQuantity()); // မိူဝ်ႈတႄႇ၊ Available တေမိူၼ် Quantity
        
        return pstmt.executeUpdate() > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 3. Inventory UI (`BookManagement.fxml`)
ႁဝ်းတေၸႂ်ႉ **Spinner** တႅၼ်း TextField တွၼ်ႈတႃႇၵုမ်းတူဝ်ၼပ်ႉ ႁႂ်ႈ User ၼဵၵ်းၶိုၼ်ႈ/လူင်းလႆႈငၢႆႈၶႃႈ။

```xml
<HBox spacing="10" alignment="CENTER_LEFT">
    <Label text="Quantity:" />
    <Spinner fx:id="spinQuantity" initialValue="1" min="1" max="100" editable="true" />
</HBox>
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Inventory CRUD)

* **Spinner Control**: ပဵၼ် Control ဢၼ်လီသုတ်းတွၼ်ႈတႃႇ Inventory။ မၼ်းၵႅတ်းပၼ်ႁႃ User တႅမ်ႈ "တူဝ်လိၵ်ႈ" (String) သႂ်ႇၼႂ်းလွၵ်း "တူဝ်ၼပ်ႉ" (Integer) ၶႃႈ။
* **Quantity vs Available**:
    * **Quantity**: ပဵၼ်ပပ်ႉတင်းသဵင်ႈဢၼ်ႁဝ်းမီး။
    * **Available**: ပဵၼ်ပပ်ႉဢၼ်ၵိုတ်းယူႇၼိူဝ် "ႁၢင်ႉ" (Shelf) တႄႉတႄႉ (ဝၢႆးသေလူတ်းဢွၵ်ႇပပ်ႉဢၼ်မီးၵူၼ်းယူတ်းဝႆႉ)။
* **Validation**: ၵွၼ်ႇတေ Save, ႁဝ်းလူဝ်ႇၸႅတ်းဝႃႈ ISBN သမ်ႉၵၼ်ႁႃႉ? လႄႈ Quantity လူဝ်ႇမီးလိူဝ် 0 တူဝ်ႇသေႇၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Inventory Control**: ပဵၼ်ၵၢၼ်ႁူႉဝႃႈ ႁဝ်းမီး "ၶူဝ်း" (Books) ၵိုတ်းယူႇၵႃႈႁိုင်။
* **Data Integrity**: ၵၢၼ်ယႅၵ်း Total Qty လႄႈ Available Qty ၸွႆႈႁႂ်ႈ App ႁဝ်းဢမ်ႇသုၵ်ႉသၵ်ႉ မိူဝ်ႈမီးၵူၼ်းမႃးယူတ်းပပ်ႉၶႃႈ။
* **Professional Input**: ၸႂ်ႉ Spinner တႅၼ်း TextField ႁဵတ်းႁႂ်ႈ App ႁဝ်း "လူတ်းၵၢၼ်တႅမ်ႈၽိတ်း" (Input Errors) ၶႃႈ။