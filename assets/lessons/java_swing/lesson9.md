## 9: Password Fields & Data Masking

ၼႂ်း Lesson 8 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း `JTextField` လႄႈ `JTextArea` တွၼ်ႈတႃႇႁပ်ႉဢဝ် လိၵ်ႈထမ်ႇမတႃႇၵႂႃႇယဝ်ႉၶႃႈ။
ၵူၺ်းၵႃႈ ပေႃးဝႃႈႁဝ်းလူဝ်ႇႁပ်ႉဢဝ် ၶေႃႈမုၼ်းလပ်ႉ မိူၼ်ၼင်ႇ Password ဢမ်ႇၼၼ် PIN code လူး? 
ႁဝ်းတေဢမ်ႇၶႂ်ႈႁႂ်ႈ ၵူၼ်းဢၼ်ယူႇႁိမ်းၶၢင်ႈ လွမ်မုင်ႈႁၼ်လႆႈၶႃႈ။ တွၼ်ႈတႃႇလွင်ႈၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`JPasswordField`** ၶႃႈ။

### 1. JPasswordField ပဵၼ်သင်?

**`JPasswordField`** ၼႆႉ မၼ်းႁဵတ်းၵၢၼ်မိူၼ်ၵၼ်တင်း `JTextField` ၵူႈလွင်ႈလွင်ႈၶႃႈ (မၼ်းပဵၼ် subclass ၶွင် `JTextField`)။
ဢၼ်လၢၵ်ႇလၢႆးမၼ်းတႄႉ မၼ်းမီးလွင်ႈ **Data Masking** — ပွင်ႇဝႃႈ မိူဝ်ႈ user ပေႃႉလိၵ်ႈသႂ်ႇၼၼ်ႉ၊ မၼ်းတေဢမ်ႇၼႄတူဝ်လိၵ်ႈတႄႉတႄႉမၼ်းသေ 
တေဢဝ် တူဝ်ၸမ်ႈလမ် (`•`) ဢမ်ႇၼၼ် တူဝ်လၢဝ် (`*`) ၼႄတႅၼ်းပၼ်ၵူၺ်းၶႃႈ။

```java
// ၶူင်သၢင်ႈ JPasswordField ဢၼ်မီးတၢင်းၵႂၢင်ႈ 20 columns
JPasswordField passField = new JPasswordField(20);

```

### 2. လွင်ႈလႅၵ်ႈလၢႆႈ တူဝ်လပ်ႉ (Changing the Echo Character)

တူဝ်လိၵ်ႈဢၼ်ဢွၵ်ႇမႃးတႅၼ်းပၼ်ၼၼ်ႉ ႁွင်ႉဝႃႈ **Echo Character** ၶႃႈ။ Default မၼ်းတႄႉ တေပဵၼ်တူဝ်ၸမ်ႈလမ် (`•`)။
ပေႃးႁဝ်းၶႂ်ႈလၢႆႈပဵၼ် တူဝ်လၢဝ် ဢမ်ႇၼၼ် တူဝ်တၢင်ႇလွင်ႈၼႆ ႁဝ်းၸႂ်ႉ `setEchoChar()` လႆႈၶႃႈ:

```java
// လၢႆႈတူဝ်လပ်ႉ ႁႂ်ႈပဵၼ်တူဝ်လၢဝ်
passField.setEchoChar('*'); 

```

**လွင်ႈပိုတ်ႇၼႄ Password ၶိုၼ်း (Show Password):**
ပေႃးႁဝ်းၶႂ်ႈႁဵတ်း Function "Show Password" (ႁဵတ်းႁႂ်ႈမၼ်းၼႄတူဝ်လိၵ်ႈတႄႉတႄႉ ဢမ်ႇလပ်ႉဝႆႉယဝ်ႉ)၊ 
ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်မၼ်းပဵၼ် `0` ၶႃႈ:

```java
passField.setEchoChar((char) 0); // ပိုတ်ႇၼႄ Password တင်းသဵင်ႈ

```

### 3. လွင်ႈဢၢၼ်ႇဢဝ် Password ႁႂ်ႈလွတ်ႈၽေး (Reading Data Securely)

