## 26: Separating Data from UI (DefaultTableModel)

ၼႂ်း Lesson 25 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ယဝ်ႉဝႃႈ လွင်ႈၶူင်သၢင်ႈ `JTable` ၸွမ်း Array ပိူင်သွင်ၸၼ်ႉ (2D Array) ၼၼ်ႉ မၼ်းငၢႆႈသေတႃႉ၊ 
မၼ်းဢမ်ႇၸၢင်ႈ ထႅမ်သႂ်ႇ (Add), မွတ်ႇပႅတ်ႈ (Delete), ဢမ်ႇၼၼ် မႄး (Edit) ထႅဝ် (Rows) ၶေႃႈမုၼ်းလႆႈ ၽွင်းတိုၵ်ႉ Run Program ယူႇၶႃႈ။

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Table ႁဝ်း မီးသၢႆၸႂ် လႄႈ လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းလႆႈတႃႇသေႇ (Dynamic) ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`DefaultTableModel`** ၶႃႈ။

### 1. လွင်ႈၸႅၵ်ႇၽၢတ်ႇ "View" လႄႈ "Model" (MVC Concept)

မိူၼ်ၼင်ႇ `JList` ဢၼ်ႁဝ်းႁဵၼ်းၼႂ်း Lesson 23 ၼၼ်ႉၶႃႈ၊ တွၼ်ႈတႃႇ `JTable` ႁဝ်းတေလႆႈၸႅၵ်ႇၼႃႈၵၢၼ်ပဵၼ် 2 တွၼ်ႈ:

1. **The View (`JTable`):** မၼ်းပဵၼ် "ၼႃႈတႃ UI" ၵူၺ်း။ ပုၼ်ႈၽွၼ်းမၼ်းတႄႉ ပဵၼ်တွၼ်ႈတႃႇ တႅမ်ႈႁၢင်ႈ (Draw) လွၵ်း လႄႈ ၶွပ်ႇ Table ႁႂ်ႈႁၢင်ႈလီ ၼိူဝ်ၼႃႈၸေႃး။ မၼ်းဢမ်ႇသိမ်းၶေႃႈမုၼ်းၶႃႈ။
2. **The Model (`DefaultTableModel`):** မၼ်းပဵၼ် "ဢွင်ႈတီႈသိမ်းၶေႃႈမုၼ်း (Data Base)" ၶႃႈ။ ပုၼ်ႈၽွၼ်းမၼ်းတႄႉ ပဵၼ်တွၼ်ႈတႃႇ ၵုမ်းထိင်း ထႅဝ် (Rows) လႄႈ ၵိင်ႇ (Columns)။ ပေႃးႁဝ်းၶႂ်ႈ ထႅမ်, မွတ်ႇ, မႄး ၶေႃႈမုၼ်း ႁဝ်းတေလႆႈၵႂႃႇသင်ႇတီႈ Model ၼႆႉၶႃႈ။ ယဝ်ႉၵွႆး Model တေၵႂႃႇလၢတ်ႈ `JTable` ႁႂ်ႈမၼ်း Update ၼႃႈတႃမၼ်းႁင်းၵူၺ်း။

### 2. လၢႆးၶူင်သၢင်ႈ လႄႈ ဢဝ်ၵိုၵ်းၸပ်းၵၼ် (Binding)

```java
// 1. ၶူင်သၢင်ႈ Array တွၼ်ႈတႃႇ ႁူဝ်ၶေႃႈ Columns
String[] columns = {"ID", "Name", "Course"};

// 2. ၶူင်သၢင်ႈ Model သေ သႂ်ႇ Columns ပၼ်မၼ်း (0 ၼႆႉပွင်ႇဝႃႈ ပႆႇမီးၶေႃႈမုၼ်းၸဵမ်ၸဝ်ႉ)
DefaultTableModel model = new DefaultTableModel(columns, 0);

// 3. ၶူင်သၢင်ႈ JTable လႄႈ ဢဝ် Model သႂ်ႇပၼ်မၼ်း (Binding)
JTable table = new JTable(model);

```

### 3. လၢႆးထႅမ်သႂ်ႇ ၶေႃႈမုၼ်းမႂ်ႇ (Adding Rows)

တွၼ်ႈတႃႇထႅမ်သႂ်ႇ ထႅဝ်ၶေႃႈမုၼ်းမႂ်ႇ ၼႂ်း Table၊ ႁဝ်းတေၸႂ်ႉ Method `addRow()` ၶွင် `DefaultTableModel` သေ
သႂ်ႇ **`Object[]`** Array လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ ဢၼ်မီးၶေႃႈမုၼ်း ၸွမ်းၶပ်ႉမၢႆ Columns ၶႃႈ:

