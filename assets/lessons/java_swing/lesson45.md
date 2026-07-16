## 45: Writing Data to Local Text Files

ၼႂ်း Lesson ၸိူဝ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈၸတ်းၵၢၼ် Background Tasks သေ ႁဵတ်းႁႂ်ႈ UI လႆႈလီ ၵႂႃႇယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းတေသိုပ်ႇလဵပ်ႈႁဵၼ်းၵႂႃႇ တွၼ်ႈထူၼ်ႈသွင် ၶွင် Module ၼႆႉ — ၼၼ်ႉပဵၼ် **Data Persistence (လွင်ႈသိမ်းၶေႃႈမုၼ်း သႂ်ႇၼႂ်းၶိူင်ႈ)** ၶႃႈ။

မိူဝ်ႈႁဝ်းပိုတ်ႇ (Run) Application ၼၼ်ႉ၊ ၶေႃႈမုၼ်းတင်းသဵင်ႈ (Variables, List, Text) မၼ်းတေသိမ်းဝႆႉၼႂ်း RAM ၵူၺ်း။ 
ပေႃးႁဝ်းပိၵ်ႉ Program ပႅတ်ႈ၊ ၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉ တေႁၢႆၵႂႃႇမူတ်းၶႃႈ။ တွၼ်ႈတႃႇ သိမ်းၶေႃႈမုၼ်းဝႆႉလႆႈ တႃႇသေႇ ႁဝ်းတေလႆႈတႅမ်ႈမၼ်း သႂ်ႇၼႂ်း **Local Text Files (`.txt`)** ၶႃႈ။

### 1. လွင်ႈတႅမ်ႈၽၢႆႇ မီး 2 မဵဝ်း (Overwrite vs. Append)

မိူဝ်ႈႁဝ်းတေတႅမ်ႈ ၶေႃႈမုၼ်းသႂ်ႇ ၽၢႆႇလိၵ်ႈ၊ ႁဝ်းတေလႆႈလိူၵ်ႈဝႃႈ ႁဝ်းၶႂ်ႈတႅမ်ႈပိူင်လႂ်ၶႃႈ:

1. **Overwrite (တႅမ်ႈထပ်း):** ၽဵဝ်ႈပႅတ်ႈ ၶေႃႈမုၼ်းၵဝ်ႇတင်းသဵင်ႈ သေ ဢဝ်ဢၼ်မႂ်ႇ သႂ်ႇတႅၼ်း။ (သၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ လွင်ႈ Save လိၵ်ႈၼႂ်း Notepad)။
2. **Append (သိုပ်ႇတႅမ်ႈၽၢႆႇတႂ်ႈ):** ဢမ်ႇမွတ်ႇပႅတ်ႈ ဢၼ်ၵဝ်ႇ၊ ၵူၺ်းဢဝ် ၶေႃႈမုၼ်းဢၼ်မႂ်ႇ ၵႂႃႇသိုပ်ႇသႂ်ႇပၼ် ၽၢႆႇတႂ်ႈသုတ်း (New Line)။ (သၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ လွင်ႈသိမ်း Log ဢမ်ႇၼၼ် သိမ်းသဵၼ်ႈမၢႆ ဢၼ်လႅၵ်ႈလၢႆႈမႃး)။

### 2. လွၵ်းလၢႆးတႅမ်ႈ ဢၼ်ငၢႆႈသုတ်း (Java NIO)

တွၼ်ႈတႃႇၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇယႂ်ႇ လႄႈ တႅမ်ႈၵမ်းလဵဝ်ယဝ်ႉၼၼ်ႉ၊ လွၵ်းလၢႆးဢၼ် မႂ်ႇလႄႈ ငၢႆႈသုတ်း တႄႉပဵၼ် လွင်ႈၸႂ်ႉ **`java.nio.file.Files`** ၶႃႈ။

```java
import java.nio.file.*;

// 1. မၵ်းမၼ်ႈ ဢွင်ႈတီႈ လႄႈ ၸိုဝ်ႈၽၢႆႇ
Path filePath = Path.of("my_data.txt"); 

// 2. လွင်ႈတႅမ်ႈထပ်း (Overwrite)
Files.writeString(filePath, "Hello TMK!\n");

// 3. လွင်ႈသိုပ်ႇတႅမ်ႈ (Append)
Files.writeString(filePath, "This is a new line.\n", StandardOpenOption.CREATE, StandardOpenOption.APPEND);

```

### 3. The Golden Rule of File I/O: ႁႄႉၵင်ႈ Exceptions

လွင်ႈႁဵတ်းၵၢၼ် ၵိုၵ်း File System ၼၼ်ႉ မၼ်းၸၢင်ႈမီး လွင်ႈၽိတ်းပိူင်ႈ (Errors) လႆႈလၢႆလၢႆယိူင်ႈ — ပိူင်ယၢင်ႇ: ဢမ်ႇမီးသုၼ်ႇတႅမ်ႈ (Permission denied), ၽၢႆႇထုၵ်ႇလွၵ်ႉဝႆႉ, ဢမ်ႇၼၼ် ႁႃၽၢႆႇဢမ်ႇႁၼ်။
ၵွပ်ႈၼႆလႄႈ ႁဝ်းထုၵ်ႇလီဢဝ် Code ႁဝ်း သႂ်ႇဝႆႉၼႂ်း **`try-catch`** block တႃႇသေႇ တွၼ်ႈတႃႇတီႉၺွပ်း **`IOException`** ၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Simple Note Taker & Logger)

