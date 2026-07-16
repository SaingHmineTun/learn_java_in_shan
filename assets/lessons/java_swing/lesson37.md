## 37: Overriding paintComponent() for Custom Graphics

ၼႂ်း Lesson ၸိူဝ်းပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ Component ဢၼ် Java ႁဵတ်းဝႆႉပၼ်ယဝ်ႉ (မိူၼ်ၼင်ႇ `JButton`, `JLabel`, `JTable`) မႃးၶႃႈ။
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းၶႂ်ႈ တႅမ်ႈႁၢင်ႈ (Draw) ႁင်းၵူၺ်း၊ ၶူင်သၢင်ႈ UI ဢၼ်လၢၵ်ႇလၢႆး မိူၼ်ၼင်ႇ Chart လွၵ်းသီ၊ ဢမ်ႇၼၼ် ႁဵတ်း Game လဵၵ်ႉလဵၵ်ႉလူး? 
ႁဝ်းတေလႆႈတႄႇၸႂ်ႉ **Custom Graphics** ၶႃႈ။

တွၼ်ႈတႃႇတႅမ်ႈႁၢင်ႈ ႁင်းၵူၺ်းလႆႈၼၼ်ႉ၊ ႁဝ်းတေလႆႈႁူႉၸၵ်း Method ဢၼ်လမ်ႇလွင်ႈသုတ်း ဢၼ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **`paintComponent()`** ၶႃႈ။

### 1. လွင်ႈႁဵတ်းၵၢၼ် ၶွင် paintComponent()

ၼႂ်း Java Swing၊ Component ၵူႈဢၼ် (မိူၼ်ၼင်ႇ `JPanel`) မီး Method ဢၼ်ၼိုင်ႈ ဢၼ်ၸိုဝ်ႈဝႃႈ `paintComponent(Graphics g)` ၶႃႈ။ 
Method ၼႆႉ မၼ်းတေႁဵတ်းၵၢၼ် ႁင်းၵူၺ်းမၼ်း (Automatic) မိူဝ်ႈလႂ်ၵေႃႈယႃႇ ဢၼ် Window ႁဝ်းလူဝ်ႇလႆႈ ၼႄႁၢင်ႈဢွၵ်ႇမႃး (ပိူင်ယၢင်ႇ: မိူဝ်ႈပိုတ်ႇ Program တႄႇတင်းသုတ်း, မိူဝ်ႈလၢၵ်ႈယိုတ်ႈ Window, ဢမ်ႇၼၼ် မိူဝ်ႈၶိုၼ်းပိုတ်ႇ Window ဢၼ်လပ်ႉဝႆႉ)။
တွၼ်ႈတႃႇႁဝ်း တေၸၢင်ႈတႅမ်ႈႁၢင်ႈသႂ်ႇၼႂ်း `JPanel` လႆႈ၊ ႁဝ်းတေလႆႈ **Override** Method ၼႆႉ ၼႂ်း Class ႁင်းၵူၺ်းႁဝ်းၶႃႈ။

### 2. The Graphics Object (ၸုတ်း လႄႈ သီ ၶွင်ႁဝ်း)

Parameter `Graphics g` ဢၼ်မႃးၸွမ်း Method ၼၼ်ႉ လႆႈဝႃႈမၼ်းပဵၼ် "ၸုတ်းတႅမ်ႈႁၢင်ႈ (Paintbrush)" ၶွင်ႁဝ်းၶႃႈ။
ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇႁႂ်ႈႁၢင်ႈႁဝ်း ဢွၵ်ႇမႃးႁၢင်ႈလီ လႄႈ မီးလွင်ႈၸိုၼ်ႈသႂ် (Anti-aliasing) ၼၼ်ႉ၊ ႁဝ်းတေလႆႈ လႅၵ်ႈ (Cast) `Graphics` ၼၼ်ႉ ႁႂ်ႈပဵၼ် **`Graphics2D`** ဢွၼ်တၢင်းၶႃႈ။

### 3. The Golden Rule: super.paintComponent(g)

ၶေႃႈၼႆႉ လမ်ႇလွင်ႈသုတ်းတႄႉတႄႉၶႃႈ! မိူဝ်ႈႁဝ်း Override Method ၼႆႉ၊ **ထႅဝ်ဢွၼ်တၢင်းသုတ်း ႁဝ်းတေလႆႈႁွင်ႉ `super.paintComponent(g);` တႃႇသေႇၶႃႈ။**
မၼ်းပဵၼ်လွင်ႈသင်ႇႁႂ်ႈ `JPanel` ငဝ်ႈ "ၽဵဝ်ႈပႅတ်ႈ (Clear)" ႁၢင်ႈၵဝ်ႇ ลႄႈ လႃးသီပိုၼ်ႉလင် (Background) မၼ်း ႁႂ်ႈသႅၼ်ႈသႂ်ဢွၼ်တၢင်း။ ပေႃးႁဝ်းလိုမ်းသႂ်ႇထႅဝ်ၼႆႉ၊ ၼႃႈၸေႃးႁဝ်း တေလၢႆး လႄႈ သုၵ်ႉယုင်ႈၵႂႃႇမူတ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (First Custom Canvas)

