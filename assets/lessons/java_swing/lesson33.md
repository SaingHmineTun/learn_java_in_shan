## 33: Selecting Files & Folders (JFileChooser)

ၼႂ်း Lesson ပူၼ်ႉမႃး ႁဝ်းလႆႈႁဵၼ်း `JOptionPane` တွၼ်ႈတႃႇၼႄ Dialog လႄႈ ႁပ်ႉၶေႃႈမုၼ်းလဵၵ်ႉလဵၵ်ႉၼွႆႉၼွႆႉယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈ User လိူၵ်ႈ File (ပိူင်ယၢင်ႇ: ပိုတ်ႇၽၢႆႇလိၵ်ႈ `.txt` ဢမ်ႇၼၼ် ႁႃဢွင်ႈတီႈတႃႇ Save ၽၢႆႇ) လူး?
ႁဝ်းတေလႆႈၸႂ်ႉ **`JFileChooser`** ၶႃႈ။

### 1. JFileChooser ပဵၼ်သင်?

**`JFileChooser`** ၼႆႉ ပဵၼ် Dialog ၶိုၵ်ႉတွၼ်း ဢၼ်တေပိုတ်ႇ Window တွၼ်ႈတႃႇႁႃ File လႄႈ Folder ၼႂ်း Computer ႁဝ်းၶႃႈ 
(မိူၼ်ၼင်ႇ မိူဝ်ႈႁဝ်းၼဵၵ်း "Open" လႄႈ "Save As" ၼႂ်း Notepad)။

လွင်ႈၸႂ်ႉတိုဝ်းမၼ်း မီး 2 မဵဝ်းၶႃႈ:

1. **ပိုတ်ႇၽၢႆႇ (Open Dialog):** ၸႂ်ႉ `showOpenDialog(frame)` တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈၽၢႆႇ ဢၼ်မီးဝႆႉယဝ်ႉ။
2. **သိမ်းၽၢႆႇ (Save Dialog):** ၸႂ်ႉ `showSaveDialog(frame)` တွၼ်ႈတႃႇႁႂ်ႈ User မၵ်းမၼ်ႈ ၸိုဝ်ႈလႄႈဢွင်ႈတီႈ တွၼ်ႈတႃႇတေသိမ်းၽၢႆႇမႂ်ႇ။

### 2. လၢႆးၵူတ်ႇတူၺ်း ၽွၼ်းလႆႈ (Handling the Result)

မိူဝ်ႈ Window ၶွင် `JFileChooser` ပိုတ်ႇဢွၵ်ႇမႃး၊ Program ႁဝ်းတေၵိုတ်းပႂ်ႉဝႆႉၶႃႈ။ ပေႃး User ၼဵၵ်း "Open/Save" ဢမ်ႇၼၼ် "Cancel" ယဝ်ႉ၊ မၼ်းတေသူင်ႇၶိုၼ်းမႃး မၢႆၼပ်ႉ (int) ဢၼ်ၼိုင်ႈ။ 
ႁဝ်းတေလႆႈၵူတ်ႇတူၺ်းဝႃႈ မၼ်းပဵၼ် **`JFileChooser.APPROVE_OPTION`** (ပွင်ႇဝႃႈ လိူၵ်ႈ File ထုၵ်ႇမႅၼ်ႈယဝ်ႉ) ႁိုဝ်ဢမ်ႇ ၶႃႈ။

```java
JFileChooser fileChooser = new JFileChooser();
// ပိုတ်ႇ Window လႄႈ ႁပ်ႉဢဝ် ၽွၼ်းလႆႈ
int response = fileChooser.showOpenDialog(frame);

if (response == JFileChooser.APPROVE_OPTION) {
    // ဢၢၼ်ႇဢဝ် File ဢၼ် User လိူၵ်ႈဝႆႉ
    File selectedFile = fileChooser.getSelectedFile();
    System.out.println("File Path: " + selectedFile.getAbsolutePath());
}

```

### 3. လွင်ႈၸႂ်ႉ Filter (လိူၵ်ႈၼႄ ၽၢႆႇမၢင်မဵဝ်းၵူၺ်း)

မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ User လိူၵ်ႈလႆႈ File ၵူႈမဵဝ်း (ပိူင်ယၢင်ႇ: ၶႂ်ႈႁႂ်ႈပိုတ်ႇလႆႈ ၽၢႆႇ Text `.txt` ၵူၺ်း)။ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`FileNameExtensionFilter`** မႃးၸွႆႈလႆႈၶႃႈ:

```java
// ၶူင်သၢင်ႈ Filter တွၼ်ႈတႃႇ .txt
FileNameExtensionFilter filter = new FileNameExtensionFilter("Text Files (*.txt)", "txt");
fileChooser.setFileFilter(filter); // ဢဝ် Filter သႂ်ႇပၼ် FileChooser

```

---

### Code တူဝ်ယၢင်ႇ (File Selector UI)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program ဢၼ်မီး Button 2 ဢၼ် (Open လႄႈ Save) သေ ဢဝ်လွၵ်းလၢႆး (Path) ၶွင်ၽၢႆႇၼၼ်ႉ မႃးၼႄၼႂ်း `JTextArea` တူၺ်းၶႃႈ။

```java
import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.*;
import java.io.File; // လူဝ်ႇလႆႈ Import java.io.File

public class FileChooserDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("File Chooser Demo");
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // ==========================================
        // 1. ၶူင်သၢင်ႈ UI Components
        // ==========================================
        JPanel topPanel = new JPanel(new FlowLayout());
        JButton openBtn = new JButton("Open File...");
        JButton saveBtn = new JButton("Save As...");
        
        topPanel.add(openBtn);
        topPanel.add(saveBtn);
        frame.add(topPanel, BorderLayout.NORTH);

        JTextArea logArea = new JTextArea();
        logArea.setEditable(false);
        logArea.setFont(new Font("Arial", Font.PLAIN, 14));
        frame.add(new JScrollPane(logArea), BorderLayout.CENTER);

        // ==========================================
        // 2. ၶူင်သၢင်ႈ JFileChooser သေ သႂ်ႇ Filter
        // ==========================================
        JFileChooser fileChooser = new JFileChooser();
        
        // သႂ်ႇ Filter ႁႂ်ႈၼႄ လိၵ်ႈ .txt ၵူၺ်း
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Text Documents (*.txt)", "txt");
        fileChooser.setFileFilter(filter);

        // ==========================================
        // 3. သႂ်ႇ Actions ပၼ် Buttons
        // ==========================================
        
        // Action တႃႇ Open
        openBtn.addActionListener(e -> {
            int result = fileChooser.showOpenDialog(frame); // ပိုတ်ႇ Open Dialog
            
            if (result == JFileChooser.APPROVE_OPTION) {
                File file = fileChooser.getSelectedFile();
                logArea.append("OPEN ACTION: Selected file -> " + file.getAbsolutePath() + "\n");
            } else {
                logArea.append("OPEN ACTION: Canceled by user.\n");
            }
        });

        // Action တႃႇ Save
        saveBtn.addActionListener(e -> {
            int result = fileChooser.showSaveDialog(frame); // ပိုတ်ႇ Save Dialog
            
            if (result == JFileChooser.APPROVE_OPTION) {
                File file = fileChooser.getSelectedFile();
                logArea.append("SAVE ACTION: Wants to save at -> " + file.getAbsolutePath() + "\n");
            } else {
                logArea.append("SAVE ACTION: Canceled by user.\n");
            }
        });

        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈသုတ်း!

`JFileChooser` ၼႆႉ မၼ်း **ၵူၺ်း** ႁႃပၼ် ၸိုဝ်ႈ လႄႈ ဢွင်ႈတီႈ ၽၢႆႇ (File Path) သေ တၢင်ႇၼႄ Window ႁၢင်ႈလီလီၵူၺ်းၶႃႈ။ 
**မၼ်းဢမ်ႇလႆႈ ဢၢၼ်ႇ (Read) ဢမ်ႇၼၼ် တႅမ်ႈ (Write) ၶေႃႈမုၼ်း သႂ်ႇၼႂ်းၽၢႆႇၼၼ်ႉ ႁင်းၵူၺ်းမၼ်းၶႃႈ။**

တွၼ်ႈတႃႇ ဢၢၼ်ႇ လႄႈ တႅမ်ႈ ၽၢႆႇတႄႉတႄႉၼၼ်ႉ၊ ႁဝ်းတေလႆႈဢဝ် File Path ၼၼ်ႉ ၵႂႃႇသိုပ်ႇၸႂ်ႉၸွမ်း `java.io` (မိူၼ်ၼင်ႇ `FileReader`, `FileWriter` ဢမ်ႇၼၼ် `Files.writeString()`) ၶႃႈ။
ႁဝ်းတေလႆႈၸႂ်ႉ လွၵ်းလၢႆးၸိူဝ်းၼႆႉ ၼႂ်း Project လိုၼ်းသုတ်းၶွင် Module ၼႆႉၶႃႈ!