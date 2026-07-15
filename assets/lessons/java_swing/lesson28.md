## 28: Project: Student Roster Data Grid

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 4 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းမႃး လွင်ႈၸတ်းၵၢၼ်ၶေႃႈမုၼ်း လၢႆလၢႆလွင်ႈ — တႄႇဢဝ် `JComboBox` (Dropdown), `JRadioButton` (လိူၵ်ႈလႆႈဢၼ်လဵဝ်), တေႃႇထိုင် `JTable` လႄႈ `DefaultTableModel` (ၶူတ်ႉမၢႆၶေႃႈမုၼ်း) ၸိူဝ်းၼၼ်ႉယဝ်ႉၶႃႈ။

မိူဝ်ႈၼႆႉ ႁဝ်းတေဢဝ်ၶေႃႈမုၼ်း တင်းသဵင်ႈၼႆႉ မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **Student Roster Data Grid** ဢၼ်ၸၢင်ႈ ထႅမ်သႂ်ႇ လႄႈ မွတ်ႇပႅတ်ႈ လႆႈတႄႉတႄႉၼၼ်ႉၶႃႈ။ Project ၼႆႉ တေပဵၼ်ငဝ်ႈၶၢမ်ႇ ဢၼ်ၶႅမ်ႉလႅပ်ႈ တွၼ်ႈတႃႇ Application သိုပ်ႇၼႃႈၶႃႈ။

### ပိူင်သၢင်ႈ Project (Architecture)

ႁဝ်းတေၸႅၵ်ႇ Layout ပဵၼ် 2 တွၼ်ႈ (ၸႂ်ႉ `BorderLayout`):

* **WEST (Input Form):** ဢွင်ႈတီႈ တွၼ်ႈတႃႇပေႃႉသႂ်ႇ ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း (ၸိုဝ်ႈ, ပိူင်ၵူၼ်း, သၢႆႁဵၼ်း) လႄႈ Button တွၼ်ႈတႃႇ "Add" လႄႈ "Delete"။
* **CENTER (Data Grid):** ဢွင်ႈတီႈ `JTable` ဢၼ်မီး `JScrollPane` တွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းတင်းသဵင်ႈ။

---

