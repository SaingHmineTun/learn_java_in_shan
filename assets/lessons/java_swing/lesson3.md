## 3: Adding Labels (JLabel) and Buttons (JButton)

ၼႂ်းလွင်ႈႁဵၼ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈၶူင်သၢင်ႈ `JFrame` (window) ဢၼ်ပဝ်ႇဝႆႉယဝ်ႉ။ 
တွၼ်ႈတႃႇတေႁဵတ်းႁႂ်ႈ application ႁဝ်းၸႂ်ႉလႆႈတႄႉတႄႉၼၼ်ႉ ႁဝ်းတေလႆႈဢဝ် **UI Components** မႃးသႂ်ႇၼႂ်းမၼ်းၶႃႈ။ 
Component ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉၼမ်သုတ်းတႄႉ ပဵၼ်တွၼ်ႈတႃႇၼႄတူဝ်လိၵ်ႈ (`JLabel`) လႄႈ တွၼ်ႈတႃႇၼဵၵ်း (`JButton`) ၼၼ်ႉယဝ်ႉ။

### 1. JLabel (တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇၸၢင်ႈမႄး)

**`JLabel`** ၼႆႉ ပဵၼ် component ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၼႄတူဝ်လိၵ်ႈ ဢမ်ႇၼၼ် ၶႅပ်းႁၢင်ႈ (image) ၼိူဝ်ၼႃႈၸေႃးၶႃႈ။ 
User ၶဝ်တေဢမ်ႇၸၢင်ႈၶဝ်ႈၵႂႃႇမႄး (edit) တူဝ်လိၵ်ႈမၼ်းလႆႈ။ ႁဝ်းၵႆႉၸႂ်ႉမၼ်းတွၼ်ႈတႃႇ ႁဵတ်းႁူဝ်ၶေႃႈ (Title) ဢမ်ႇၼၼ် ၼႄလွင်ႈတၢင်းပၼ် user ၶဝ်။

```java
// ၶူင်သၢင်ႈ JLabel Object လႄႈ သႂ်ႇတူဝ်လိၵ်ႈ
JLabel welcomeLabel = new JLabel("Welcome to TMK Group!");

```

### 2. JButton (တွၼ်ႈတႃႇၼဵၵ်း)

**`JButton`** ၼႆႉ ပဵၼ် component ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၼဵၵ်း (clickable button) ၶႃႈ။ 
ပေႃး user ၼဵၵ်းၼႆ၊ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ program ႁဵတ်းၵၢၼ်ၼိုင်ႈဢၼ်လႆႈ (လွင်ႈၼႆႉ ႁဝ်းတေလႆႈၵႂႃႇႁဵၼ်းလိုၵ်ႉလိုၵ်ႉၼႂ်း Module 2 ၶႃႈ)။

```java
// ၶူင်သၢင်ႈ JButton Object လႄႈ သႂ်ႇတူဝ်လိၵ်ႈၼိူဝ်ပိူၵ်ႉ
JButton clickButton = new JButton("Click Me!");

```

### လွင်ႈဢဝ် Components သႂ်ႇၼႂ်း JFrame

ပေႃးႁဝ်းၶူင်သၢင်ႈ `JLabel` လႄႈ `JButton` ယဝ်ႉၵေႃႈ၊ ၶႃသွင်ဢၼ်ၼႆႉ တေပႆႇမႃးၼႄၼိူဝ် window ႁဝ်းၶႃႈ။ 
ႁဝ်းတေလႆႈၸႂ်ႉ method **`add()`** သေ ဢဝ်မၼ်းၵႂႃႇၸပ်းသႂ်ႇၼႂ်း `JFrame` ဢွၼ်တၢင်ၶႃႈး။

ၸၢမ်းတူၺ်း Code တူဝ်ယၢင်ႇၽၢႆႇတႂ်ႈၼႆႉၶႃႈ:

```java
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JButton;
import java.awt.FlowLayout; // Import Layout တႃႇႁႂ်ႈၶူဝ်းၶွင်လႅၼ်းၵၼ်

public class Main {
    public static void main(String[] args) {
        JFrame frame = new JFrame("UI Components Demo");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // မၵ်းမၼ်ႈ Layout (ႁဝ်းတေႁဵၼ်းလွင်ႈၼႆႉၼႂ်း Lesson 5)
        // ပေႃးဢမ်ႇသႂ်ႇၼႆႉ Component ႁဝ်းတေထပ်းၵၼ်ဝႆႉၶႃႈ
        frame.setLayout(new FlowLayout());

        // 1. ၶူင်သၢင်ႈ JLabel လႄႈ JButton
        JLabel myLabel = new JLabel("Hello, Shan Students!");
        JButton myButton = new JButton("Start Learning");

        // 2. ဢဝ် Component တင်းသွင် သႂ်ႇၼႂ်း JFrame
        frame.add(myLabel);
        frame.add(myButton);

        frame.setVisible(true);
    }
}

```

---

### ႁူဝ်ယေႃႈ Components

| Class | Function in Shan |
| --- | --- |
| `JLabel` | ၼႄတူဝ်လိၵ်ႈ (Text) ဢမ်ႇၼၼ် ၶႅပ်းႁၢင်ႈ (Icon) ဢၼ် user မႄးဢမ်ႇလႆႈ |
| `JButton` | ႁဵတ်းပိူၵ်ႉတွၼ်ႈတႃႇၼဵၵ်း (Clickable Button) |
| `frame.add(c)` | ဢဝ် Component ၵႂႃႇၸပ်းသႂ်ႇၼႂ်းၼႃႈၸေႃး `JFrame` |

> **မၢႆတွင်း (Note):** ၼႂ်း code ၼႆႉ ႁဝ်းလႆႈလတ်းၸႂ်ႉ `FlowLayout` ၵႂႃႇၵမ်းၼိုင်ႈ တွၼ်ႈတႃႇႁႂ်ႈ `JLabel` လႄႈ `JButton` မၼ်းယူႇလႅၼ်းၵၼ်လီလီ။ ပေႃးႁဝ်းဢမ်ႇၸႂ်ႉ Layout ၼႆ Component ႁဝ်းတေၵႂႃႇထပ်းၵၼ်ဝႆႉၶႃႈ။ ၼႂ်း Lesson 4 ႁဝ်းတေမႃးႁဵၼ်းတူၺ်းဝႃႈ ပေႃးဢမ်ႇၸႂ်ႉ Layout (Null Layout) မၼ်းတေပဵၼ်ၸိူင်ႉႁိုဝ်။