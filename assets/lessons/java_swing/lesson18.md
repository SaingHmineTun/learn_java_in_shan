## 18: Grouping Components with JPanels

ၼႂ်းလွင်ႈႁဵၼ်း Layout ၸိူဝ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းၸၢင်ႈတူပ်းလွင်ႈယၢပ်ႇၽိုတ်ႇ ဢၼ်ၼိုင်ႈ: **Layout ၼိုင်ႈဢၼ် ၸၢင်ႈမီးပိူင်ၶပ်ႉ (rules) လႆႈမဵဝ်းလဵဝ်ၵူၺ်း**။ 
ပိူင်ယၢင်ႇ - `BorderLayout.NORTH` ၼႆႉ ႁပ်ႉလႆႈ Component ဢၼ်လဵဝ်ၵူၺ်း၊ ပေႃးႁဝ်းၶႂ်ႈသႂ်ႇ Button 3 ဢၼ် ႁူမ်ႈၵၼ်တီႈ NORTH လူး? ႁဝ်းတေလႆႈၸႂ်ႉ **`JPanel`** မႃးၸွႆႈၶႃႈ။

### 1. JPanel ပဵၼ်သင်?

**`JPanel`** ၼႆႉ လႆႈဝႃႈမၼ်းပဵၼ် "ဢႅပ်ႇ (Box)" ဢမ်ႇၼၼ် "Container လဵၵ်ႉလဵၵ်ႉ" ဢၼ်ၼိုင်ႈ ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ ႁူမ်ႈ (Group) Component လၢႆလၢႆဢၼ် ႁႂ်ႈပဵၼ်ဢၼ်လဵဝ်ၵၼ်ၶႃႈ။

* `JPanel` ၼိုင်ႈဢၼ် ၸၢင်ႈမီး **Layout Manager ႁင်းၵူၺ်းမၼ်း** လႆႈ (ပိူင်ယၢင်ႇ: Panel A ၸႂ်ႉ `FlowLayout`, Panel B ၸႂ်ႉ `GridLayout`)။
* ႁဝ်းၸၢင်ႈဢဝ် Component ၸိူဝ်းပဵၼ် `JButton`, `JLabel` မႃးသႂ်ႇၼႂ်း `JPanel` ဢွၼ်တၢင်း။
* ယဝ်ႉၸင်ႇဢဝ် `JPanel` ၼၼ်ႉ ၵႂႃႇသႂ်ႇၼႂ်း `JFrame` ဢမ်ႇၼၼ် ၼႂ်း `JPanel` ထႅင်ႈဢၼ်ၼိုင်ႈလႆႈၶႃႈ။

### 2. လၢႆးၶူင်သၢင်ႈ လႄႈ ၸႂ်ႉတိုဝ်း JPanel

လၢႆးၸႂ်ႉ `JPanel` မၼ်းမိူၼ်ၵၼ်တင်း `JFrame` ၵူႈလွင်ႈလွင်ႈၶႃႈ:

```java
// 1. ၶူင်သၢင်ႈ JPanel
JPanel myPanel = new JPanel();

// 2. မၵ်းမၼ်ႈ Layout ပၼ် Panel (ပေႃးဢမ်ႇမၵ်းမၼ်ႈ Default မၼ်းပဵၼ် FlowLayout)
myPanel.setLayout(new FlowLayout());

// 3. ဢဝ် Components သႂ်ႇၼႂ်း Panel
myPanel.add(new JButton("A"));
myPanel.add(new JButton("B"));

// 4. ဢဝ် Panel တင်းဢၼ် ၵႂႃႇသႂ်ႇၼႂ်း Frame
frame.add(myPanel, BorderLayout.NORTH); // ဢဝ် Button 2 ဢၼ် ၵႂႃႇယူႇတီႈ NORTH

```

---

### Code တူဝ်ယၢင်ႇ (Toolbar ၸွမ်း JPanel)

