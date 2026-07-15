## 25: Introduction to Data Grids (JTable)

ၼႂ်း Application ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Student Management System ၼၼ်ႉ)၊ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း 100 ၵေႃႉ မႃးၼႄၼႂ်း `JList` လႆႈလီလီၶႃႈ၊ 
ယွၼ်ႉဝႃႈ လုၵ်ႈႁဵၼ်းၼိုင်ႈၵေႃႉ မီးၶေႃႈမုၼ်းလၢႆလၢႆယိူင်ႈ (ပိူင်ယၢင်ႇ: ၸိုဝ်ႈ, ဢႃယု, လိူၼ်/ပီ, ၸၼ်ႉႁဵၼ်း)။
တွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်းဢၼ်ပဵၼ် လွၵ်းၶူတ်ႉမၢႆ (Table) ဢၼ်မီး ထႅဝ် (Rows) လႄႈ ၵိင်ႇ (Columns) ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`JTable`** ၶႃႈ။ 
မၼ်းပဵၼ် Component ဢၼ်ႁႅင်းသုတ်း လႄႈ လမ်ႇလွင်ႈသုတ်း ၼႂ်း Java Swing ၶႃႈ။

### 1. JTable ပဵၼ်သင်?

**`JTable`** ၼႆႉ ပဵၼ် Component ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၼႄ Data Grid (ၶူတ်ႉမၢႆၶေႃႈမုၼ်း) မိူၼ်ၼင်ႇ ၼႂ်း Excel ဢမ်ႇၼၼ် Database ၶႃႈ။ မၼ်းၸၢင်ႈ:

* ၼႄၶေႃႈမုၼ်း လၢႆလၢႆ Columns လႆႈ။
* ႁဵတ်းႁႂ်ႈ User လၢၵ်ႈ (Scroll) တူၺ်းၶေႃႈမုၼ်းၼမ်ၼမ်လႆႈ။
* ႁဵတ်းႁႂ်ႈ User လိူၵ်ႈ (Select) ၶေႃႈမုၼ်း ပဵၼ်ထႅဝ် ဢမ်ႇၼၼ် ပဵၼ်လွၵ်းလႆႈ။

### 2. လၢႆးၶူင်သၢင်ႈ JTable ဢၼ်ငၢႆႈသုတ်း

တွၼ်ႈတႃႇၶူင်သၢင်ႈ `JTable` ဢၼ်မီးၶေႃႈမုၼ်းဝႆႉၸဵမ်ၸဝ်ႉ (Static Data) ၼၼ်ႉ ႁဝ်းလူဝ်ႇ Array 2 ဢၼ်ၶႃႈ:

1. **Column Names (`String[]`)**: Array တႃႇ ႁူဝ်ၶေႃႈ (ပိူင်ယၢင်ႇ: ID, Name, Grade)។
2. **Row Data (`Object[][]`)**: Array သွင်ၸၼ်ႉ (2D Array) တႃႇ ၶေႃႈမုၼ်း ၼႂ်းထႅဝ်ၵူႈဢၼ်။ ႁဝ်းၸႂ်ႉ `Object` ယွၼ်ႉဝႃႈ မၢင်လွၵ်းတေပဵၼ် မၢႆၼပ်ႉ (`int`)၊ မၢင်လွၵ်းတေပဵၼ် တူဝ်လိၵ်ႈ (`String`) ၶႃႈ။

```java
// 1. သႂ်ႇ ႁူဝ်ၶေႃႈ Columns
String[] columns = {"ID", "Name", "Score"};

// 2. သႂ်ႇ ၶေႃႈမုၼ်း တွၼ်ႈတႃႇ 3 ထႅဝ် (Rows)
Object[][] data = {
    {1, "Sai Mao", 85.5},
    {2, "Nang Kham", 92.0},
    {3, "Aung Aung", 78.0}
};

// 3. ၶူင်သၢင်ႈ JTable သေ ဢဝ် Data လႄႈ Columns သႂ်ႇပၼ်မၼ်း
JTable studentTable = new JTable(data, columns);

```

### 3. The Golden Rule ၶွင် JTable (လွင်ႈၸႂ်ႉ JScrollPane)

မိူၼ်ၵၼ်တင်း `JList` ဢၼ်ႁဝ်းလႆႈႁဵၼ်းၼႂ်း Lesson 23 ၶႃႈ၊ **ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် `JTable` ၵႂႃႇသႂ်ႇၼႂ်း `JFrame` ၵမ်းသိုဝ်ႈ!**

ပေႃးႁဝ်းဢဝ်သႂ်ႇၵမ်းသိုဝ်ႈ:

1. ႁူဝ်ၶေႃႈ (Column Headers) မၼ်းတေဢမ်ႇဢွၵ်ႇမႃး (တေႁၢႆၵႂႃႇ)!
2. မၼ်းတေဢမ်ႇမီး Scrollbar ပေႃးၶေႃႈမုၼ်းၼမ်။

