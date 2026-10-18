## 58: Project: Full-Featured Student Management System

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 8 ၶႃႈ! ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေဢဝ် လွၼ်ႉမွၼ်း ၸိူဝ်းလႆႈႁဵၼ်းမႃး တင်းသဵင်ႈ (CRUD လႄႈ Search) မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **Student Management System** တဵမ်ထူၼ်ႈၶႃႈ။

တွၼ်ႈတႃႇႁႂ်ႈ Code ႁဝ်း မီးၸၼ်ႉပရူဝ်ႇ လႄႈ မႄးလႆႈငၢႆႈ၊ ႁဝ်းတေၸႂ်ႉ လွၵ်းလၢႆး **Separation of Concerns (လွင်ႈၸႅၵ်ႇၽႄၼႃႈၵၢၼ်)**:

1. **Database Layer (`DatabaseHelper.java`):** ႁဵတ်းၵၢၼ် ၵိုၵ်း SQLite ၵူၺ်း။
2. **App Layer (`StudentManagerApp.java`):** ႁဵတ်းၵၢၼ် ၵိုၵ်း Java Swing လႄႈ UI ၵူၺ်း (ႁွင်ႉၸႂ်ႉ Database Layer တွၼ်ႈတႃႇ ၸၼ်/သိမ်း ၶေႃႈမုၼ်း)။

UI ႁဝ်း တေၸႅၵ်ႇပဵၼ် 2 ၽၢၵ်ႇ:

* **Left Panel:** လွၵ်းထႅမ်ၶေႃႈမုၼ်း လႄႈ Button တွၼ်ႈတႃႇ Create, Update, Delete။
* **Right Panel:** ၽၢႆႇၼိူဝ်ပဵၼ် Search Bar, ၽၢႆႇတႂ်ႈပဵၼ် `JTable` တွၼ်ႈတႃႇ ၼႄၶေႃႈမုၼ်း။

---

### 1. Database Layer (`DatabaseHelper.java`)

Class ၼႆႉ တေႁပ်ႉဢဝ် ၼႃႈၵၢၼ် ၵပ်းသိုပ်ႇ Database တင်းသဵင်ႈၶႃႈ။ ၶူင်သၢင်ႈၽၢႆႇမႂ်ႇသေ တႅမ်ႈ Code ၼႆႉသႂ်ႇၶႃႈ:

```java
import java.sql.*;
import java.util.Vector;

public class DatabaseHelper {
    private static final String URL = "jdbc:sqlite:tmk_school.db";

    // 1. Initialize Database
    public static void initDB() {
        String sql = "CREATE TABLE IF NOT EXISTS students ("
                   + "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                   + "name TEXT NOT NULL, "
                   + "course TEXT NOT NULL, "
                   + "phone TEXT)";
        try (Connection conn = DriverManager.getConnection(URL);
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 2. Create (Insert)
    public static boolean addStudent(String name, String course, String phone) {
        String sql = "INSERT INTO students (name, course, phone) VALUES (?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            pstmt.setString(2, course);
            pstmt.setString(3, phone);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // 3. Update
    public static boolean updateStudent(int id, String name, String course, String phone) {
        String sql = "UPDATE students SET name = ?, course = ?, phone = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            pstmt.setString(2, course);
            pstmt.setString(3, phone);
            pstmt.setInt(4, id);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // 4. Delete
    public static boolean deleteStudent(int id) {
        String sql = "DELETE FROM students WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // 5. Read & Search (ႁူမ်ႈၵၼ်လႆႈ တွၼ်ႈတႃႇလႆႈၶေႃႈမုၼ်း တင်းသဵင်ႈ ဢမ်ႇၼၼ် ၶူၼ်ႉႁႃ)
    public static Vector<Vector<Object>> getStudents(String keyword) {
        Vector<Vector<Object>> data = new Vector<>();
        String sql = "SELECT * FROM students WHERE name LIKE ? OR course LIKE ?";
        
        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
             
            String pattern = "%" + keyword + "%";
            pstmt.setString(1, pattern);
            pstmt.setString(2, pattern);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Vector<Object> row = new Vector<>();
                    row.add(rs.getInt("id"));
                    row.add(rs.getString("name"));
                    row.add(rs.getString("course"));
                    row.add(rs.getString("phone"));
                    data.add(row);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return data;
    }
}

```

