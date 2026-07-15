## 29: Building Menu Bars (JMenuBar, JMenu, JMenuItem)

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Module 5 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈၶူင်သၢင်ႈ UI ဢၼ်ၸွႆႈႁႂ်ႈ User ၸႂ်ႉတိုဝ်း Application ႁဝ်းလႆႈငၢႆႈ လႄႈ မိူၼ်ပိူင်သၢင်ႈ Application ယႂ်ႇယႂ်ႇတႄႉတႄႉၶႃႈ (ပိူင်ယၢင်ႇ မိူၼ်ၼင်ႇ VS Code ဢမ်ႇၼၼ် Microsoft Word)။

ႁဝ်းတေတႄႇၵၼ်တီႈ လွင်ႈၶူင်သၢင်ႈ **Menu Bar** ဢၼ်ယူႇၽၢႆႇၼိူဝ်သုတ်း ၶွင် Window ၼၼ်ႉၶႃႈ။ တွၼ်ႈတႃႇႁဵတ်းလႆႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈႁူႉၸၵ်း Component သၢမ်ဢၼ် ဢၼ်ႁဵတ်းၵၢၼ်ၵိုၵ်းၵၼ်ၶႃႈ။

### 1. လၢႆးႁဵတ်းၵၢၼ် ၶွင် Menu (The Menu Hierarchy)

တွၼ်ႈတႃႇၶူင်သၢင်ႈ Menu ဢၼ်တဵမ်ထူၼ်ႈၼၼ်ႉ ႁဝ်းတေလႆႈဢဝ် Component 3 ၸၼ်ႉ မႃးထပ်းၵၼ် (Nesting) ၶႃႈ:

1. **`JMenuBar` (ထႅဝ်ၼွၼ်း):** ပဵၼ်ၶွပ်ႇယၢဝ်းယၢဝ်း ဢၼ်ယူႇၽၢႆႇၼိူဝ်သုတ်း ၶွင် Window။ မၼ်းပဵၼ် "ဢႅပ်ႇ" တွၼ်ႈတႃႇသိမ်း `JMenu` တင်းသဵင်ႈ။
2. **`JMenu` (ႁူဝ်ၶေႃႈ):** ပဵၼ်ႁူဝ်ၶေႃႈ ဢၼ်ႁဝ်းႁၼ်ၼိူဝ် Menu Bar (ပိူင်ယၢင်ႇ: **File**, **Edit**, **View**)။
3. **`JMenuItem` (ၶေႃႈမုၼ်း လႄႈ Action):** ပဵၼ်လွင်ႈတူင်ႉၼိုင် တႄႉတႄႉ ဢၼ်လပ်ႉဝႆႉၼႂ်း JMenu သေ၊ ပေႃးႁဝ်းၼဵၵ်း JMenu ၸင်ႇတေဢွၵ်ႇမႃး (ပိူင်ယၢင်ႇ: **New**, **Open**, **Save**, **Exit**)။ ႁဝ်းၸၢင်ႈဢဝ် `ActionListener` ၵႂႃႇၸပ်းသႂ်ႇတီႈ `JMenuItem` လႆႈ မိူၼ်ၼင်ႇ Button ၶႃႈ။

### 2. The Golden Rule ၶွင် JMenuBar

လွင်ႈလမ်ႇလွင်ႈသုတ်း ဢၼ်လုၵ်ႈႁဵၼ်းၶဝ် ၵႆႉၽိတ်းၼၼ်ႉ ပဵၼ်လၢႆးဢဝ် Menu Bar ၵႂႃႇသႂ်ႇၼႂ်း Frame ၶႃႈ။

ႁဝ်း **ဢမ်ႇၸႂ်ႉ** Method `frame.add(menuBar)` ဢမ်ႇၼၼ် `frame.add(menuBar, BorderLayout.NORTH)` ၶႃႈ!

`JFrame` မီး Method ၶိုၵ်ႉတွၼ်းႁင်းမၼ်း တွၼ်ႈတႃႇ Menu Bar တီႈလဵဝ်:

```java
// ✅ လၢႆးဢၼ်ထုၵ်ႇမႅၼ်ႈ
frame.setJMenuBar(myMenuBar);

```