ယွၼ်ႉၼၼ်လႄႈ ႁဝ်းတေလႆႈဢဝ် `JTable` ၵႂႃႇသႂ်ႇၼႂ်း **`JScrollPane`** တႃႇသေႇၶႃႈ:

```java
JTable studentTable = new JTable(data, columns);

// ဢဝ် Table သႂ်ႇၼႂ်း ScrollPane (ႁူဝ်ၶေႃႈမၼ်းတေဢွၵ်ႇမႃးႁင်းၵူၺ်း တီႈၼႆႈၶႃႈ)
JScrollPane scrollPane = new JScrollPane(studentTable);

frame.add(scrollPane);

```

---

### Code တူဝ်ယၢင်ႇ (Basic Data Grid)

ၸၢမ်းတူၺ်း Code ဢၼ်ၶူင်သၢင်ႈ Table သေ မႄးၸၢမ်းတူၺ်း တၢင်းသုင်ထႅဝ်လိၵ်ႈ (Row Height) လႄႈ ၽွၼ်ႉ တွၼ်ႈတႃႇႁႂ်ႈမၼ်း ဢၢၼ်ႇငၢႆႈလႄႈ ႁၢင်ႈလီၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class BasicJTableDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Grade Book (Static Table)");
        frame.setSize(450, 250);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // 1. ႁူဝ်ၶေႃႈ Columns
        String[] columnNames = {"Student ID", "Full Name", "Final Grade"};

        // 2. ၶေႃႈမုၼ်း တွၼ်ႈတႃႇ ထႅဝ်လၢႆလၢႆဢၼ် (2D Object Array)
        Object[][] rowData = {
            {"S-1001", "Sai Mao", "A"},
            {"S-1002", "Nang Kham", "A+"},
            {"S-1003", "Aung Aung", "B"},
            {"S-1004", "Kyaw Kyaw", "C"},
            {"S-1005", "Nang Mwe", "A-"}
        };

        // 3. ၶူင်သၢင်ႈ JTable 
        JTable table = new JTable(rowData, columnNames);

        // 4. မႄး ၼႃႈတႃ UI ၶွင် Table
        table.setFont(new Font("Arial", Font.PLAIN, 14)); // မႄး Font ၶေႃႈမုၼ်း
        table.setRowHeight(25); // ႁဵတ်းႁႂ်ႈ ထႅဝ်မၼ်းယႂ်ႇဢိတ်းၼိုင်ႈ (Default မၼ်းလဵၵ်ႉၼႃႇ)
        
        // မႄး Font ၶွင် ႁူဝ်ၶေႃႈ (Table Header)
        table.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        table.getTableHeader().setBackground(new Color(230, 230, 230)); // သီထႅဝ်ႁူဝ်

        // ႁၢမ်ႈဢမ်ႇႁႂ်ႈ User လိူၵ်ႈလႆႈ လၢႆလၢႆထႅဝ် ႁူမ်ႈၵၼ်
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        // 5. ***လမ်ႇလွင်ႈ***: ဢဝ် Table သႂ်ႇၼႂ်း JScrollPane
        JScrollPane scrollPane = new JScrollPane(table);
        
        // 6. ဢဝ် ScrollPane သႂ်ႇၼႂ်း Frame
        frame.add(scrollPane, BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

### လွင်ႈယုပ်ႈယွမ်း လွင်ႈၸႂ်ႉ JTable ဢၼ်မီးၶေႃႈမုၼ်းပိူင်ႈတၢႆ (Limitations of Static Tables)

လၢႆးၶူင်သၢင်ႈ `JTable(data, columns)` ဢၼ်ႁဝ်းႁဵၼ်းၵႂႃႇၼႆႉ မၼ်းငၢႆႈလႄႈ လီတွၼ်ႈတႃႇ ၼႄၶေႃႈမုၼ်း ဢၼ်တေဢမ်ႇလႅၵ်ႈလၢႆႈယဝ်ႉ (Read-only data)။

ၵူၺ်းၵႃႈ ပေႃးႁဝ်းၶႂ်ႈ:

* ထႅမ်သႂ်ႇ (Add) ထႅဝ်မႂ်ႇ
* မွတ်ႇပႅတ်ႈ (Delete) ထႅဝ်ၵဝ်ႇ
* မႄး (Edit) ၶေႃႈမုၼ်း

လၢႆးၼႆႉတေဢမ်ႇႁဵတ်းလႆႈၶႃႈ ယွၼ်ႉဝႃႈ Array ပိူင်သွင်ၸၼ်ႉ (2D Array) ၼၼ်ႉ မၼ်းမီးတင်းယႂ်ႇ ပိူင်ႈတၢႆ (Fixed size) ဝႆႉၶၢႈ။ 
တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`DefaultTableModel`** မႃးၸွႆႈ ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 26 လႄႈ 27 ၶႃႈ!