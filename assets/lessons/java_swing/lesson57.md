## 57: Search & Filter: Real-time Data Querying

ၼႂ်း Lesson 56 ႁဝ်းလႆႈႁဵၼ်း လွင်ႈမွတ်ႇၶေႃႈမုၼ်း ယဝ်ႉတူဝ်ႈၵႂႃႇလႄႈ လွင်ႈၸတ်းၵၢၼ် CRUD (Create, Read, Update, Delete) ႁဝ်း ၵေႃႈ တဵမ်ထူၼ်ႈယဝ်ႉၶႃႈ!

တွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ Application ႁဝ်း ၶႅမ်ႉလႅပ်ႈ လႄႈ မီးၸၼ်ႉပရူဝ်ႇ မႃးထႅင်ႈ ၸွမ်းလူၺ်ႈ လွၵ်းလၢႆး **ၶူၼ်ႉႁႃၶေႃႈမုၼ်း (Search & Filter)** ၶႃႈ။ 
ပေႃးဝႃႈ ၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်း ႁဝ်းမီးမႃး ပဵၼ်လၢႆပၢၵ်ႇၵေႃႉၼၼ်ႉ၊ လွင်ႈၶူၼ်ႉႁႃလႆႈဝႆးဝႆး ၼႆႉ လမ်ႇလွင်ႈတႄႉတႄႉၶႃႈ။

### 1. SQL `LIKE` Operator လႄႈ `%` Wildcard

မိူဝ်ႈႁဝ်းႁႃ ၶေႃႈမုၼ်းၼၼ်ႉ၊ ၵမ်ႈၼမ် User တေဢမ်ႇပေႃႉ ၸိုဝ်ႈတဵမ်ထူၼ်ႈၶႃႈ (ပိူင်ယၢင်ႇ: ၶႂ်ႈႁႃ "Sai Mao" ၵူၺ်းၵႃႈ ပေႃႉ "Sai" ၵေႃး ႁႂ်ႈႁႃႁၼ်လႆႈ)။ 
ၵွပ်ႈၼၼ် ႁဝ်းတေဢမ်ႇၸႂ်ႉ ၶိူင်ႈမၢႆ မႅၼ်ႈတဵမ်ထူၼ်ႈ `=` ၶႃႈ၊ ႁဝ်းတေၸႂ်ႉ Command **`LIKE`** လႄႈ ၶိူင်ႈမၢႆ **`%`** (Wildcard) ၶႃႈ။

* `%` ၼႆႉ ပွင်ႇဝႃႈ "တူဝ်လိၵ်ႈသင်ၵေႃႈလႆႈ လၢႆတူဝ်ၵေႃႈလႆႈ"။
* **`LIKE 'Sai%'`**: ႁႃ ၵူၼ်းဢၼ် ၸိုဝ်ႈတႄႇႁူဝ်ၸွမ်း "Sai" (မိူၼ်ၼင်ႇ Sai Mao, Sai Kham)
* **`LIKE '%Mao'`**: ႁႃ ၵူၼ်းဢၼ် ၸိုဝ်ႈသုတ်းလိုၼ်းၸွမ်း "Mao"
* **`LIKE '%a%'`**: ႁႃ ၵူၼ်းဢၼ် ၸိုဝ်ႈမီးတူဝ်လိၵ်ႈ "a" လေႃးဝႆႉ ဢွင်ႈတီႈလႂ်ၵေႃႈလႆႈ။ (***ႁဝ်းတေၸႂ်ႉ လွၵ်းလၢႆးၼႆႉ တွၼ်ႈတႃႇ Search Bar ႁဝ်းၶႃႈ***)

### 2. Real-time Search လႄႈ `DocumentListener`

တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်း လီၸႂ်ႉသုတ်းၼၼ်ႉ၊ ႁဝ်းတေဢမ်ႇၸႂ်ႉ Button "Search" သေ ႁႂ်ႈ User ၼဵၵ်းၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ **`DocumentListener`** ၵႂႃႇပႂ်ႉထွမ်ႇဝႆႉ ၼႂ်း `JTextField` လႄႈ သင်ႇႁႂ်ႈမၼ်း ၶူၼ်ႉႁႃ ၵမ်းလဵဝ် **မိူဝ်ႈတိုၵ်ႉပေႃႉလိၵ်ႈယူႇ (Real-time)** ၶႃႈ!

---

### Code တူဝ်ယၢင်ႇ (Real-time Search Bar)

ႁဝ်းမႃး ၶူင်သၢင်ႈ Window ဢၼ်မီး Search Bar လႄႈ Table ဢၼ်တေလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ႁင်းၵူၺ်း မိူဝ်ႈပေႃႉလိၵ်ႈၶႃႈ:

