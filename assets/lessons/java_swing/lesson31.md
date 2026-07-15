## 31: Creating Toolbars for Quick Actions

ၼႂ်း Lesson 29 လႄႈ 30 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းလၢႆးၶူင်သၢင်ႈ Menu Bar လႄႈ Keyboard Shortcuts တွၼ်ႈတႃႇၸႂ်ႉတိုဝ်း Application ႁဝ်းယဝ်ႉၶႃႈ။ 
ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈ User ၶဝ် ၶႂ်ႈလႆႈလွၵ်းလၢႆး ဢၼ်ငၢႆႈသေၼၼ်ႉထႅင်ႈ — ၼၼ်ႉတႄႉပဵၼ် **Toolbar** (သဵၼ်ႈမၢႆ လဵၵ်ႉလဵၵ်ႉ ဢၼ်မီးႁၢင်ႈ / ႁူဝ်ၶေႃႈ ဢၼ်ၼဵၵ်းငၢႆႈငၢႆႈ ၽၢႆႇၼိူဝ် ၼႂ်း Window) ၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. JToolBar ပဵၼ်သင်?

**`JToolBar`** ၼႆႉ ပဵၼ် Container ဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇသိမ်း ၶူဝ်းၶွင် ဢၼ် User ၵႆႉၸႂ်ႉၼမ်သုတ်း (ပိူင်ယၢင်ႇ: New, Open, Save, Print) ႁႂ်ႈပဵၼ်ထႅဝ်ၼွၼ်း (Horizontal) ဢမ်ႇၼၼ် ထႅဝ်တင်ႈ (Vertical) ၶႃႈ။

* **Floating Feature:** ဢၼ်လၢၵ်ႇလၢႆးၶွင် Java Swing Toolbar တႄႉ မၼ်းၸၢင်ႈ "ၽူးၶိုၼ်ႈ (Float)" ဢွၵ်ႇမႃး ၼွၵ်ႈ Window ၵေႃႈလႆႈ (User ၸၢင်ႈဢဝ် Mouse ၸၼ်ဢဝ် Toolbar ၼၼ်ႉ ၵႂႃႇဝႆႉတီႈလႂ်ၵေႃႈလႆႈ)။ ႁဝ်းၸၢင်ႈပိၵ်ႉ (Disable) လွင်ႈၼႆႉလႆႈ ၸွမ်းလူၺ်ႈ `setFloatable(false)` ၶႃႈ။

### 2. လၢႆးၸႂ်ႉ JToolBar

လၢႆးၸႂ်ႉ Toolbar ၼႆႉ ငၢႆႈတႄႉတႄႉၶႃႈ။ ႁဝ်းၶူင်သၢင်ႈ `JToolBar` သေ ဢဝ် `JButton` ၵႂႃႇသႂ်ႇၼႂ်းမၼ်း။ ယဝ်ႉၵေႃႈ ဢဝ် Toolbar ၼၼ်ႉ ၵႂႃႇဝႆႉတီႈ **`BorderLayout.NORTH`** ၶွင် Frame ၶႃႈ။

```java
// 1. ၶူင်သၢင်ႈ Toolbar
JToolBar toolBar = new JToolBar();
toolBar.setFloatable(false); // ႁၢမ်ႈဢမ်ႇႁႂ်ႈ ၽူးဢွၵ်ႇၼွၵ်ႈ Window

// 2. ၶူင်သၢင်ႈ Button လႄႈ ဢဝ်သႂ်ႇၼႂ်း Toolbar
JButton saveBtn = new JButton("Save");
toolBar.add(saveBtn);

// 3. ဢဝ် Toolbar ၵႂႃႇသႂ်ႇၼႂ်း Frame (BORDERLAYOUT.NORTH)
frame.add(toolBar, BorderLayout.NORTH);

```

---

