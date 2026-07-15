## 27: Adding, Editing, and Deleting Table Rows

ၼႂ်း Lesson 26 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉလၢႆးၸႂ်ႉ `DefaultTableModel` တွၼ်ႈတႃႇထႅမ်သႂ်ႇ ထႅဝ်ၶေႃႈမုၼ်း (Row) ဢိတ်းဢွတ်းယဝ်ႉၶႃႈ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈမၼ်းတဵမ်ထူၼ်ႈ — ၼၼ်ႉပဵၼ် လွင်ႈဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Form (လွၵ်းပေႃႉလိၵ်ႈ) မႃးထႅမ်သႂ်ႇ (Add), လွင်ႈမႄး (Edit) ၶေႃႈမုၼ်းၼႂ်းလွၵ်း, လႄႈ လွင်ႈမွတ်ႇပႅတ်ႈ (Delete) ထႅဝ်ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉၼၼ်ႉၶႃႈ။
လွင်ႈၸိူဝ်းၼႆႉ ပဵၼ်ပိုၼ်ႉထၢၼ်လမ်ႇလွင်ႈသုတ်း ၶွင်ပိူင် **CRUD** (Create, Read, Update, Delete) ၼႂ်းလွင်ႈၶူင်သၢင်ႈ Application ယဝ်ႉၶႃႈ။

### 1. လွင်ႈႁႃ ထႅဝ်ဢၼ်လႆႈလိူၵ်ႈဝႆႉ (Getting the Selected Row)

တွၼ်ႈတႃႇတေ မွတ်ႇ ဢမ်ႇၼၼ် မႄး ၶေႃႈမုၼ်းၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈႁူႉဢွၼ်တၢင်းဝႃႈ User တိုၵ်ႉၼဵၵ်းလိူၵ်ႈဝႆႉ (Select) ထႅဝ်လႂ်ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ Method **`getSelectedRow()`** ၶွင် `JTable` ၶႃႈ:

```java
int selectedRow = table.getSelectedRow();

// ပေႃး user ဢမ်ႇလႆႈလိူၵ်ႈသင်ဝႆႉ, မၼ်းတေသူင်ႇၶိုၼ်းမႃး -1 ၶႃႈ။
if (selectedRow == -1) {
    System.out.println("Please select a row first!");
}

```

### 2. လွင်ႈမွတ်ႇပႅတ်ႈ (Deleting a Row)

ပေႃးႁဝ်းႁူႉ မၢႆၶပ်ႉထႅဝ် (Row Index) ဢၼ်လိူၵ်ႈဝႆႉယဝ်ႉၼၼ်ႉ၊ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ **Model** မွတ်ႇပႅတ်ႈလႆႈ ငၢႆႈငၢႆႈၶႃႈ:

```java
// မွတ်ႇပႅတ်ႈ ထႅဝ်ဢၼ် User လိူၵ်ႈဝႆႉ
model.removeRow(selectedRow); 

```

### 3. လွင်ႈမႄးလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်း (Editing a Cell)

တွၼ်ႈတႃႇမႄးၶေႃႈမုၼ်း ၼႂ်းလွၵ်းလႂ်လွၵ်းၼၼ်ႉ (Cell)၊ ႁဝ်းတေၸႂ်ႉ **`setValueAt()`** ၶွင် Model ၶႃႈ။ 
ႁဝ်းတေလႆႈသႂ်ႇပၼ် ၶေႃႈမုၼ်းမႂ်ႇ, မၢႆထႅဝ် (Row), လႄႈ မၢႆၵိင်ႇ (Column) ၶႃႈ။ *(မၢႆတွင်း: Index တႄႇတီႈ 0)*

```java
// လၢႆႈၶေႃႈမုၼ်း ၼႂ်းထႅဝ်ဢၼ်လိူၵ်ႈဝႆႉ၊ တီႈၵိင်ႇထူၼ်ႈ 2 (Column Index 1) ႁႂ်ႈပဵၼ် "Updated"
model.setValueAt("Updated", selectedRow, 1);

```

---

