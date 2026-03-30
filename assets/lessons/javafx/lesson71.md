## Lesson 71: Relational Logic (Total Qty vs. Available Stock)

ၼႂ်း Database ႁဝ်း၊ ႁဝ်းမီး 2 Columns ဢၼ်တူၺ်းမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ တၢင်ႇပိူင်ၵၼ်ၶႃႈ:
* **Total Quantity (`total_qty`)**: ပဵၼ်လၢႆးၼပ်ႉပပ်ႉတင်းသဵင်ႈ ဢၼ်ႁွင်ႉသမ်ႇမုတ်ႈႁဝ်းမီးဝႆႉ (Total stock owned)။
* **Available Quantity (`available_qty`)**: ပဵၼ်လၢႆးၼပ်ႉပပ်ႉ ဢၼ်တိုၵ်ႉမီးယူႇၼိူဝ် "ႁၢင်ႇ (Shelf)" သေ ၵူၼ်းၸၢင်ႈမႃးယူတ်ႉလႆႈ (Stock ready to borrow)။

### 1. The Core Logic (ပိူင်ၵၢၼ်ၼပ်ႉ)

မိူဝ်ႈမီးၵၢၼ်ႁဵတ်း Transaction၊ ႁဝ်းလူဝ်ႇမႄး Database ၼင်ႇၼႆၶႃႈ:

| Action (ၵၢၼ်ႁဵတ်း) | Total Qty | Available Qty | Logic |
| :--- | :--- | :--- | :--- |
| **Add New Book** | Increase | Increase | ထႅမ်ပပ်ႉမႂ်ႇၶဝ်ႈသၢင်ႇ |
| **Borrow Book** | **No Change** | **Decrease (-1)** | ပပ်ႉယင်းပဵၼ်ၶူဝ်းႁဝ်း ၵူၺ်းၵႃႈ ဢမ်ႇယူႇၼိူဝ်ႁၢင်ႇယဝ်ႉ |
| **Return Book** | **No Change** | **Increase (+1)** | ပပ်ႉပွၵ်ႈမႃးၶိုၼ်းၼိူဝ်ႁၢင်ႇယဝ်ႉ |
| **Loss/Damage** | Decrease (-1) | Decrease (-1) | ပပ်ႉႁၢႆ ဢမ်ႇၼၼ် လူႉယဝ်ႉ ဢမ်ႇၸၢင်ႈၸႂ်ႉလႆႈထႅင်ႈ |

---

### 2. SQL Atomic Updates (ၵၢၼ်မႄး DB ႁႂ်ႈမၢၼ်ႇထၢၼ်)

ယႃႇပေဢဝ် Data မႃးၼပ်ႉၼႂ်း Java သေ ၸင်ႇသူင်ႇၵႂႃႇ Update ၶႃႈ။ ႁဝ်းလူဝ်ႇလႅၵ်ႈလၢႆးၼႂ်း SQL ၵမ်းလဵဝ် ၼင်ႇႁႂ်ႈၵႅတ်ႇၶႄ ပၼ်ႁႃ "ၵူၼ်းသွင်ၵေႃႉ ယူတ်ႉပပ်ႉတူဝ်လဵဝ်ၵၼ် ၼႂ်းၶၢဝ်းยၢမ်းလဵဝ်ၵၼ်" (Race Conditions) ၶႃႈ။

#### **Borrow Logic (SQL):**
```sql
-- လူတ်းယွမ်း Available Qty မိူဝ်ႈမီးၵူၼ်းယူတ်ႉ
UPDATE books 
SET available_qty = available_qty - 1 
WHERE id = ? AND available_qty > 0;
```

#### **Return Logic (SQL):**
```sql
-- ထႅမ် Available Qty မိူဝ်ႈပပ်ႉပွၵ်ႈမႃးၶိုၼ်း
UPDATE books 
SET available_qty = available_qty + 1 
WHERE id = ? AND available_qty < total_qty;
```

---

### 3. Implementation in Java (`BookDAO.java`)

ႁဝ်းတေထႅမ် Method တွၼ်ႈတႃႇ "ၵုမ်းသဵၼ်ႈမၢႆ" ၼႂ်း DAO ၶႃႈ။

```java
public boolean updateAvailableQty(int bookId, boolean isBorrowing) {
    // သင် Borrowing = true ႁႂ်ႈ -1, သင် Return = false ႁႂ်ႈ +1
    String operator = isBorrowing ? "-" : "+";
    String sql = "UPDATE books SET available_qty = available_qty " + operator + " 1 WHERE id = ?";
    
    // ထႅမ် Extra Check တွၼ်ႈတႃႇ Security
    if (isBorrowing) {
        sql += " AND available_qty > 0";
    } else {
        sql += " AND available_qty < total_qty";
    }

    try (Connection conn = Database.getConnection(); 
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, bookId);
        return ps.executeUpdate() > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Atomic Operations**: ၵၢၼ်ၸႂ်ႉ `available_qty = available_qty - 1` ၼႂ်း SQL ၼၼ်ႉ မၢၼ်ႇထၢၼ်လိူဝ် ၵၢၼ်ဢဝ် Data မႃးၼပ်ႉၼႂ်း Java (e.g. `qty - 1`) ယွၼ်ႉမၼ်းၵႅတ်ႇၶႄပၼ်ႁႃ Data ဢမ်ႇတူင်ႇၵၼ်ၶႃႈ။
* **Validation Check**: ယႃႇလိုမ်းၵူတ်ႇထတ်း `available_qty > 0` ဢွၼ်တၢင်းတေပၼ်ယူတ်ႉ။ သင်ပပ်ႉၼိူဝ်ႁၢင်ႇသဵင်ႈယဝ်ႉ၊ လူဝ်ႇၼႄ Alert ပၼ် User ဝႃႈ "ပပ်ႉသဵင်ႈယဝ်ႉၶႃႈ"။
* **Data Integrity**: `available_qty` တေဢမ်ႇလႆႈၼမ်လိူဝ် `total_qty` လႄႈ တေဢမ်ႇလႆႈဢေႇလိူဝ် `0` တႃႇသေႇၶႃႈ။