ႁဝ်းမႃးၸၢမ်းၵႄႈလိတ်ႈ ပၼ်ႁႃ ဢၼ်ဝႃႈ `BorderLayout.NORTH` ႁပ်ႉလႆႈ Component ဢၼ်လဵဝ်ၼၼ်ႉၶႃႈ။ 
ႁဝ်းတေၶူင်သၢင်ႈ `JPanel` ဢၼ်ၼိုင်ႈ ႁႂ်ႈပဵၼ် Toolbar (မီး Button သၢမ်ဢၼ် ၶပ်ႉပၼ် သၢႆႉတေႃႇၶႂႃ) သေ ဢဝ်ၵႂႃႇဝႆႉတီႈ ၽၢႆႇၼိူဝ် (NORTH) ၶွင် Window ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class JPanelDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("JPanel Grouping Demo");
        frame.setSize(450, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // 1. မၵ်းမၼ်ႈ Layout ၶွင် Frame ပဵၼ် BorderLayout
        frame.setLayout(new BorderLayout());

        // ==========================================
        // ၶူင်သၢင်ႈ Toolbar Panel (တွၼ်ႈတႃႇသႂ်ႇတီႈ NORTH)
        // ==========================================
        JPanel toolbarPanel = new JPanel();
        // မၵ်းမၼ်ႈ ႁႂ်ႈ Button ၶပ်ႉၵၼ်ၽၢႆႇသၢႆႉ
        toolbarPanel.setLayout(new FlowLayout(FlowLayout.LEFT)); 
        toolbarPanel.setBackground(Color.LIGHT_GRAY); // မႄးသီပိုၼ်ႉလင် Panel ႁႂ်ႈႁၼ်လႆႈၸႅင်ႈ
        
        // ဢဝ် Buttons သႂ်ႇၼႂ်း Panel
        toolbarPanel.add(new JButton("New"));
        toolbarPanel.add(new JButton("Save"));
        toolbarPanel.add(new JButton("Print"));

        // ==========================================
        // ၶူင်သၢင်ႈ Content Panel (တွၼ်ႈတႃႇသႂ်ႇတီႈ CENTER)
        // ==========================================
        JPanel contentPanel = new JPanel();
        contentPanel.setLayout(new BorderLayout()); // Panel ၼႆႉ ၸႂ်ႉ BorderLayout ထႅင်ႈ
        contentPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20)); // သႂ်ႇ Padding
        
        JTextArea textArea = new JTextArea("Type your text here...");
        contentPanel.add(textArea, BorderLayout.CENTER);

        // ==========================================
        // ဢဝ် Panels တင်းသွင်ဢၼ် ၵႂႃႇသႂ်ႇၼႂ်း Frame
        // ==========================================
        frame.add(toolbarPanel, BorderLayout.NORTH); // Toolbar ၵႂႃႇယူႇၽၢႆႇၼိူဝ်
        frame.add(contentPanel, BorderLayout.CENTER); // TextArea ၵႂႃႇယူႇၵၢင်

        frame.setVisible(true);
    }
}

```

### ပိူဝ်ႈသင်လႄႈ JPanel လမ်ႇလွင်ႈ?

1. **လွင်ႈၸႅၵ်ႇတွၼ်ႈ (Modularity):** ပေႃး UI ႁဝ်းယႂ်ႇမႃး၊ ႁဝ်းၸၢင်ႈၸႅၵ်ႇ code ပဵၼ်တွၼ်ႈတွၼ်ႈ (ပိူင်ယၢင်ႇ: `createHeaderPanel()`, `createSidebarPanel()`) လႆႈငၢႆႈငၢႆႈၶႃႈ။
2. **လွင်ႈႁဵတ်းသီပိုၼ်ႉလင် (Backgrounds & Borders):** ႁဝ်းၸၢင်ႈသႂ်ႇ သီပိုၼ်ႉလင် ဢမ်ႇၼၼ် ၶွပ်ႇ (Border) တွၼ်ႈတႃႇၸႅၵ်ႇႁႂ်ႈႁၼ်လႆႈၸႅင်ႈဝႃႈ Component ၸိူဝ်းၼႆႉ ပဵၼ်ၵုမ်ႇလဵဝ်ၵၼ်ၶႃႈ။
3. **လွင်ႈၶပ်ႉ Layout ယၢပ်ႇ (Complex Layouts):** မိူၼ်ၼင်ႇဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 19၊ လွင်ႈဢဝ် `JPanel` ဢၼ်မီး Layout ဢမ်ႇမိူၼ်ၵၼ် မႃးသွၼ်ႉၵၼ် (Nesting) ၼၼ်ႉ ပဵၼ်လွၵ်းလၢႆး တွၼ်ႈတႃႇၶူင်သၢင်ႈ UI လၢၵ်ႇလၢႆး (ဢၼ်ငၢႆႈသေ လွင်ႈၸႂ်ႉ `GridBagLayout`) ၼၼ်ႉယဝ်ႉၶႃႈ။