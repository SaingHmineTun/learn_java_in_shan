## 19: Nesting Multiple Layouts Together

ၼႂ်း Lesson 18 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉလၢႆးၸႂ်ႉ `JPanel` တွၼ်ႈတႃႇႁူမ်ႈ Component လၢႆလၢႆဢၼ် ႁႂ်ႈပဵၼ်ဢၼ်လဵဝ်ၵၼ်သေ ဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `JFrame` လႆႈယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵၼ်း လၢႆးဢၼ် Developer ၶဝ်ၵႆႉၸႂ်ႉၼမ်သုတ်း တွၼ်ႈတႃႇၶူင်သၢင်ႈ UI ဢၼ်ယႂ်ႇလႄႈ လၢၵ်ႇလၢႆး — ၼၼ်ႉပဵၼ် **လွင်ႈဢဝ် `JPanel` သႂ်ႇၼႂ်း `JPanel` (Nesting Panels)** ၶႃႈ!

### 1. Nesting ပဵၼ်သင်?

**Nesting** ၼႆႉ ပွင်ႇဝႃႈ လွင်ႈဢဝ်ၶူဝ်းၶွင်ဢၼ်ၼိုင်ႈ ၵႂႃႇသႂ်ႇဝႆႉ ၼႂ်းၶူဝ်းၶွင်ထႅင်ႈဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ ဢႅပ်ႇၶဝ်ႈ ဢၼ်မီးဢႅပ်ႇလဵၵ်ႉလဵၵ်ႉ ၼႂ်းမၼ်းထႅင်ႈၼၼ်ႉၶႃႈ)။

ၼႂ်း Java Swing၊ ႁဝ်းၸၢင်ႈ:

1. ၶူင်သၢင်ႈ `JPanel` ငဝ်ႈ (Main Panel) ဢၼ်ၼိုင်ႈသေ မၵ်းမၼ်ႈ Layout ႁင်းမၼ်း (ပိူင်ယၢင်ႇ: `BorderLayout`)။
2. ၶူင်သၢင်ႈ `JPanel` လုၵ်ႈ (Sub Panels) လၢႆလၢႆဢၼ်သေ မၵ်းမၼ်ႈ Layout လၢၵ်ႇလၢႆးၵၼ် (ပိူင်ယၢင်ႇ: `GridLayout`, `FlowLayout`)။
3. ဢဝ် Panel လုၵ်ႈ ၸိူဝ်းၼၼ်ႉ ၵႂႃႇသႂ်ႇၼႂ်း Panel ငဝ်ႈ။

### 2. ပိူင်ယၢင်ႇ လွင်ႈဝူၼ်ႉ Layout (Thinking in Layouts)

မုင်ႈတူၺ်းမိူၼ်ႁဝ်း ၶႂ်ႈၶူင်သၢင်ႈ **Form ပၼ်ၶေႃႈမုၼ်း (Feedback Form)** ဢၼ်ၼိုင်ႈၶႃႈ:

* **ပိူင်လူင် (Frame):** ၸႂ်ႉ `BorderLayout`
* **NORTH:** ႁူဝ်ၶေႃႈ (Title)
* **CENTER:** ဢွင်ႈတီႈသႂ်ႇၶေႃႈမုၼ်း
* **SOUTH:** ႁွင်ႈတႃႇတမ်းပုမ်ႇ (Buttons)



ၵူၺ်းၵႃႈ တီႈ **CENTER** ၼၼ်ႉ မၼ်းဢမ်ႇၸႂ်ႈ လွၵ်းလိၵ်ႈဢၼ်လဵဝ်။ မၼ်းပဵၼ် Form ဢၼ်မီး "ၸိုဝ်ႈ", "လွၵ်းသႂ်ႇၸိုဝ်ႈ", "ဢီးမေးလ်", "လွၵ်းသႂ်ႇဢီးမေးလ်"။

* **ၵႄႈလိတ်ႈ:** ႁဝ်းတေၶူင်သၢင်ႈ `JPanel` မႂ်ႇဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ Form ၼႆႉသေ ၸႂ်ႉ `GridLayout(2, 2)`။ ယဝ်ႉၵွႆးဢဝ် Panel ၼႆႉ ၵႂႃႇသႂ်ႇတီႈ CENTER ၶွင် Frame ၶႃႈ။

တီႈ **SOUTH** ၼၼ်ႉၵေႃႈ တေသႂ်ႇဝႆႉပုမ်ႇ "Submit" လႄႈ "Cancel" သွင်ဢၼ်။

