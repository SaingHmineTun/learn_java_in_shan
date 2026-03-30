## Lesson 77: The Return Engine (Stock Recovery)

ၼႂ်းၵၢၼ်သူင်ႇပပ်ႉ (Returning Books) ၼႆႉ, Logic ႁဝ်းတေပဵၼ်ၽၢႆႇပိၼ်ႈ (Reverse) တင်းၵၢၼ်ယိမ်ၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈမႄး Database ၼင်ႇၼႆ:
1.  **UPDATE** status ၼႂ်း `transactions` ႁႂ်ႈပဵၼ် `'RETURNED'`။
2.  **UPDATE** `available_qty` ၼႂ်း `books` ႁႂ်ႈမၼ်းၶိုၼ်းထႅမ် (**+1**)။

---

### 1. Implementation: DAO Codes

ႁဝ်းတေသူင်ႇ **Connection** ၵႂႃႇၸွမ်း တွၼ်ႈတႃႇႁဵတ်း Atomic Transaction မိူၼ်ၼင်ႇၵၢၼ်ယိမ်ၼၼ်ႉၶႃႈ။

#### **TransactionDAO.java (Update Status)**
```java
public boolean returnBook(Connection conn, int transactionId) throws SQLException {
    String sql = "UPDATE transactions SET status = 'RETURNED' WHERE id = ?";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, transactionId);
        return ps.executeUpdate() > 0;
    }
}
```

#### **BookDAO.java (Recovery Logic)**
ၸဝ်ႈၵဝ်ႇမီး Method ၼႆႉဝႆႉယဝ်ႉ။ မိူဝ်ႈသူင်ႇပပ်ႉ, ႁဝ်းတေသူင်ႇ `isBorrowing = false` တွၼ်ႈတႃႇႁႂ်ႈမၼ်း **+1** ပၼ်ၶႃႈ။
```java
// ၸႂ်ႉ Method ဢၼ်ၸဝ်ႈၵဝ်ႇမီးဝႆႉယူႇယဝ်ႉ
// bookDAO.updateAvailableQty(conn, bookId, false); 
```

---

### 2. Implementation: Service Code (`TransactionService.java`)

Service တေပဵၼ်ၵူၼ်းႁွင်ႉၸႂ်ႉ DAO တင်းသွင်ဢၼ် ႁႂ်ႈႁဵတ်းၵၢၼ်ၸွမ်းၵၼ်ၶႃႈ။

```java
public boolean returnBookTransaction(int transactionId, int bookId) {
    Connection conn = null;
    try {
        conn = DBConnection.getInstance().getConnection();
        conn.setAutoCommit(false); // Begin Transaction

        // A. လႅၵ်ႈလၢႆႈ Status ၼႂ်း transactions ႁႂ်ႈပဵၼ် RETURNED
        boolean s1 = transDAO.returnBook(conn, transactionId);

        // B. ထႅမ် Stock ပပ်ႉလိၵ်ႈၶိုၼ်း (+1)
        boolean s2 = bookDAO.updateAvailableQty(conn, bookId, false);

        if (s1 && s2) {
            conn.commit(); // Success
            return true;
        } else {
            conn.rollback();
        }
    } catch (SQLException e) {
        if (conn != null) try { conn.rollback(); } catch (Exception ex) {}
        e.printStackTrace();
    } finally {
        try { if (conn != null) conn.setAutoCommit(true); } catch (Exception e) {}
    }
    return false;
}
```

---

### 3. Implementation: UI Logic (`TransactionController.java`)

ၼႂ်းၼႃႈလိၵ်ႈ Table, Admin တေလိူၵ်ႈ Row ဢၼ်ပဵၼ် `'BORROWED'` သေ ၼဵၵ်း Button **"Return Book"** ၶႃႈ။

```java
@FXML
private void handleReturnBook() {
    // 1. ၵူတ်ႇထတ်းဝႃႈ လိူၵ်ႈ Row ဝႆႉယဝ်ႉႁႃႉ?
    Transaction selected = transactionTable.getSelectionModel().getSelectedItem();

    if (selected == null) {
        AlertMaker.showAlert(Alert.AlertType.WARNING, "Warning", "No Selection", "ၵရုၼႃႇ လိူၵ်ႈသဵၼ်ႈမၢႆ ဢၼ်ၶႂ်ႈသူင်ႇၶိုၼ်းဢွၼ်တၢင်းၶႃႈ!");
        return;
    }

    // 2. ၵူတ်ႇထတ်းဝႃႈ ပပ်ႉၼႆႉ သူင်ႇယဝ်ႉယဝ်ႉႁႃႉ?
    if ("RETURNED".equals(selected.getStatus())) {
        AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Info", "Already Returned", "ပပ်ႉၽိုၼ်ၼႆႉ သူင်ႇၶိုၼ်းယဝ်ႉယဝ်ႉၶႃႈ!");
        return;
    }

    // 3. ႁွင်ႉၸႂ်ႉ Service တွၼ်ႈတႃႇ Update DB (Atomic)
    if (transService.returnBookTransaction(selected.getId(), selected.getBook().getId())) {
        AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Returned", "သူင်ႇပပ်ႉၶိုၼ်း ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!");
        refreshTable(); // Update UI
    }
}
```



---

### 🎓 Summary for Thung Mao Kham Students

* **Stock Recovery**: ၵၢၼ်သူင်ႇပပ်ႉၶိုၼ်း မၼ်းတေႁဵတ်းႁႂ်ႈ `available_qty` ၼိူဝ် "ႁၢင်ႇ (Shelf)" ႁဝ်းၶိုၼ်းထႅမ်မႃး။
* **Status Management**: ႁဝ်းလူဝ်ႇလႆႈမၢႆ Status ႁႂ်ႈမႅၼ်ႈ။ သင်ဝႃႈသူင်ႇယဝ်ႉ ႁဝ်းတေဢမ်ႇပၼ်သူင်ႇၶိုၼ်းထႅင်ႈ (Validation)။
* **Consistency**: ၵၢၼ်ၸႂ်ႉ Transaction (Commit/Rollback) ယင်းတိုၵ်ႉယႂ်ႇပဵၼ် (Necessary) ယူႇ, ၼင်ႇႁႂ်ႈသဵၼ်ႈမၢႆ `transactions` လႄႈ `books` မႅၼ်ႈၸွမ်းၵၼ်တႃႇသေႇၶႃႈ။