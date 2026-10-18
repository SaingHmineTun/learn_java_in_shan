## 55: Updating Records: Modifying Data Safely

ၼႂ်း Lesson 54 ႁဝ်းလႆႈဢၢၼ်ႇၶေႃႈမုၼ်း မႃးၼႄၼႂ်း `JTable` လႆႈယဝ်ႉၶႃႈ။ ယၢမ်းလဵဝ် ပေႃးဝႃႈ လုၵ်ႈႁဵၼ်း ၶႂ်ႈလႅၵ်ႈလၢႆႈ မၢႆၾူင်း ဢမ်ႇၼၼ် လၢႆႈ Course ႁဵၼ်းလူး? 
ႁဝ်းတေလႆႈၸႂ်ႉ Command **`UPDATE`** တွၼ်ႈတႃႇ မႄးလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်း ဢၼ်မီးဝႆႉယူႇယဝ်ႉ ၼႂ်း Database ၶႃႈ။

ဢၼ်လမ်ႇလွင်ႈသုတ်းတႄႉ လွင်ႈလႅၵ်ႈလၢႆႈၼႆႉ တေလႆႈ **လွတ်ႈၽေး (Safely)** — ပွင်ႇဝႃႈ ဢမ်ႇထုၵ်ႇလီႁဵတ်းႁႂ်ႈ ၶေႃႈမုၼ်းၵူၼ်းတၢင်ႇၵေႃႉ လႆႈလႅၵ်ႈလၢႆႈၽိတ်းပိူင်ႈၵႂႃႇၸွမ်း လႄႈ ဢမ်ႇထုၵ်ႇလီမီးၽေး SQL Injection ၶႃႈ။

### 1. လွင်ႈၸႂ်ႉ `PreparedStatement` တႃႇ `UPDATE`

မိူၼ်ၼင်ႇ Lesson 53 ဢၼ်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းမႂ်ႇ (`INSERT`) ၼၼ်ႉယဝ်ႉၶႃႈ၊ တွၼ်ႈတႃႇ `UPDATE` ၵေႃႈ ႁဝ်းတေလႆႈၸႂ်ႉ **`PreparedStatement`** လႄႈ ၶိူင်ႈမၢႆထၢမ် **`?`** တႃႇသေႇ တွၼ်ႈတႃႇႁႄႉၵင်ႈလွင်ႈၽိတ်းပိူင်ႈ လႄႈ ၽေးၶဵၼ်ၶႃႈ။

```sql
-- Code SQL ဢၼ်ႁဝ်းတေတႅမ်ႈၼႂ်း Java
UPDATE students SET course = ?, phone = ? WHERE id = ?

```

### 2. ⚠️ ၶေႃႈမၢႆတွင်း လူင် (The Danger Rule of UPDATE)

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code SQL တွၼ်ႈတႃႇ `UPDATE` ၼၼ်ႉ၊ **"တေလႆႈသႂ်ႇ `WHERE` တႃႇသေႇ ယႃႇပေလိုမ်းလႃးလႃး!"**

ပေႃးသူၸဝ်ႈ သင်ႇဝႃႈ `UPDATE students SET course = ?` သေ လိုမ်းသႂ်ႇ `WHERE id = ?` ၽၢႆႇလင်ၼၼ်ႉ၊ Database တေၵႂႃႇလႅၵ်ႈလၢႆႈ Course ၶွင် **လုၵ်ႈႁဵၼ်း ၵူႈၵေႃႉ တင်းသဵင်ႈ ၼႂ်း Table ၵမ်းလဵဝ်!** လႄႈ ၶေႃႈမုၼ်းတေလူႉလႅဝ်မူတ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Safe Update Method)