ႁဝ်းမႃးၸၢမ်း ၶူင်သၢင်ႈ UI ဢၼ်မီး `JTextArea` တွၼ်ႈတႃႇပေႃႉလိၵ်ႈ လႄႈ မီး Button 2 ဢၼ်။ 
ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ "Save" (Overwrite) လႄႈ ထႅင်ႈဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ "Add Log" (Append) ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class FileWritingDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Note Taker & Logger");
        frame.setSize(500, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // 1. ၶူင်သၢင်ႈ UI Components
        JTextArea textArea = new JTextArea("Type your notes here...");
        textArea.setFont(new Font("Arial", Font.PLAIN, 16));
        frame.add(new JScrollPane(textArea), BorderLayout.CENTER);

        JPanel buttonPanel = new JPanel(new FlowLayout());
        JButton saveBtn = new JButton("Save Note (Overwrite)");
        JButton logBtn = new JButton("Add to Log (Append)");
        buttonPanel.add(saveBtn);
        buttonPanel.add(logBtn);
        frame.add(buttonPanel, BorderLayout.SOUTH);

        // 2. သႂ်ႇ Action တႃႇ "Save Note" (တႅမ်ႈထပ်း ၼႂ်းၽၢႆႇ notes.txt)
        saveBtn.addActionListener(e -> {
            String textToSave = textArea.getText();
            Path filePath = Path.of("notes.txt"); // တေၵႂႃႇသၢင်ႈၽၢႆႇ ၼႂ်း Folder ဢၼ် Run Code ၼႆႉဝႆႉ

            try {
                // တႅမ်ႈထပ်း (Overwrite)
                Files.writeString(filePath, textToSave);
                JOptionPane.showMessageDialog(frame, "Notes saved successfully to notes.txt!");
            } catch (IOException ex) {
                // တီႉၺွပ်း Error လႄႈ ၼႄปၼ် User ႁူႉ
                JOptionPane.showMessageDialog(frame, "Error saving file: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            }
        });

        // 3. သႂ်ႇ Action တႃႇ "Add Log" (သိုပ်ႇတႅမ်ႈ ၼႂ်းၽၢႆႇ app_log.txt)
        logBtn.addActionListener(e -> {
            Path logPath = Path.of("app_log.txt");
            
            // ႁႃ ၶၢဝ်းယၢမ်း လႄႈ ဝၼ်းထီႉ ယၢမ်းလဵဝ်
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            String now = dtf.format(LocalDateTime.now());
            
            // ၶူင်သၢင်ႈ ၶေႃႈမုၼ်း ဢၼ်တေတႅမ်ႈ (ပႃးဝၼ်းထီႉ လႄႈ ၶိုၼ်ႈထႅဝ်မႂ်ႇ \n)
            String logEntry = "[" + now + "] User clicked the log button.\n";

            try {
                // CREATE = သၢင်ႇႁႂ်ႈၶူင်သၢင်ႈၽၢႆႇ ပေႃးဝႃႈပႆႇမီး, APPEND = သိုပ်ႇတႅမ်ႈၽၢႆႇတႂ်ႈ
                Files.writeString(logPath, logEntry, StandardOpenOption.CREATE, StandardOpenOption.APPEND);
                JOptionPane.showMessageDialog(frame, "Log appended to app_log.txt!");
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(frame, "Error writing log: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            }
        });

        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ၵဵဝ်ႇလူၺ်ႈ Path

ၼႂ်း Code ၼၼ်ႉ ႁဝ်းၸႂ်ႉ `Path.of("notes.txt")` လၢႆလၢႆၶႃႈ။ ၼႆႉမၼ်းႁွင်ႉဝႃႈ **Relative Path** ၶႃႈ။
မၼ်းတေၵႂႃႇၶူင်သၢင်ႈ ၽၢႆႇၼႆႉ ၼႂ်း Folder လဵဝ်ၵၼ် တင်းဢၼ်ႁဝ်း Run Program (Working Directory) ၼၼ်ႉၶႃႈ။ 
(ပိူင်ယၢင်ႇ: ၼႂ်း Folder Project ၶွင် IntelliJ ဢမ်ႇၼၼ် VS Code)။ ပေႃးႁဝ်း ၶႂ်ႈမၵ်းမၼ်ႈ ဢွင်ႈတီႈတႅတ်ႈၼႅတ်ႈ ၸၢင်ႈၸႂ်ႉ **Absolute Path** မိူၼ်ၼင်ႇ `Path.of("C:/Users/SaiMao/Desktop/notes.txt")` လႆႈၶႃႈ။