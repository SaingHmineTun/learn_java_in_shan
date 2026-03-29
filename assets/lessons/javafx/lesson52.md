## Lesson 52: SQL SELECT (Fetching Data from MySQL)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေတႅမ်ႈ Code တွၼ်ႈတႃႇႁႂ်ႈ Java ၵႂႃႇထၢမ် MySQL ဝႃႈ "မီးၵႂၢမ်းၵပ်းထုၵ်ႇသင်လၢႆလၢႆ၊ သူင်ႇမႃးပၼ်တင်းသဵင်ႈတူၺ်း" ၼႆၶႃႈ။



### 1. The SELECT Query
ႁဝ်းတေၸႂ်ႉ SQL Query ယူဝ်းယူဝ်း တွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Table `shan_proverbs` ၶႃႈ:

```sql
SELECT id, proverb_key, proverb FROM shan_proverbs;
```

---

### 2. Implementation in DAO (`ProverbDAO.java`)

ႁဝ်းတေတႅမ်ႈ Method ဢၼ်သူင်ႇ `ObservableList<Proverb>` ၶိုၼ်းမႃးပၼ် Controller ၶႃႈ။

```java
public ObservableList<Proverb> getAllProverbs() {
    ObservableList<Proverb> list = FXCollections.observableArrayList();
    String sql = "SELECT id, proverb_key, proverb FROM shan_proverbs";

    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(sql)) {

        while (rs.next()) {
            // 1. ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ ResultSet
            int id = rs.getInt("id");
            String key = rs.getString("proverb_key");
            String text = rs.getString("proverb");

            // 2. သၢင်ႈ Object သေထႅင်ႈလူင်း List
            list.add(new Proverb(id, key, text));
        }
    } catch (SQLException e) {
        System.err.println("❌ Error fetching proverbs: " + e.getMessage());
    }
    return list;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ SQL Fetching)

* **`ResultSet (rs)`**: ဢၼ်ၼႆႉမိူၼ်ၼင်ႇ "ပပ်ႉ" ဢၼ် MySQL သူင်ႇမႃးပၼ်။ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`while(rs.next())`** တွၼ်ႈတႃႇ "ပိုတ်ႇတူၺ်း" တူဝ်ၼိုင်ႈယဝ်ႉတူဝ်ၼိုင်ႈ တေႃႇပေႃးသုတ်းၶႃႈ။
* **`rs.getString("column_name")`**: ပဵၼ်ၵၢၼ်ၸတ်းၵၢၼ် ဢဝ်ၶေႃႈမုၼ်းၸွမ်းၸိုဝ်ႈ Column ဢၼ်မီးၼႂ်း Database ၶႃႈ။
* **Mapping**: ၵၢၼ်ဢဝ် Data လုၵ်ႉတီႈ SQL Row မႃးလႅၵ်ႈပဵၼ် **Java Object** (Proverb) ၼႆႉ ပဵၼ်ပိုၼ်ႉထၢၼ် ၵၢၼ်တႅမ်ႈ Software ၸၼ်ႉသုင်ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **`executeQuery()`**: ၸႂ်ႉတွၼ်ႈတႃႇ "လူတ်ႇ" (Read) ၶေႃႈမုၼ်း (SELECT)။
* **The Loop**: ယွၼ်ႉမီးၶေႃႈမုၼ်း 2,600+ ပုၵ်ႈ၊ `while` loop တေႁဵတ်းၵၢၼ်တေႃႇပေႃးၵဵပ်းႁွမ်လႆႈၵူႈပုၵ်ႈၶႃႈ။
* **Performance**: ၵၢၼ်လူတ်ႇၶေႃႈမုၼ်းၼမ်ၼႃ တေၸၢင်ႈႁဵတ်းႁႂ်ႈ App "ၵိုတ်း" (Freeze) ၶႃႈ။ ဝၼ်းၼႃႈႁဝ်းတေမႃးႁဵၼ်းလွင်ႈ Pagination (Lesson 56) တွၼ်ႈတႃႇမႄးပၼ်ႁႃၼႆႉၶႃႈ။