### Code တူဝ်ယၢင်ႇ (Notepad Toolbar Demo)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Toolbar ဢၼ်မီး Buttons တွၼ်ႈတႃႇ New, Open, လႄႈ Save သေ ဢဝ်ၵႂႃႇသႂ်ႇဝႆႉ ၼိူဝ် Notepad Window ႁဝ်းၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class ToolBarDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Notepad (With ToolBar)");
        frame.setSize(600, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // ==========================================
        // 1. ၶူင်သၢင်ႈ JToolBar
        // ==========================================
        JToolBar toolBar = new JToolBar();
        toolBar.setFloatable(false); // ႁဵတ်းႁႂ်ႈ မီးဝႆႉတီႈၵဝ်ႇ (Fixed)
        toolBar.setBackground(new Color(240, 240, 240));

        // ==========================================
        // 2. ၶူင်သၢင်ႈ Buttons တွၼ်ႈတႃႇ Toolbar
        // ==========================================
        JButton newBtn = new JButton("📄 New");
        JButton openBtn = new JButton("📂 Open");
        JButton saveBtn = new JButton("💾 Save");
        
        JButton cutBtn = new JButton("✂️ Cut");
        JButton copyBtn = new JButton("📋 Copy");
        JButton pasteBtn = new JButton("📌 Paste");

        // ႁဵတ်းႁႂ်ႈ Button ဢမ်ႇမီး Focus border (ႁႂ်ႈႁၢင်ႈလီ)
        newBtn.setFocusable(false);
        openBtn.setFocusable(false);
        saveBtn.setFocusable(false);
        cutBtn.setFocusable(false);
        copyBtn.setFocusable(false);
        pasteBtn.setFocusable(false);

        // ==========================================
        // 3. ဢဝ် Buttons သႂ်ႇၼႂ်း JToolBar
        // ==========================================
        toolBar.add(newBtn);
        toolBar.add(openBtn);
        toolBar.add(saveBtn);
        
        toolBar.addSeparator(); // ၶႅၼ်ႈၵၢင် (Separator)
        
        toolBar.add(cutBtn);
        toolBar.add(copyBtn);
        toolBar.add(pasteBtn);

        // ==========================================
        // 4. သႂ်ႇ Action ပၼ် Button ဢိတ်းၼိုင်ႈ
        // ==========================================
        saveBtn.addActionListener(e -> {
            JOptionPane.showMessageDialog(frame, "File saved via Toolbar button!");
        });

        // ==========================================
        // 5. ဢဝ် Components သႂ်ႇၼႂ်း Frame
        // ==========================================
        // ဢဝ် Toolbar ဝႆႉတီႈ NORTH (ၽၢႆႇၼိူဝ် ၼိူဝ် TextArea)
        frame.add(toolBar, BorderLayout.NORTH);

        // ဢဝ် JTextArea ၵႂႃႇသႂ်ႇၼႂ်း JScrollPane သေ ဝႆႉတီႈ CENTER
        JTextArea textArea = new JTextArea();
        textArea.setFont(new Font("Arial", Font.PLAIN, 14));
        frame.add(new JScrollPane(textArea), BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

### လွင်ႈၸႂ်ႉတိုဝ်း Toolbar

* **`toolBar.addSeparator()`**: ၸႂ်ႉတွၼ်ႈတႃႇၶူင်သၢင်ႈ ၶႅၼ်ႈထႅဝ်လဵၵ်ႉလဵၵ်ႉ ၼႂ်းၵႄႈ Buttons ၼၼ်ႉ ႁႂ်ႈၸႅၵ်ႇလႆႈဝႃႈ ဢၼ်လႂ်ပဵၼ် Group လႂ် ၶႃႈ။
* **`setFocusable(false)`**: ၵႆႉၸႂ်ႉတင်း Buttons ၼႂ်း Toolbar တွၼ်ႈတႃႇႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ Button ၼၼ်ႉ ၶၢမ်ႈဢဝ် Focus ၵႂႃႇပႅတ်ႈ ၽွင်းတိုၵ်ႉပေႃႉလိၵ်ႈယူႇၼႂ်း `JTextArea` ၼၼ်ႉၶႃႈ။