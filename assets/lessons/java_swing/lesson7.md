## 7: Project: Basic User Login Interface

ယၢမ်းလဵဝ် ႁဝ်းလႆႈႁဵၼ်းမႃး `JFrame`, `JLabel`, `JButton`, Layout Managers (မိူၼ်ၼင်ႇ `GridLayout`)၊ လႄႈ လွင်ႈမႄး သီ, ၽွၼ်ႉ, ၶွပ်ႇ (Borders) ယဝ်ႉၶႃႈ။ 
ၼႂ်း Lesson လိုၼ်းသုတ်း ၶွင် Module 1 ၼႆႉ၊ ႁဝ်းတေဢဝ် ၶေႃႈမုၼ်းတင်းသဵင်ႈ ဢၼ်ႁဵၼ်းမႃးၼၼ်ႉ မႃးၶူင်သၢင်ႈ **Login Interface** (ၼႃႈၸေႃးၶဝ်ႈလွၵ်ႉဢိၼ်) ဢၼ်ႁၢင်ႈလီ တွၼ်ႈတႃႇ Project ႁဝ်းၶႃႈ။

> **မၢႆတွင်း:** ၼႂ်း Project ၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ `JTextField` (တွၼ်ႈတႃႇသႂ်ႇ Username) လႄႈ `JPasswordField` (တွၼ်ႈတႃႇသႂ်ႇ Password) ဢၼ်ႁဝ်းပႆႇလႆႈႁဵၼ်းတႄႉတႄႉ။ ၵူၺ်းၵႃႈ လၢႆးၸႂ်ႉမၼ်း မိူၼ်ၵၼ်တင်း `JButton` ၵူၺ်းၶႃႈ။ (ႁဝ်းတေၵႂႃႇႁဵၼ်းလိုၵ်ႉလိုၵ်ႉၼႂ်း Module 2)።

### ပိူင်သၢင်ႈ Project (Project Architecture)

ႁဝ်းတေၸႂ်ႉ **`GridLayout(3, 2)`** တွၼ်ႈတႃႇၶပ်ႉ Component ႁဝ်းႁႂ်ႈပဵၼ် 3 ထႅဝ် လႄႈ 2 ၵိင်ႇ (Columns):

* **ထႅဝ် 1:** Label (Username) + TextField (သႂ်ႇၸိုဝ်ႈ)
* **ထႅဝ် 2:** Label (Password) + PasswordField (သႂ်ႇပၢတ်ႉဝိူတ်ႉ)
* **ထႅဝ် 3:** (ပဝ်ႇဝႆႉ) + Button (ပုမ်ႇတွၼ်ႈတႃႇ Login)

---

### Code တႃႇ Project

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class LoginProject {
    public static void main(String[] args) {
        // 1. ၶူင်သၢင်ႈ JFrame
        JFrame frame = new JFrame("TMK System Login");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null); // ဝႆႉၵၢင် Screen

        // 2. မၵ်းမၼ်ႈ Layout ပဵၼ် GridLayout (3 rows, 2 cols, gap x 10, gap y 15)
        frame.setLayout(new GridLayout(3, 2, 10, 15));
        
        // သႂ်ႇ Padding ႁွပ်ႈ Window (ႁႂ်ႈမၼ်းပဝ်ႇ 20 pixels သီႇၼႃႈ)
        // ႁဝ်းတေလႆႈၸႂ်ႉ 'getContentPane()' တွၼ်ႈတႃႇသႂ်ႇ Border ပၼ် window
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        // 3. ၶူင်သၢင်ႈ Components လႄႈ မႄး Font
        Font defaultFont = new Font("Arial", Font.PLAIN, 14);

        JLabel userLabel = new JLabel("Username:");
        userLabel.setFont(defaultFont);
        
        JTextField userField = new JTextField(); // ဢွင်ႈတီႈသႂ်ႇလိၵ်ႈ
        userField.setFont(defaultFont);

        JLabel passLabel = new JLabel("Password:");
        passLabel.setFont(defaultFont);
        
        JPasswordField passField = new JPasswordField(); // ဢွင်ႈတီႈသႂ်ႇလိၵ်ႈ (တေလပ်ႉဝႆႉ)
        passField.setFont(defaultFont);

        // 4. ၶူင်သၢင်ႈ Button လႄႈ မႄး သီ (Colors)
        JButton loginButton = new JButton("Login");
        loginButton.setFont(new Font("Arial", Font.BOLD, 14));
        loginButton.setBackground(new Color(0, 102, 204)); // သီသွမ်ႇ (Blue)
        loginButton.setForeground(Color.WHITE); // သီတူဝ်လိၵ်ႈ (White)
        loginButton.setOpaque(true); // တွၼ်ႈတႃႇ Mac Users
        loginButton.setFocusPainted(false); // ဢဝ်ၶွပ်ႇ Focus ဢွၵ်ႇ

        // 5. ဢဝ် Components တင်းသဵင်ႈ သႂ်ႇၼႂ်း Frame
        // **ၶပ်ႉၸွမ်းလွၵ်း GridLayout တႄႇသၢႆႉၵႂႃႇၶႂႃ, ၼိူဝ်လူင်းတႂ်ႈ**
        frame.add(userLabel);     // Row 1, Col 1
        frame.add(userField);     // Row 1, Col 2
        
        frame.add(passLabel);     // Row 2, Col 1
        frame.add(passField);     // Row 2, Col 2
        
        frame.add(new JLabel("")); // Row 3, Col 1 (ဢွင်ႈတီႈပဝ်ႇ)
        frame.add(loginButton);    // Row 3, Col 2

        // 6. ၼႄ Window
        frame.setVisible(true);
    }
}

```

### ၶေႃႈတွပ်ႇ Project ဢၼ်တေလႆႈႁၼ်

ပေႃးသူၸဝ်ႈ Run ၸွမ်း Code ၼႆႉ၊ တေလႆႈႁၼ်ၼႃႈၸေႃး Login ဢၼ်မီး Layout ႁၢင်ႈလီ၊ မီး Padding ၸိုၼ်ႈသႂ် လႄႈ Button သီသွမ်ႇ ဢၼ်တူဝ်လိၵ်ႈၽိူၵ်ႇၶႃႈ။ ယၢမ်းလဵဝ် ႁဝ်းၶူင်သၢင်ႈ UI ယဝ်ႉသေတႃႉ၊ ပေႃးၼဵၵ်း Button "Login" မၼ်းတေပႆႇႁဵတ်းသင်ၶႃႈ။ တွၼ်ႈတႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈ (Action) ၼၼ်ႉ ႁဝ်းတေၵႂႃႇႁဵၼ်းၼႂ်း **Module 2: User Inputs & Event Handling** ၶႃႈ!