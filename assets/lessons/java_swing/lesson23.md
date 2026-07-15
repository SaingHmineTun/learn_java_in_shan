## 23: Displaying Lists (JList & DefaultListModel)

ၼႂ်း Lesson 22 ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ `JComboBox` တွၼ်ႈတႃႇႁဵတ်း Dropdown ဢၼ်လပ်ႉၶေႃႈမုၼ်းဝႆႉ တေႃႇပေႃးၼဵၵ်းၸင်ႇၼႄၶႃႈ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းၶႂ်ႈၼႄ သဵၼ်ႈမၢႆတင်းသဵင်ႈ (ပိူင်ယၢင်ႇ: သဵၼ်ႈမၢႆၸိုဝ်ႈလုၵ်ႈႁဵၼ်း) ဝႆႉၼိူဝ်ၼႃႈၸေႃးတႃႇသေႇလူး? ႁဝ်းတေလႆႈၸႂ်ႉ **`JList`** ၶႃႈ။
လိူဝ်သေၼၼ်ႉ ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေလႆႈတႄႇႁဵၼ်း လွင်ႈၸႅၵ်ႇၽၢတ်ႇ "ၼႃႈတႃ (UI)" လႄႈ "ၶေႃႈမုၼ်း (Data)" — ဢၼ်ပဵၼ် ပိူင်ငဝ်ႈၶၢမ်ႇလမ်ႇလွင်ႈသုတ်း တႃႇၶူင်သၢင်ႈ Application ၸၼ်ႉသုင် ၼၼ်ႉယဝ်ႉ။

### 1. လွင်ႈၸႅၵ်ႇၽၢတ်ႇ JList လႄႈ DefaultListModel
ၼႂ်း Java Swing၊ Component ဢၼ်ယႂ်ႇယႂ်ႇ မိူၼ်ၼင်ႇ List လႄႈ Table ၼၼ်ႉ မၼ်းဢမ်ႇသိမ်းၶေႃႈမုၼ်း ႁင်းၵူၺ်းမၼ်းၶႃႈ။ ႁဝ်းတေလႆႈၸႅၵ်ႇမၼ်းပဵၼ် 2 တွၼ်ႈ:

1. **`JList` (The View):** မၼ်းပဵၼ် "ၼႃႈတႃ UI" ဢၼ်ၵူၺ်းမီးပုၼ်ႈၽွၼ်း ဢဝ်ၶေႃႈမုၼ်းမႃးၼႄပၼ် ႁႂ်ႈႁၢင်ႈလီၵူၺ်း။ **(မၼ်းဢမ်ႇမီး Method တႃႇ ထႅမ်သႂ်ႇ ဢမ်ႇၼၼ် မွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်းၶႃႈ)**။
2. **`DefaultListModel` (The Data Model):** မၼ်းပဵၼ် "ဢွင်ႈတီႈသိမ်းၶေႃႈမုၼ်း" တႄႉတႄႉမၼ်းၶႃႈ။ ပေႃးႁဝ်းၶႂ်ႈ ထႅမ်သႂ်ႇ (Add) ဢမ်ႇၼၼ် မွတ်ႇပႅတ်ႈ (Remove) ၶေႃႈမုၼ်းၼၼ်ႉ၊ ႁဝ်းတေလႆႈၵႂႃႇႁဵတ်းတီႈ Model ၼႆႉၶႃႈ။ (ပေႃး Model လႅၵ်ႈလၢႆႈ၊ `JList` တေဢဝ်ၶေႃႈမုၼ်းမႂ်ႇ မႃးၼႄပၼ်ႁင်းၵူၺ်း)။

### 2. လၢႆးၶူင်သၢင်ႈ လႄႈ ဢဝ်ၵိုၵ်းၸပ်းၵၼ် (Binding)

```java
// 1. ၶူင်သၢင်ႈ Model (ဢွင်ႈတီႈသိမ်း ၶေႃႈမုၼ်း) လႄႈ မၵ်းမၼ်ႈဝႃႈ တေသိမ်း String
DefaultListModel<String> listModel = new DefaultListModel<>();

// 2. ဢဝ်ၶေႃႈမုၼ်း ထႅမ်သႂ်ႇၼႂ်း Model
listModel.addElement("Sai Mao");
listModel.addElement("Aung Aung");

// 3. ၶူင်သၢင်ႈ JList လႄႈ ဢဝ် Model သႂ်ႇပၼ်မၼ်း ၽွင်းၶူင်သၢင်ႈ
JList<String> studentList = new JList<>(listModel);

// 4. ***လမ်ႇလွင်ႈ:*** ဢဝ် JList သႂ်ႇၼႂ်း JScrollPane တွၼ်ႈတႃႇႁႂ်ႈမီး တီႈလၢၵ်ႈ (Scrollbar)
JScrollPane scrollPane = new JScrollPane(studentList);
frame.add(scrollPane);

```

---

