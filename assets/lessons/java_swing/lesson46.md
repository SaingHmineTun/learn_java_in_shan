## 46: Reading and Parsing CSV Files

ၼႂ်း Lesson 45 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈတႅမ်ႈၶေႃႈမုၼ်း သႂ်ႇၼႂ်းၽၢႆႇ `.txt` ၵႂႃႇယဝ်ႉၶႃႈ။ မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈဢၢၼ်ႇ (Read) လႄႈ လွင်ႈၸႅၵ်ႇဢၢၼ်ႇ (Parse) ၶေႃႈမုၼ်း ဢၼ်မီးသဵၼ်ႈမၢႆတႅတ်ႈၼႅတ်ႈ — ၼၼ်ႉပဵၼ်ၽၢႆႇ **CSV** သေ ဢဝ်မႃးၼႄၼႂ်း `JTable` ႁဝ်းၶႃႈ။

### 1. ၽၢႆႇ CSV ပဵၼ်သင်?

**CSV (Comma-Separated Values)** ၼႆႉ ပဵၼ်ၽၢႆႇလိၵ်ႈ (Text File) ထမ်ႇမတႃႇ ဢၼ်ဢဝ် ၶိူင်ႈမၢႆ ၸုတ်း (Comma `,`) မႃးၸႂ်ႉတွၼ်ႈတႃႇ ၶႅၼ်ႈၵၢင် ၶေႃႈမုၼ်း (Columns) ၵူႈဢၼ်ၶႃႈ။ 
မၼ်းၵႆႉလႆႈၸႂ်ႉၼမ်သုတ်း မိူဝ်ႈႁဝ်း Export ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Excel ဢမ်ႇၼၼ် Database ၶႃႈ။

ပိူင်ယၢင်ႇ ၶေႃႈမုၼ်းၼႂ်းၽၢႆႇ CSV:

> 001,Sai Mao,Java Swing
> 002,Kham,Flutter
> 003,Ying,Python

### 2. လွင်ႈဢၢၼ်ႇ လႄႈ လွင်ႈၸႅၵ်ႇၶေႃႈမုၼ်း (Reading and Parsing)

တွၼ်ႈတႃႇဢဝ် ၶေႃႈမုၼ်းၼႆႉ မႃးသႂ်ႇၼႂ်း Application ႁဝ်းလႆႈ၊ ႁဝ်းလူဝ်ႇလႆႈႁဵတ်း 2 ၸၼ်ႉၶႃႈ:

1. **Reading (လွင်ႈဢၢၼ်ႇ):** ၸႂ်ႉ `Files.readAllLines(Path)` တွၼ်ႈတႃႇဢၢၼ်ႇ ၶေႃႈမုၼ်း ၵူႈထႅဝ် (Lines) ၼႂ်းၽၢႆႇၼၼ်ႉ ဢွၵ်ႇမႃးသေ သႂ်ႇၼႂ်း `List<String>`။
2. **Parsing (လွင်ႈၸႅၵ်ႇၶေႃႈမုၼ်း):** လုၵ်ႉတီႈ `List` ၼၼ်ႉ ႁဝ်းတေ Loop ဢဝ်လိၵ်ႈမႃး ၵူႈထႅဝ် (ပိူင်ယၢင်ႇ: `"001,Sai Mao,Java"`) သေ ၸႂ်ႉ Method **`split(",")`** တွၼ်ႈတႃႇၸႅၵ်ႇမၼ်းဢွၵ်ႇပဵၼ် `String[]` (Array) လၢႆလၢႆဢၼ် ဢၼ်ဢမ်ႇမီးၶိူင်ႈမၢႆၸုတ်း (`["001", "Sai Mao", "Java"]`) ယဝ်ႉဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း Table ၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (CSV to JTable Loader)

ႁဝ်းမႃးၸၢမ်းၶူင်သၢင်ႈ UI ဢၼ်မီး Button တွၼ်ႈတႃႇလိူၵ်ႈၽၢႆႇ CSV (ၸႂ်ႉ `JFileChooser`) လႄႈ ဢဝ်ၶေႃႈမုၼ်းမၼ်း မႃးၼႄၼႂ်း `JTable` ၶႃႈ။

*(တွၼ်ႈတႃႇၸၢမ်း Code ၼႆႉ: ၶႅၼ်းတေႃႈ ၶူင်သၢင်ႈၽၢႆႇ `students.csv` ၼႂ်း Computer သူၸဝ်ႈသေ သႂ်ႇၶေႃႈမုၼ်း မိူၼ်ပိူင်ယၢင်ႇၽၢႆႇၼိူဝ်ၼၼ်ႉဝႆႉ ဢွၼ်တၢင်းၶႃႈ)*