```java
// ထႅမ်သႂ်ႇ ထႅဝ်မႂ်ႇ (Row) ၼႂ်း Model
model.addRow(new Object[]{101, "Sai Mao", "Java Swing"});
model.addRow(new Object[]{102, "Aung Aung", "Flutter"});

```

---

### Code တူဝ်ယၢင်ႇ (Dynamic Table Data)

ၸၢမ်းတူၺ်း Code ဢၼ်ၶူင်သၢင်ႈ `JTable` တင်း `DefaultTableModel` သေ မီး Button ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ ထႅမ်သႂ်ႇ ၶေႃႈမုၼ်းမႂ်ႇ ၶဝ်ႈၵႂႃႇၼႂ်း Table ၽွင်းတိုၵ်ႉ Run ယူႇၼၼ်ႉၶႃႈ:

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class TableModelDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Dynamic Data Table");
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // 1. ၶူင်သၢင်ႈ Model လႄႈ ႁူဝ်ၶေႃႈ Columns
        String[] columns = {"Task ID", "Task Name", "Status"};
        DefaultTableModel model = new DefaultTableModel(columns, 0);

        // 2. သႂ်ႇၶေႃႈမုၼ်းၸဵမ်ၸဝ်ႉ (Initial Data) ဢိတ်းၼိုင်ႈ
        model.addRow(new Object[]{"T-01", "Design UI Layout", "Done"});
        model.addRow(new Object[]{"T-02", "Setup Database", "In Progress"});

        // 3. ၶူင်သၢင်ႈ JTable လႄႈ ဢဝ် Model သႂ်ႇပၼ်မၼ်း
        JTable table = new JTable(model);
        table.setFont(new Font("Arial", Font.PLAIN, 14));
        table.setRowHeight(25);
        table.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));

        // 4. ဢဝ် Table သႂ်ႇၼႂ်း JScrollPane (The Golden Rule)
        JScrollPane scrollPane = new JScrollPane(table);
        frame.add(scrollPane, BorderLayout.CENTER);

        // 5. ၶူင်သၢင်ႈ Button တွၼ်ႈတႃႇ ထႅမ်သႂ်ႇ ထႅဝ်မႂ်ႇ (Add Row)
        JButton addBtn = new JButton("Add New Task");
        frame.add(addBtn, BorderLayout.SOUTH);

        // သႂ်ႇ Action ပၼ် Button
        // မၢႆတွင်း ႁဝ်းဢမ်ႇၸၢင်ႈ ထႅမ်သႂ်ႇ တီႈ table ၵမ်းသိုဝ်ႈ၊ ႁဝ်းတေလႆႈ ထႅမ်သႂ်ႇတီႈ model
        addBtn.addActionListener(e -> {
            // ႁႃမၢႆၼပ်ႉ (Task Count) တွၼ်ႈတႃႇႁဵတ်း ID မႂ်ႇ
            int nextId = model.getRowCount() + 1;
            
            // ထႅမ်သႂ်ႇ ထႅဝ်မႂ်ႇ (UI ၶွင် Table တေလႅၵ်ႈလၢႆႈ ႁင်းၵူၺ်းၵမ်းလဵဝ်)
            model.addRow(new Object[]{"T-0" + nextId, "New Sample Task", "Pending"});
        });

        frame.setVisible(true);
    }
}

```

### Methods ဢၼ်လမ်ႇလွင်ႈ ၶွင် DefaultTableModel

| Method | Function in Shan |
| --- | --- |
| `addRow(Object[] rowData)` | ထႅမ်သႂ်ႇ ထႅဝ်ၶေႃႈမုၼ်းမႂ်ႇ ၵႂႃႇၽၢႆႇတႂ်ႈသုတ်း |
| `getRowCount()` | ဢၢၼ်ႇတူၺ်းဝႃႈ ယၢမ်းလဵဝ်မီးလၢႆထႅဝ်ယဝ်ႉ (မၢႆၼပ်ႉ) |
| `removeRow(int row)` | မွတ်ႇပႅတ်ႈ ထႅဝ်ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ မၢႆၶပ်ႉ ဢၼ်လႆႈလိူၵ်ႈဝႆႉ |
| `getValueAt(int row, int col)` | ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း ဢၼ်မီးၼႂ်းလွၵ်း ဢၼ်ႁဝ်းမၵ်းမၼ်ႈ Row လႄႈ Column ဝႆႉၼၼ်ႉ |
| `setValueAt(Object value, int row, int col)` | မႄးလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်း ၼႂ်းလွၵ်း (Cell) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ |