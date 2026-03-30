## Lesson 74: Atomic Transactions (Safe Saving)

ၼႂ်းၵၢၼ်ယိမ်ပပ်ႉ (Issuing Books) ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမႄး Database ၼႂ်း Table (2) ဢၼ်ၸွမ်းၵၼ်:
1.  **INSERT** ၶေႃႈမုၼ်းမႂ်ႇ ၶဝ်ႈၼႂ်း `transactions` (တွၼ်ႈတႃႇမၢႆဝႆႉဝႃႈ ၽႂ်ယိမ်ပပ်ႉလႂ်).
2.  **UPDATE** ႁူဝ်ၼပ်ႉပပ်ႉ ၼႂ်း `books` (`available_qty - 1`).

သင်ဝႃႈ ၸဝ်ႈၵဝ်ႇ Insert ယဝ်ႉယဝ်ႉ သမ်ႉ Update ဢမ်ႇလႆႈ (ယွၼ်ႉၾႆးတၢႆ ဢမ်ႇၼၼ် Error), ၶေႃႈမုၼ်းၼႂ်း Library ႁဝ်းတေယုင်ႈယၢင်ႇၵႂႃႇၶႃႈ. တွၼ်ႈတႃႇႁႄႉၵင်ႈပၼ်ႁႃၼႆႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Atomic Transactions** ၶႃႈ.

---

### 1. Implementation: DAO Codes (The Data Layer)

တွၼ်ႈတႃႇႁဵတ်း Transaction လႆႈၼၼ်ႉ, DAO တေလႆႈႁပ်ႉဢဝ် **Connection** လုၵ်ႉတီႈ Service မႃးၶႃႈ.

#### **TransactionDAO.java**
```java
public boolean saveIssue(Connection conn, int userId, int memberId, int bookId) throws SQLException {
    String sql = "INSERT INTO transactions (user_id, member_id, book_id, issue_date, status) VALUES (?, ?, ?, ?, 'BORROWED')";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, userId);
        ps.setInt(2, memberId);
        ps.setInt(3, bookId);
        ps.setString(4, LocalDate.now().toString());
        return ps.executeUpdate() > 0;
    }
}
```

#### **BookDAO.java (Update Logic)**
```java
public boolean updateAvailableQty(Connection conn, int bookId, boolean isBorrowing) throws SQLException {
    String operator = isBorrowing ? "-" : "+";
    String sql = "UPDATE books SET available_qty = available_qty " + operator + " 1 WHERE id = ? AND available_qty > 0";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, bookId);
        return ps.executeUpdate() > 0;
    }
}
```

---

### 2. Implementation: Service Code (`TransactionService.java`)

Service တေပဵၼ်ၵူၼ်းၵုမ်းထိင်း Connection တူဝ်လဵဝ်ၵၼ် သေသူင်ႇပၼ် DAO တင်းသွင်ဢၼ်ၶႃႈ.



```java
public boolean issueBook(int userId, int memberId, int bookId) {
    Connection conn = null;
    try {
        conn = DBConnection.getInstance().getConnection();
        conn.setAutoCommit(false); // Begin Transaction

        // A. Call TransactionDAO to save record
        boolean s1 = transDAO.saveIssue(conn, userId, memberId, bookId);

        // B. Call BookDAO to update stock
        boolean s2 = bookDAO.updateAvailableQty(conn, bookId, true);

        if (s1 && s2) {
            conn.commit(); // Success: Commit everything
            return true;
        } else {
            conn.rollback(); // Fail: Rollback
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

### 🎓 Summary for Thung Mao Kham Students

* **Atomic Safety**: ၵၢၼ်ၸႂ်ႉ `Commit/Rollback` ၼၼ်ႉ မၼ်းၵႅတ်ႇၶႄပၼ်ႁႃ ၶေႃႈမုၼ်းယုင်ႈယၢင်ႇ မိူဝ်ႈ System Error ၶႃႈ.
* **Service Responsibility**: Service မီးၵၢၼ်ႁဵတ်းၵၼ် ၵပ်းလွင်ႈ **Business Logic** လႄႈ **Transaction**. တွၼ်ႈတႃႇ SQL Query ၼၼ်ႉ ပဵၼ်ၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် **DAO** ၶႃႈ.
* **Data Integrity**: ႁဵတ်းႁႂ်ႈသဵၼ်ႈမၢႆပပ်ႉလိၵ်ႈ ၼႂ်း **TMK Library** ႁဝ်း မၼ်ႈၵိုမ်း လႄႈ မႅၼ်ႈယမ်တႃႇသေႇၶႃႈ.