### Code တူဝ်ယၢင်ႇ (Full Interactive Table)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program ဢၼ်မီး Form ပေႃႉၸိုဝ်ႈ လႄႈ ၸၼ်ႉႁဵၼ်း သေ မီး Button 3 ဢၼ် တွၼ်ႈတႃႇ "Add", "Update Grade", လႄႈ "Delete" ၶႃႈ။

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class TableCRUDDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Student Record Manager");
        frame.setSize(550, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // ==========================================
        // 1. ၶူင်သၢင်ႈ Input Form (NORTH)
        // ==========================================
        JPanel inputPanel = new JPanel(new GridLayout(2, 2, 5, 5));
        JTextField nameField = new JTextField();
        JTextField gradeField = new JTextField();
        
        inputPanel.add(new JLabel("Student Name:"));
        inputPanel.add(nameField);
        inputPanel.add(new JLabel("Grade (e.g., A, B):"));
        inputPanel.add(gradeField);
        
        frame.add(inputPanel, BorderLayout.NORTH);

        // ==========================================
        // 2. ၶူင်သၢင်ႈ Table လႄႈ Model (CENTER)
        // ==========================================
        String[] columns = {"ID", "Name", "Grade"};
        DefaultTableModel model = new DefaultTableModel(columns, 0);
        JTable table = new JTable(model);
        
        // ႁၢမ်ႈဢမ်ႇႁႂ်ႈ User ပေႃႉလိၵ်ႈမႄးလႆႈ ၵမ်းသိုဝ်ႈတီႈၼႂ်းလွၵ်း (ႁႂ်ႈၸႂ်ႉ Button ၵူၺ်း)
        table.setDefaultEditor(Object.class, null); 
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        JScrollPane scrollPane = new JScrollPane(table);
        frame.add(scrollPane, BorderLayout.CENTER);

        // ==========================================
        // 3. ၶူင်သၢင်ႈ Action Buttons (SOUTH)
        // ==========================================
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 10, 0));
        JButton addBtn = new JButton("Add Record");
        JButton updateBtn = new JButton("Update Selected to 'A+'");
        JButton deleteBtn = new JButton("Delete Selected");
        
        deleteBtn.setBackground(new Color(200, 50, 50));
        deleteBtn.setForeground(Color.WHITE);

        buttonPanel.add(addBtn);
        buttonPanel.add(updateBtn);
        buttonPanel.add(deleteBtn);
        frame.add(buttonPanel, BorderLayout.SOUTH);

        // ==========================================
        // 4. သႂ်ႇ Actions ပၼ် Buttons
        // ==========================================

        // Action: Add (ထႅမ်သႂ်ႇ)
        addBtn.addActionListener(e -> {
            String name = nameField.getText().trim();
            String grade = gradeField.getText().trim();
            
            if (name.isEmpty() || grade.isEmpty()) {
                JOptionPane.showMessageDialog(frame, "Please fill in all fields!");
                return;
            }
            
            int nextId = model.getRowCount() + 1;
            model.addRow(new Object[]{nextId, name, grade}); // ထႅမ်သႂ်ႇၼႂ်း Model
            
            // မွတ်ႇပႅတ်ႈလိၵ်ႈၼႂ်းလွၵ်း တွၼ်ႈတႃႇႁပ်ႉဢၼ်မႂ်ႇ
            nameField.setText("");
            gradeField.setText("");
            nameField.requestFocus();
        });

        // Action: Update (မႄးၶေႃႈမုၼ်း)
        updateBtn.addActionListener(e -> {
            int selectedRow = table.getSelectedRow();
            if (selectedRow == -1) {
                JOptionPane.showMessageDialog(frame, "Please select a row to update!");
                return;
            }
            
            // လၢႆႈ Grade (Column ထူၼ်ႈ 3, Index = 2) ႁႂ်ႈပဵၼ် "A+"
            model.setValueAt("A+", selectedRow, 2); 
            JOptionPane.showMessageDialog(frame, "Record updated successfully!");
        });

        // Action: Delete (မွတ်ႇပႅတ်ႈ)
        deleteBtn.addActionListener(e -> {
            int selectedRow = table.getSelectedRow();
            if (selectedRow == -1) {
                JOptionPane.showMessageDialog(frame, "Please select a row to delete!");
                return;
            }
            
            // မွတ်ႇပႅတ်ႈ ထႅဝ်ဢၼ်လႆႈလိူၵ်ႈဝႆႉ ၼႂ်း Model
            model.removeRow(selectedRow); 
        });

        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း (Crucial Tip):

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code တွၼ်ႈတႃႇ Delete ဢမ်ႇၼၼ် Edit ၼၼ်ႉ၊ **တေလႆႈၵူတ်ႇတူၺ်း `if (selectedRow == -1)` တႃႇသေႇၶႃႈ**။ ပေႃးႁဝ်းဢမ်ႇၵူတ်ႇတူၺ်းသေ ၵႂႃႇသင်ႇ `model.removeRow(-1)` ၼၼ်ႉ၊ Program ႁဝ်းတေ Error လႄႈ Crash (လူႉ) ၵႂႃႇၵမ်းလဵဝ်ၶႃႈ။