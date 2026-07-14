## 5: Using FlowLayout & GridLayout

ၼႂ်း Lesson 4 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ယဝ်ႉဝႃႈ လွင်ႈၸႂ်ႉ **Null Layout** ၼၼ်ႉ မၼ်းႁဵတ်းႁႂ်ႈ UI ႁဝ်းဢမ်ႇ Responsive လႄႈ ၸၢင်ႈလူႉလႅဝ်ငၢႆႈၼိူဝ် OS ဢၼ်ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။ 
မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း **Layout Managers** သွင်ဢၼ် ဢၼ်တေမႃးၸွႆႈၶပ်ႉ UI Component ႁဝ်းႁႂ်ႈႁၢင်ႈလီ လႄႈ လၢၵ်ႈယိုတ်ႈၸွမ်း window ႁင်းၵူၺ်းၶႃႈ။

### 1. FlowLayout (လွင်ႈၶပ်ႉပဵၼ်ထႅဝ်ၼွၼ်း မိူၼ်တူဝ်လိၵ်ႈ)

**`FlowLayout`** ၼႆႉ ပဵၼ် Layout ဢၼ်မၼ်းၶပ်ႉ component ႁဝ်း ၸွမ်းထႅဝ်ၼွၼ်း (horizontal) တႄႇဢဝ်ၽၢႆႇသၢႆႉ ၵႂႃႇၽၢႆႇၶႂႃၶႃႈ။
ပေႃးဝႃႈ တီႈယူႇသုတ်းၵႂႃႇယဝ်ႉ (ဢမ်ႇပေႃး) ၼႆ၊ မၼ်းတေၶၢႆႉလူင်းမႃး ထႅဝ်မႂ်ႇ (new line) ၽၢႆႇတႂ်ႈ ႁင်းၵူၺ်းမၼ်းၶႃႈ။

* တင်းယႂ်ႇ (Size) ၶွင် component ၼၼ်ႉ တေယႂ်ႇၸွမ်း တူဝ်လိၵ်ႈဢၼ်မီးၼႂ်းမၼ်းၵူၺ်းလႄႈ တေဢမ်ႇလၢၵ်ႈယိုတ်ႈၸွမ်း window ၶႃႈ။

```java
import javax.swing.JFrame;
import javax.swing.JButton;
import java.awt.FlowLayout;

public class FlowLayoutDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("FlowLayout Demo");
        frame.setSize(300, 150);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 1. မၵ်းမၼ်ႈ Layout ပဵၼ် FlowLayout
        frame.setLayout(new FlowLayout());

        // 2. ဢဝ် Button 3 ဢၼ်သႂ်ႇၼႂ်း frame
        // ၶဝ်တေလႅၼ်းၵၼ် ၸွမ်းၶပ်ႉမၢႆ ဢၼ်ႁဝ်း add ၶႃႈ
        frame.add(new JButton("Button 1"));
        frame.add(new JButton("Button 2 (Longer)"));
        frame.add(new JButton("Btn 3"));

        frame.setVisible(true);
    }
}

```

*ပေႃးႁဝ်း run code ၼႆႉသေ လၢၵ်ႈယိုတ်ႈ (resize) window လဵၵ်ႉလူင်း၊ Button 3 တေတူၵ်းလူင်းမႃးယူႇထႅဝ်တႂ်ႈ ႁင်းၵူၺ်းမၼ်းၶႃႈ။*

---

### 2. GridLayout (လွင်ႈၶပ်ႉပဵၼ်လွၵ်း / Grid)

**`GridLayout`** ၼႆႉ တေၶပ်ႉ component ႁဝ်းပဵၼ်လွၵ်း မိူၼ်ၼင်ႇ ၶူတ်ႉမၢႆ (table) ဢၼ်မီး ထႅဝ် (rows) လႄႈ ၵိင်ႇ (columns) ၶႃႈ။

ဢၼ်လၢၵ်ႇလၢႆးမၼ်းတႄႉ Component ၵူႈဢၼ် ဢၼ်မီးၼႂ်း `GridLayout` ၼႆႉ **တေမီးတင်းယႂ်ႇ ၵႂၢင်ႈလႄႈသုင် ၽဵင်ႇပဵင်းၵၼ် (equal size)** တင်းသဵင်ႈၶႃႈ။ 
မၼ်းသၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ ႁဵတ်း UI မၢႆၼပ်ႉ (Calculator) ဢမ်ႇၼၼ် ၽႃႈၼဵၵ်းမၢႆၽူင်း (Dial pad) ၶႃႈ။

```java
import javax.swing.JFrame;
import javax.swing.JButton;
import java.awt.GridLayout;

public class GridLayoutDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("GridLayout Demo");
        frame.setSize(300, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 1. မၵ်းမၼ်ႈ Layout ပဵၼ် GridLayout (Rows: 2, Columns: 2)
        // ႁဝ်းၸၢင်ႈသႂ်ႇ gap (ၶၢင်ႈပဝ်ႇ) ၼႂ်းၵႄႈမၼ်းလႆႈ (hgap, vgap)
        frame.setLayout(new GridLayout(2, 2, 10, 10)); 

        // 2. ဢဝ် Button 4 ဢၼ်သႂ်ႇၼႂ်း frame (တေၶဝ်ႈၵႂႃႇတဵမ်လွၵ်းမၼ်းႁင်းၵူၺ်း)
        frame.add(new JButton("1"));
        frame.add(new JButton("2"));
        frame.add(new JButton("3"));
        frame.add(new JButton("4"));

        frame.setVisible(true);
    }
}

```

---

### ႁူဝ်ယွႆႈ Layout Managers သွင်ဢၼ်

| Layout Class | Behavior in Shan                                              | Good for                                     |
| --- |---------------------------------------------------------------|----------------------------------------------|
| `FlowLayout` | ၶပ်ႉပဵၼ်ထႅဝ်ၼွၼ်း ၸွမ်းတၢင်းၵႂၢင်ႈ၊ သင်ဢမ်ႇပေႃး တူၵ်းထႅဝ်မႂ်ႇ | ပုမ်ႇလၢႆလၢႆဢၼ် ဢၼ်မီးၼိူဝ် Toolbar           |
| `GridLayout` | ၶပ်ႉပဵၼ်လွၵ်း (Rows x Columns)၊ တင်းယႂ်ႇၽဵင်ႇၵၼ်              | မၢႆၼပ်ႉ (Calculator), ဢွင်ႈတီႈၼဵၵ်း (Keypad) |