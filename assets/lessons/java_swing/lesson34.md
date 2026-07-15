## 34: Project: Functional Notepad Clone

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 5 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းမႃး လွင်ႈၶူင်သၢင်ႈ UI ဢၼ်မိူၼ် Application ၸၼ်ႉသုင် — တႄႇဢဝ် `JMenuBar`, `JToolBar`, `JOptionPane`, တေႃႇထိုင် `JFileChooser` ယဝ်ႉၶႃႈ။

မိူဝ်ႈၼႆႉ ႁဝ်းတေဢဝ်ၶူဝ်းၶွင်တင်းသဵင်ႈၼႆႉ မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **Notepad Clone (ပရူဝ်ႇၵႅမ်ႇ ပေႃႉလိၵ်ႈ)** ဢၼ်ၸၢင်ႈ ပိုတ်ႇၽၢႆႇ, တႅမ်ႈလိၵ်ႈ, လႄႈ သိမ်းၽၢႆႇ လႆႈတႄႉတႄႉ ၼႂ်း Computer ႁဝ်းၶႃႈ!

### 1. လွင်ႈႁဵတ်းၵၢၼ် ၶွင် Project ၼႆႉ (Architecture)

တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Notepad ၼႆႉ ႁဵတ်းၵၢၼ်လႆႈတႄႉတႄႉ ႁဝ်းတေၸႂ်ႉ:

* **UI Components:** `JTextArea`, `JMenuBar` လႄႈ `JToolBar`။
* **Dialogs:** `JFileChooser` တွၼ်ႈတႃႇလိူၵ်ႈၽၢႆႇ လႄႈ `JOptionPane` တွၼ်ႈတႃႇၼႄ Error ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်း။
* **File I/O (လွင်ႈဢၢၼ်ႇ/တႅမ်ႈ ၽၢႆႇ):** `JFileChooser` မၼ်းၵူၺ်းႁႃပၼ် File Path (ဢွင်ႈတီႈၽၢႆႇ) ၵူၺ်း။ ႁဝ်းတေလႆႈၸႂ်ႉ `java.nio.file.Files` တွၼ်ႈတႃႇဢၢၼ်ႇလိၵ်ႈဢွၵ်ႇမႃးသေ သႂ်ႇၼႂ်း TextArea လႄႈ တွၼ်ႈတႃႇဢဝ်လိၵ်ႈၼႂ်း TextArea ၵႂႃႇသိမ်းၼႂ်း ၽၢႆႇ ၶႃႈ။

---

### Code တႃႇ Project (TMK Notepad)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ ပေႃး Run ယဝ်ႉ၊ ၸၢမ်းပေႃႉလိၵ်ႈသေ ၼဵၵ်း Save (`Ctrl + S`) လႄႈ ၸၢမ်းပိုတ်ႇၽၢႆႇၵဝ်ႇ (`Ctrl + O`) တူၺ်းၶႃႈ!

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.File;
import java.nio.file.Files; // တွၼ်ႈတႃႇ File I/O ဢၼ်ငၢႆႈ
import java.nio.file.Path;

public class NotepadCloneProject {
    // ၶူင်သၢင်ႈ Variables ဝႆႉၼွၵ်ႈ Method တွၼ်ႈတႃႇႁႂ်ႈၸႂ်ႉလႆႈ ၵူႈတီႈ
    static JFrame frame;
    static JTextArea textArea;
    static File currentFile = null; // တႃႇတွင်းဝႆႉဝႃႈ ၽၢႆႇဢၼ်တိုၵ်ႉပိုတ်ႇဝႆႉ ပဵၼ်ၽၢႆႇလႂ်