### Code တႃႇ Project (TMK Student Roster)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ Code ၼႆႉ တေလႆႈႁၼ် လွင်ႈဢဝ် Component လၢႆလၢႆမဵဝ်း မႃးႁဵတ်းၵၢၼ်ႁူမ်ႈၵၼ် ၸွမ်းလူၺ်ႈ Action လဵဝ်ၶႃႈ။

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class StudentRosterProject {
    public static void main(String[] args) {
        // 1. ၶူင်သၢင်ႈ Main Frame
        JFrame frame = new JFrame("Thung Mao Kham (ထုင်ႉမၢဝ်းၶမ်း) - Student Roster");
        frame.setSize(800, 450);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(15, 15));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        // ==========================================
        // 2. INPUT FORM PANEL (WEST)
        // ==========================================
        JPanel formPanel = new JPanel();
        formPanel.setLayout(new BoxLayout(formPanel, BoxLayout.Y_AXIS));
        formPanel.setPreferredSize(new Dimension(250, 0));
        formPanel.setBorder(BorderFactory.createTitledBorder("Student Registration"));

        // Name Input
        formPanel.add(new JLabel("Full Name:"));
        JTextField nameField = new JTextField();
        nameField.setMaximumSize(new Dimension(Integer.MAX_VALUE, 30));
        formPanel.add(nameField);
        formPanel.add(Box.createVerticalStrut(15));

        // Gender Input (Radio Buttons)
        formPanel.add(new JLabel("Gender:"));
        JRadioButton maleRadio = new JRadioButton("Male");
        JRadioButton femaleRadio = new JRadioButton("Female");
        maleRadio.setSelected(true); // Default

        ButtonGroup genderGroup = new ButtonGroup();
        genderGroup.add(maleRadio);
        genderGroup.add(femaleRadio);

        JPanel genderPanel = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
        genderPanel.add(maleRadio);
        genderPanel.add(femaleRadio);
        formPanel.add(genderPanel);
        formPanel.add(Box.createVerticalStrut(15));

        // Course Input (JComboBox)
        formPanel.add(new JLabel("Course:"));
        String[] courses = {"Python in Shan", "Flutter Basics", "Java Swing", "C# .NET"};
        JComboBox<String> courseCombo = new JComboBox<>(courses);
        courseCombo.setMaximumSize(new Dimension(Integer.MAX_VALUE, 30));
        formPanel.add(courseCombo);
        formPanel.add(Box.createVerticalStrut(25));

        // Action Buttons
        JButton addBtn = new JButton("Add Student");
        JButton deleteBtn = new JButton("Delete Selected");
        deleteBtn.setForeground(Color.RED);

        formPanel.add(addBtn);
        formPanel.add(Box.createVerticalStrut(10));
        formPanel.add(deleteBtn);

        // ==========================================
        // 3. DATA GRID PANEL (CENTER)
        // ==========================================
        String[] columns = {"ID", "Name", "Gender", "Course"};
        DefaultTableModel model = new DefaultTableModel(columns, 0);
        JTable table = new JTable(model);
        
        // ႁၢင်ႈလီ UI ၶွင် Table
        table.setRowHeight(25);
        table.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        table.setDefaultEditor(Object.class, null); // ႁၢမ်ႈဢမ်ႇႁႂ်ႈ Edit ၼႂ်းလွၵ်းၵမ်းသိုဝ်ႈ

        JScrollPane scrollPane = new JScrollPane(table);

        // ==========================================
        // 4. ADD ACTIONS (လွင်ႈတူင်ႉၼိုင်)
        // ==========================================
        
        // ထႅမ်သႂ်ႇ လုၵ်ႈႁဵၼ်း (Add)
        addBtn.addActionListener(e -> {
            String name = nameField.getText().trim();
            if (name.isEmpty()) {
                JOptionPane.showMessageDialog(frame, "Please enter the student's name.");
                return;
            }

            // ဢၢၼ်ႇဢဝ် Gender
            String gender = maleRadio.isSelected() ? "Male" : "Female";
            
            // ဢၢၼ်ႇဢဝ် Course
            String selectedCourse = (String) courseCombo.getSelectedItem();

            // ႁႃ ID လႄႈ သႂ်ႇၼႂ်း Table
            int nextId = model.getRowCount() + 1;
            model.addRow(new Object[]{"STU-" + String.format("%03d", nextId), name, gender, selectedCourse});

            // မွတ်ႇပႅတ်ႈ Form တႃႇႁပ်ႉၵေႃႉမႂ်ႇ
            nameField.setText("");
            maleRadio.setSelected(true);
            courseCombo.setSelectedIndex(0);
            nameField.requestFocus();
        });

        // မွတ်ႇပႅတ်ႈ လုၵ်ႈႁဵၼ်း (Delete)
        deleteBtn.addActionListener(e -> {
            int selectedRow = table.getSelectedRow();
            if (selectedRow == -1) {
                JOptionPane.showMessageDialog(frame, "Please select a student from the table to delete.");
                return;
            }
            
            int confirm = JOptionPane.showConfirmDialog(frame, 
                "Are you sure you want to delete this student?", 
                "Confirm Delete", 
                JOptionPane.YES_NO_OPTION);
                
            if (confirm == JOptionPane.YES_OPTION) {
                model.removeRow(selectedRow);
            }
        });

        // ==========================================
        // 5. ဢဝ် Panels သႂ်ႇၼႂ်း Frame လႄႈ ၼႄ Window
        // ==========================================
        frame.add(formPanel, BorderLayout.WEST);
        frame.add(scrollPane, BorderLayout.CENTER);
        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ (Key Takeaways)

1. **လွင်ႈၸႂ်ႉ `BoxLayout` တီႈ Form:** ႁဝ်းဢဝ် `BoxLayout.Y_AXIS` မႃးၶပ်ႉ Lable လႄႈ TextField ႁႂ်ႈလူင်းမႃးသိုဝ်ႈသိုဝ်ႈ သေ ၸႂ်ႉ `Box.createVerticalStrut()` တွၼ်ႈတႃႇႁဵတ်း ၶၢင်ႈပဝ်ႇ (Spacing) ၼႂ်းၵႄႈမၼ်းလႆႈ ႁၢင်ႈလီၶႃႈ။
2. **လွင်ႈႁပ်ႉဢဝ် ၶေႃႈမုၼ်းလၢႆလၢႆမဵဝ်း:** ၼႂ်း Action ၶွင် `addBtn` ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်လၢႆး ဢၢၼ်ႇဢဝ်လိၵ်ႈ (`getText`), ဢၢၼ်ႇဢဝ် Radio (`isSelected`), လႄႈ ဢၢၼ်ႇဢဝ် ComboBox (`getSelectedItem`) ႁူမ်ႈၵၼ် ၼႂ်းတီႈလဵဝ်ၶႃႈ။
3. **String.format("%03d", nextId):** ၼႆႉပဵၼ် Trick လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈ မၢႆ `1` ႁႂ်ႈပဵၼ် `"001"` တွၼ်ႈတႃႇႁႂ်ႈ Student ID ႁဝ်းႁၢင်ႈလီၶႃႈ။

---