---

### 2. App Layer (`StudentManagerApp.java`)

Class ၼႆႉ တေပဵၼ် UI (User Interface) ဢၼ်မီး Left Panel လႄႈ Right Panel သေ ၵပ်းသိုပ်ႇၸူး `DatabaseHelper` ၶႃႈ:

```java
import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.util.Vector;

public class StudentManagerApp {
    private JFrame frame;
    private JTextField idField, nameField, courseField, phoneField, searchField;
    private JTable table;
    private DefaultTableModel tableModel;

    public static void main(String[] args) {
        // ၶူင်သၢင်ႈ Database ဢွၼ်တၢင်း
        DatabaseHelper.initDB();
        SwingUtilities.invokeLater(() -> new StudentManagerApp().createUI());
    }

    private void createUI() {
        frame = new JFrame("TMK Student Management System");
        frame.setSize(850, 500);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // ==========================================
        // 1. LEFT PANEL (Form for Create, Update, Delete)
        // ==========================================
        JPanel leftPanel = new JPanel(new BorderLayout(5, 5));
        leftPanel.setPreferredSize(new Dimension(300, 0));
        leftPanel.setBorder(BorderFactory.createTitledBorder("Manage Student"));

        JPanel formPanel = new JPanel(new GridLayout(8, 1, 5, 5));
        
        idField = new JTextField();
        idField.setEditable(false); // ID ၼႆႉ ဢမ်ႇပၼ်မႄး ႁင်းၵူၺ်း
        nameField = new JTextField();
        courseField = new JTextField();
        phoneField = new JTextField();

        formPanel.add(new JLabel("Student ID (Auto):"));
        formPanel.add(idField);
        formPanel.add(new JLabel("Name:"));
        formPanel.add(nameField);
        formPanel.add(new JLabel("Course:"));
        formPanel.add(courseField);
        formPanel.add(new JLabel("Phone:"));
        formPanel.add(phoneField);

        JPanel buttonPanel = new JPanel(new GridLayout(1, 3, 5, 5));
        JButton addBtn = new JButton("Add");
        JButton updateBtn = new JButton("Update");
        JButton deleteBtn = new JButton("Delete");
        deleteBtn.setBackground(new Color(220, 53, 69));
        deleteBtn.setForeground(Color.WHITE);

        buttonPanel.add(addBtn);
        buttonPanel.add(updateBtn);
        buttonPanel.add(deleteBtn);

        leftPanel.add(formPanel, BorderLayout.NORTH);
        leftPanel.add(buttonPanel, BorderLayout.SOUTH);
        frame.add(leftPanel, BorderLayout.WEST);

        // ==========================================
        // 2. RIGHT PANEL (Search Bar & Table)
        // ==========================================
        JPanel rightPanel = new JPanel(new BorderLayout(5, 5));
        
        // Right-Top (Search)
        JPanel searchPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        searchField = new JTextField(30);
        searchPanel.add(new JLabel("🔍 Search:"));
        searchPanel.add(searchField);
        rightPanel.add(searchPanel, BorderLayout.NORTH);

        // Right-Below (Table)
        Vector<String> columns = new Vector<>();
        columns.add("ID"); columns.add("Name"); columns.add("Course"); columns.add("Phone");
        tableModel = new DefaultTableModel(columns, 0);
        table = new JTable(tableModel);
        rightPanel.add(new JScrollPane(table), BorderLayout.CENTER);
        
        frame.add(rightPanel, BorderLayout.CENTER);

        // ==========================================
        // 3. EVENT LISTENERS
        // ==========================================
        
        // Load Initial Data
        loadTableData("");

        // A. Table Click Listener (ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Table မႃးသႂ်ႇၼႂ်း Form)
        table.getSelectionModel().addListSelectionListener(e -> {
            int row = table.getSelectedRow();
            if (row >= 0) {
                idField.setText(tableModel.getValueAt(row, 0).toString());
                nameField.setText(tableModel.getValueAt(row, 1).toString());
                courseField.setText(tableModel.getValueAt(row, 2).toString());
                phoneField.setText(tableModel.getValueAt(row, 3).toString());
            }
        });

        // B. Search Listener (Real-time Filter)
        searchField.getDocument().addDocumentListener(new DocumentListener() {
            public void insertUpdate(DocumentEvent e) { loadTableData(searchField.getText().trim()); }
            public void removeUpdate(DocumentEvent e) { loadTableData(searchField.getText().trim()); }
            public void changedUpdate(DocumentEvent e) { loadTableData(searchField.getText().trim()); }
        });

        // C. Add Button
        addBtn.addActionListener(e -> {
            if (DatabaseHelper.addStudent(nameField.getText(), courseField.getText(), phoneField.getText())) {
                clearForm();
                loadTableData(searchField.getText()); // Refresh Table
            }
        });

        // D. Update Button
        updateBtn.addActionListener(e -> {
            if (idField.getText().isEmpty()) return;
            int id = Integer.parseInt(idField.getText());
            if (DatabaseHelper.updateStudent(id, nameField.getText(), courseField.getText(), phoneField.getText())) {
                clearForm();
                loadTableData(searchField.getText());
            }
        });

        // E. Delete Button
        deleteBtn.addActionListener(e -> {
            if (idField.getText().isEmpty()) return;
            int id = Integer.parseInt(idField.getText());
            
            int confirm = JOptionPane.showConfirmDialog(frame, "Delete this student?", "Confirm", JOptionPane.YES_NO_OPTION);
            if (confirm == JOptionPane.YES_OPTION) {
                if (DatabaseHelper.deleteStudent(id)) {
                    clearForm();
                    loadTableData(searchField.getText());
                }
            }
        });

        frame.setVisible(true);
    }

    // ၸၼ်ၶေႃႈမုၼ်း လႄႈ ၼႄၼႂ်း JTable
    private void loadTableData(String keyword) {
        tableModel.setRowCount(0); // Clear old data
        Vector<Vector<Object>> data = DatabaseHelper.getStudents(keyword);
        for (Vector<Object> row : data) {
            tableModel.addRow(row);
        }
    }

    // ၽဵဝ်ႈၶေႃႈမုၼ်း ၼႂ်း Form (TextFields)
    private void clearForm() {
        idField.setText("");
        nameField.setText("");
        courseField.setText("");
        phoneField.setText("");
        table.clearSelection();
    }
}

```

