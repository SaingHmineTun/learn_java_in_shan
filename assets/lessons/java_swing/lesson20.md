## 20: Creating Scrollable Views (JScrollPane)

ၼႂ်း Lesson 8 ၼၼ်ႉ ႁဝ်းယၢမ်ႈၸႂ်ႉ `JScrollPane` ၵႂႃႇဢိတ်းၼိုင်ႈ တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ `JTextArea` မီးတီႈလၢၵ်ႈ (Scrollbar) ယဝ်ႉၶႃႈ။
မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈၸႂ်ႉတိုဝ်း `JScrollPane` ႁႂ်ႈႁူႉလွင်ႈမၼ်းလီလီသေ တေဢဝ်မၼ်းမႃးၸွႆႈ ႁဵတ်းႁႂ်ႈ UI ဢၼ်ယႂ်ႇလႄႈ ယၢဝ်းၼၼ်ႉ လၢၵ်ႈတူၺ်းလႆႈ (Scrollable) ၶႃႈ။

### 1. ပိူဝ်ႈသင်လႄႈ လူဝ်ႇလႆႈၸႂ်ႉ JScrollPane?

Component ၼႂ်း Java Swing (မိူၼ်ၼင်ႇ `JTextArea`, `JPanel`, ဢမ်ႇၼၼ် `JTable`) ၼႆႉ **မၼ်းဢမ်ႇမီး Scrollbar ႁင်းၵူၺ်းမၼ်းၶႃႈ**။

ပေႃးၶေႃႈမုၼ်းမၼ်း ၼမ်ပူၼ်ႉၼႃႈၸေႃး (Window) ၵႂႃႇ၊ လိၵ်ႈ ဢမ်ႇၼၼ် Button ၸိူဝ်းဢၼ်မီးၽၢႆႇတႂ်ႈၼၼ်ႉ တေၶၢတ်ႇႁၢႆၵႂႃႇသေ 
ႁဝ်းတေဢမ်ႇၸၢင်ႈလၢၵ်ႈလူင်းတူၺ်းလႆႈ။ တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`JScrollPane`** ၶႃႈ။ 
လႆႈဝႃႈမၼ်းပဵၼ် "ၵႅဝ်ႈမုင်ႈ (Viewport)" ဢၼ်ဢဝ်မႃးႁေႃႇဝႆႉ Component ဢၼ်ယႂ်ႇယႂ်ႇၼၼ်ႉၶႃႈ။

### 2. လွင်ႈလမ်ႇလွင်ႈသုတ်း (The Golden Rule)

လွၵ်းလၢႆးၸႂ်ႉမၼ်းၼၼ်ႉ မီးၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈသုတ်းဢၼ်ၼိုင်ႈ: **ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် Component ၵႂႃႇသႂ်ႇၼႂ်း Frame ၵမ်းသိုဝ်ႈ!**
ႁဝ်းတေလႆႈဢဝ် Component သႂ်ႇၼႂ်း `JScrollPane` ဢွၼ်တၢင်း၊ ယဝ်ႉၵွႆးဢဝ် `JScrollPane` ၼၼ်ႉ ၵႂႃႇသႂ်ႇၼႂ်း Frame (ဢမ်ႇၼၼ် Panel) ၶႃႈ။

```java
JTextArea myText = new JTextArea(10, 20);

// ❌ ဢမ်ႇထုၵ်ႇမႅၼ်ႈ (တေဢမ်ႇမီး Scrollbar)
// frame.add(myText); 

// ✅ ထုၵ်ႇမႅၼ်ႈ (ဢဝ် myText သႂ်ႇၼႂ်း JScrollPane ဢွၼ်တၢင်း)
JScrollPane scrollPane = new JScrollPane(myText); 
frame.add(scrollPane); // ယဝ်ႉၵွႆးဢဝ် scrollPane ၵႂႃႇသႂ်ႇၼႂ်း Frame

```

### 3. လွင်ႈၵုမ်းထိင်း Scrollbar (Scrollbar Policies)

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ Scrollbar ၽၢႆႇတင်ႈ (Vertical) လႄႈ ၽၢႆႇၼွၼ်း (Horizontal) ၼၼ်ႉ ၼႄတႃႇသေႇ၊ 
ဢမ်ႇၼၼ် ႁၢမ်ႈဢမ်ႇႁႂ်ႈမၼ်းဢွၵ်ႇမႃးၼႆ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Policy မၼ်းလႆႈၶႃႈ:

* **`AS_NEEDED`** (Default): တေၼႄ Scrollbar မိူဝ်ႈၶေႃႈမုၼ်း ယႂ်ႇပူၼ်ႉၼႃႈၸေႃးၵူၺ်း။
* **`ALWAYS`**: တေၼႄ Scrollbar တႃႇသေႇ ဢမ်ႇဝႃႈၶေႃႈမုၼ်းတေလဵၵ်ႉဢမ်ႇၼၼ်ယႂ်ႇ။
* **`NEVER`**: ႁၢမ်ႈဢမ်ႇႁႂ်ႈၼႄ Scrollbar သေပွၵ်ႈ။

