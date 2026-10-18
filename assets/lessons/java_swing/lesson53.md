## 53: Prepared Statements: Safe Data Insertion

ၼႂ်း Lesson 52 ႁဝ်းလႆႈၶူင်သၢင်ႈ Table `students` သေ ႁၢင်ႈႁႅၼ်းဝႆႉ တဵမ်ထူၼ်ႈယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် Table ႁဝ်း တိုၵ်ႉပဝ်ႇလၢႆဝႆႉယူႇလႄႈ၊ ႁဝ်းတေမႃးႁဵၼ်း လွၵ်းလၢႆးထႅမ်သႂ်ႇ (Insert) ၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်းမႂ်ႇ ၶဝ်ႈၵႂႃႇၼႂ်း Database ၶႃႈ။

### 1. ပၼ်ႁႃလူင် ၶွင်လွင်ႈၸႂ်ႉ `Statement` လႄႈ လွင်ႈလေႃး String

မိူဝ်ႈႁဝ်း ၶႂ်ႈဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ `JTextField` မႃးသႂ်ႇၼႂ်း SQL ၼၼ်ႉ၊ ၽူႈတႅမ်ႈ Code ၵမ်ႉၼမ် ၵႆႉလေႃးလိၵ်ႈ (String Concatenation) ၼင်ႇၼႆၶႃႈ:

```java
// ❌ ဢမ်ႇထုၵ်ႇလီႁဵတ်း ลႃးလႃး! (Bad Practice & Unsafe)
String name = nameField.getText();
String sql = "INSERT INTO students (name, course) VALUES ('" + name + "', 'Java')";

```

လွၵ်းလၢႆးၼႆႉ မီးပၼ်ႁႃလူင် 2 ယိူင်ႈ:

1. **SQL Injection:** ပဵၼ်ၽေးၶဵၼ် ၽၢႆႇ Security ဢၼ်ယႂ်ႇသုတ်းၶႃႈ။ ပေႃး Hacker ပေႃႉၶေႃႈမုၼ်းလၢၵ်ႇလၢႆး မိူၼ်ၼင်ႇ `Mao', 'Java'); DROP TABLE students;--` သႂ်ႇၼႂ်း TextField ၼၼ်ႉ၊ ၶေႃႈမုၼ်းၼႂ်း Database ႁဝ်း ၸၢင်ႈထုၵ်ႇမွတ်ႇပႅတ်ႈ ၵမ်းလဵဝ်လႆႈၶႃႈ။
2. **Syntax Errors:** ပေႃးၸိုဝ်ႈလုၵ်ႈႁဵၼ်း မီးၶိူင်ႈမၢႆ ဢၼ်လၢၵ်ႇလၢႆး (ပိူင်ယၢင်ႇ: `O'Connor`)፣ လွင်ႈလေႃး String တေႁဵတ်းႁႂ်ႈ Code SQL ၽိတ်းပိူင်ႈ ၵမ်းလဵဝ်ၶႃႈ။

### 2. လွင်ႈၵႄႈလိတ်ႈ: `PreparedStatement` (လွတ်ႈၽေး လႄႈ သႅၼ်ႈသႂ်)

တွၼ်ႈတႃႇၵႄႈလိတ်ႈ ပၼ်ႁႃၸိူဝ်းၼႆႉ၊ Java မီး Class ဢၼ်ႁွင်ႉဝႃႈ **`PreparedStatement`** ၶႃႈ။ လွၵ်းလၢႆးၸႂ်ႉမၼ်းတႄႉ:

1. ႁဝ်းတေၸႂ်ႉ ၶိူင်ႈမၢႆထၢမ် **`?`** (Placeholders) တႅၼ်းတၢင်ဝႆႉ ဢွင်ႈတီႈ ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းတေဢဝ်သႂ်ႇ။
2. ယဝ်ႉၸင်ႇ ၸႂ်ႉ Method မိူၼ်ၼင်ႇ `setString()` ဢမ်ႇၼၼ် `setInt()` တွၼ်ႈတႃႇဢဝ် ၶေႃႈမုၼ်း သႂ်ႇတႅၼ်းတီႈ `?` ၼၼ်ႉၶႃႈ။ Java တေၸတ်းၵၢၼ် ႁႄႉၵင်ႈလွင်ႈ SQL Injection ပၼ်ႁဝ်း ႁင်းၵူၺ်း 100% ၶႃႈ!

