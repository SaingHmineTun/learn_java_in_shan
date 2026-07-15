## 17: Introduction to GridBagLayout

ၼႂ်း Lesson ပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း `BorderLayout` လႄႈ `BoxLayout` ယဝ်ႉၶႃႈ။ 
Layout ၸိူဝ်းၼၼ်ႉ မၼ်းငၢႆႈလႄႈ ၸႂ်ႉလီသေတႃႉ၊ မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇၶူင်သၢင်ႈ Form ဢၼ်လၢၵ်ႇလၢႆး 
(ပိူင်ယၢင်ႇ - လွၵ်းလိၵ်ႈဢၼ်ၼိုင်ႈ ယၢဝ်းလိူဝ်လွၵ်းတၢင်ႇဢၼ်၊ ဢမ်ႇၼၼ် Button ဢၼ်ၼိုင်ႈ ၵႂၢင်ႈၵိၼ်ဢွင်ႈတီႈ 2 လွၵ်း)။

တွၼ်ႈတႃႇႁဵတ်းလႆႈလွင်ႈၼႆႉ၊ Java မီး Layout ဢၼ် **ႁႅင်းသုတ်း၊ ယၢပ်ႇသုတ်း လႄႈ လိူၵ်ႈလၢႆးၸႂ်ႉလႆႈလွတ်ႈလႅဝ်းသုတ်း** — ၼၼ်ႉပဵၼ် **`GridBagLayout`** ၶႃႈ။

### 1. GridBagLayout ပဵၼ်သင်?

**`GridBagLayout`** ၼႆႉ မၼ်းၶပ်ႉ Component ႁဝ်းပဵၼ်လွၵ်း (Grid / ၶူတ်ႉမၢႆ) မိူၼ်ၼင်ႇ `GridLayout` ၶႃႈ။
ၵူၺ်းၵႃႈ ဢၼ်လၢၵ်ႇလၢႆးသေပိူၼ်ႈတႄႉ:

* Component ၵူႈဢၼ် **ဢမ်ႇလူဝ်ႇမီးတင်းယႂ်ႇ ၽဵင်ႇပဵင်းၵၼ်**።
* Component ၼိုင်ႈဢၼ် ၸၢင်ႈ **ၵႂၢင်ႈၵိၼ်ဢွင်ႈတီႈလၢႆလၢႆလွၵ်း** (မိူၼ်ၼင်ႇ `colspan` လႄႈ `rowspan` ၼႂ်း HTML) လႆႈၶႃႈ။

### 2. လွင်ႈၸႂ်ႉ GridBagConstraints (ဝႂ်သင်ႇၵၢၼ်)

တွၼ်ႈတႃႇၸႂ်ႉ `GridBagLayout`၊ ႁဝ်းဢမ်ႇၵူၺ်းၸႂ်ႉ `frame.add(myButton)` လၢႆလၢႆ။ 
ႁဝ်းတေလႆႈမီး "ဝႂ်သင်ႇၵၢၼ်" ဢၼ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **`GridBagConstraints`** တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ Component ၼၼ်ႉ တေယူႇတီႈလွၵ်းလႂ်၊ တေၵႂၢင်ႈၵိၼ်လၢႆလွၵ်း၊ လႄႈ တေလၢၵ်ႈယိုတ်ႈၸိူင်ႉႁိုဝ် ၶႃႈ။

#### Properties ဢၼ်လမ်ႇလွင်ႈ ၶွင် GridBagConstraints:

1. **`gridx` လႄႈ `gridy**`: မၵ်းမၼ်ႈဢွင်ႈတီႈလွၵ်း (Column လႄႈ Row)။ တႄႇတီႈ 0, 0 (ၸဵင်ႇသၢႆႉၽၢႆႇၼိူဝ်)။
2. **`gridwidth` လႄႈ `gridheight**`: Component ၼၼ်ႉ တေၵႂၢင်ႈ/တေသုင် တႃႇလၢႆလွၵ်း? Default ပဵၼ် 1။
3. **`fill`**: ပေႃးလွၵ်းၼၼ်ႉ ယႂ်ႇလိူဝ် Component၊ တေႁႂ်ႈ Component ယိုတ်ႈၸွမ်းႁိုဝ်? (ပိူင်ယၢင်ႇ: `GridBagConstraints.HORIZONTAL` ႁႂ်ႈယိုတ်ႈၸွမ်းတၢင်းၼွၼ်း)။
4. **`insets`**: Padding (ၶၢင်ႈပဝ်ႇ) ႁွပ်ႈ Component။ ၸႂ်ႉ `new Insets(top, left, bottom, right)`။
5. **`weightx` လႄႈ `weighty**`: ပေႃးလၢၵ်ႈယိုတ်ႈ Window၊ လွၵ်းၼႆႉတေလႆႈဢဝ်ဢွင်ႈတီႈပဝ်ႇ ၼမ်ၵႃႈႁိုဝ်? (0.0 တွၼ်ႈတႃႇဢမ်ႇယိုတ်ႈ, 1.0 တွၼ်ႈတႃႇယိုတ်ႈဢဝ်တင်းသဵင်ႈ)။

---