* **ၵႄႈလိတ်ႈ:** ႁဝ်းတေၶူင်သၢင်ႈ `JPanel` မႂ်ႇဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ Button သေ ၸႂ်ႉ `FlowLayout(FlowLayout.RIGHT)` (ႁႂ်ႈယူႇၽၢႆႇၶႂႃ)။ ယဝ်ႉၵွႆးဢဝ် Panel ၼႆႉ ၵႂႃႇသႂ်ႇတီႈ SOUTH ၶွင် Frame ၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Complex Feedback Form)

ၸၢမ်းတူၺ်း Code ဢၼ်ဢဝ် `BorderLayout`, `GridLayout`, လႄႈ `FlowLayout` မႃးထပ်းၵၼ် (Nesting) ၼင်ႇၼႆၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class NestedLayoutsDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Feedback Form (Nested Panels)");
        frame.setSize(400, 250);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // 1. Frame ငဝ်ႈ ၸႂ်ႉ BorderLayout လႄႈ သႂ်ႇ Padding ႁွပ်ႈမၼ်း
        frame.setLayout(new BorderLayout(10, 10));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        // ==========================================
        // 2. ၶူင်သၢင်ႈ Title (တွၼ်ႈတႃႇ NORTH)
        // ==========================================
        JLabel titleLabel = new JLabel("Please leave your feedback:", SwingConstants.CENTER);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
        frame.add(titleLabel, BorderLayout.NORTH); // သႂ်ႇၼႂ်း Frame

        // ==========================================
        // 3. ၶူင်သၢင်ႈ Form Panel (တွၼ်ႈတႃႇ CENTER) - ၸႂ်ႉ GridLayout
        // ==========================================
        JPanel formPanel = new JPanel();
        formPanel.setLayout(new GridLayout(2, 2, 10, 10)); // 2 Rows, 2 Cols
        
        formPanel.add(new JLabel("Full Name:"));
        formPanel.add(new JTextField());
        
        formPanel.add(new JLabel("Email Address:"));
        formPanel.add(new JTextField());
        
        frame.add(formPanel, BorderLayout.CENTER); // ဢဝ် Panel သႂ်ႇၼႂ်း Frame

        // ==========================================
        // 4. ၶူင်သၢင်ႈ Button Panel (တွၼ်ႈတႃႇ SOUTH) - ၸႂ်ႉ FlowLayout
        // ==========================================
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new FlowLayout(FlowLayout.RIGHT)); // ႁႂ်ႈ Button ယူႇၽၢႆႇၶႂႃ
        
        buttonPanel.add(new JButton("Cancel"));
        buttonPanel.add(new JButton("Submit"));
        
        frame.add(buttonPanel, BorderLayout.SOUTH); // ဢဝ် Panel သႂ်ႇၼႂ်း Frame

        // 5. ၼႄ Window
        frame.setVisible(true);
    }
}

```

### လွင်ႈလမ်ႇလွင်ႈ ၶွင် Nesting

* **သုၵ်ႉယုင်ႈလႄႈ ၸိုၼ်ႈသႂ် (Complex but Clean):** ถိုင်ဝႃႈ UI ႁဝ်းတေလၢၵ်ႇလၢႆး (Complex) ၵေႃႈယႃႇ၊ Code ႁဝ်းတေဢၢၼ်ႇငၢႆႈလႄႈ ၸိုၼ်ႈသႂ်ၶႃႈ။ ယွၼ်ႉဝႃႈ ႁဝ်းၸႅၵ်ႇလွင်ႈၶူင်သၢင်ႈပဵၼ်တွၼ်ႈတွၼ်ႈ (`formPanel`, `buttonPanel`) လႄႈ ဢမ်ႇလႆႈပိုင်ႈဢိင် `GridBagLayout` ဢၼ်ယၢပ်ႇယၢပ်ႇၼၼ်ႉၶႃႈ။
* **လွင်ႈလၢၵ်ႈယိုတ်ႈ (Responsiveness):** ပေႃးႁဝ်းၸႂ်ႉ Nesting သေ လၢၵ်ႈယိုတ်ႈ window၊ Layout ၵူႈဢၼ် တေၸွႆႈၵၼ်လၢၵ်ႈယိုတ်ႈၸွမ်းလွၵ်းလၢႆးမၼ်း (ပိူင်ယၢင်ႇ: TextField ၼႂ်း `GridLayout` တေယိုတ်ႈယၢဝ်းဢွၵ်ႇ፣ ၵူၺ်းၵႃႈ Button ၼႂ်း `FlowLayout` တေၵိုတ်းၶະၼၢတ်ႈၵဝ်ႇလႄႈ ယူႇၽၢႆႇၶႂႃတႃႇသေႇ)။