### Code တူဝ်ယၢင်ႇ (Interactive Student List)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program ဢၼ်ႁဝ်းၸၢင်ႈ ပေႃႉၸိုဝ်ႈလုၵ်ႈႁဵၼ်းသႂ်ႇၼႂ်း လွၵ်း `JTextField` သေ ၼဵၵ်း "Add" တွၼ်ႈတႃႇထႅမ်သႂ်ႇၼႂ်း သဵၼ်ႈမၢႆ လႄႈ 
ၸၢင်ႈလိူၵ်ႈၸိုဝ်ႈၼႂ်းသဵၼ်ႈမၢႆ သေ ၼဵၵ်း "Remove" တွၼ်ႈတႃႇမွတ်ႇပႅတ်ႈလႆႈ ၼၼ်ႉၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class JListDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Student List");
        frame.setSize(400, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // ==========================================
        // 1. ၶူင်သၢင်ႈ UI တွၼ်ႈတႃႇ ထႅမ်သႂ်ႇၸိုဝ်ႈ (NORTH)
        // ==========================================
        JPanel inputPanel = new JPanel(new BorderLayout(5, 5));
        JTextField nameField = new JTextField();
        JButton addButton = new JButton("Add Student");
        
        inputPanel.add(new JLabel("Student Name:"), BorderLayout.WEST);
        inputPanel.add(nameField, BorderLayout.CENTER);
        inputPanel.add(addButton, BorderLayout.EAST);
        
        frame.add(inputPanel, BorderLayout.NORTH);

        // ==========================================
        // 2. ၶူင်သၢင်ႈ Data Model လႄႈ JList (CENTER)
        // ==========================================
        DefaultListModel<String> studentModel = new DefaultListModel<>();
        studentModel.addElement("Sample Student 1"); // သႂ်ႇၶေႃႈမုၼ်း ပိူင်ယၢင်ႇ
        
        JList<String> studentList = new JList<>(studentModel);
        studentList.setFont(new Font("Arial", Font.PLAIN, 16));
        
        // ႁၢမ်ႈဢမ်ႇႁႂ်ႈ လိူၵ်ႈလႆႈလၢႆလၢႆဢၼ် (Single Selection)
        studentList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        
        JScrollPane scrollPane = new JScrollPane(studentList);
        frame.add(scrollPane, BorderLayout.CENTER);

        // ==========================================
        // 3. ၶူင်သၢင်ႈ Button တွၼ်ႈတႃႇ မွတ်ႇပႅတ်ႈ (SOUTH)
        // ==========================================
        JButton removeButton = new JButton("Remove Selected Student");
        removeButton.setBackground(new Color(200, 50, 50));
        removeButton.setForeground(Color.WHITE);
        removeButton.setOpaque(true);
        frame.add(removeButton, BorderLayout.SOUTH);

        // ==========================================
        // 4. သႂ်ႇ Actions (လွင်ႈတူင်ႉၼိုင်)
        // ==========================================
        
        // Action တွၼ်ႈတႃႇ ထႅမ်သႂ်ႇ (Add)
        addButton.addActionListener(e -> {
            String newName = nameField.getText().trim(); // trim() ဢဝ်ၶၢင်ႈပဝ်ႇၽၢႆႇၼႃႈ/လင် ဢွၵ်ႇ
            if (!newName.isEmpty()) {
                studentModel.addElement(newName); // *** ထႅမ်သႂ်ႇၼႂ်း Model ***
                nameField.setText(""); // မွတ်ႇပႅတ်ႈ လိၵ်ႈၼႂ်းလွၵ်း
                nameField.requestFocus();
            } else {
                JOptionPane.showMessageDialog(frame, "Please enter a name first!");
            }
        });

        // Action တွၼ်ႈတႃႇ မွတ်ႇပႅတ်ႈ (Remove)
        removeButton.addActionListener(e -> {
            // ၵူတ်ႇတူၺ်းဝႃႈ မီးလွင်ႈလိူၵ်ႈဝႆႉ (Selected) ယူႇႁိုဝ်
            int selectedIndex = studentList.getSelectedIndex();
            
            if (selectedIndex != -1) { // -1 ပွင်ႇဝႃႈ ဢမ်ႇလႆႈလိူၵ်ႈသင်
                studentModel.remove(selectedIndex); // *** မွတ်ႇပႅတ်ႈတီႈ Model ***
            } else {
                JOptionPane.showMessageDialog(frame, "Please select a student to remove!");
            }
        });

        frame.setVisible(true);
    }
}

```

### Methods ဢၼ်လမ်ႇလွင်ႈ

**Methods ၶွင် `DefaultListModel` (တွၼ်ႈတႃႇ ၶေႃႈမုၼ်း):**

| Method | Function in Shan |
| --- | --- |
| `addElement(String)` | ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ သႂ်ႇတၢင်းတႂ်ႈသုတ်း ၶွင်သဵၼ်ႈမၢႆ |
| `remove(int index)` | မွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ မၢႆၶပ်ႉ (Index) |
| `clear()` | မွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်း တင်းသဵင်ႈ |

**Methods ၶွင် `JList` (တွၼ်ႈတႃႇ UI လႄႈ လွင်ႈလိူၵ်ႈ):**

| Method | Function in Shan |
| --- | --- |
| `getSelectedValue()` | ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း (`String`) ဢၼ် User တိုၵ်ႉလိူၵ်ႈဝႆႉ |
| `getSelectedIndex()` | ဢၢၼ်ႇဢဝ် မၢႆၶပ်ႉ (`int`) ဢၼ်လိူၵ်ႈဝႆႉ (ပေႃးဢမ်ႇလိူၵ်ႈ တေလႆႈ `-1`) |