### ၶေႃႈမၢႆတွင်း (Key Takeaways) လိုၼ်းသုတ်း

1. **လွင်ႈၸႂ်ႉ `Vector`:** ၼႂ်း Java Swing (JTable), လွင်ႈၸႂ်ႉ `Vector` ၼႆႉ မၼ်းငၢမ်ႇမႅၼ်ႈ လႄႈ ႁဵတ်းၵၢၼ်လႆႈငၢႆႈသေ သႂ်ႇၶေႃႈမုၼ်း Array `Object[][]` လၢႆလၢႆၶႃႈ။
2. **UI State Management:** ပေႃးႁဝ်းၼဵၵ်း Table Row, ႁဝ်းဢဝ် `id` မႃးသႂ်ႇၼႂ်း `idField` (ဢၼ်လွၵ်ႉဝႆႉ ဢမ်ႇပၼ်မႄး)။ ၼႆႉမၼ်းႁဵတ်းႁႂ်ႈ App ႁဝ်း ႁူႉဝႃႈ ႁဝ်းတိုၵ်ႉလိူၵ်ႈ Student ၵေႃႉလႂ်ဝႆႉ တွၼ်ႈတႃႇ Update လႄႈ Delete ၶႃႈ!
3. **Real-time Refresh:** ၵူႈၵမ်း ဢၼ်ႁဝ်း Add, Update, ဢမ်ႇၼၼ် Delete ယဝ်ႉ၊ ႁဝ်းတေႁွင်ႉ `loadTableData()` တႃႇသေႇ တွၼ်ႈတႃႇႁႂ်ႈ Table ႁဝ်း တူင်ႉၼိုင် လႄႈ လႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်းမႂ်ႇ ၵမ်းလဵဝ်ၶႃႈ။