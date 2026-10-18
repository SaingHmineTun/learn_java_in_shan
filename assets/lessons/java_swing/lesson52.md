## 52: Creating Database Tables Programmatically

ၼႂ်း Lesson 51 ႁဝ်းလႆႈဢဝ် Java သိုပ်ႇၸပ်း (Connect) ၵႂႃႇၸူး SQLite လႆႈယဝ်ႉၶႃႈ။ ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵတ်းလွင်ႈ ဢၼ်လမ်ႇလွင်ႈသုတ်း — ၼၼ်ႉပဵၼ် လွင်ႈသင်ႇႁႂ်ႈ Java **ၶူင်သၢင်ႈ Table ပၼ်ႁင်းၵူၺ်း (Programmatically)** ၶႃႈ။
ပဵၼ်သင်လႄႈ ႁဝ်းထုၵ်ႇလီႁဵတ်းလၢႆးၼႆႉ? ယွၼ်ႉဝႃႈ မိူဝ်ႈႁဝ်းဢဝ် Application (`.jar` ဢမ်ႇၼၼ် `.exe`) ၵႂႃႇပၼ် လုၵ်ႈႁဵၼ်း ဢမ်ႇၼၼ် ၽူႈၸႂ်ႉတိုဝ်းၶဝ်ၼၼ်ႉ၊ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၶဝ် လႆႈၵႂႃႇ Install DB Browser သေ သၢင်ႈ Table ႁင်းၵူၺ်းၶဝ်ၶႃႈ။ 
ႁဝ်းၶႂ်ႈႁႂ်ႈ Program ႁဝ်း ၵူတ်ႇတူၺ်းႁင်းၵူၺ်း လႄႈ သၢင်ႈပၼ်ၵမ်းလဵဝ် မိူဝ်ႈပိုတ်ႇ Program ပွၵ်ႈဢွၼ်တၢင်းသုတ်းၶႃႈ။

### 1. The Statement Object

တွၼ်ႈတႃႇသင်ႇ Code SQL လုၵ်ႉတီႈ Java ၵႂႃႇၸူး Database ၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **`Statement`** Object ၶႃႈ။

* **`Connection`** ၼၼ်ႉ မိူၼ်ၼင်ႇ သၢႆၾူင်း ဢၼ်ၵပ်းသိုပ်ႇၸူး Database။
* **`Statement`** ၼၼ်ႉ မိူၼ်ၼင်ႇ ၵူၼ်းသူင်ႇလိၵ်ႈ (Messenger) ဢၼ်တေဢဝ် Code SQL ႁဝ်း ၵႂႃႇသူင်ႇပၼ် Database သေ သင်ႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၶႃႈ။

### 2. လွင်ႈၸႂ်ႉ IF NOT EXISTS

မိူဝ်ႈႁဝ်းသင်ႇ `CREATE TABLE` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈသႂ်ႇ ၶေႃႈၵႂၢမ်း **`IF NOT EXISTS`** ၵိုၵ်းပႃး တႃႇသေႇၶႃႈ။
မၼ်းပွင်ႇဝႃႈ: *"ၶႅၼ်းတေႃႈ သၢင်ႈ Table ၼႆႉပၼ်သေၵမ်း၊ ၵူၺ်းၵႃႈ ပေႃးဝႃႈ မၼ်းမီးဝႆႉယူႇယဝ်ႉၸိုင် ယႃႇပေႁဵတ်းသင်"* ၶႃႈ။ လွၵ်းလၢႆးၼႆႉ မၼ်းတေႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Program ႁဝ်း လႆႈထူပ်း Error မိူဝ်ႈပိုတ်ႇ Application လၢႆလၢႆၵမ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Database Initialization)

