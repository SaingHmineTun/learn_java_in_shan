## 54: Reading Data: ResultSet & Mapping to JTable

ၼႂ်း Lesson 53 ႁဝ်းလႆႈဢဝ် ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း Database ယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ ၼႂ်း Application ႁဝ်း ပႆႇႁၼ်ၶေႃႈမုၼ်းသင်ၶႃႈ။ 
မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွၵ်းလၢႆးဢၢၼ်ႇၶေႃႈမုၼ်း လုၵ်ႉတီႈ SQLite သေ ဢဝ်မႃးၼႄၼႂ်း **`JTable`** ႁႂ်ႈႁၼ်လႆႈ ၸႅင်ႈၸႅင်ႈလႅင်းလႅင်း ၶႃႈ!

### 1. `executeQuery()` လႄႈ `ResultSet` ပဵၼ်သင်?

မိူဝ်ႈႁဝ်းသင်ႇ `SELECT` တွၼ်ႈတႃႇဢၢၼ်ႇၶေႃႈမုၼ်းၼၼ်ႉ၊ ႁဝ်းတေဢမ်ႇၸႂ်ႉ `executeUpdate()` မိူၼ် Lesson ဢၼ်ပူၼ်ႉမႃးယဝ်ႉ။ 
ႁဝ်းတေလႆႈၸႂ်ႉ **`executeQuery()`** ၶႃႈ။

Method ၼႆႉ မၼ်းတေသူင်ႇၶိုၼ်း (Return) Object ဢၼ်လၢၵ်ႇလၢႆးဢၼ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **`ResultSet`** ၶႃႈ။

* `ResultSet` ၼႆႉ မၼ်းမိူၼ်ၼင်ႇ "လွၵ်းသဵၼ်ႈမၢႆ (Table)" ဢၼ်လႆႈမႃး လုၵ်ႉတီႈ Database ၶႃႈ။
* မၼ်းတေမီး "Cursor" ဢၼ်ၸီႉဝႆႉ ၽၢႆႇၼိူဝ်သုတ်းၶႃႈ။
* ႁဝ်းလူဝ်ႇလႆႈသင်ႇ **`rs.next()`** တွၼ်ႈတႃႇ သင်ႇႁႂ်ႈမၼ်း လူင်းမႃး ၵမ်းလွႆးလွႆး လႄႈ ဢၢၼ်ႇၶေႃႈမုၼ်း ၵူႈထႅဝ် (Row by row) ၶႃႈ။

### 2. လွၵ်းလၢႆး ဢၢၼ်ႇၶေႃႈမုၼ်းၼႂ်း `ResultSet`

မိူဝ်ႈႁဝ်း Loop `rs.next()` ယူႇၼၼ်ႉ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Method ၸိူဝ်းၼႆႉ တွၼ်ႈတႃႇ ၸၼ်ဢဝ် ၶေႃႈမုၼ်း ၼႂ်း Column ဢွၵ်ႇမႃး:

* `rs.getInt("id")`: တွၼ်ႈတႃႇဢၢၼ်ႇ မၢႆၼပ်ႉ (Integer)
* `rs.getString("name")`: တွၼ်ႈတႃႇဢၢၼ်ႇ လိၵ်ႈ (String)

---

### Code တူဝ်ယၢင်ႇ (Loading SQLite Data to JTable)

