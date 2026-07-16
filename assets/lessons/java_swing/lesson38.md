## 38: Drawing Shapes, Lines, and Custom Text

ၼႂ်း Lesson 37 ၼၼ်ႉ ႁဝ်းလႆႈႁူႉၸၵ်း `paintComponent()` လႄႈ `Graphics2D` တွၼ်ႈတႃႇတႄႇတႅမ်ႈႁၢင်ႈ (Custom Graphics) ၵႂႃႇယဝ်ႉၶႃႈ။
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးလူင်ႉလႅၼ်ႇ လွင်ႈတႅမ်ႈႁၢင်ႈ ႁႂ်ႈတိူဝ်းၶႅမ်ႉလိူဝ်ၵဝ်ႇ — ဢၼ်ပႃး လွင်ႈမႄးတင်းယႂ်ႇ သၢႆ၊ လွင်ႈၸႂ်ႉ သီသႂ် (Transparency) လႄႈ 
လွၵ်းလၢႆး ဢဝ်တူဝ်လိၵ်ႈဝႆႉ ၼႂ်းၵၢင် (Centering Text) ဢၼ်လမ်ႇလွင်ႈတႄႉတႄႉ တွၼ်ႈတႃႇၶူင်သၢင်ႈ UI ၶႃႈ။

### 1. လွင်ႈတႅမ်ႈ သၢႆၶွပ်ႇ လႄႈ လွၵ်းတဵမ် (Draw vs. Fill)

Method ၶွင် `Graphics2D` တွၼ်ႈတႃႇတႅမ်ႈႁၢင်ႈၼၼ်ႉ မီး 2 လၢႆးၼႆႉၶႃႈ:

* **`draw...` (သၢႆၶွပ်ႇ):** ၸႂ်ႉတွၼ်ႈတႃႇ တႅမ်ႈသၢႆၶွပ်ႇမၼ်း (Outlines) ဢမ်ႇမီးသီ ၼႂ်းၵၢင်။ ပိူင်ယၢင်ႇ: `drawRect()`, `drawOval()`, `drawLine()`။
* **`fill...` (လွၵ်းတဵမ်):** ၸႂ်ႉတွၼ်ႈတႃႇ တႅမ်ႈႁၢင်ႈဢၼ် ဢဝ်သီတဵမ်ဝႆႉ ၼႂ်းၵၢင်မၼ်းၶႃႈ။ ပိူင်ယၢင်ႇ: `fillRect()`, `fillOval()`။

### 2. လွင်ႈမႄး တင်းယႂ်ႇသၢႆ (Adjusting Line Thickness)

ပေႃးႁဝ်းတႅမ်ႈ `drawLine()` ဢမ်ႇၼၼ် `drawRect()`၊ Default သၢႆမၼ်း တေလဵၵ်ႉလဵၵ်ႉ (1 pixel) ၵူၺ်းၶႃႈ။ 
တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ သၢႆမၼ်း ယႂ်ႇမႃး ႁဝ်းတေလႆႈၸႂ်ႉ **`BasicStroke`** ၶႃႈ။

```java
// ႁဵတ်းႁႂ်ႈ သၢႆလၢႆး မီးတၢင်းယႂ်ႇ 5 pixels
g2d.setStroke(new BasicStroke(5));
g2d.drawLine(20, 20, 200, 20); // တႅမ်ႈ သၢႆသိုဝ်ႈသိုဝ်ႈ

```

### 3. လွင်ႈၸႂ်ႉ သီသႂ် (Colors and Transparency / Alpha)

မိူဝ်ႈႁဝ်းၶူင်သၢင်ႈ သီ (`Color`)، ႁဝ်းၸၢင်ႈသႂ်ႇ Parameter တူဝ်ထူၼ်ႈ 4 ဢၼ်ႁွင်ႉဝႃႈ **Alpha** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ လွင်ႈသႂ်မၼ်း လႆႈၶႃႈ။

* **Alpha:** မီးၶၼ်တႄႇ 0 (သႂ်မူတ်း / ဢမ်ႇႁၼ်) တေႃႇထိုင် 255 (တဵမ်တဵၼ် / ဢမ်ႇၽွၵ်ႈႁၼ်လႆႈ)။

```java
// R=255(Red), G=0, B=0, Alpha=128 (သႂ် 50%)
Color transparentRed = new Color(255, 0, 0, 128); 
g2d.setColor(transparentRed);

```

### 4. Trick တွၼ်ႈတႃႇ ဢဝ်တူဝ်လိၵ်ႈဝႆႉ တီႈၵၢင် (FontMetrics)

လွင်ႈတႅမ်ႈလိၵ်ႈၸွမ်း `g2d.drawString("Text", x, y)` ၼၼ်ႉ ငၢႆႈယူႇၶႃႈ၊ ၵူၺ်းၵႃႈ မၢႆ `y` ၼၼ်ႉ မၼ်းဢမ်ႇၸႂ်ႈ ၸဵင်ႇၼိူဝ်ၶွင်လိၵ်ႈ (Top-Left)၊ မၼ်းပဵၼ် **သၢႆငဝ်ႈတႂ်ႈ (Baseline)** ၶွင်တူဝ်လိၵ်ႈၶႃႈ။