တွၼ်ႈတႃႇဢၢၼ်ႇဢဝ်လိၵ်ႈၼႂ်း `JPasswordField` ၼၼ်ႉ၊ ႁဝ်း **ဢမ်ႇထုၵ်ႇလီၸႂ်ႉ** `getText()` ၶႃႈ (Java လႆႈမၵ်းမၼ်ႈဝႃႈ မၼ်းပဵၼ် method ဢၼ် deprecated လႄႈ ဢမ်ႇလွတ်ႈၽေး)။

ယွၼ်ႉဝႃႈ `getText()` မၼ်းတေသူင်ႇဢွၵ်ႇမႃးပဵၼ် `String` ဢၼ်တေၵိုတ်းၶမ်ယူႇၼႂ်း Memory ၶွင်ၶွမ်ႇပိဝ်ႇတႃႇႁိုင်ႁိုင်သေ ၸၢင်ႈထုၵ်ႇ Hack လႆႈငၢႆႈၶႃႈ။ 
ၵွပ်ႈၼၼ်လႄႈ ႁဝ်းတေလႆႈၸႂ်ႉ **`getPassword()`** ဢၼ်တေသူင်ႇဢွၵ်ႇမႃးပဵၼ် `char[]` (Character Array) ၶႃႈ။

```java
// လၢႆးဢၢၼ်ႇဢဝ် Password ဢၼ်လွတ်ႈၽေး (Secure way)
char[] passwordChars = passField.getPassword();

// တွၼ်ႈတႃႇႁဵၼ်းၼႂ်းလွၵ်းလၢႆးငၢႆႈငၢႆႈ ႁဝ်းၸၢင်ႈလႅၵ်ႈမၼ်းပဵၼ် String ၶိုၼ်းလႆႈ ၼင်ႇၼႆ:
String password = new String(passwordChars);

```

---

### Code တူဝ်ယၢင်ႇ (Show/Hide Password Demo)

ၸၢမ်းတူၺ်း Code ဢၼ်မီးပႃး Checkbox တွၼ်ႈတႃႇ ပိုတ်ႇ/ပိၵ်ႉ လွင်ႈလပ်ႉ Password ၶႃႈ (ႁဝ်းတေႁဵၼ်းလွင်ႈ Action လိုၵ်ႉလိုၵ်ႉ ၼႂ်း Lesson တေမႃး)။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class PasswordDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Password Masking");
        frame.setSize(300, 150);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.LEFT, 15, 15));

        JLabel passLabel = new JLabel("Enter Password:");
        JPasswordField passField = new JPasswordField(15);
        passField.setEchoChar('*'); // သႂ်ႇတူဝ်လၢဝ်

        JCheckBox showPassCheck = new JCheckBox("Show Password");

        // သႂ်ႇ Action ပၼ် Checkbox (ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 10 & 11)
        showPassCheck.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (showPassCheck.isSelected()) {
                    passField.setEchoChar((char) 0); // ပိုတ်ႇၼႄတူဝ်လိၵ်ႈ
                } else {
                    passField.setEchoChar('*'); // လပ်ႉၶိုၼ်း
                }
            }
        });

        frame.add(passLabel);
        frame.add(passField);
        frame.add(showPassCheck);
        frame.setVisible(true);
    }
}

```

---

### Methods ဢၼ်လမ်ႇလွင်ႈ ၶွင် JPasswordField

| Method | Function in Shan |
| --- | --- |
| `setEchoChar(char)` | လႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈဢၼ်တေဢဝ်မႃးလပ်ႉ (ပိူင်ယၢင်ႇ `'*'` ဢမ်ႇၼၼ် `'-'`) |
| `setEchoChar((char) 0)` | ပိုတ်ႇပႅတ်ႈလွင်ႈလပ်ႉ ႁႂ်ႈၼႄတူဝ်လိၵ်ႈတႄႉတႄႉ (Unmask) |
| `getPassword()` | ဢၢၼ်ႇဢဝ် Password ဢွၵ်ႇမႃးပဵၼ် `char[]` (လွတ်ႈၽေးသေ `getText()`) |