ႁဝ်းမႃး ၶူင်သၢင်ႈ Window UI ဢၼ်မီး `JTable` លႄႈ Button တွၼ်ႈတႃႇ ၸၼ်ဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Database မႃးၼႄ ၶႃႈ:

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataLoaderApp {
    private static final String URL = "jdbc:sqlite:school.db";

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("TMK Student Viewer");
        frame.setSize(600, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));

        // 1. ၶူင်သၢင်ႈ JTable លႄႈ DefaultTableModel
        String[] columns = {"ID", "Name", "Course", "Phone"};
        DefaultTableModel tableModel = new DefaultTableModel(columns, 0);
        JTable table = new JTable(tableModel);
        frame.add(new JScrollPane(table), BorderLayout.CENTER);

        // 2. ၶူင်သၢင်ႈ Button ตႃႇ Load Data
        JButton loadBtn = new JButton("Load Students from Database");
        loadBtn.setFont(new Font("Arial", Font.BOLD, 14));
        frame.add(loadBtn, BorderLayout.SOUTH);

        // 3. သႂ်ႇ Action တႃႇၸၼ်ၶေႃႈမုၼ်း (Read)
        loadBtn.addActionListener(e -> {
            
            // Code SQL တွၼ်ႈတႃႇ ဢၢၼ်ႇၶေႃႈမုၼ်း တင်းသဵင်ႈ ၼႂ်း Table
            String sql = "SELECT * FROM students";

            try (Connection conn = DriverManager.getConnection(URL);
                 PreparedStatement pstmt = conn.prepareStatement(sql);
                 
                 // ႁွင်ႉ executeQuery() တႃႇလႆႈ ResultSet
                 ResultSet rs = pstmt.executeQuery()) {

                // လမ်ႇလွင်ႈသုတ်း! ၽဵဝ်ႈပႅတ်ႈ ၶေႃႈမုၼ်းၵဝ်ႇ ၼႂ်း JTable ဢွၼ်တၢင်း
                tableModel.setRowCount(0);

                // ၸီႉသင်ဢဝ် Cursor လူင်းၵႂႃႇ ၵူႈထႅဝ် တေႃႇပေႃးသုတ်း
                while (rs.next()) {
                    
                    // ၸၼ်ဢဝ်ၶေႃႈမုၼ်း ဢွၵ်ႇမႃး လုၵ်ႉတီႈ Column ၵူႈဢၼ်
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String course = rs.getString("course");
                    String phone = rs.getString("phone");

                    // ဢဝ်ၶေႃႈမုၼ်း သႂ်ႇပဵၼ် ထႅဝ်မႂ်ႇ (Row) ၼႂ်း Table Model
                    tableModel.addRow(new Object[]{id, name, course, phone});
                }

                JOptionPane.showMessageDialog(frame, "Data loaded successfully!");

            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(frame, "Database Error: " + ex.getMessage());
            }
        });

        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **`try-with-resources` 3 ၸၼ်ႉ:** ၼႂ်း Code ၼၼ်ႉ သူၸဝ်ႈတေလႆႈႁၼ်ဝႃႈ ႁဝ်းသႂ်ႇတင်း `Connection`, `PreparedStatement`, လႄႈ `ResultSet` ၼႂ်း `try ()` ၶႃႈ။ လွင်ႈၼႆႉ လမ်ႇလွင်ႈတႄႉတႄႉ ယွၼ်ႉဝႃႈ `ResultSet` ၵေႃႈ လူဝ်ႇလႆႈပိၵ်ႉ (Close) မိူၼ်ၵၼ် တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈ Memory တဵမ်ၶႃႈ။
2. **`tableModel.setRowCount(0);`:** ၼႆႉပဵၼ် Trick လမ်ႇလွင်ႈ တွၼ်ႈတႃႇ "ၽဵဝ်ႈပႅတ်ႈ (Clear)" ၶေႃႈမုၼ်းၵဝ်ႇ ၼႂ်း Table ႁဝ်းၶႃႈ။ ပေႃးႁဝ်းဢမ်ႇသႂ်ႇထႅဝ်ၼႆႉ၊ မိူဝ်ႈ User ၼဵၵ်း "Load" လၢႆလၢႆၵမ်း၊ ၶေႃႈမုၼ်းမၼ်း တေၵႂႃႇထပ်းသိုပ်ႇၵၼ် (Duplicate) ၽၢႆႇတႂ်ႈ ယၢဝ်းၵႂႃႇတိၵ်းတိၵ်း ၶႃႈ။
3. **`new Object[]{...}`:** ယွၼ်ႉဝႃႈ ၶေႃႈမုၼ်းႁဝ်း မီးတင်း မၢႆၼပ်ႉ `int` လႄႈ လိၵ်ႈ `String` လေႃးၵၼ်၊ ႁဝ်းၸင်ႇလႆႈႁုပ်ႈမၼ်းပဵၼ် `Object[]` Array သေ ၸင်ႇဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `addRow()` ၶွင် Table Model ၶႃႈ။