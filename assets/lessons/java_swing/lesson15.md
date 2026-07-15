## 15: Mastering BorderLayout

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Module 3 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း **Layout Managers** ဢၼ်ၸၼ်ႉသုင်မႃးထႅင်ႈသေ 
တေၸွႆႈႁႂ်ႈႁဝ်းၶူင်သၢင်ႈ UI ဢၼ်မီးၼႃႈတႃမိူၼ် Application တႄႉတႄႉ (ပိူင်ယၢင်ႇ မိူၼ်ၼင်ႇ Dashboard ဢမ်ႇၼၼ် Web Browser) ၼၼ်ႉၶႃႈ။

ႁဝ်းတေတႄႇတီႈ Layout ဢၼ်လမ်ႇလွင်ႈသုတ်း လႄႈ ပဵၼ် Default Layout ၶွင် `JFrame` ၼၼ်ႉယဝ်ႉ။ ၼၼ်ႉတႄႉပဵၼ် **`BorderLayout`** ၶႃႈ။

### 1. BorderLayout ပဵၼ်သင်?

**`BorderLayout`** ၼႆႉ မၼ်းတေၸႅၵ်ႇ ၼႃႈၸေႃး window (ဢမ်ႇၼၼ် Container ႁဝ်း) ဢွၵ်ႇပဵၼ် **5 တွၼ်ႈ (Regions)** ၶႃႈ:

1. **NORTH (ၽၢႆႇၼိူဝ်):** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသႂ်ႇ Toolbar ဢမ်ႇၼၼ် ႁူဝ်ၶေႃႈ။
2. **SOUTH (ၽၢႆႇတႂ်ႈ):** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသႂ်ႇ Status bar ဢမ်ႇၼၼ် Button တႃႇ ၵႂႃႇ/ပွၵ်ႈ (Next/Back)။
3. **WEST (ၽၢႆႇသၢႆႉ):** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသႂ်ႇ Sidebar ဢမ်ႇၼၼ် Navigation menu။
4. **EAST (ၽၢႆႇၶႂႃ):** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသႂ်ႇ ၶေႃႈမုၼ်းထႅမ်သႂ်ႇ (Extra details) ဢမ်ႇၼၼ် Tool palette။
5. **CENTER (ၵၢင်):** ပဵၼ်ဢွင်ႈတီႈဢၼ်ယႂ်ႇသုတ်း။ ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်းလွင်ႈယႂ်ႇ (Main content)။

> **မၢႆတွင်း:** Component ဢၼ်ႁဝ်းဢဝ်ဝႆႉတီႈ **CENTER** ၼၼ်ႉ မၼ်းတေလၢၵ်ႈယိုတ်ႈ (stretch) ဢဝ်ဢွင်ႈတီႈပဝ်ႇဢၼ်ၵိုတ်းတင်းသဵင်ႈ ႁင်းၵူၺ်းမၼ်းၶႃႈ။

### 2. လၢႆးဢဝ် Component သႂ်ႇၼႂ်းတွၼ်ႈလႂ်တွၼ်ႈၼၼ်ႉ

တွၼ်ႈတႃႇဢဝ် Component သႂ်ႇၼႂ်း 5 တွၼ်ႈၼႆႉ ႁဝ်းတေလႆႈသႂ်ႇ **Region Parameter** မိူဝ်ႈႁဝ်းၸႂ်ႉ `add()` ၶႃႈ။ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ String မိူၼ်ၼင်ႇ `"North"` လႆႈသေတႃႉ၊ ဢၼ်လီသုတ်းလႄႈ လွတ်ႈၽေးသုတ်းတႄႉ ပဵၼ်လွင်ႈၸႂ်ႉ Constant ဢၼ်မီးၼႂ်း `BorderLayout` ၶႃႈ။