ႁဝ်းမႃး ၶူင်သၢင်ႈ Method ၼႂ်း Java တွၼ်ႈတႃႇ ႁပ်ႉဢဝ် `id` ၶွင်လုၵ်ႈႁဵၼ်း သေ မႄးလႅၵ်ႈလၢႆႈ `course` လႄႈ `phone` ၶွင်လုၵ်ႈႁဵၼ်း ၵေႃႉၼၼ်ႉၵူၺ်း ၶႃႈ:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseUpdater {
    // ၸိုဝ်ႈၽၢႆႇ Database
    private static final String URL = "jdbc:sqlite:school.db";

    // Method တွၼ်ႈတႃႇ မႄးလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်း
    public static void updateStudentInfo(int id, String newCourse, String newPhone) {
        
        // 1. တႅမ်ႈ Code SQL လႄႈ ၸႂ်ႉ `?` တၢင်ဝႆႉ (သႂ်ႇ WHERE တႃႇသေႇ!)
        String sql = "UPDATE students SET course = ?, phone = ? WHERE id = ?";

        // 2. ၸႂ်ႉ try-with-resources
        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // 3. သႂ်ႇၶေႃႈမုၼ်း တႅၼ်းတီႈ `?`
            pstmt.setString(1, newCourse); // တႅၼ်းတီႈ `?` မၢႆ 1 (course)
            pstmt.setString(2, newPhone);  // တႅၼ်းတီႈ `?` မၢႆ 2 (phone)
            
            // *** လမ်ႇလွင်ႈသုတ်း: သႂ်ႇ ID တွၼ်ႈတႃႇ WHERE ***
            pstmt.setInt(3, id);           // တႅၼ်းတီႈ `?` မၢႆ 3 (id)

            // 4. သင်ႇႁဵတ်းၵၢၼ် လႄႈ ၵူတ်ႇတူၺ်း ၽွၼ်းလႆႈ
            int rowsAffected = pstmt.executeUpdate();

            // ပေႃး rowsAffected မီးၼမ်သေ 0 ပွင်ႇဝႃႈ လႅၵ်ႈလၢႆႈလႆႈယဝ်ႉ
            if (rowsAffected > 0) {
                System.out.println("✅ Update successful for Student ID: " + id);
            } else {
                // ပေႃးပဵၼ် 0 ပွင်ႇဝႃႈ ႁႃ ID ၼၼ်ႉ ဢမ်ႇႁၼ်ၼႂ်း Database
                System.out.println("❌ Update failed! No student found with ID: " + id);
            }

        } catch (SQLException e) {
            System.out.println("Database Error: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        // ၸၢမ်းလႅၵ်ႈလၢႆႈ Course លႄႈ Phone တွၼ်ႈတႃႇ လုၵ်ႈႁဵၼ်း ဢၼ်မီး ID = 1
        updateStudentInfo(1, "Spring Boot Masterclass", "09-999888777");
        
        // ၸၢမ်း ID ဢၼ်ဢမ်ႇမီးၼႂ်း Database တူၺ်း (ပိူင်ယၢင်ႇ ID 99)
        updateStudentInfo(99, "C++", "09-000000000");
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **`executeUpdate()` သူင်ႇၶိုၼ်း (Returns) လွင်ႈတႅတ်ႈၼႅတ်ႈ:**
   မိူဝ်ႈႁဝ်းသင်ႇ `executeUpdate()` ၼၼ်ႉ၊ မၼ်းတေဢမ်ႇၵူၺ်း ႁဵတ်းၵၢၼ်ပၼ်လၢႆလၢႆၶႃႈ၊ မၼ်းတေမွၵ်ႇလၢတ်ႈႁဝ်းၶိုၼ်းဝႃႈ "မီးလၢႆထႅဝ် (Rows) ဢၼ်လႆႈထုၵ်ႇလႅၵ်ႈလၢႆႈၵႂႃႇ"။ ပေႃးႁဝ်းသႂ်ႇ ID ၽိတ်း ဢမ်ႇၼၼ် ဢမ်ႇမီးၼႂ်း Table၊ မၼ်းတေသူင်ႇ `0` ၶိုၼ်းမႃး လႄႈ ႁဝ်းၸၢင်ႈဢဝ်မႃး ၼႄသၢင်ႇလၢတ်ႈ (Error Message) ပၼ် User လႆႈၶႃႈ။
2. **Order of `?`:**
   မိူဝ်ႈၸႂ်ႉ `pstmt.set...()` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈ ၼပ်ႉမၢႆၶပ်ႉမၼ်း (1, 2, 3) ၸွမ်းၼင်ႇ ဢၼ်ႁဝ်းၶပ်ႉဝႆႉ ၶွင် `?` ဢၼ်မီးၼႂ်း Code SQL String ႁဝ်း တႅတ်ႈတႅတ်ႈၼႅတ်ႈၼႅတ်ႈ ၶႃႈ။ ယွၼ်ႉဝႃႈ `WHERE id = ?` ယူႇၽၢႆႇလင်သုတ်း၊ ႁဝ်းၸင်ႇလႆႈသႂ်ႇ `pstmt.setInt(3, id);` ပဵၼ်ဢၼ်ထူၼ်ႈသၢမ်ၶႃႈ။