    public static void main(String[] args) {
        frame = new JFrame("TMK Notepad - Untitled");
        frame.setSize(800, 500);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // ==========================================
        // 1. Text Area (CENTER)
        // ==========================================
        textArea = new JTextArea();
        textArea.setFont(new Font("Consolas", Font.PLAIN, 16)); // Font တႃႇပေႃႉ Code/Text
        frame.add(new JScrollPane(textArea), BorderLayout.CENTER);

        // ==========================================
        // 2. Menu Bar (NORTH - Native)
        // ==========================================
        JMenuBar menuBar = new JMenuBar();
        JMenu fileMenu = new JMenu("File");
        fileMenu.setMnemonic(KeyEvent.VK_F); // Alt + F

        JMenuItem openItem = new JMenuItem("Open...");
        openItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, KeyEvent.CTRL_DOWN_MASK));
        
        JMenuItem saveItem = new JMenuItem("Save As...");
        saveItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, KeyEvent.CTRL_DOWN_MASK));
        
        JMenuItem exitItem = new JMenuItem("Exit");
        exitItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_Q, KeyEvent.CTRL_DOWN_MASK));

        fileMenu.add(openItem);
        fileMenu.add(saveItem);
        fileMenu.addSeparator();
        fileMenu.add(exitItem);
        menuBar.add(fileMenu);
        frame.setJMenuBar(menuBar);

        // ==========================================
        // 3. Tool Bar (NORTH - Layout)
        // ==========================================
        JToolBar toolBar = new JToolBar();
        toolBar.setFloatable(false);
        
        JButton openBtn = new JButton("📂 Open");
        JButton saveBtn = new JButton("💾 Save");
        openBtn.setFocusable(false);
        saveBtn.setFocusable(false);
        
        toolBar.add(openBtn);
        toolBar.add(saveBtn);
        frame.add(toolBar, BorderLayout.NORTH);

        // ==========================================
        // 4. Actions (လွင်ႈတူင်ႉၼိုင် လႄႈ File I/O)
        // ==========================================

        // Action တႃႇ EXIT
        exitItem.addActionListener(e -> System.exit(0));

        // Action တႃႇ OPEN (သႂ်ႇပၼ်တင်း Menu ลႄႈ Toolbar Button)
        Runnable openAction = () -> {
            JFileChooser chooser = new JFileChooser();
            if (chooser.showOpenDialog(frame) == JFileChooser.APPROVE_OPTION) {
                File file = chooser.getSelectedFile();
                try {
                    // ဢၢၼ်ႇလိၵ်ႈၼႂ်းၽၢႆႇ တင်းသဵင်ႈသေ သႂ်ႇၼႂ်း TextArea
                    String content = Files.readString(file.toPath());
                    textArea.setText(content);
                    
                    // Update ၸိုဝ်ႈၽၢႆႇ လႄႈ Window Title
                    currentFile = file;
                    frame.setTitle("TMK Notepad - " + file.getName());
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(frame, "Error opening file: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            }
        };
        openItem.addActionListener(e -> openAction.run());
        openBtn.addActionListener(e -> openAction.run());

        // Action တႃႇ SAVE AS (သႂ်ႇပၼ်တင်း Menu လႄႈ Toolbar Button)
        Runnable saveAction = () -> {
            JFileChooser chooser = new JFileChooser();
            if (chooser.showSaveDialog(frame) == JFileChooser.APPROVE_OPTION) {
                File file = chooser.getSelectedFile();
                try {
                    // ဢဝ်လိၵ်ႈၼႂ်း TextArea ၵႂႃႇတႅမ်ႈသိမ်း သႂ်ႇၼႂ်းၽၢႆႇ
                    Files.writeString(file.toPath(), textArea.getText());
                    
                    currentFile = file;
                    frame.setTitle("TMK Notepad - " + file.getName());
                    JOptionPane.showMessageDialog(frame, "File saved successfully!", "Success", JOptionPane.INFORMATION_MESSAGE);
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(frame, "Error saving file: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                }
            }
        };
        saveItem.addActionListener(e -> saveAction.run());
        saveBtn.addActionListener(e -> saveAction.run());

        // ==========================================
        // 5. ၼႄ Window
        // ==========================================
        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ (Key Takeaways)

1. **လွင်ႈၸႂ်ႉ `Runnable` တွၼ်ႈတႃႇ Actions:** ယွၼ်ႉဝႃႈ ႁဝ်းမီး "Open" တီႈ Menu (Ctrl+O) လႄႈ ၵေႃႈမီး "Open" ၼိူဝ် Toolbar ၶႃႈ။ တွၼ်ႈတႃႇယႃႇႁႂ်ႈလႆႈ တႅမ်ႈ Code (File I/O) ၼၼ်ႉ 2 ပွၵ်ႈ၊ ႁဝ်းလႆႈႁုပ်ႈမၼ်းဝႆႉၼႂ်း `Runnable openAction` သေ ဢဝ်ၵႂႃႇၸပ်းသႂ်ႇပၼ် တင်းသွင်တီႈလႆႈၶႃႈ။
2. **`Files.readString()` လႄႈ `Files.writeString()`:** ၼႆႉပဵၼ် Method ၶွင် Java NIO (New I/O) ဢၼ်ၸွႆႈႁႂ်ႈ ဢၢၼ်ႇလႄႈ တႅမ်ႈ ၽၢႆႇ Text လႆႈငၢႆႈသုတ်း လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ `BufferedReader` ဢမ်ႇၼၼ် Loop သုၵ်ႉသုၵ်ႉယုင်ႈယုင်ႈၶႃႈ။ (မၼ်းသၢင်ႇထုၵ်ႇ တွၼ်ႈတႃႇၽၢႆႇ ဢၼ်ဢမ်ႇယႂ်ႇၼႃႇ)။

---