```java
// ႁဵတ်းႁႂ်ႈ Scrollbar လႅဝ်းတင်ႈ (Vertical) ၼႄတႃႇသေႇ
scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

// ႁၢမ်ႈဢမ်ႇႁႂ်ႈ Scrollbar လႅဝ်းၼွၼ်း (Horizontal) ဢွၵ်ႇမႃး
scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);

```

### 4. လွင်ႈဢဝ် JPanel သႂ်ႇၼႂ်း JScrollPane (Scrollable Dashboard)

`JScrollPane` ၼႆႉ ဢမ်ႇၸႂ်ႈဝႃႈ ၸႂ်ႉလႆႈတင်း `JTextArea` ဢၼ်လဵဝ်။ ႁဝ်းၸၢင်ႈဢဝ် **`JPanel`** တင်းဢၼ် (ဢၼ်မီး Button ဢမ်ႇၼၼ် Form ၼမ်ၼမ်) ၵႂႃႇသႂ်ႇၼႂ်း `JScrollPane` လႆႈၶႃႈ။ 
လွင်ႈၼႆႉ လမ်ႇလွင်ႈတႄႉတႄႉ တွၼ်ႈတႃႇၶူင်သၢင်ႈ Dashboard ဢမ်ႇၼၼ် သဵၼ်ႈမၢႆ (List) ဢၼ်ယၢဝ်းယၢဝ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Scrollable List of Items)

ၸၢမ်းတူၺ်း Code ဢၼ်ၶူင်သၢင်ႈ `JPanel` ဢၼ်မီး Button 20 ဢၼ် (ဢၼ်တေယၢဝ်းပူၼ်ႉ Window) သေ ဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `JScrollPane` ၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class ScrollPaneDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Scrollable Panel Demo");
        frame.setSize(300, 250); // Window ႁဝ်းမီးတၢင်းသုင် 250px ၵူၺ်း
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 1. ၶူင်သၢင်ႈ JPanel ဢၼ်ၸႂ်ႉ BoxLayout (တၢင်းတင်ႈ)
        JPanel listPanel = new JPanel();
        listPanel.setLayout(new BoxLayout(listPanel, BoxLayout.Y_AXIS));

        // 2. ၸႂ်ႉ Loop သေ ၶူင်သၢင်ႈ Button 20 ဢၼ် သႂ်ႇၼႂ်း listPanel
        for (int i = 1; i <= 20; i++) {
            JButton btn = new JButton("Dashboard Item #" + i);
            btn.setAlignmentX(Component.CENTER_ALIGNMENT); // ႁႂ်ႈ Button ယူႇၵၢင်
            
            listPanel.add(btn);
            listPanel.add(Box.createVerticalStrut(10)); // သႂ်ႇၶၢင်ႈပဝ်ႇ
        }

        // 3. ဢဝ် listPanel တင်းဢၼ် ၵႂႃႇသႂ်ႇၼႂ်း JScrollPane
        // ယွၼ်ႉဝႃႈ Button 20 ဢၼ်ၼႆႉ တေယၢဝ်းပူၼ်ႉ 250px ၶႃႈ
        JScrollPane scrollPane = new JScrollPane(listPanel);
        
        // ႁဵတ်းႁႂ်ႈ Scrollbar ၽၢႆႇတင်ႈ ၼႄတႃႇသေႇ
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        
        // ႁဵတ်းႁႂ်ႈလွင်ႈလၢၵ်ႈ (Scroll speed) မၼ်းဝႆးမႃးဢိတ်းၼိုင်ႈ
        scrollPane.getVerticalScrollBar().setUnitIncrement(16);

        // 4. ဢဝ် scrollPane သႂ်ႇၼႂ်း Frame (ဢမ်ႇၸႂ်ႈဢဝ် listPanel သႂ်ႇၵမ်းသိုဝ်ႈ)
        frame.add(scrollPane, BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

*ပေႃးႁဝ်း run code ၼႆႉ၊ တေလႆႈႁၼ်ဝႃႈ window တေလဵၵ်ႉၵေႃႈ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Mouse သေ လၢၵ်ႈလူင်းၵႂႃႇတူၺ်း Button ဢၼ်ထူၼ်ႈ 20 လႆႈငၢႆႈငၢႆႈၶႃႈ။ 
`setUnitIncrement(16)` ၼၼ်ႉ ပဵၼ် Trick လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Scroll speed (လွင်ႈလၢၵ်ႈ) မၼ်းလဵၼ်ႈလႆႈဝႆး လႄႈ သၢင်ႇထုၵ်ႇလိူဝ်ၵဝ်ႇၶႃႈ။*