---

### Code တူဝ်ယၢင်ႇ (Safe Data Insertion)

ႁဝ်းမႃး မႄးထႅမ် `DatabaseHelper` ၶွင်ႁဝ်းသေ သႂ်ႇ Method တွၼ်ႈတႃႇ Insert ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၶႃႈ:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseHelper {
    private static final String URL = "jdbc:sqlite:school.db";

    public static Connection connect() throws SQLException {
        return DriverManager.getConnection(URL);
    }

    // Method တႃႇသႂ်ႇၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်းမႂ်ႇ
    public static void insertStudent(String name, String course, String phone) {
        
        // 1. တႅမ်ႈ Code SQL သေ ၸႂ်ႉ `?` တၢင်ဝႆႉ ဢွင်ႈတီႈ ၶေႃႈမုၼ်း
        String sql = "INSERT INTO students (name, course, phone) VALUES (?, ?, ?)";

        // 2. ၸႂ်ႉ try-with-resources တွၼ်ႈတႃႇ PreparedStatement
        try (Connection conn = connect();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // 3. ဢဝ်ၶေႃႈမုၼ်း သႂ်ႇတႅၼ်းတီႈ `?` ၵူႈဢၼ်
            pstmt.setString(1, name);   // သႂ်ႇတႅၼ်း `?` ဢၼ်ທີ 1 (name)
            pstmt.setString(2, course); // သႂ်ႇတႅၼ်း `?` ဢၼ်ທີ 2 (course)
            pstmt.setString(3, phone);  // သႂ်ႇတႅၼ်း `?` ဢၼ်ທີ 3 (phone)

            // 4. သင်ႇႁႂ်ႈႁဵတ်းၵၢၼ် ลႄႈ ဢၢၼ်ႇတူၺ်းဝႃႈ လႅၵ်ႈလၢႆႈၵႂႃႇ လၢႆထႅဝ် (Rows affected)
            int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                System.out.println("✅ Student '" + name + "' added successfully!");
            }

        } catch (SQLException e) {
            System.out.println("❌ Error inserting student: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        // ၸၢမ်း Insert ၶေႃႈမုၼ်း တူၺ်း
        insertStudent("Sai Mao", "Java Swing", "09-123456789");
        insertStudent("Kham", "Flutter", "09-987654321");
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **`executeUpdate()`:** မိူဝ်ႈ Lesson 52 ၼၼ်ႉ ႁဝ်းၸႂ်ႉ `execute()` တွၼ်ႈတႃႇသၢင်ႈ Table ၶႃႈ။ ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇ `INSERT`, `UPDATE`, လႄႈ `DELETE` ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`executeUpdate()`** ၶႃႈ။ Method ၼႆႉ မၼ်းတေ သူင်ႇၶိုၼ်း (Return) မၢႆၼပ်ႉ `int` ဢၼ်မွၵ်ႇလၢတ်ႈဝႃႈ မီးၶေႃႈမုၼ်း လၢႆထႅဝ် လႆႈထုၵ်ႇလႅၵ်ႈလၢႆႈ ၵႂႃႇၶႃႈ။
2. **1-Based Index:** ၵူတ်ႇတူၺ်းလီလီၶႃႈ၊ `pstmt.setString(1, ...)` ၼႆႉ မၼ်းတႄႇၼပ်ႉတီႈ **1** ၶႃႈ (ဢမ်ႇၸႂ်ႈ 0 မိူၼ်ၼင်ႇ Array ၼႂ်း Java)။ `1` ၼႆႉ ပွင်ႇဝႃႈ ပဵၼ် ၶိူင်ႈမၢႆထၢမ် `?` တူဝ်ဢွၼ်တၢင်းသုတ်း ၼႂ်း Code SQL ႁဝ်းၼၼ်ႉယဝ်ႉၶႃႈ။