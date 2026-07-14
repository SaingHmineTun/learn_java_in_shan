## 8: Text Fields (JTextField) & Text Areas

ၼႂ်း Project လိုၼ်းသုတ်း ၶွင် Module 1 ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉဝႆႉ `JTextField` ဝႆႉ တွၼ်ႈတႃႇတေဢဝ် Username ယဝ်ႉၶႃႈ။ 
ၼႂ်း Module 2 ၼႆႉ ႁဝ်းတေမႃးတႄႇႁဵၼ်း လၢႆးႁပ်ႉဢဝ် ၶေႃႈမုၼ်း (Input) တီႈ user ၶဝ် ႁႂ်ႈလိုၵ်ႉလိုၵ်ႉလွင်ႈလွင်ႈၶႃႈ။

တွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈၼၼ်ႉ Java Swing မီး Components ဝႆႉယူႇ 2 ဢၼ် ဢၼ်ၸႂ်ႉၼမ်ၶႃႈ - ၼၼ်ႉပဵၼ် **`JTextField`** လႄႈ **`JTextArea`** ၶႃႈ။

### 1. JTextField (တွၼ်ႈတႃႇလိၵ်ႈ ထႅဝ်လဵဝ်)

**`JTextField`** ၼႆႉ ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈ ဢၼ်မီးထႅဝ်လဵဝ် (Single-line input) ၶႃႈ။
မၼ်းသၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ ႁပ်ႉဢဝ် ၸိုဝ်ႈ (Name), ဢီးမေးလ် (Email), ဢမ်ႇၼၼ် မၢႆၽူင်း (Phone Number)။

```java
// ၶူင်သၢင်ႈ JTextField သေ မၵ်းမၼ်ႈတၢင်းၵႂၢင်ႈမၼ်းပဵၼ် 20 တူဝ်လိၵ်ႈ (Columns)
JTextField nameField = new JTextField(20);

// ဢဝ်လိၵ်ႈသႂ်ႇဝႆႉၼႂ်းမၼ်း ၸဵမ်ၸဝ်ႉ
nameField.setText("Enter your name here");

```

### 2. JTextArea (တွၼ်ႈတႃႇလိၵ်ႈ လၢႆထႅဝ်)

**`JTextArea`** ၼႆႉ ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈ ဢၼ်မီးလၢႆလၢႆထႅဝ် (Multi-line input) ၶႃႈ။ 
မၼ်းသၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ ႁပ်ႉဢဝ် တီႈယူႇယူႇ (Address), ၶေႃႈမၢႆတွင်း (Comments), ဢမ်ႇၼၼ် တွၼ်ႈလိၵ်ႈယၢဝ်းယၢဝ်း။

```java
// ၶူင်သၢင်ႈ JTextArea သေ မၵ်းမၼ်ႈ 5 ထႅဝ် (Rows) လႄႈ 20 တူဝ်လိၵ်ႈ (Columns)
JTextArea addressArea = new JTextArea(5, 20);

// ႁဵတ်းႁႂ်ႈလိၵ်ႈ တူၵ်းထႅဝ်မႂ်ႇႁင်းၵူၺ်း ပေႃးဝႃႈသုတ်းတၢင်းၵႂၢင်ႈ (Line Wrap)
addressArea.setLineWrap(true);
addressArea.setWrapStyleWord(true); // ဢမ်ႇႁႂ်ႈတူဝ်လိၵ်ႈၶၢတ်ႇၶိုင်ႈၵၼ်

```

### 3. လွင်ႈၸႂ်ႉ JScrollPane (သႂ်ႇတီႈလၢၵ်ႈပၼ် JTextArea)

ဢၼ်လမ်ႇလွင်ႈသုတ်း မိူဝ်ႈၸႂ်ႉ `JTextArea` ၼၼ်ႉပဵၼ် - မၼ်းဢမ်ႇမီး Scrollbar (တီႈလၢၵ်ႈ) ႁင်းၵူၺ်းမၼ်းၶႃႈ။ 
ပေႃး user ၶဝ် ပေႃႉလိၵ်ႈၼမ်ပူၼ်ႉၼႃႈၸေႃးၵႂႃႇ ၶဝ်တေဢမ်ႇၸၢင်ႈလၢၵ်ႈတူၺ်းၶိုၼ်းလႆႈ။

တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈဢဝ် `JTextArea` ၵႂႃႇသႂ်ႇဝႆႉၼႂ်း **`JScrollPane`** ဢွၼ်တၢင်း ၸင်ႇၵွႆးဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `JFrame` ၶႃႈ:

```java
JTextArea commentArea = new JTextArea(5, 20);
// ဢဝ် Text Area သႂ်ႇၼႂ်း Scroll Pane
JScrollPane scrollPane = new JScrollPane(commentArea); 
// ဢဝ် Scroll Pane ၵႂႃႇသႂ်ႇၼႂ်း Frame (ဢမ်ႇၸႂ်ႈဢဝ် Text Area သႂ်ႇၵမ်းသိုဝ်ႈ)
frame.add(scrollPane);

```

---

### Code တူဝ်ယၢင်ႇ (Putting it together)

ၸၢမ်းဢဝ် `JTextField` လႄႈ `JTextArea` မႃးၶပ်ႉၵၼ်ၼႂ်း `FlowLayout` တူၺ်းၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class TextInputDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Student Info");
        frame.setSize(350, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.LEFT, 20, 20));

        // --- 1. Single-line Input (JTextField) ---
        JLabel nameLabel = new JLabel("Student Name:");
        JTextField nameField = new JTextField(20);
        
        // --- 2. Multi-line Input (JTextArea) ---
        JLabel addressLabel = new JLabel("Home Address:");
        JTextArea addressArea = new JTextArea(5, 20);
        addressArea.setLineWrap(true);
        addressArea.setWrapStyleWord(true);
        
        // ဢဝ် JTextArea သႂ်ႇၼႂ်း JScrollPane
        JScrollPane scrollPane = new JScrollPane(addressArea);

        // --- 3. Add to Frame ---
        frame.add(nameLabel);
        frame.add(nameField);
        frame.add(addressLabel);
        frame.add(scrollPane); // ဢဝ် ScrollPane သႂ်ႇ

        frame.setVisible(true);
    }
}

```

---

### Methods ဢၼ်လမ်ႇလွင်ႈ

| Method | Component | Function in Shan |
| --- | --- | --- |
| `getText()` | တင်းသွင်ဢၼ် | ဢၢၼ်ႇဢဝ် လိၵ်ႈဢၼ် user ပေႃႉသႂ်ႇဝႆႉ ဢွၵ်ႇမႃးပဵၼ် String |
| `setText(String)` | တင်းသွင်ဢၼ် | လႅၵ်ႈလၢႆႈ ဢမ်ႇၼၼ် သႂ်ႇလိၵ်ႈမႂ်ႇ ၶဝ်ႈၵႂႃႇၼႂ်းလွၵ်း |
| `setLineWrap(true)` | `JTextArea` ၵူၺ်း | ႁဵတ်းႁႂ်ႈလိၵ်ႈတူၵ်းထႅဝ်မႂ်ႇႁင်းၵူၺ်း ပေႃးသုတ်းၶွပ်ႇလွၵ်း |
| `setEditable(false)` | တင်းသွင်ဢၼ် | ႁၢမ်ႈဢမ်ႇႁႂ်ႈ user မႄးလိၵ်ႈလႆႈ (ပဵၼ် Read-only) |