ႁဝ်းမႃး မႄးထႅမ် Class `DatabaseHelper` ၶွင်ႁဝ်းသေ သႂ်ႇ Method တွၼ်ႈတႃႇ ၶူင်သၢင်ႈ Table ႁင်းၵူၺ်း မိူဝ်ႈတႄႇ Program ၶႃႈ။

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseHelper {
    // ၸိုဝ်ႈၽၢႆႇ Database
    private static final String URL = "jdbc:sqlite:school.db";

    // 1. Method တွၼ်ႈတႃႇ ႁွင်ႉဢဝ် Connection
    public static Connection connect() throws SQLException {
        return DriverManager.getConnection(URL);
    }

    // 2. Method တွၼ်ႈတႃႇ ၶူင်သၢင်ႈ Table ၵမ်းလဵဝ် (Initialization)
    public static void initializeDatabase() {
        
        // Code SQL တွၼ်ႈတႃႇသၢင်ႈ Table (ၸႂ်ႉ IF NOT EXISTS)
        String sql = "CREATE TABLE IF NOT EXISTS students ("
                   + "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                   + "name TEXT NOT NULL, "
                   + "course TEXT NOT NULL, "
                   + "phone TEXT"
                   + ");";

        // ၸႂ်ႉ try-with-resources တွၼ်ႈတႃႇ Connection လႄႈ Statement 
        try (Connection conn = connect();
             Statement stmt = conn.createStatement()) {
             
             // သင်ႇႁႂ်ႈ Statement ဢဝ် Code SQL ၵႂႃႇႁဵတ်းၵၢၼ် (Execute)
             stmt.execute(sql);
             System.out.println("Database initialized and 'students' table is ready.");
             
        } catch (SQLException e) {
            System.out.println("Error creating table: " + e.getMessage());
        }
    }
    
    // --- Main Method တွၼ်ႈတႃႇၸၢမ်း Code ---
    public static void main(String[] args) {
        // ႁွင်ႉ Method ၼႆႉ မိူဝ်ႈတႄႇပိုတ်ႇ Program တူဝ်ဢွၼ်တၢင်းသုတ်း
        initializeDatabase();
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ (Key Takeaways)

1. **လွင်ႈၸႂ်ႉ `execute()`:** ၼႂ်း `Statement` ၼၼ်ႉ မီး Method လၢႆဢၼ် တွၼ်ႈတႃႇသင်ႇ SQL ၶႃႈ။ ႁဝ်းၸႂ်ႉ `execute(sql)` တွၼ်ႈတႃႇ Code ဢၼ်ဢမ်ႇမီး ၽွၼ်းလႆႈ (Result) ၶိုၼ်းမႃး မိူၼ်ၼင်ႇ `CREATE TABLE` ဢမ်ႇၼၼ် `UPDATE` ၶႃႈ။ (ပေႃးပဵၼ် လွင်ႈဢၢၼ်ႇၶေႃႈမုၼ်း `SELECT` ႁဝ်းတေၸႂ်ႉထႅင်ႈ Method ဢၼ်ၼိုင်ႈ ဢၼ်တေလႆႈႁဵၼ်းၼႂ်း Lesson တေႃႇၼႃႈ ၵႂႃႇၶႃႈ)။
2. **`try-with-resources` သွင်ၸၼ်ႉ:** သူၸဝ်ႈၸၢင်ႈတေလႆႈႁၼ်ဝႃႈ ႁဝ်းသႂ်ႇ `Connection conn = ...` လႄႈ `Statement stmt = ...` ၼႂ်းၶိူင်ႈမၢႆဝူင်းၵူင် `try ()` ဢၼ်လဵဝ်ၵၼ်လႆႈၶႃႈ (ဢဝ်ၶိူင်ႈမၢႆ `;` ၶႅၼ်ႈၵၢင်ဝႆႉ)။ ၼႆႉမၼ်းတေႁဵတ်းႁႂ်ႈ Java ပိၵ်ႉပၼ် တင်း `Statement` လႄႈ `Connection` ႁင်းၵူၺ်းမၼ်း ဢၼ်လွတ်ႈၽေးသုတ်းၶႃႈ။