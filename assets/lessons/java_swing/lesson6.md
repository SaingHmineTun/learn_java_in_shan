## 6: Adding Colors, Fonts, and Borders

ၼႂ်းလွင်ႈႁဵၼ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁူႉလၢႆးသႂ်ႇ Component လႄႈ လၢႆးၶပ်ႉ Layout Managers ယဝ်ႉၶႃႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ UI ႁဝ်းႁၢင်ႈလီမႃး ၸွမ်းလူၺ်ႈ လွင်ႈသႂ်ႇ သီ (Colors)၊ ၽွၼ်ႉ (Fonts) လႄႈ ၶွပ်ႇ (Borders) ၶႃႈ။

### 1. လွင်ႈမႄးသီ (Colors)

တွၼ်ႈတႃႇမႄးသီ Component ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Class **`Color`** (မီးၼႂ်း `java.awt.Color`) ၶႃႈ။

* **`setForeground(Color)`**: မႄးသီတူဝ်လိၵ်ႈ (Text Color).
* **`setBackground(Color)`**: မႄးသီပိုၼ်ႉလင် (Background Color).

> **မၢႆတွင်း (Note တွၼ်ႈတႃႇ Mac Users):** ပေႃးႁဝ်းၶႂ်ႈသႂ်ႇ သီပိုၼ်ႉလင် ပၼ် `JLabel` ဢမ်ႇၼၼ် `JButton` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈသင်ႇ **`setOpaque(true)`** ဢွၼ်တၢင်းၶႃႈ၊ ပေႃးဢမ်ႇၼၼ် မၼ်းတေပဵၼ်သီသႂ် (transparent) သေ ဢမ်ႇၼႄသီပိုၼ်ႉလင်ပၼ်ၶႃႈ။

ႁဝ်းၸၢင်ႈၸႂ်ႉသီဢၼ်မီးဝႆႉယဝ်ႉ မိူၼ်ၼင်ႇ `Color.RED`, `Color.BLUE` ဢမ်ႇၼၼ် ၶူင်သၢင်ႈသီမႂ်ႇၸွမ်း Code RGB လႆႈၶႃႈ: `new Color(255, 100, 50)`.

### 2. လွင်ႈမႄးၽွၼ်ႉ (Fonts)

တွၼ်ႈတႃႇမႄးၽွၼ်ႉၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Class **`Font`** ၶႃႈ။ မၼ်းလူဝ်ႇ Parameters 3 ဢၼ်:

1. **ၸိုဝ်ႈၽွၼ်ႉ (Font name)**: မိူၼ်ၼင်ႇ `"Arial"`, `"Tahoma"`.
2. **သတၢႆလ် (Style)**: `Font.PLAIN` (ထမ်ႇမတႃႇ), `Font.BOLD` (တူဝ်ၼႃ), `Font.ITALIC` (တူဝ်ၵိင်း).
3. **တင်းယႂ်ႇ (Size)**: သႂ်ႇမၢႆၼပ်ႉ (ပိူင်ယၢင်ႇ 16, 24).

```java
Font myFont = new Font("Arial", Font.BOLD, 24);
myLabel.setFont(myFont);

```

### 3. လွင်ႈသႂ်ႇၶွပ်ႇ (Borders)

တွၼ်ႈတႃႇႁဵတ်းၶွပ်ႇပၼ် Component ႁဝ်းတေၸႂ်ႉ Class **`BorderFactory`** လႄႈ မၼ်းမီးလၢႆးသႂ်ႇလၢႆလၢႆပိူင်ဝႆႉၶႃႈ:

* **`createLineBorder(Color, thickness)`**: ၶွပ်ႇလၢႆးထႅဝ် (Line).
* **`createEmptyBorder(top, left, bottom, right)`**: ၶွပ်ႇပဝ်ႇ တွၼ်ႈတႃႇႁဵတ်း Padding (ၶၢင်ႈပဝ်ႇၼႂ်း) ႁႂ်ႈ Component လႄႈ တူဝ်လိၵ်ႈ ယႃႇပေၸမ်ၵၼ်ၼႃႇ။
* **`createTitledBorder("Title")`**: ၶွပ်ႇဢၼ်မီးပႃး ႁူဝ်ၶေႃႈ လိၵ်ႈလဵၵ်ႉလဵၵ်ႉ။

---

### Code တူဝ်ယၢင်ႇ (Putting it all together)

ၸၢမ်းတူၺ်း Code ဢၼ်ဢဝ် 3 လွင်ႈၼႆႉ မႃးလေႃးၵၼ်ၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

public class StyleDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Style Demo");
        frame.setSize(300, 200);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 20));
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 1. ၶူင်သၢင်ႈ JLabel လႄႈ မႄး သီ, ၽွၼ်ႉ, ၶွပ်ႇ
        JLabel titleLabel = new JLabel("Welcome to TMK");
        titleLabel.setFont(new Font("Tahoma", Font.BOLD, 20)); // မႄး Font
        titleLabel.setForeground(Color.BLUE); // သီတူဝ်လိၵ်ႈ
        
        // သႂ်ႇၶွပ်ႇလၢႆးထႅဝ် သီလမ် ၶະၼၢတ်ႈ 2 pixel
        titleLabel.setBorder(BorderFactory.createLineBorder(Color.BLACK, 2));

        // 2. ၶူင်သၢင်ႈ JButton လႄႈ မႄး သီ, ၽွၼ်ႉ, ၶွပ်ႇ (Padding)
        JButton clickBtn = new JButton("Click Me");
        clickBtn.setFont(new Font("Arial", Font.PLAIN, 16));
        clickBtn.setBackground(new Color(0, 150, 0)); // သီၶဵဝ် (Custom RGB)
        clickBtn.setForeground(Color.WHITE); // သီတူဝ်လိၵ်ႈ (ၽိူၵ်ႇ)
        clickBtn.setOpaque(true); // တွၼ်ႈတႃႇႁႂ်ႈ Mac ၼႄသီပိုၼ်ႉလင်လႆႈ
        
        // သႂ်ႇၶွပ်ႇပဝ်ႇ တွၼ်ႈတႃႇႁဵတ်း Padding (Top, Left, Bottom, Right)
        clickBtn.setBorder(BorderFactory.createEmptyBorder(10, 20, 10, 20));

        frame.add(titleLabel);
        frame.add(clickBtn);
        frame.setVisible(true);
    }
}

```

---

### ႁူဝ်ယွႆႈ Methods

| Method | Function in Shan                                             |
| --- |--------------------------------------------------------------|
| `setForeground(Color)` | မႄးသီတူဝ်လိၵ်ႈ (Text Color)                                  |
| `setBackground(Color)` | မႄးသီပိုၼ်ႉလင် (Background Color)                            |
| `setFont(Font)` | မႄးတင်းယႂ်ႇ လႄႈ သတၢႆလ် ၽွၼ်ႉ (Font)                          |
| `setBorder(Border)` | သႂ်ႇၶွပ်ႇ ဢမ်ႇၼၼ် Padding ႁွပ်ႈ Component                    |
| `setOpaque(true)` | ႁဵတ်းႁႂ်ႈ Component ၼႄသီပိုၼ်ႉလင်လႆႈ (လမ်ႇလွင်ႈတွၼ်ႈတႃႇ Mac) |