### Code တူဝ်ယၢင်ႇ (Complex Form Demo)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Form ဢၼ်မီး "ၸိုဝ်ႈ", "လွၵ်းသႂ်ႇၸိုဝ်ႈ (ယၢဝ်း)", လႄႈ "Button ဢၼ်ၵႂၢင်ႈတႃႇ 2 လွၵ်း" ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class GridBagDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("GridBagLayout Demo");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // 1. မၵ်းမၼ်ႈ Layout
        frame.setLayout(new GridBagLayout());
        
        // 2. ၶူင်သၢင်ႈ GridBagConstraints (ဝႂ်သင်ႇၵၢၼ်)
        GridBagConstraints gbc = new GridBagConstraints();
        
        // သႂ်ႇ Padding 10 pixels ၵူႈၼႃႈ တွၼ်ႈတႃႇၵူႈ Component
        gbc.insets = new Insets(10, 10, 10, 10); 

        // --- Component 1: Label ---
        JLabel nameLabel = new JLabel("Full Name:");
        gbc.gridx = 0; // ထႅဝ်တင်ႈ 0
        gbc.gridy = 0; // ထႅဝ်ၼွၼ်း 0
        gbc.gridwidth = 1; // ၵိၼ်ဢွင်ႈတီႈ 1 လွၵ်း
        gbc.fill = GridBagConstraints.NONE; // ဢမ်ႇယိုတ်ႈ
        gbc.weightx = 0; // ဢမ်ႇယိုတ်ႈၸွမ်း window
        frame.add(nameLabel, gbc); // ဢဝ်ဝႂ်သင်ႇၵၢၼ် သႂ်ႇပႃးမိူဝ်ႈ add

        // --- Component 2: TextField ---
        JTextField nameField = new JTextField(15);
        gbc.gridx = 1; // ထႅဝ်တင်ႈ 1 (ယူႇၽၢႆႇၶႂႃ Label)
        gbc.gridy = 0; // ထႅဝ်ၼွၼ်း 0
        gbc.gridwidth = 1; // ၵိၼ်ဢွင်ႈတီႈ 1 လွၵ်း
        gbc.fill = GridBagConstraints.HORIZONTAL; // ႁႂ်ႈယိုတ်ႈၸွမ်းလႅဝ်းၼွၼ်း တဵမ်လွၵ်း
        gbc.weightx = 1.0; // ပေႃးယိုတ်ႈ window ႁႂ်ႈTextField ယိုတ်ႈၸွမ်း
        frame.add(nameField, gbc);

        // --- Component 3: Button ---
        JButton submitBtn = new JButton("Submit Data");
        gbc.gridx = 0; // ထႅဝ်တင်ႈ 0
        gbc.gridy = 1; // ထႅဝ်ၼွၼ်း 1 (ယူႇၽၢႆႇတႂ်ႈ)
        gbc.gridwidth = 2; // **လမ်ႇလွင်ႈ: ႁႂ်ႈ Button ၵႂၢင်ႈၵိၼ် 2 လွၵ်း (Column 0 လႄႈ 1)**
        gbc.fill = GridBagConstraints.HORIZONTAL; // ႁႂ်ႈယိုတ်ႈတဵမ် 2 လွၵ်းၼၼ်ႉ
        gbc.weightx = 1.0;
        frame.add(submitBtn, gbc);

        frame.setVisible(true);
    }
}

```

### ပိူဝ်ႈသင်လႄႈ Developer ၶဝ် ၵႆႉငိူင်ႉဝႄႈ GridBagLayout?

`GridBagLayout` ၼႆႉ ႁႅင်းတႄႉတႄႉသေတႃႉ၊ ၸိူင်ႉၼင်ႇသူၸဝ်ႈလႆႈႁၼ်ၼႂ်း code ၽၢႆၼိူဝ်ၼၼ်ႉ — တွၼ်ႈတႃႇသႂ်ႇ Component 3 ဢၼ်ၵူၺ်း ႁဝ်းလႆႈတႅမ်ႈ code ၼမ်လႄႈ သုၵ်ႉယုင်ႈတႄႉတႄႉၶႃႈ။
ပေႃး Form ႁဝ်းယႂ်ႇမႃး၊ လွင်ႈမႄး code (`gridx`, `gridy`) ၼၼ်ႉ တေယၢပ်ႇယဵၼ်းမႃးၶႃႈ။

ယွၼ်ႉၼၼ်လႄႈ၊ လၢႆးဢၼ် Developer ၶဝ်ၵႆႉၸႂ်ႉၼမ်သုတ်း တွၼ်ႈတႃႇၶူင်သၢင်ႈ UI ဢၼ်လၢၵ်ႇလၢႆး (Complex UI) ၼၼ်ႉ 
ပဵၼ် **လွင်ႈဢဝ် `JPanel` လၢႆလၢႆဢၼ် (ဢၼ်မီး Layout ငၢႆႈငၢႆႈမိူၼ်ၼင်ႇ `BorderLayout` လႄႈ `FlowLayout`) မႃးထပ်းၵၼ် (Nesting)** ၼၼ်ႉယဝ်ႉၶႃႈ။ 
ႁဝ်းတေၵႂႃႇႁဵၼ်းလွင်ႈၼႆႉၼႂ်း Lesson 18 လႄႈ 19 ၶႃႈ!