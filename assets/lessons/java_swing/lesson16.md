## 16: Using BoxLayout for Vertical/Horizontal Stacking

ၼႂ်း Lesson 15 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉလၢႆးၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 5 တွၼ်ႈ ၸွမ်းလူၺ်ႈ `BorderLayout` ယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵၼ်းထႅင်ႈ Layout ဢၼ်ၼိုင်ႈ ဢၼ်လမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇၶပ်ႉ Component ႁဝ်းႁႂ်ႈပဵၼ်ထႅဝ် — ဢမ်ႇဝႃႈ တေပဵၼ်ၸွမ်း တင်းၼွၼ်း (Horizontal) ဢမ်ႇၼၼ် တင်းတင်ႈ (Vertical) ၶႃႈ။ 
ၼၼ်ႉတႄႉပဵၼ် **`BoxLayout`** ၶႃႈ။

### 1. BoxLayout ပဵၼ်သင်?

**`BoxLayout`** ၼႆႉ မၼ်းတေဢဝ် Component ႁဝ်းမႃးၶပ်ႉၵၼ် သိုဝ်ႈသိုဝ်ႈ ၼိုင်ႈဢၼ်ယဝ်ႉၼိုင်ႈဢၼ်ၶႃႈ (Stacking)။

* မၼ်းဢမ်ႇမိူၼ် `FlowLayout` (ဢၼ်တူၵ်းထႅဝ်မႂ်ႇႁင်းၵူၺ်း ပေႃးဢွင်ႈတီႈသုတ်း)။ `BoxLayout` ၼႆႉ မၼ်းတေၶပ်ႉၵႂႃႇသိုဝ်ႈသိုဝ်ႈ တေႃႇပေႃးသုတ်း window (တေဢမ်ႇတူၵ်းထႅဝ်မႂ်ႇ)။
* မၼ်းဢမ်ႇမိူၼ် `GridLayout` (ဢၼ်မီးလွၵ်းၽဵင်ႇၵၼ်)။ `BoxLayout` ၼႆႉ Component ၵူႈဢၼ် ၸၢင်ႈမီးတၢင်းယႂ်ၽႂ်မၼ်း လၢၵ်ႇလၢႆးၵၼ်လႆႈၶႃႈ။

### 2. လၢႆးၶပ်ႉ 2 ပိူင် (Axes)

မိူဝ်ႈႁဝ်းၶူင်သၢင်ႈ `BoxLayout`၊ ႁဝ်းတေလႆႈမၵ်းမၼ်ႈဝႃႈ ႁဝ်းၶႂ်ႈၶပ်ႉၸွမ်း လႅဝ်းလႂ် (Axis):

1. **`BoxLayout.X_AXIS`**: ၶပ်ႉၸွမ်းတၢင်းၼွၼ်း (Horizontal) ⬅️ __ ➡️
2. **`BoxLayout.Y_AXIS`**: ၶပ်ႉၸွမ်းတၢင်းတင်ႈ (Vertical) ⬆️ __ ⬇️

```java
// လၢႆးၶူင်သၢင်ႈ BoxLayout (မၼ်းတေလၢၵ်ႇလၢႆးလိူဝ် Layout တၢင်ႇဢၼ်ဢိတ်းၼိုင်ႈ)
// ႁဝ်းတေလႆႈ သႂ်ႇဝႃႈ Layout ၼႆႉ တေၵႂႃႇၸႂ်ႉတွၼ်ႈတႃႇ Container (Frame/Panel) လႂ် လႄႈ ၸႂ်ႉ Axis သင်
frame.setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.Y_AXIS));

```

### 3. လွင်ႈၸႂ်ႉ Strut (ၶၢင်ႈပဝ်ႇ)

ဢၼ်လၢၵ်ႇလၢႆးထႅင်ႈဢၼ်ၼိုင်ႈၶွင် `BoxLayout` ၼႆႉ ပဵၼ်လွင်ႈဢၼ်မၼ်း ဢမ်ႇမီး Parameter တႃႇသႂ်ႇ gap (H-gap, V-gap) မိူၼ်ၼင်ႇ `BorderLayout` ဢမ်ႇၼၼ် `GridLayout` ၶႃႈ။