ႁဝ်းမႃးၸၢမ်း ၶူင်သၢင်ႈ Class မႂ်ႇ ဢၼ် Extends `JPanel` သေ Override `paintComponent()` တွၼ်ႈတႃႇတႅမ်ႈ ႁၢင်ႈသီႇၸဵင်ႇ လႄႈ လွၵ်းမူၼ်း တူၺ်းၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;

// 1. ၶူင်သၢင်ႈ Class မႂ်ႇ ဢၼ်သိုပ်ႇမႃးတီႈ JPanel
class MyCanvas extends JPanel {

    // 2. Override Method paintComponent
    @Override
    protected void paintComponent(Graphics g) {
        // *** 3. The Golden Rule: ႁွင်ႉ super ဢွၼ်တၢင်းသုတ်း ***
        super.paintComponent(g);

        // 4. လႅၵ်ႈ Graphics ပဵၼ် Graphics2D တွၼ်ႈတႃႇ Feature ဢၼ်ၶႅမ်ႉလိူဝ်
        Graphics2D g2d = (Graphics2D) g;

        // ႁဵတ်းႁႂ်ႈ သၢႆႁၢင်ႈမၼ်း ၵဵင်ႈလီ (Anti-aliasing)
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // ==========================================
        // တႄႇတႅမ်ႈႁၢင်ႈ (Drawing)
        // ==========================================

        // မၵ်းမၼ်ႈ သီ (Color) တႃႇတႅမ်ႈ
        g2d.setColor(Color.BLUE);
        // တႅမ်ႈ သီႇၸဵင်ႇတဵမ် (x, y, width, height)
        g2d.fillRect(50, 50, 150, 100); 

        // လႅၵ်ႈသီမႂ်ႇ
        g2d.setColor(new Color(255, 100, 100)); // သီလႅင်ဢွၼ်ႇ
        // တႅမ်ႈ လွၵ်းမူၼ်းတဵမ် (x, y, width, height)
        g2d.fillOval(250, 50, 100, 100);
        
        // လႅၵ်ႈသီထႅင်ႈ လႄႈ တႅမ်ႈလိၵ်ႈ
        g2d.setColor(Color.BLACK);
        g2d.setFont(new Font("Arial", Font.BOLD, 16));
        g2d.drawString("My First Custom Graphics!", 120, 200);
    }
}

public class CustomGraphicsDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("paintComponent() Demo");
        frame.setSize(450, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // 5. ၶူင်သၢင်ႈ Canvas ႁဝ်း လႄႈ ဢဝ်သႂ်ႇၼႂ်း Frame
        MyCanvas canvas = new MyCanvas();
        canvas.setBackground(Color.WHITE); // ၸၢင်ႈမၵ်းမၼ်ႈ သီပိုၼ်ႉလင်လႆႈ မိူၼ် JPanel ၵူႈဢၼ်
        
        frame.add(canvas, BorderLayout.CENTER);
        frame.setVisible(true);
    }
}

```

### တီႈပွင်ႇ X လႄႈ Y (Coordinate System)

ၼႂ်း Java Swing၊ လွင်ႈၼပ်ႉ မၢႆ X လႄႈ Y မၼ်းဢမ်ႇမိူၼ် ၼႂ်းပပ်ႉၶႃႈ:

* **Point (0, 0)** ၼၼ်ႉ မၼ်းယူႇတီႈ **ၸဵင်ႇၼိူဝ် ၽၢႆႇသၢႆႉသုတ်း (Top-Left corner)** ၶွင် Component ၶႃႈ။
* **X** ၼပ်ႉၵႂႃႇၽၢႆႇၶႂႃ (ထႅဝ်ၼွၼ်း)။
* **Y** ၼပ်ႉ **လူင်းၽၢႆႇတႂ်ႈ** (ထႅဝ်တင်ႈ)။ မၢႆ Y ၼမ်မႃးတၢၼ်ႇလႂ်၊ မၼ်းတေယိုင်ႈလူင်းတႂ်ႈမႃးတၢၼ်ႇၼၼ်ႉၶႃႈ။