မၼ်းတေဢဝ် Menu Bar ၼၼ်ႉ ၵႂႃႇဝႆႉပၼ် ၽၢႆႇၼိူဝ်သုတ်း (ၼိူဝ် Content လႄႈ Layout တင်းသဵင်ႈ) ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Basic Text Editor Menu)

ႁဝ်းမႃးၸၢမ်းၶူင်သၢင်ႈ Menu လဵၵ်ႉလဵၵ်ႉ ဢၼ်မီး "File" လႄႈ "Help" ၶႃႈ။ ၼႂ်း File ၼၼ်ႉ တေမီး New, Open လႄႈ Exit ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class MenuBarDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Notepad Menu");
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // ==========================================
        // 1. ၶူင်သၢင်ႈ JMenuBar (ၸၼ်ႉငဝ်ႈ)
        // ==========================================
        JMenuBar menuBar = new JMenuBar();

        // ==========================================
        // 2. ၶူင်သၢင်ႈ JMenu (ႁူဝ်ၶေႃႈ "File" လႄႈ "Help")
        // ==========================================
        JMenu fileMenu = new JMenu("File");
        JMenu helpMenu = new JMenu("Help");

        // ==========================================
        // 3. ၶူင်သၢင်ႈ JMenuItem (Action တႄႉတႄႉ)
        // ==========================================
        JMenuItem newItem = new JMenuItem("New");
        JMenuItem openItem = new JMenuItem("Open");
        JMenuItem exitItem = new JMenuItem("Exit");
        
        JMenuItem aboutItem = new JMenuItem("About TMK Notepad");

        // သႂ်ႇ Action ပၼ် JMenuItem (မိူၼ်ၼင်ႇ Button)
        exitItem.addActionListener(e -> {
            System.exit(0); // ပိၵ်ႉ Program ၵမ်းလဵဝ်
        });
        
        aboutItem.addActionListener(e -> {
            JOptionPane.showMessageDialog(frame, "Created by Sai Mao\nVersion 1.0");
        });

        // ==========================================
        // 4. ဢဝ် Component မႃးထပ်းၵၼ် (Assembly)
        // ==========================================
        
        // ဢဝ် Items သႂ်ႇၼႂ်း File Menu
        fileMenu.add(newItem);
        fileMenu.add(openItem);
        fileMenu.addSeparator(); // ထႅမ်သႂ်ႇ ၶႅၼ်ႈၵၢင် (Separator line)
        fileMenu.add(exitItem);

        // ဢဝ် Items သႂ်ႇၼႂ်း Help Menu
        helpMenu.add(aboutItem);

        // ဢဝ် JMenu တင်းသွင်ဢၼ် သႂ်ႇၼႂ်း JMenuBar
        menuBar.add(fileMenu);
        menuBar.add(helpMenu);

        // ==========================================
        // 5. ဢဝ် JMenuBar သႂ်ႇၼႂ်း Frame (*** ၸႂ်ႉ setJMenuBar ***)
        // ==========================================
        frame.setJMenuBar(menuBar);

        // ဢဝ် JTextArea သႂ်ႇၼႂ်း Center တွၼ်ႈတႃႇႁႂ်ႈမိူၼ် Notepad
        frame.add(new JScrollPane(new JTextArea()), BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

### လွင်ႈမၢႆတွင်း: `addSeparator()`

ၼႂ်း Code ပႃႈၼိူဝ်ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ `fileMenu.addSeparator();` ၶႃႈ။ မၼ်းတေၶူင်သၢင်ႈ ထႅဝ်လဵၵ်ႉလဵၵ်ႉ ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇၶႅၼ်ႈၵၢင် (Group) `JMenuItem` ဢၼ်ၶဝ်ႈၶိူဝ်းၵၼ်ၼၼ်ႉ ႁႂ်ႈႁၢင်ႈလီ လႄႈ တူၺ်းငၢႆႈမႃးၶႃႈ။ (ၵႆႉဢဝ်ၶႅၼ်ႈၵၢင် ၼႃႈတေထိုင် "Exit")။