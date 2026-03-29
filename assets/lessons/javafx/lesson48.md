## 📘 Lesson 48: SQL Queries (Aggregates & Total Sum)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေဢမ်ႇထွၼ်ဢဝ်ၶေႃႈမုၼ်းမႃးၵူႈပုၵ်ႈ၊ ၵူၺ်းၵႃႈႁဝ်းတေသင်ႇႁႂ်ႈ MySQL "ၼပ်ႉ" ပၼ်ႁဝ်းၵမ်းလဵဝ် တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းလႅတ်း (Fast) ၶႃႈ။



### 1. The SQL `SUM()` Function
ႁဝ်းတေၸႂ်ႉ Query ဢၼ်ငၢႆႈသုတ်း တွၼ်ႈတႃႇၼပ်ႉငိုၼ်းၼႂ်း Column `amount` တင်းသဵင်ႈၶႃႈ။

```sql
SELECT SUM(amount) FROM expenses;
```

---

### 2. Implementation in DAO (`ExpenseDAO.java`)

ႁဝ်းတေတႅမ်ႈ Method ဢၼ်သူင်ႇတူဝ်ၼပ်ႉ (Double) ၶိုၼ်းမႃးပၼ် Controller ၶႃႈ။

```java
public double getTotalExpenses() {
    double total = 0;
    String sql = "SELECT SUM(amount) AS total_sum FROM expenses";

    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(sql)) {

        if (rs.next()) {
            total = rs.getDouble("total_sum");
        }
    } catch (SQLException e) {
        System.err.println("❌ Error fetching total: " + e.getMessage());
    }
    return total;
}
```

---

### 3. Displaying on UI (`ExpenseController.java`)

ႁဝ်းလူဝ်ႇမီး `Label` ၼိုင်ႈဢၼ် (ၼင်ႇ `lblTotal`) ဝႆႉၼႂ်း UI တွၼ်ႈတႃႇၼႄမၢႆၼပ်ႉငိုၼ်းၶႃႈ။

```java
private void updateTotalDisplay() {
    ExpenseDAO dao = new ExpenseDAO();
    double total = dao.getTotalExpenses();
    
    // ၼႄမၢႆၼပ်ႉငိုၼ်း ႁႂ်ႈမီး Decimal 2 တူဝ်
    lblTotal.setText(String.format("Total Spent: %,.2f MMK", total));
}
```


### 4. Designing the UI (`ExpenseTracker.fxml`)

ၶူင်သၢင်ႈ `lblTotal` ၼင်ႇတီႈတႂ်ႈၶႃႈ
```xml

<HBox alignment="CENTER" spacing="10" styleClass="total-section">
    <Label text="Total Expenses:" styleClass="total-label-text" />
    <Label fx:id="lblTotal" text="0.00 MMK" styleClass="total-amount-label" />
</HBox>
```

တႃႇတေႁႂ်ႈ `lblTotal` ႁဝ်း တူၺ်းလႆႈ ႁၢင်ႈလီၼၼ်ႉ သႂ်ႇပၼ် `css` ၼႆႉလႆႈၶႃႈ
```css
/* Container တွၼ်ႈတႃႇ Total Section */
.total-section {
    -fx-padding: 15 0;
    -fx-border-color: #dcdde1;
    -fx-border-width: 1 0 0 0; /* သႂ်ႇသဵၼ်ႈၶႅၼ်ႈၽၢႆႇၼိူဝ် */
}

/* လိၵ်ႈ "Total Expenses:" */
.total-label-text {
    -fx-font-size: 16px;
    -fx-font-weight: bold;
    -fx-text-fill: #7f8c8d;
}

/* မၢႆၼပ်ႉငိုၼ်းတႄႉတႄႉ */
.total-amount-label {
    -fx-font-size: 20px;
    -fx-font-weight: bold;
    -fx-text-fill: #2980b9; /* သီသွမ်ႇ (Professional Blue) */
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ SQL Aggregates)

* **`SUM()`**: ပဵၼ် Aggregate Function ဢၼ် MySQL ၸႂ်ႉတွၼ်ႈတႃႇႁူမ်ႈမၢႆၼပ်ႉတင်းသဵင်ႈ။ မၼ်းဝႆးလိူဝ်ၵၢၼ်ဢဝ် Data မႃးၼပ်ႉၼႂ်း Java ၶႃႈ။
* **`AS total_sum`**: ဢၼ်ၼႆႉပဵၼ် Alias (ၸိုဝ်ႈတႅၼ်း)။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းႁွင်ႉဢဝ်ၶေႃႈမုၼ်းတီႈ `ResultSet` လႆႈငၢႆႈၶႃႈ။
* **`rs.next()`**: ယွၼ်ႉ `SUM()` သူင်ႇ Data ၶိုၼ်းမႃး Row လဵဝ်ၵူၺ်း၊ ႁဝ်းၸႂ်ႉ `if` တႅၼ်း `while` လႆႈၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Server-side Calculation**: ႁႂ်ႈ Database ၼပ်ႉငိုၼ်းပၼ် (Don't do it in Java if not needed)။
* **SQL Aggregates**: ႁဵၼ်းႁူႉလွင်ႈ `SUM()`, `AVG()`, `COUNT()` တွၼ်ႈတႃႇႁဵတ်း Dashboard။
* **Real-time Update**: မိူဝ်ႈ User သိမ်းၶေႃႈမုၼ်းမႂ်ႇ (Lesson 46)... ယႃႇလိုမ်းႁွင်ႉ `updateTotalDisplay()` တွၼ်ႈတႃႇႁႂ်ႈမၢႆၼပ်ႉငိုၼ်းလႅၵ်ႈလၢႆႈၸွမ်း ၵမ်းလဵဝ်ၶႃႈ။