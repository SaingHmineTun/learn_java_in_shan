## 73: "Issue Logic (The Borrowing Engine)"

ၼႂ်း Project **LMS Library** ႁဝ်းၼႆႉ မိူဝ်ႈ Admin ၼဵၵ်း "Issue" ၼၼ်ႉ System တေလႆႈႁဵတ်းၵၢၼ်ၼင်ႇၼႆၶႃႈ:

### 1. တႅမ်ႈ TransactionDAO.java
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇ Method တွၼ်ႈတႃႇသိမ်းသဵၼ်ႈမၢႆၵၢၼ်ယိမ် ၶဝ်ႈၼႂ်း Table `transactions` ဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။

```java
package top.saimao.dao;

import top.saimao.connection.DBConnection;
import java.sql.*;
import java.time.LocalDate;

public class TransactionDAO {
    
    public boolean saveIssue(int userId, int memberId, int bookId) {
        String sql = "INSERT INTO transactions (user_id, member_id, book_id, issue_date, status) VALUES (?, ?, ?, ?, 'BORROWED')";
        
        try (Connection conn = DBConnection.getInstance().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setInt(1, userId);
            ps.setInt(2, memberId);
            ps.setInt(3, bookId);
            ps.setDate(4, Date.valueOf(LocalDate.now())); // ဝၼ်းမိူဝ်ႈၼႆႉ
            
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
```

---

### 2. Logic ၵၢၼ်ႁဵတ်းၵၢၼ် (The Engine Logic)
ၼႂ်း Controller (တူဝ်ယၢင်ႇ: `IssueController.java`) ႁဝ်းတေဢဝ် DAO တင်းသဵင်ႈ မႃးၸႂ်ႉၵူပ်ႉၵၼ်ၶႃႈ:

1.  **Check Stock**: ၵူတ်ႇထတ်းဝႃႈ `available_qty > 0` ႁႃႉ?
2.  **Save Transaction**: တႅမ်ႈမၢႆဝႃႈ ၽႂ်ယိမ်ပပ်ႉလႂ် (ၸႂ်ႉ `TransactionDAO` ၽၢႆႇၼိူဝ်)။
3.  **Update Stock**: လူတ်းႁူဝ်ၼပ်ႉပပ်ႉလိၵ်ႈ (ၸႂ်ႉ `updateAvailableQty(id, true)` ၼႂ်း `BookDAO` ၸဝ်ႈၵဝ်ႇ)။



---

### 3. ပဵၼ်သင် ႁဝ်းၸင်ႇႁွင်ႉဝႃႈ "Engine"?
တီႈႁဝ်းႁွင်ႉဝႃႈ **Engine** ၼၼ်ႉ ယွၼ်ႉပဵၼ်တွၼ်ႈဢၼ် "ပၼ်ႇၵၢၼ်" (Action) ၼႂ်း System ႁဝ်းၶႃႈ:
* သင်ၸဝ်ႈၵဝ်ႇၵွႆး Update Stock လၢႆလၢႆ၊ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇႁူႉဝႃႈ **Member** ၵူၼ်းလႂ် ဢဝ်ပပ်ႉၵႂႃႇ။
* Table `transactions` ဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈဝႆႉၼၼ်ႉ မၼ်းပဵၼ် "ၵူၼ်းၵၢင်" (Bridge) ဢၼ်တေမႃးၸုမ်ႇၸပ်း **User**, **Member**, လႄႈ **Book** ၶဝ်ႈၵၼ်တင်းသဵင်ႈၶႃႈ။

---

### 4. သႅၼ်းၵမ်း (Summary for Lesson 73)

| Action | DAO Method | Purpose |
| :--- | :--- | :--- |
| **Verify** | `book.getAvailableQty()` | ၵူတ်ႇထတ်းဝႃႈ ပပ်ႉတိုၵ်ႉမီးယူႇႁႃႉ? |
| **Record** | `transactionDAO.saveIssue()` | မၢႆသဵၼ်ႈမၢႆဝႃႈ ၽႂ်ယိမ်ပပ်ႉလႂ် |
| **Deduct** | `bookDAO.updateAvailableQty(id, true)` | လူတ်း Stock ပပ်ႉလိၵ်ႈပႅတ်ႈ 1 ၽိုၼ် |