တွၼ်ႈတႃႇႁဵတ်းၶၢင်ႈပဝ်ႇ (Spacing) ၼႂ်းၵႄႈ Component ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **"Strut"** ဢၼ်ပဵၼ် Component ဢၼ်ၼိုင်ႈ (Invisible component) ဢၼ်မီးတၢင်းၵႂၢင်ႈဢမ်ႇၼၼ်တၢင်းသုင် ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉ သႂ်ႇၶႅၼ်ႈဝႆႉၶႃႈ။

```java
import javax.swing.Box;

// သႂ်ႇၶၢင်ႈပဝ်ႇ လႅဝ်းတင်ႈ (Vertical Spacing) 20 pixels
frame.add(Box.createVerticalStrut(20));

// သႂ်ႇၶၢင်ႈပဝ်ႇ လႅဝ်းၼွၼ်း (Horizontal Spacing) 15 pixels
frame.add(Box.createHorizontalStrut(15));

```

---

### Code တူဝ်ယၢင်ႇ (Vertical Stacking Demo)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Code ဢၼ်ၶပ်ႉ Button 3 ဢၼ် ၸွမ်းလႅဝ်းတင်ႈ (`Y_AXIS`) သေ သႂ်ႇ Strut ၶႅၼ်ႈဝႆႉ တွၼ်ႈတႃႇႁႂ်ႈမီးၶၢင်ႈပဝ်ႇ ၼၼ်ႉတူၺ်းၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class BoxLayoutDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("BoxLayout (Y_AXIS) Demo");
        frame.setSize(300, 250);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // 1. မၵ်းမၼ်ႈ Layout ပဵၼ် BoxLayout လႅဝ်းတင်ႈ
        // တွၼ်ႈတႃႇ JFrame, ႁဝ်းတေလႆႈၸႂ်ႉ frame.getContentPane() 
        frame.setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.Y_AXIS));

        // 2. ၶူင်သၢင်ႈ Buttons ဢၼ်မီးတင်းယႂ်ႇ (တၢင်းယၢဝ်းလိၵ်ႈ) ဢမ်ႇမိူၼ်ၵၼ်
        JButton btn1 = new JButton("Small Button");
        JButton btn2 = new JButton("A Much Longer Button");
        JButton btn3 = new JButton("Btn 3");

        // 3. ဢဝ် Components သႂ်ႇၼႂ်း Frame (ဢဝ် Strut ၶႅၼ်ႈၵၢင်)
        frame.add(Box.createVerticalStrut(20)); // ၶၢင်ႈပဝ်ႇ ၽၢႆႇၼိူဝ်သုတ်း 20px
        
        frame.add(btn1);
        
        frame.add(Box.createVerticalStrut(10)); // ၶၢင်ႈပဝ်ႇ 10px
        
        frame.add(btn2);
        
        frame.add(Box.createVerticalStrut(30)); // ၶၢင်ႈပဝ်ႇ 30px
        
        frame.add(btn3);

        frame.setVisible(true);
    }
}

```

*ပေႃးသူႁဝ်း run code ၼႆႉ၊ တေလႆႈႁၼ်ဝႃႈ Button ၶဝ် တေၶပ်ႉၵၼ်လူင်းမႃးသိုဝ်ႈသိုဝ်ႈ ၸွမ်းတၢင်းတင်ႈသေ မီးၶၢင်ႈပဝ်ႇဢၼ်ဢမ်ႇၽဵင်ႇၵၼ် (ၸွမ်းၼင်ႇႁဝ်းသႂ်ႇ Strut) ၼၼ်ႉၶႃႈ။ 
မၢႆတွင်း: ၶဝ်တေယူႇၽၢႆႇသၢႆႉ (Left-aligned) ႁင်းၵူၺ်းၶႃႈ။ တွၼ်ႈတႃႇႁႂ်ႈမၼ်းယူႇၵၢင် (Center) လႆႈလီလီၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ `JPanel` မႃးၸွႆႈ ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 18 ၶႃႈ။*