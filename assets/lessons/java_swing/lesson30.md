## 30: Adding Keyboard Shortcuts (Accelerators)

ၼႂ်း Lesson 29 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းလၢႆးၶူင်သၢင်ႈ Menu Bar သေ ဢဝ် `JMenuItem` ၵႂႃႇသႂ်ႇဝႆႉယဝ်ႉၶႃႈ။ 
တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Application ႁဝ်း ၸႂ်ႉလႆႈဝႆး လႄႈ မိူၼ်ပရူဝ်ႇ (Professional) မႃးၼၼ်ႉ၊ ႁဝ်းထုၵ်ႇလီသႂ်ႇပၼ် Keyboard Shortcuts (လွၵ်းလၢႆးလတ်း ၼိူဝ်ၶီးပွတ်ႉ) ၶႃႈ။
ၼႂ်း Java Swing ၼႆႉ လွင်ႈၸႂ်ႉ Shortcuts တွၼ်ႈတႃႇ Menu ၼၼ်ႉ မီး 2 မဵဝ်း ၶႃႈ:

### 1. Mnemonics (လွင်ႈၸႂ်ႉ Alt + Key တႃႇပိုတ်ႇ Menu)

**Mnemonics** ၼႆႉ မၼ်းတေၶိတ်ႇလၢႆးထႅဝ်လဵၵ်ႉလဵၵ်ႉဝႆႉ တႂ်ႈတူဝ်လိၵ်ႈ ဢၼ်ၼိုင်ႈ (ပိူင်ယၢင်ႇ: **F**ile, **E**dit)။

* မၼ်းၸႂ်ႉတွၼ်ႈတႃႇ ပိုတ်ႇ Menu ၸွမ်းလူၺ်ႈလွင်ႈၼဵၵ်း `Alt` လႄႈ တူဝ်လိၵ်ႈၼၼ်ႉ ႁူမ်ႈၵၼ် (ပိူင်ယၢင်ႇ: ၼဵၵ်း `Alt + F` တွၼ်ႈတႃႇပိုတ်ႇ File Menu)။
* လၢႆးတႅမ်ႈ: ၸႂ်ႉ Method **`setMnemonic()`**

```java
JMenu fileMenu = new JMenu("File");
// မၵ်းမၼ်ႈႁႂ်ႈတူဝ် F ပဵၼ် Mnemonic (ၼဵၵ်း Alt + F)
fileMenu.setMnemonic(KeyEvent.VK_F); 

```

### 2. Accelerators (လွင်ႈၸႂ်ႉ Ctrl + Key တႃႇသင်ႇၵၢၼ်ၵမ်းလဵဝ်)

**Accelerators** ၼႆႉ ပဵၼ် Shortcut ဢၼ်ႁဝ်းၵႆႉၸႂ်ႉၼမ်သုတ်း (ပိူင်ယၢင်ႇ: `Ctrl + C` တႃႇ Copy, `Ctrl + S` တႃႇ Save)။

* မၼ်းၸၢင်ႈသင်ႇႁႂ်ႈ `JMenuItem` ႁဵတ်းၵၢၼ်လႆႈၵမ်းလဵဝ်၊ ႁဝ်းဢမ်ႇလူဝ်ႇလႆႈၼဵၵ်းပိုတ်ႇတူၺ်း Menu ၼၼ်ႉ ယူႇၵေႃႈယႃႇၶႃႈ။
* လၢႆးတႅမ်ႈ: ၸႂ်ႉ Method **`setAccelerator()`** လႄႈ ၸႂ်ႉ `KeyStroke.getKeyStroke()` တွၼ်ႈတႃႇဢဝ် ၶီးပွတ်ႉ 2 ဢၼ်မႃးႁူမ်ႈၵၼ်ၶႃႈ။

```java
JMenuItem saveItem = new JMenuItem("Save");
// မၵ်းမၼ်ႈႁႂ်ႈၸႂ်ႉ Ctrl + S (CTRL_DOWN_MASK + VK_S)
saveItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, KeyEvent.CTRL_DOWN_MASK));

```

---

### Code တူဝ်ယၢင်ႇ (Notepad Menu with Shortcuts)

ႁဝ်းမႃးၸၢမ်းဢဝ် Code ၼႂ်း Lesson 29 မႃးမႄးၶိုၼ်း သေ သႂ်ႇပႃး Shortcuts လၢႆလၢႆဢၼ် တွၼ်ႈတႃႇႁႂ်ႈမၼ်းမိူၼ် Notepad တႄႉတႄႉၶႃႈ။

