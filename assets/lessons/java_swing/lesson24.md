## 24: Checkboxes and Radio Buttons

ၼႂ်း Lesson 22 လႄႈ 23 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း Dropdown လႄႈ List တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈၶေႃႈမုၼ်းယဝ်ႉၶႃႈ။
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵၼ်း Component ထႅင်ႈသွင်ဢၼ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ လိူၵ်ႈၶေႃႈမုၼ်း (Selection) ၼင်ႇၵဝ်ႇ — ၼၼ်ႉပဵၼ် **`JCheckBox`** လႄႈ **`JRadioButton`** ၶႃႈ။

သွင်ဢၼ်ၼႆႉ မီးၼႃႈတႃလႄႈ လွင်ႈႁဵတ်းၵၢၼ် လၢၵ်ႇလၢႆးၵၼ်ဢိတ်းၼိုင်ႈၶႃႈ။

### 1. JCheckBox (တွၼ်ႈတႃႇလိူၵ်ႈလႆႈ လၢႆဢၼ်)

**`JCheckBox`** ၼႆႉ ပဵၼ်လွၵ်းသီႇၸဵင်ႇလဵၵ်ႉလဵၵ်ႉ ဢၼ်မီးမၢႆတိၵ်း (Tick mark) ၶႃႈ။ မၼ်းသၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ လွင်ႈလိူၵ်ႈ ဢၼ် **"လိူၵ်ႈလႆႈလၢႆဢၼ်" (Multiple selections)** ဢမ်ႇၼၼ် တွၼ်ႈတႃႇ **"ပိုတ်ႇ/ပိၵ်ႉ" (Yes/No, True/False)** ၶႃႈ။

* **ပိူင်ယၢင်ႇ:** လိူၵ်ႈၽႃႇသႃႇၵႂၢမ်း ဢၼ်မေႃလၢတ်ႈ (Shan, Burmese, English — လိူၵ်ႈလႆႈတင်း 3 ဢၼ်)။

```java
// ၶူင်သၢင်ႈ JCheckBox သေ သႂ်ႇတူဝ်လိၵ်ႈ
JCheckBox javaCheck = new JCheckBox("Java");

// ႁဵတ်းႁႂ်ႈမၼ်း ထုၵ်ႇလိူၵ်ႈဝႆႉၸဵမ်ၸဝ်ႉ (Checked default)
javaCheck.setSelected(true);

// ၵူတ်ႇတူၺ်းဝႃႈ မၼ်းထုၵ်ႇလိူၵ်ႈဝႆႉႁိုဝ်ဢမ်ႇ (တေလႆႈ true / false)
boolean isSelected = javaCheck.isSelected();

```

### 2. JRadioButton (တွၼ်ႈတႃႇလိူၵ်ႈလႆႈ ဢၼ်လဵဝ်)

**`JRadioButton`** ၼႆႉ ပဵၼ်လွၵ်းမူၼ်းလဵၵ်ႉလဵၵ်ႉ ဢၼ်မီးမဵတ်ႉလမ်လမ် ၼႂ်းမၼ်းၶႃႈ။ မၼ်းသၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ လွင်ႈလိူၵ်ႈ ဢၼ် **"လိူၵ်ႈလႆႈဢၼ်လဵဝ်ၵူၺ်း" (Mutually exclusive selection)** ၶႃႈ။

* **ပိူင်ယၢင်ႇ:** လိူၵ်ႈပိူင်ၵူၼ်း (Male, Female, Other — လိူၵ်ႈလႆႈဢၼ်လဵဝ်ၵူၺ်း)။

#### လွင်ႈလမ်ႇလွင်ႈ: လွင်ႈၸႂ်ႉ ButtonGroup

ပေႃးႁဝ်းၵူၺ်းၶူင်သၢင်ႈ `JRadioButton` လၢႆလၢႆ 3 ဢၼ်သေ သႂ်ႇၼႂ်း Frame၊ User တေၸၢင်ႈလိူၵ်ႈလႆႈ တင်း 3 ဢၼ်ၶႃႈ (ဢၼ်ဢမ်ႇထုၵ်ႇမႅၼ်ႈ)။
တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈမၼ်း ႁူႉၸၵ်းၵၼ်ဝႃႈ "ပေႃးလိူၵ်ႈဢၼ်ၼိုင်ႈ တေလႆႈထွၼ်ဢွၵ်ႇဢၼ်ၵဝ်ႇ" ၼၼ်ႉ၊ ႁဝ်းတေလႆႈဢဝ်ၶဝ် ၵႂႃႇသႂ်ႇၼႂ်း **`ButtonGroup`** ဢွၼ်တၢင်းၶႃႈ။

```java
// 1. ၶူင်သၢင်ႈ JRadioButton သွင်ဢၼ်
JRadioButton maleRadio = new JRadioButton("Male");
JRadioButton femaleRadio = new JRadioButton("Female");

// 2. ၶူင်သၢင်ႈ ButtonGroup လႄႈ ဢဝ် Radio Buttons ၵႂႃႇသႂ်ႇၼႂ်းၵုမ်ႇ
ButtonGroup genderGroup = new ButtonGroup();
genderGroup.add(maleRadio);
genderGroup.add(femaleRadio);

// (မၢႆတွင်း: ႁဝ်းတိုၵ်ႉလူဝ်ႇ ဢဝ် Radio Buttons သႂ်ႇၼႂ်း Frame ယူႇၼင်ႇၵဝ်ႇ)

```

