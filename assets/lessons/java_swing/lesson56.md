## 56: Deleting Records & Confirm Dialogs

ၼႂ်း Lesson ၸိူဝ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈသႂ်ႇ (Insert)၊ ဢၢၼ်ႇ (Read) လႄႈ မႄး (Update) ၶေႃႈမုၼ်း ၵႂႃႇယဝ်ႉၶႃႈ။ ယၢမ်းလဵဝ် တေမႃးထိုင် လွင်ႈလိုၼ်းသုတ်း ၶွင် CRUD — ၼၼ်ႉပဵၼ် လွင်ႈမွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်း ၸွမ်းလူၺ်ႈ Command **`DELETE`** ၶႃႈ!

ဢၼ်လမ်ႇလွင်ႈသုတ်း မိူဝ်ႈတေမွတ်ႇၶေႃႈမုၼ်းၼၼ်ႉ၊ ႁဝ်းဢမ်ႇထုၵ်ႇလီ မွတ်ႇပႅတ်ႈၵမ်းလဵဝ်ၶႃႈ။ ႁဝ်းထုၵ်ႇလီမီး ၽၵ်းတူလဵၵ်ႉလဵၵ်ႉ (Dialog) မႃးထၢမ် User ဢွၼ်တၢင်းဝႃႈ *"သူၸဝ်ႈ ၶႂ်ႈမွတ်ႇပႅတ်ႈ တႄႉတႄႉယဝ်ႉႁႃ?"* တွၼ်ႈတႃႇႁႄႉၵင်ႈ လွင်ႈၼဵၵ်းၽိတ်းၶႃႈ။

### 1. `JOptionPane.showConfirmDialog` ပဵၼ်သင်?

ၼႂ်း Java Swing ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `JOptionPane` တွၼ်ႈတႃႇ ၶူင်သၢင်ႈ ၽၵ်းတူထၢမ် ဢၼ်မီး Button "Yes" လႄႈ "No" လႆႈငၢႆႈငၢႆႈ ၶႃႈ:

```java
int response = JOptionPane.showConfirmDialog(
    frame, 
    "Are you sure you want to delete this student?", 
    "Confirm Delete", 
    JOptionPane.YES_NO_OPTION
);

if (response == JOptionPane.YES_OPTION) {
    // ပေႃး User ၼဵၵ်း Yes, ၸင်ႇၵႂႃႇသင်ႇ Database ႁႂ်ႈမွတ်ႇပႅတ်ႈ
}

```

### 2. Code SQL တွၼ်ႈတႃႇ DELETE

Code SQL တႃႇမွတ်ႇၶေႃႈမုၼ်း တေမိူၼ်ၼင်ႇ Lesson 50 ၶႃႈ။ ယဝ်ႉၵေႃႈ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ `PreparedStatement` တွၼ်ႈတႃႇ လွင်ႈလွတ်ႈၽေးၶႃႈ:

```sql
DELETE FROM students WHERE id = ?

```

**ယႃႇပေလိုမ်း `WHERE` လႃးလႃးၶႃႈ!** ပေႃးလိုမ်း၊ Database တေမွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်းတင်းသဵင်ႈ ၼႂ်း Table ၵမ်းလဵဝ်ၶႃႈ!

---

### Code တူဝ်ယၢင်ႇ (Safe Delete with Confirm Dialog)

ႁဝ်းမႃး ၶူင်သၢင်ႈ Window ဢၼ်မီး Button တႃႇမွတ်ႇၶေႃႈမုၼ်း ลႄႈ မီး Method တွၼ်ႈတႃႇ ၸတ်းၵၢၼ် ลွင်ႈထၢမ် Confirm ลႄႈ လွင်ႈသင်ႇ Database ၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteRecordDemo {
    private static final String URL = "jdbc:sqlite:school.db";

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("TMK Delete Record Demo");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 50));

        // ပွမ်ဝႃႈ ႁဝ်းလိူၵ်ႈလုၵ်ႈႁဵၼ်း ဢၼ်မီး ID = 1 ၼႂ်း JTable ဝႆႉ
        int selectedStudentId = 1; 

        JButton deleteBtn = new JButton("Delete Student (ID: 1)");
        deleteBtn.setFont(new Font("Arial", Font.BOLD, 14));
        deleteBtn.setBackground(new Color(220, 53, 69)); // သီလႅင်
        deleteBtn.setForeground(Color.WHITE);

        deleteBtn.addActionListener(e -> {
            
            // 1. ၼႄ Confirm Dialog ဢွၼ်တၢင်း
            int confirm = JOptionPane.showConfirmDialog(
                    frame,
                    "Are you sure you want to permanently delete Student ID " + selectedStudentId + "?",
                    "Confirm Deletion",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.WARNING_MESSAGE
            );

            // 2. ပေႃး User ၼဵၵ်း Yes (ဢမ်ႇၼၼ် OK)
            if (confirm == JOptionPane.YES_OPTION) {
                // ၵႂႃႇႁွင်ႉ Method တွၼ်ႈတႃႇ မွတ်ႇၼႂ်း Database
                deleteStudentFromDatabase(frame, selectedStudentId);
            } else {
                System.out.println("Deletion cancelled by user.");
            }
            
        });

        frame.add(deleteBtn);
        frame.setVisible(true);
    }

    // Method တွၼ်ႈတႃႇ သင်ႇ DELETE ၼႂ်း SQLite
    private static void deleteStudentFromDatabase(JFrame parentFrame, int id) {
        
        String sql = "DELETE FROM students WHERE id = ?";

        try (Connection conn = DriverManager.getConnection(URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // သႂ်ႇ ID တႅၼ်းတီႈ `?`
            pstmt.setInt(1, id);

            // သင်ႇႁဵတ်းၵၢၼ် လႄႈ ၵူတ်ႇတူၺ်း ၽွၼ်းလႆႈ
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                JOptionPane.showMessageDialog(parentFrame, "Student record deleted successfully!", "Success", JOptionPane.INFORMATION_MESSAGE);
            } else {
                JOptionPane.showMessageDialog(parentFrame, "Delete failed! No student found with ID: " + id, "Error", JOptionPane.ERROR_MESSAGE);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(parentFrame, "Database Error: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **UX Best Practices (လွင်ႈၸႂ်ႉတိုဝ်း ဢၼ်လီ):** ၵၢၼ် `DELETE` ၼႆႉ မၼ်းပဵၼ် "Destructive Action" (လွင်ႈႁဵတ်းႁႂ်ႈလူႉလႅဝ် လႄႈ ဢဝ်ၶိုၼ်းဢမ်ႇလႆႈ) ၶႃႈ။ ၽူႈတႅမ်ႈ Code ဢၼ်မီးၸၼ်ႉပရူဝ်ႇ တေလႆႈသႂ်ႇ Confirm Dialog ၵူႈၵမ်း လႄး ၵႆႉမၵ်းမၼ်ႈ Button ၸႂ်ႉတိုဝ်း **သီလႅင် (Red)** တွၼ်ႈတႃႇပၼ်ၾၢင်ႉ User ၶႃႈ။
2. **`executeUpdate()`:** မိူၼ်ၵၼ်တင်း `INSERT` လႄႈ `UPDATE` ၶႃႈ၊ `DELETE` ၵေႃႈၸႂ်ႉ `executeUpdate()` လႄႈ မၼ်းတေသူင်ႇၶိုၼ်း မၢႆၼပ်ႉ (int) ဢၼ်မွၵ်ႇဝႃႈ မွတ်ႇၵႂႃႇလႆႈ လၢႆထႅဝ် ၶႃႈ။