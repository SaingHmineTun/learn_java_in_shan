## 4: Understanding the Null Layout (and why to avoid it)

ၼႂ်း Lesson 3 ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ `FlowLayout` တွၼ်ႈတႃႇႁႂ်ႈ `JLabel` လႄႈ `JButton` ၶပ်ႉၵၼ်လီလီ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းၶႂ်ႈဢဝ် button ၵႂႃႇဝႆႉတီႈ pixel ဢၼ်ႁဝ်းမၵ်းမၼ်ႈတႅတ်ႈတေႃးၼၼ်ႉလူး? ႁဝ်းၸၢင်ႈၸႂ်ႉ **Null Layout** (Absolute Positioning) ၶႃႈ။

### Null Layout ပဵၼ်သင်?

**Null Layout** ၼႆႉ ပွင်ႇဝႃႈ ႁဝ်းဢမ်ႇၸႂ်ႉ **Layout Manager** ဢၼ် Java ၵမ်ႉထႅမ်ဝႆႉပၼ်သေ၊ 
ႁဝ်းတေလႆႈၵႂႃႇမၵ်းမၼ်ႈ ဢွင်ႈတီႈ (x, y) လႄႈ တင်းယႂ်ႇၵႂၢင်ႈ (width, height) ႁင်းၵူၺ်း တႃႇ UI Component ၵူႈဢၼ်ၶႃႈ။

တွၼ်ႈတႃႇၸႂ်ႉမၼ်း၊ ႁဝ်းတေလႆႈပၼ်ၵႃႈၶၼ် Layout ႁဝ်းပဵၼ် `null` ၶႃႈ:

```java
frame.setLayout(null);

```

### လွင်ႈၸႂ်ႉ setBounds()

ပေႃးႁဝ်းသႂ်ႇ `null` ယဝ်ႉ၊ UI components ႁဝ်းတေဢမ်ႇႁူႉဝႃႈ တေလႆႈၵႂႃႇယူႇတီႈလႂ်။ 
ပေႃးႁဝ်းၵူၺ်းၸႂ်ႉ `frame.add(myButton)` လၢႆလၢႆ မၼ်းတေဢမ်ႇၼႄပၼ်သင်။ ႁဝ်းတေလႆႈၸႂ်ႉ method **`setBounds(x, y, width, height)`** ၶႃႈ။

* **`x`**: ၵႆယၢၼ်ၽၢႆႇသၢႆႉ (Left edge).
* **`y`**: ၵႆယၢၼ်ၽၢႆႇၼိူဝ် (Top edge). *(မၢႆတွင်း: 0,0 ၼႆႉ တႄႇတီႈၸဵင်ႇသၢႆႉၽၢႆႇၼိူဝ်)*
* **`width`**: တၢင်းၵႂၢင်ႈ Component.
* **`height`**: တၢင်းသုင် Component.

ၸၢမ်းတူၺ်း Code တူဝ်ယၢင်ႇၶႃႈ:

```java
import javax.swing.JFrame;
import javax.swing.JButton;

public class Main {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Null Layout Demo");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 1. မၵ်းမၼ်ႈ Layout ပဵၼ် Null
        frame.setLayout(null);

        JButton myButton = new JButton("Click Me");

        // 2. သႂ်ႇ x, y, width, height
        // x=100 (ယၼ်ႇၽၢႆႇသၢႆႉ 100 pixels), y=50 (ယၼ်ႇၽၢႆႇၼိူဝ်လူင်းမႃး 50 pixels)
        // width=150 (တၢင်းၵႂၢင်ႈ), height=40 (တၢင်းသုင်)
        myButton.setBounds(100, 50, 150, 40);

        frame.add(myButton);
        frame.setVisible(true);
    }
}

```

---

### ပိူဝ်ႈသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီၸႂ်ႉ Null Layout (Why to avoid it)

ႁၼ်လၢႆးၼႆႉယဝ်ႉ ၸၢင်ႈဝူၼ်ႉဝႃႈမၼ်းငၢႆႈ လႄႈ ၸႂ်ႉလီၼႆယူႇ ယွၼ်ႉႁဝ်းၵုမ်းထိင်းလႆႈတဵမ်ထူၼ်ႈ။ 
ၵူၺ်းၵႃႈ ၼႂ်းၵၢၼ်ၶူင်သၢင်ႈ Application ၸၼ်ႉသုင် ၼၼ်ႉ ယွၼ်ႉလွင်ႈတၢင်းၸိူဝ်းၼႆႉသေ ၶဝ်တေဢမ်ႇသူင်ၸႂ်ႉၵၼ်ၶႃႈ :

1. **ဢမ်ႇပဵၼ် Responsive (Not Resizable):** ပေႃး user မႃးလၢၵ်ႈယိုတ်ႈ (resize) ၼႃႈၸေႃး window ႁႂ်ႈယႂ်ႇမႃး၊ component ႁဝ်းတေဢမ်ႇၶၢႆႉၸွမ်း တေယူႇတီႈၵဝ်ႇၵူၺ်းသေ ႁဵတ်းႁႂ်ႈ UI မၼ်းဢမ်ႇသၢင်ႇထုၵ်ႇ။
2. **OS ဢမ်ႇမိူၼ်ၵၼ် (Cross-Platform Issues):** Mac လႄႈ Windows ၼႆႉ မီးတင်းယႂ်ႇ Font လႄႈ တင်းယႂ်ႇ Button ဢမ်ႇမိူၼ်ၵၼ်။ UI ဢၼ်ႁၢင်ႈလီၼိူဝ် Mac ၸၢင်ႈၵႂႃႇတဵင်ၵၼ် ဢမ်ႇၼၼ် လူႉလႅဝ်ၼိူဝ် Windows ၶႃႈ။
3. **ယၢပ်ႇတႃႇမူၼ်ႉမႄး (Hard to Maintain):** ပေႃးမီး component ၼမ်မႃး၊ ႁဝ်းလႆႈမႃးၼပ်ႉသွၼ်ႇ pixel `(x, y)` ၵူႈဢၼ်။ ပေႃးၶႂ်ႈၶၢႆႉ Button ဢၼ်ၼိုင်ႈ တေလႆႈၶၢႆႉ code pixels ဢၼ်ယူႇႁိမ်းႁွမ်းမၼ်းတင်းသဵင်ႈ။

ယွၼ်ႉၼၼ်လႄႈ ႁဝ်းၸင်ႇလူဝ်ႇလႆႈၸႂ်ႉ **Layout Managers** ဢၼ် Java ၶူင်သၢင်ႈဝႆႉပၼ် (မိူၼ်ၼင်ႇ `FlowLayout`, `GridLayout`) ဢၼ်တေမႃးၸွႆႈၶပ်ႉ UI ႁဝ်းႁႂ်ႈမၼ်း Responsive တူဝ်မၼ်းႁင်းၵူၺ်းၼၼ်ႉယဝ်ႉ။ 
ႁဝ်းတေၵႂႃႇႁဵၼ်းလွင်ႈၼႆႉၼႂ်း Lesson 5 ၶႃႈ!