```java
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.*;
import java.io.File;
import java.nio.file.Files;
import java.util.List;

public class CSVReaderDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK CSV Data Loader");
        frame.setSize(600, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // 1. ၶူင်သၢင်ႈ JTable လႄႈ DefaultTableModel
        String[] columns = {"ID", "Name", "Course"};
        DefaultTableModel model = new DefaultTableModel(columns, 0);
        JTable table = new JTable(model);
        frame.add(new JScrollPane(table), BorderLayout.CENTER);

        // 2. ၶူင်သၢင်ႈ Button တႃႇ Load CSV
        JButton loadBtn = new JButton("Load CSV File...");
        loadBtn.setFont(new Font("Arial", Font.BOLD, 14));
        frame.add(loadBtn, BorderLayout.SOUTH);

        // 3. သႂ်ႇ Action တွၼ်ႈတႃႇ Button
        loadBtn.addActionListener(e -> {
            
            // ပိုတ်ႇ Dialog တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈၽၢႆႇ CSV
            JFileChooser fileChooser = new JFileChooser();
            fileChooser.setFileFilter(new FileNameExtensionFilter("CSV Files (*.csv)", "csv"));
            
            int result = fileChooser.showOpenDialog(frame);
            if (result == JFileChooser.APPROVE_OPTION) {
                File selectedFile = fileChooser.getSelectedFile();
                
                try {
                    // *** ၸၼ်ႉထူၼ်ႈ 1: ဢၢၼ်ႇၶေႃႈမုၼ်း တင်းသဵင်ႈ ၼႂ်းၽၢႆႇ (Read) ***
                    List<String> lines = Files.readAllLines(selectedFile.toPath());
                    
                    // ၽဵဝ်ႈပႅတ်ႈ ၶေႃႈမုၼ်းၵဝ်ႇ ၼႂ်း Table ဢွၼ်တၢင်း တေဢဝ်ဢၼ်မႂ်ႇသႂ်ႇ
                    model.setRowCount(0); 

                    // *** ၸၼ်ႉထူၼ်ႈ 2: Loop လႄႈ ၸႅၵ်ႇၶေႃႈမုၼ်း (Parse) ***
                    for (String line : lines) {
                        
                        // ၵၢၼ်ႉပႅတ်ႈ ထႅဝ်ဢၼ်ပဝ်ႇလၢႆ (Empty lines)
                        if (line.trim().isEmpty()) continue; 

                        // ၸႅၵ်ႇၶေႃႈမုၼ်း ၸွမ်းလူၺ်ႈ ၶိူင်ႈမၢႆၸုတ်း (,)
                        String[] dataRow = line.split(",");
                        
                        // ဢဝ်ၶေႃႈမုၼ်း Array ၼၼ်ႉ သႂ်ႇပဵၼ် ထႅဝ်မႂ်ႇ (Row) ၼႂ်း Model
                        model.addRow(dataRow);
                    }
                    
                    JOptionPane.showMessageDialog(frame, "Data loaded successfully!");

                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(frame, "Error reading file: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ (Key Takeaways)

1. **`model.setRowCount(0);`**: ၼႆႉပဵၼ် Trick လမ်ႇလွင်ႈ ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ "ၽဵဝ်ႈပႅတ်ႈ (Clear)" ၶေႃႈမုၼ်းတင်းသဵင်ႈ ၼႂ်း Table ႁဝ်းၶႃႈ။ ပေႃးႁဝ်းဢမ်ႇသႂ်ႇထႅဝ်ၼႆႉ၊ မိူဝ်ႈ User ၼဵၵ်း Load CSV လၢႆလၢႆၵမ်း၊ ၶေႃႈမုၼ်းမၼ်း တေၵႂႃႇထပ်းသိုပ်ႇၵၼ် ၽၢႆႇတႂ်ႈ ယၢဝ်းၵႂႃႇတိၵ်း ၶႃႈ။
2. **လွင်ႈၽိတ်းပိူင်ႈ ၶွင် Comma ၼႂ်းလိၵ်ႈ:** Method `split(",")` ၼႆႉ မၼ်းငၢႆႈလႄႈ လီတႄႉၶႃႈ၊ ၵူၺ်းၵႃႈ မၼ်းမီးပၼ်ႁႃဢၼ်ၼိုင်ႈ — ပေႃးဝႃႈ ၶေႃႈမုၼ်းႁဝ်း မီးၶိူင်ႈမၢႆၸုတ်း ပႃးမႃးၸွမ်း (ပိူင်ယၢင်ႇ: `"001, Sai Mao, "Hello, World" "`)၊ မၼ်းတေၸႅၵ်ႇၽိတ်းၵႂႃႇၶႃႈ။ တွၼ်ႈတႃႇ Application ဢၼ်ယႂ်ႇ လႄႈ လိုၵ်ႉသေၼႆႉ၊ ၽူႈၶူင်သၢင်ႈၶဝ် ၵႆႉၸႂ်ႉ Library ၽၢႆႇၼွၵ်ႈ (မိူၼ်ၼင်ႇ OpenCSV ဢမ်ႇၼၼ် Apache Commons CSV) တွၼ်ႈတႃႇၸတ်းၵၢၼ်ၶႃႈ။ တွၼ်ႈတႃႇပိူင်ငၢႆႈ တႄႉ ၸႂ်ႉ `split` ၵေႃႈ လႆႈယူႇၶႃႈ!