---

### Code တူဝ်ယၢင်ႇ (Profile Survey Form)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Form ဢၼ်မီးတင်း `JRadioButton` (တွၼ်ႈတႃႇလိူၵ်ႈ ပိူင်ၵူၼ်း) လႄႈ `JCheckBox` (တွၼ်ႈတႃႇလိူၵ်ႈ ၽႃႇသႃႇၵႂၢမ်း) သေ ပေႃးၼဵၵ်း Submit တေဢဝ်ၶေႃႈမုၼ်း မႃးၼႄပၼ်ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class CheckRadioDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Student Survey Form");
        frame.setSize(350, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // ၸႂ်ႉ BoxLayout လႅဝ်းတင်ႈ သေ သႂ်ႇ Padding ႁွပ်ႈမၼ်း
        frame.setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.Y_AXIS));
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        // ==========================================
        // 1. JRadioButton (တွၼ်ႈတႃႇ ပိူင်ၵူၼ်း / Gender)
        // ==========================================
        JLabel genderLabel = new JLabel("1. Select Gender:");
        genderLabel.setFont(new Font("Arial", Font.BOLD, 14));
        frame.add(genderLabel);

        JRadioButton maleRadio = new JRadioButton("Male");
        JRadioButton femaleRadio = new JRadioButton("Female");
        maleRadio.setSelected(true); // Default ႁႂ်ႈလိူၵ်ႈ Male ဝႆႉ

        // ဢဝ်သႂ်ႇၼႂ်း ButtonGroup တွၼ်ႈတႃႇႁႂ်ႈလိူၵ်ႈလႆႈ ဢၼ်လဵဝ်
        ButtonGroup genderGroup = new ButtonGroup();
        genderGroup.add(maleRadio);
        genderGroup.add(femaleRadio);

        frame.add(maleRadio);
        frame.add(femaleRadio);
        frame.add(Box.createVerticalStrut(15)); // ၶၢင်ႈပဝ်ႇ

        // ==========================================
        // 2. JCheckBox (တွၼ်ႈတႃႇ ၽႃႇသႃႇၵႂၢမ်း / Languages)
        // ==========================================
        JLabel langLabel = new JLabel("2. Languages Known:");
        langLabel.setFont(new Font("Arial", Font.BOLD, 14));
        frame.add(langLabel);

        JCheckBox shanCheck = new JCheckBox("Shan");
        JCheckBox myanmarCheck = new JCheckBox("Burmese");
        JCheckBox englishCheck = new JCheckBox("English");
        
        // JCheckBox ဢမ်ႇလူဝ်ႇ ButtonGroup ၶႃႈ ယွၼ်ႉလိူၵ်ႈလႆႈလၢႆဢၼ်
        frame.add(shanCheck);
        frame.add(myanmarCheck);
        frame.add(englishCheck);
        frame.add(Box.createVerticalStrut(20)); // ၶၢင်ႈပဝ်ႇ

        // ==========================================
        // 3. Submit Button လႄႈ Action
        // ==========================================
        JButton submitBtn = new JButton("Submit Survey");
        frame.add(submitBtn);

        submitBtn.addActionListener(e -> {
            // ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း ၶွင် Radio Button
            String gender = "Male";
            if (femaleRadio.isSelected()) {
                gender = "Female";
            }

            // ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း ၶွင် CheckBoxes (ဢဝ်မႃးႁူမ်ႈၵၼ်)
            String langs = "";
            if (shanCheck.isSelected()) langs += "Shan ";
            if (myanmarCheck.isSelected()) langs += "Burmese ";
            if (englishCheck.isSelected()) langs += "English ";
            
            if (langs.isEmpty()) langs = "None"; // ပေႃးဢမ်ႇလိူၵ်ႈသင်

            // ၼႄ ၽွၼ်းလႆႈ (Result)
            JOptionPane.showMessageDialog(frame, 
                "Gender: " + gender + "\n" +
                "Languages: " + langs
            );
        });

        frame.setVisible(true);
    }
}

```

### လွင်ႈၸႂ်ႉတိုဝ်း

| Component | Function in Shan | Rule of Thumb (ပိူင်ၸႂ်ႉတိုဝ်း) |
| --- | --- | --- |
| `JCheckBox` | လွၵ်းမၢႆတိၵ်း | ၸႂ်ႉတွၼ်ႈတႃႇ လွင်ႈဢၼ် **လိူၵ်ႈလႆႈလၢႆဢၼ် (0 ဢမ်ႇၼၼ် ၼမ်သေၼၼ်ႉ)** |
| `JRadioButton` | လွၵ်းမူၼ်း | ၸႂ်ႉတွၼ်ႈတႃႇ လွင်ႈဢၼ် **လႆႈလိူၵ်ႈ 1 ဢၼ် တႅတ်ႈတေႃး** (တေလႆႈၸႂ်ႉၵိုၵ်း `ButtonGroup`) |