တွၼ်ႈတႃႇတေဢဝ်လိၵ်ႈ သႂ်ႇတီႈၵၢင် ၼႂ်းလွၵ်းသီႇၸဵင်ႇဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ ႁဵတ်း Button ႁင်းၵူၺ်း) ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`FontMetrics`** တွၼ်ႈတႃႇ ၵႅၵ်းတူၺ်း တၢင်းၵႂၢင်ႈ လႄႈ တၢင်းသုင် ၶွင်လိၵ်ႈဢွၼ်တၢင်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Shapes Gallery)

ၸၢမ်းတူၺ်း Code ဢၼ်ဢဝ် လွင်ႈလၢတ်ႈမႃးတင်းသဵင်ႈၼႆႉ မႃးႁူမ်ႈၵၼ်သေ တႅမ်ႈႁၢင်ႈလၢၵ်ႇလၢႆး တူၺ်းၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;

class GalleryCanvas extends JPanel {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        
        // ပိုတ်ႇ Anti-aliasing ႁႂ်ႈႁၢင်ႈမၼ်း ၵဵင်ႈလီ
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // ==========================================
        // 1. တႅမ်ႈ သၢႆယႂ်ႇယႂ်ႇ (Lines & Stroke)
        // ==========================================
        g2d.setColor(Color.BLACK);
        g2d.setStroke(new BasicStroke(5)); // ႁႂ်ႈယႂ်ႇ 5px
        g2d.drawLine(20, 20, 300, 20);

        // ==========================================
        // 2. သၢႆၶွပ်ႇ (Draw) Vs. လွၵ်းတဵမ် (Fill)
        // ==========================================
        g2d.setStroke(new BasicStroke(3));
        
        // လွၵ်းသီႇၸဵင်ႇ ဢၼ်တဵမ်သီသွမ်ႇ
        g2d.setColor(new Color(0, 102, 204));
        g2d.fillRect(20, 50, 100, 100); 

        // လွၵ်းသီႇၸဵင်ႇ ဢၼ်မီး ၶွပ်ႇသီလႅင်
        g2d.setColor(Color.RED);
        g2d.drawRect(140, 50, 100, 100); 

        // ==========================================
        // 3. သီသႂ် (Transparency / Alpha)
        // ==========================================
        // သီၶဵဝ် ဢၼ်သႂ် 60% (Alpha = 150)
        Color transGreen = new Color(0, 200, 0, 150); 
        g2d.setColor(transGreen);
        // တႅမ်ႈလွၵ်းမူၼ်း သွၼ်ႉၼိူဝ် လွၵ်းသီႇၸဵင်ႇ (တေႁၼ်ထိုင် သီသွမ်ႇၽၢႆႇတႂ်ႈ)
        g2d.fillOval(70, 100, 100, 100);

        // ==========================================
        // 4. Custom Text လႄႈ လွင်ႈဢဝ်ဝႆႉၵၢင် (FontMetrics)
        // ==========================================
        int rx = 20, ry = 220, rw = 300, rh = 50; // တင်းယႂ်ႇ လွၵ်းသီႇၸဵင်ႇ တႃႇလိၵ်ႈ
        
        g2d.setColor(new Color(40, 40, 40));
        g2d.fillRoundRect(rx, ry, rw, rh, 15, 15); // fillRoundRect တႅမ်ႈ ၶွပ်ႇမူၼ်း

        String text = "TMK Typing Tutor";
        g2d.setFont(new Font("Arial", Font.BOLD, 22));
        g2d.setColor(Color.WHITE);

        // ၵႅၵ်းတူၺ်း တင်းယႂ်ႇလိၵ်ႈ တွၼ်ႈတႃႇႁႃ ၶႅၼ်ႈၵၢင်
        FontMetrics fm = g2d.getFontMetrics();
        int textWidth = fm.stringWidth(text);
        int textHeight = fm.getAscent(); 
        
        // ၼပ်ႉသွၼ်ႇ ဢွင်ႈတီႈ X လႄႈ Y
        int textX = rx + (rw - textWidth) / 2;
        int textY = ry + ((rh - textHeight) / 2) + fm.getAscent();

        // တႅမ်ႈလိၵ်ႈ သႂ်ႇတီႈၵၢင်!
        g2d.drawString(text, textX, textY);
    }
}

public class DrawingShapesDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Shapes, Lines & Custom Text");
        frame.setSize(360, 350);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.add(new GalleryCanvas());
        frame.setVisible(true);
    }
}

```

ပေႃးႁဝ်း Run Code ၼႆႉ တေလႆႈႁၼ် သီသႂ် ဢၼ်သၢင်ႈႁၢင်ႈလီ လႄႈ လိၵ်ႈဢၼ်ယူႇတီႈၵၢင် လွၵ်း `fillRoundRect` ၼၼ်ႉ လီလီၶႃႈ။
Trick ၶွင် `FontMetrics` ၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉၼမ်တႄႉတႄႉ မိူဝ်ႈႁဝ်းတႅမ်ႈႁၢင်ႈ လွၵ်းတူဝ်လိၵ်ႈ (Typing box) တႃႇ Game ႁဝ်းၶႃႈ!