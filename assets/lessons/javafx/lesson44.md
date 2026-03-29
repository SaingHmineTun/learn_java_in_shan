## Lesson 44: SQL INSERT (PreparedStatements for Security)

မိူဝ်ႈႁဝ်းၶႂ်ႈသူင်ႇၶေႃႈမုၼ်း လုၵ်ႉတီႈ Java ၵႂႃႇၸူး MySQL ၼၼ်ႉ ႁဝ်းမီးလၢႆးတႅမ်ႈ 2 ပိူင်ၶႃႈ။ 
ၵူၺ်းၵႃႈ တႃႇၶူတ်ႉႁဝ်း ၵႅၼ်ႇၶႅင်လီတိူဝ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **PreparedStatement** ၵူၺ်းၶႃႈ။



### 1. Why PreparedStatement? (ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ?)
* **Security**: ၵႅတ်ႇၶႄၵူၼ်းႁၢႆႉ (Hackers) ဢမ်ႇႁႂ်ႈၶဝ်တႅမ်ႈ Code SQL ၽိတ်းပိူင်သေ ယႃႉ Database ႁဝ်းလႆႈ။
* **Performance**: MySQL တေ "Compile" SQL ၼၼ်ႉဝႆႉၵမ်းလဵဝ်သေ ၸႂ်ႉလႆႈလၢႆလၢႆပွၵ်ႈ (Reusable)။
* **Cleaner Code**: ႁဝ်းဢမ်ႇလူဝ်ႇသုၵ်ႉယုင်ႈၸွမ်း Single Quote (`'`) လႄႈ Double Quote (`"`) ၼမ်ၼမ်ၶႃႈ။

---

### 2. The Insert Logic (`ExpenseDAO.java`)
ႁဝ်းတေတႅမ်ႈ Method ၼႆႉဝႆႉၼႂ်း Class ဢၼ်ၵုမ်းထိင်း Database ၶႃႈ။

```java
public void addExpense(Expense expense) {
    // 1. SQL Template (ၸႂ်ႉ '?' တႅၼ်းၶေႃႈမုၼ်းတႄႉ)
    String sql = "INSERT INTO expenses (description, amount, category, expense_date) VALUES (?, ?, ?, ?)";

    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {

        // 2. Binding Data (သႂ်ႇၶေႃႈမုၼ်းၼိူဝ် '?')
        pstmt.setString(1, expense.getDescription());
        pstmt.setDouble(2, expense.getAmount());
        pstmt.setString(3, expense.getCategory());
        pstmt.setObject(4, expense.getDate()); // LocalDate ၸႂ်ႉ setObject လႆႈၶႃႈ

        // 3. Execute (သူင်ႇၵႂႃႇ MySQL)
        pstmt.executeUpdate();
        System.out.println("✅ Data saved successfully!");

    } catch (SQLException e) {
        System.err.println("❌ SQL Error: " + e.getMessage());
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ SQL Binding)

* **The `?` Placeholder**: ဢၼ်ၼႆႉမိူၼ်ၼင်ႇ "တီႈၼင်ႈ" ပႂ်ႉႁပ်ႉၶေႃႈမုၼ်းၶႃႈ။ Java တေထတ်းတူၺ်း ၶေႃႈမုၼ်းဢၼ်သႂ်ႇမႃးၼၼ်ႉ မႅၼ်ႈပိူင်ႁႃႉ? ၼႆၵွၼ်ႇတေသူင်ႇၵႂႃႇၶႃႈ။
* **`pstmt.setXXX()`**: မၢႆၼပ်ႉ (Index) တေတႄႇတီႈ **1** တႃႇသေႇၶႃႈ (1 = '?', 2 = '?' ... )။
* **`executeUpdate()`**: ၸႂ်ႉတွၼ်ႈတႃႇ SQL ဢၼ်မီးၵၢၼ်လႅၵ်ႈလၢႆႈ Database ၼင်ႇ `INSERT`, `UPDATE`, `DELETE` ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Statement**: ဢမ်ႇလွတ်ႈၽေး (Don't use for user input!)
* **PreparedStatement**: လွတ်ႈၽေး လႄႈ မႅၼ်ႈပိူင် (Best Practice).
* **Index 1**: တွၼ်ႈတႃႇ SQL Parameter ၼႂ်း JDBC... ႁဝ်းတႄႇၼပ်ႉတီႈ 1 ၶႃႈ (ဢမ်ႇမိူၼ် Array ဢၼ်တႄႇတီႈ 0)။