```java
import javax.swing.*;
import java.awt.event.*; // လူဝ်ႇလႆႈ Import တွၼ်ႈတႃႇၸႂ်ႉ KeyEvent လႄႈ ActionEvent
import java.awt.*;

public class ShortcutDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Notepad (With Shortcuts)");
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JMenuBar menuBar = new JMenuBar();
        JMenu fileMenu = new JMenu("File");
        
        // 1. သႂ်ႇ Mnemonics ပၼ် JMenu (Alt + F တွၼ်ႈတႃႇပိုတ်ႇ File)
        fileMenu.setMnemonic(KeyEvent.VK_F);

        // 2. ၶူင်သၢင်ႈ JMenuItem
        JMenuItem newItem = new JMenuItem("New");
        JMenuItem openItem = new JMenuItem("Open");
        JMenuItem saveItem = new JMenuItem("Save");
        JMenuItem exitItem = new JMenuItem("Exit");

        // 3. သႂ်ႇ Accelerators (Shortcuts) ပၼ် JMenuItem ၵူႈဢၼ်
        
        // Ctrl + N တွၼ်ႈတႃႇ New
        newItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N, KeyEvent.CTRL_DOWN_MASK));
        
        // Ctrl + O တွၼ်ႈတႃႇ Open
        openItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, KeyEvent.CTRL_DOWN_MASK));
        
        // Ctrl + S တွၼ်ႈတႃႇ Save
        saveItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, KeyEvent.CTRL_DOWN_MASK));
        
        // Ctrl + Q တွၼ်ႈတႃႇ Exit
        exitItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_Q, KeyEvent.CTRL_DOWN_MASK));

        // သႂ်ႇ Action ပၼ် Items ဢိတ်းၼိုင်ႈ တွၼ်ႈတႃႇၸၢမ်းတူၺ်း
        newItem.addActionListener(e -> System.out.println("New File Created!"));
        openItem.addActionListener(e -> System.out.println("Open File Dialog..."));
        saveItem.addActionListener(e -> System.out.println("File Saved!"));
        exitItem.addActionListener(e -> System.exit(0));

        // ဢဝ် Items သႂ်ႇၼႂ်း Menu လႄႈ ဢဝ် Menu သႂ်ႇၼႂ်း MenuBar
        fileMenu.add(newItem);
        fileMenu.add(openItem);
        fileMenu.add(saveItem);
        fileMenu.addSeparator();
        fileMenu.add(exitItem);
        
        menuBar.add(fileMenu);
        frame.setJMenuBar(menuBar);

        // ဢဝ် JTextArea သႂ်ႇၼႂ်း Frame
        JTextArea textArea = new JTextArea();
        frame.add(new JScrollPane(textArea), BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း (Key Takeaway)

* **`KeyEvent.VK_...`**: ၸႂ်ႉတွၼ်ႈတႃႇ မၵ်းမၼ်ႈ "တူဝ်လိၵ်ႈ" (Virtual Key) မိူၼ်ၼင်ႇ `VK_S` (တူဝ် S), `VK_F` (တူဝ် F)။
* **`KeyEvent.CTRL_DOWN_MASK`**: ၸႂ်ႉတွၼ်ႈတႃႇ မၵ်းမၼ်ႈ ၶီး "Modifier" မိူၼ်ၼင်ႇ `Ctrl`။ (ပေႃးၶႂ်ႈၸႂ်ႉ `Shift` ၵေႃႈ ၸႂ်ႉ `KeyEvent.SHIFT_DOWN_MASK` လႆႈၶႃႈ)။

ပေႃးႁဝ်း Run Code ၼႆႉယဝ်ႉ ၸၢမ်းၼဵၵ်း `Ctrl + S` တူၺ်းၶႃႈ၊ တေလႆႈႁၼ်လိၵ်ႈ "File Saved!" ဢွၵ်ႇမႃး ၼႂ်း Console ဢမ်ႇဝႃႈ ႁဝ်းတိုၵ်ႉပေႃႉလိၵ်ႈယူႇၼႂ်း TextArea လႄႈ ဢမ်ႇလႆႈပိုတ်ႇတူၺ်း Menu ၼၼ်ႉၵေႃႈယႃႇၶႃႈ!