```java
// ၶူင်သၢင်ႈ Layout ဢၼ်မီး ၶၢင်ႈပဝ်ႇ (gap) 10px ၼႂ်းၵႄႈ component ၵူႈဢၼ်
frame.setLayout(new BorderLayout(10, 10));

// ဢဝ် Component ၵႂႃႇၸပ်းသႂ်ႇ ၸွမ်းတွၼ်ႈၽႂ်မၼ်း
frame.add(new JButton("Top"), BorderLayout.NORTH);
frame.add(new JButton("Bottom"), BorderLayout.SOUTH);
frame.add(new JButton("Left Sidebar"), BorderLayout.WEST);
frame.add(new JButton("Right Panel"), BorderLayout.EAST);
frame.add(new JButton("Main Content"), BorderLayout.CENTER);

```

### 3. လွင်ႈလၢၵ်ႇလၢႆး (Behaviors) ၶွင် BorderLayout

* **ဢမ်ႇလူဝ်ႇသႂ်ႇတဵမ် 5 တွၼ်ႈ:** ပေႃးႁဝ်းဢမ်ႇသႂ်ႇ Component တီႈ WEST ဢမ်ႇၼၼ် EAST၊ ဢွင်ႈတီႈ CENTER တေလၢၵ်ႈယိုတ်ႈ ၵႂႃႇတႅၼ်းဢွင်ႈတီႈၸိူဝ်းၼၼ်ႉ ႁင်းၵူၺ်းမၼ်း။
* **1 တွၼ်ႈ လႆႈ 1 Component ၵူၺ်း:** ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် Button 2 ဢၼ် သႂ်ႇတီႈ `BorderLayout.NORTH` လႆႈ။ ပေႃးႁဝ်းသႂ်ႇ၊ ဢၼ်လိုၼ်းသုတ်းၼၼ်ႉ တေၵႂႃႇတဵင်ပႅတ်ႈ ဢၼ်ၵဝ်ႇၶႃႈ။ (တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ `JPanel` ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 18 ၶႃႈ!)

---

### Code တူဝ်ယၢင်ႇ (App Layout Wireframe)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Code ဢၼ်ၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 5 တွၼ်ႈ သေ သႂ်ႇ Button တွၼ်ႈတႃႇႁႂ်ႈႁၼ်လႆႈလီလီဝႃႈ မၼ်းလၢၵ်ႈယိုတ်ႈၸိူင်ႉႁိုဝ်ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

public class BorderLayoutDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("BorderLayout Master");
        frame.setSize(500, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // မၵ်းမၼ်ႈ Layout (H-gap = 5, V-gap = 5)
        frame.setLayout(new BorderLayout(5, 5));

        // ၶူင်သၢင်ႈ Buttons 5 ဢၼ်
        JButton btnNorth = new JButton("NORTH (Header)");
        JButton btnSouth = new JButton("SOUTH (Footer)");
        JButton btnWest = new JButton("WEST (Sidebar)");
        JButton btnEast = new JButton("EAST (Extra)");
        JButton btnCenter = new JButton("CENTER (Main Content Area)");

        // မႄးသီ Button ၵၢင် ႁႂ်ႈလၢၵ်ႇလၢႆး
        btnCenter.setBackground(Color.DARK_GRAY);
        btnCenter.setForeground(Color.WHITE);
        btnCenter.setOpaque(true);

        // ဢဝ်သႂ်ႇၼႂ်း Frame
        frame.add(btnNorth, BorderLayout.NORTH);
        frame.add(btnSouth, BorderLayout.SOUTH);
        frame.add(btnWest, BorderLayout.WEST);
        frame.add(btnEast, BorderLayout.EAST);
        frame.add(btnCenter, BorderLayout.CENTER);

        frame.setVisible(true);
    }
}

```

*ပေႃးႁဝ်း run code ၼႆႉသေ လၢၵ်ႈယိုတ်ႈ (resize) window လဵၵ်ႉယႂ်ႇတူၺ်း၊ တေလႆႈႁၼ်ဝႃႈ NORTH လႄႈ SOUTH တေယိုတ်ႈၸွမ်း တၢင်းၵႂၢင်ႈ (width) ၵူၺ်း၊ WEST လႄႈ EAST တေယိုတ်ႈၸွမ်း တၢင်းသုင် (height) ၵူၺ်း၊ လႄႈ CENTER တေယိုတ်ႈၸွမ်း တင်းသွင်ၽၢႆႇၶႃႈ။*