```java
import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RealTimeSearchDemo {
    private static final String URL = "jdbc:sqlite:school.db";
    private static DefaultTableModel tableModel;

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("TMK Student Search");
        frame.setSize(600, 450);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));

        // 1. TOP PANEL (Search Bar)
        JPanel topPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        topPanel.add(new JLabel("🔍 Search (Name or Course): "));
        JTextField searchField = new JTextField(25);
        topPanel.add(searchField);
        frame.add(topPanel, BorderLayout.NORTH);

        // 2. CENTER PANEL (Table)
        String[] columns = {"ID", "Name", "Course", "Phone"};
        tableModel = new DefaultTableModel(columns, 0);
        JTable table = new JTable(tableModel);
        frame.add(new JScrollPane(table), BorderLayout.CENTER);

        // 3. ဢဝ်ၶေႃႈမုၼ်း တင်းသဵင်ႈ မႃးၼႄ ဢွၼ်တၢင်း (မိူဝ်ႈတႄႇပိုတ်ႇ)
        searchDatabase("");

        // 4. သႂ်ႇ DocumentListener တွၼ်ႈတႃႇ Real-time Search
        searchField.getDocument().addDocumentListener(new DocumentListener() {
            public void insertUpdate(DocumentEvent e) { updateSearch(); }
            public void removeUpdate(DocumentEvent e) { updateSearch(); }
            public void changedUpdate(DocumentEvent e) { updateSearch(); }
            
            // ႁွင်ႉ Method ၼႆႉ ၵူႈၵမ်း မိူဝ်ႈလိၵ်ႈ လႅၵ်ႈလၢႆႈ
            private void updateSearch() {
                String keyword = searchField.getText().trim();
                searchDatabase(keyword); // ၵႂႃႇၶူၼ်ႉႁႃ ၼႂ်း Database ၵမ်းလဵဝ်
            }
        });

        frame.setVisible(true);
    }

    // Method တွၼ်ႈတႃႇ ၶူၼ်ႉႁႃ လႄႈ ဢဝ်ၶေႃႈမုၼ်းသႂ်ႇၼႂ်း Table
    private static void searchDatabase(String keyword) {
        // Code SQL တွၼ်ႈတႃႇ ႁႃ ၸိုဝ်ႈ ဢမ်ႇၼၼ် Course ဢၼ်ငၢမ်ႇၵၼ်
        String sql = "SELECT * FROM students WHERE name LIKE ? OR course LIKE ?";

        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // သႂ်ႇ `%` လွမ်ႉဝႆႉ ၼႃႈလင် (Wildcard partial match)
            String searchPattern = "%" + keyword + "%";
            pstmt.setString(1, searchPattern);
            pstmt.setString(2, searchPattern);

            try (ResultSet rs = pstmt.executeQuery()) {
                
                // ၽဵဝ်ႈပႅတ်ႈ ၶေႃႈမုၼ်းၵဝ်ႇ ၼႂ်း Table ဢွၼ်တၢင်း
                tableModel.setRowCount(0);

                // ဢၢၼ်ႇၶေႃႈမုၼ်း ဢၼ်ၶူၼ်ႉႁႃႁၼ် သေ သႂ်ႇၶဝ်ႈၼႂ်း Table
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String course = rs.getString("course");
                    String phone = rs.getString("phone");
                    tableModel.addRow(new Object[]{id, name, course, phone});
                }
            }

        } catch (SQLException e) {
            System.out.println("Search Error: " + e.getMessage());
        }
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **လွင်ႈသႂ်ႇ `%` ၼႂ်း `PreparedStatement`:**
   ႁဝ်းတေဢမ်ႇသႂ်ႇ `%` ၼႂ်း Code SQL ၵမ်းလဵဝ်ၶႃႈ (ဢမ်ႇၸႂ်ႉ `LIKE '%?%'`)။ ႁဝ်းတေဢဝ် `%` မႃးလေႃးသႂ်ႇၵိုၵ်း String လိၵ်ႈႁဝ်း ၼႂ်း Java ဢွၼ်တၢင်း (`"%" + keyword + "%"`) လႄႈ ၸင်ႇဢဝ်ၵႂႃႇ သႂ်ႇတႅၼ်းတီႈ `?` ၸွမ်းလူၺ်ႈ `setString()` ၶႃႈ။ လွၵ်းလၢႆးၼႆႉ ၸင်ႇတေ လွတ်ႈၽေး SQL Injection တႄႉတႄႉၶႃႈ။
2. **UX Magic (လွင်ႈၶႅမ်ႉလႅပ်ႈ တႃႇ ၽူႈၸႂ်ႉတိုဝ်း):**
   လွင်ႈၸႂ်ႉ `DocumentListener` ၼႆႉ ႁဵတ်းႁႂ်ႈ Application ႁဝ်း မီးလွင်ႈတူင်ႉၼိုင် (Responsive) လီတႄႉတႄႉ။ ပေႃး User ပေႃႉလိၵ်ႈမႂ်ႇမႂ်ႇ၊ Table ၵေႃႈတေ လူတ်းယွမ်း ၶေႃႈမုၼ်း ႁႂ်ႈငၢမ်ႇမႅၼ်ႈၸွမ်း ၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇလႆႈ ပႂ်ႉၼဵၵ်း Button သင်ၶႃႈ။