## 39: Building Basic Animations with Swing Timers

ၼႂ်း Lesson ပူၼ်ႉမႃးၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်း လွင်ႈတႅမ်ႈႁၢင်ႈ (Custom Graphics) ဢၼ်ယူႇတီႈလဵဝ် (Static) ၵႂႃႇယဝ်ႉၶႃႈ။
ယၢမ်းလဵဝ် ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ ႁၢင်ႈၸိူဝ်းၼၼ်ႉ "တူင်ႉၼိုင် (Animation)" လႆႈ — မိူၼ်ၼင်ႇ လွင်ႈႁဵတ်းႁႂ်ႈ ႁၢင်ႈလွၵ်းမူၼ်းလဵၼ်ႈၵႂႃႇမႃးလႆႈၶႃႈ။
ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ် တွၼ်ႈတႃႇၶူင်သၢင်ႈ Game လႄႈ Typing Tutor ၶွင်ႁဝ်းၼၼ်ႉၶႃႈ။

### 1. လွင်ႈၽိတ်းပိူင်ႈ ဢၼ်ၵႆႉႁၼ်ၼမ် (The Danger of Loops)

မိူဝ်ႈႁဝ်းၶႂ်ႈႁဵတ်း Animation (ပိူင်ယၢင်ႇ: ၶၢႆႉဢွင်ႈတီႈ X ၵူႈၸႅၵ်ႉၵၢၼ်ႉ)၊ ၵမ်ႈၼမ် ၵႆႉဝူၼ်ႉဝႃႈ တေလႆႈၸႂ်ႉ `while(true)` လႄႈ `Thread.sleep()` ၶႃႈ။
**ၵူၺ်းၵႃႈ ၼႂ်း Java Swing လွၵ်းလၢႆးၼႆႉ ဢမ်ႇထုၵ်ႇမႅၼ်ႈၶႃႈ!** ပေႃးႁဝ်းၸႂ်ႉ Loop ဝႆႉၼႂ်း UI Thread၊ ၼႃႈၸေႃးႁဝ်း တေ "ၶမ် (Freeze)" သေ ႁဝ်းတေၼဵၵ်း Button ဢမ်ႇၼၼ် ၸႂ်ႉ Mouse ဢမ်ႇလႆႈထႅင်ႈယဝ်ႉၶႃႈ။

### 2. လွင်ႈၸႂ်ႉတိုဝ်း Swing Timer

တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ **`javax.swing.Timer`** ၶႃႈ။ (မၢႆတွင်း: ဢမ်ႇၸႂ်ႈ `java.util.Timer` ၶႃႈၼႃ)
Swing Timer ၼႆႉ ပဵၼ်ၶိူင်ႈၸၢၵ်ႈ ဢၼ်တေပႂ်ႉထွမ်ႇ ၶၢဝ်းယၢမ်း လႄႈ ႁွင်ႉၸႂ်ႉ `ActionListener` ၵူႈမီႇလီႇၸႅၵ်ႉၵၢၼ်ႉ (Milliseconds) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉၶႃႈ။

```java
// 1000 milliseconds = 1 ၸႅၵ်ႉၵၢၼ်ႉ
// 16 milliseconds ≈ 60 FPS (Frames Per Second - ႁႂ်ႈ Animation လႆႈလီ)
Timer timer = new Timer(16, e -> {
    // Code တီႈၼႆႈ တေႁဵတ်းၵၢၼ် ၵူႈ 16ms 
});
timer.start(); // သင်ႇႁႂ်ႈ Timer တႄႇႁဵတ်းၵၢၼ်

```

### 3. The Magic Keyword: `repaint()`

မိူဝ်ႈ Timer ႁဵတ်းၵၢၼ်သေ လႅၵ်ႈလၢႆႈ ဢွင်ႈတီႈ (x, y) ၶွင်ႁၢင်ႈႁဝ်းယဝ်ႉၼၼ်ႉ၊ ၼႃႈၸေႃး UI မၼ်းတေပႆႇလႅၵ်ႈလၢႆႈ ႁင်းၵူၺ်းမၼ်းၶႃႈ။
ႁဝ်းတေလႆႈသင်ႇ **`repaint()`** တႃႇသေႇၶႃႈ။

* **`repaint()`** မၼ်းပဵၼ်လွင်ႈသင်ႇဝႃႈ: "ၶႅၼ်းတေႃႈ ၽဵဝ်ႈပႅတ်ႈႁၢင်ႈၵဝ်ႇ သေ ၵႂႃႇႁွင်ႉ `paintComponent()` ၶိုၼ်းထႅင်ႈၵမ်းၼိုင်ႈ သေ တႅမ်ႈႁၢင်ႈမႂ်ႇ ပၼ်ၽႂ်းၽႂ်းလူး!" ၼႆၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Bouncing Ball Animation)

ႁဝ်းမႃးၸၢမ်းၶူင်သၢင်ႈ Animation ဢၼ်မီး မၢၵ်ႇၼင် (Ball) လုၵ်ႉၼိုင်ႈ လဵၼ်ႈၵႂႃႇမႃးသေ ပေႃးၽႃႇတိူဝ်ႉ ၶွပ်ႇၼႃႈၸေႃးၵေႃႈ ႁႂ်ႈမၼ်း ၸၼ်ၶိုၼ်း (Bounce) ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

class BouncingBallCanvas extends JPanel implements ActionListener {
    // 1. ၶူင်သၢင်ႈ Variables တွၼ်ႈတႃႇ ဢွင်ႈတီႈ လႄႈ တၢင်းဝႆး
    private int ballX = 50;
    private int ballY = 50;
    private int ballDiameter = 40;
    
    // xVelocity လႄႈ yVelocity ပဵၼ် တၢင်းဝႆး (Speed လႄႈ Direction)
    private int xVelocity = 5; 
    private int yVelocity = 3; 

    private Timer timer;

    public BouncingBallCanvas() {
        // 2. ၶူင်သၢင်ႈ Timer ဢၼ်တေႁဵတ်းၵၢၼ် ၵူႈ 16ms (~60 FPS)
        // 'this' ၼႆႉ ပွင်ႇဝႃႈ ႁႂ်ႈမၼ်းၵႂႃႇႁွင်ႉ Method actionPerformed() ဢၼ်မီးၽၢႆႇတႂ်ႈၼႆႉၶႃႈ
        timer = new Timer(16, this);
        timer.start();
    }

    // 3. Method ၼႆႉ တေထုၵ်ႇ Timer ႁွင်ႉၸႂ်ႉ ၵူႈ 16ms
    @Override
    public void actionPerformed(ActionEvent e) {
        // Update ဢွင်ႈတီႈ ၶွင် မၢၵ်ႇၼင်
        ballX += xVelocity;
        ballY += yVelocity;

        // လွင်ႈၵူတ်ႇတူၺ်း လွင်ႈၽႃႇတိူဝ်ႉ ၶွပ်ႇ (Collision Detection)
        // ပေႃးတိူဝ်ႉ ၶွပ်ႇၽၢႆႇသၢႆႉ (0) ဢမ်ႇၼၼ် ၶွပ်ႇၽၢႆႇၶႂႃ (getWidth() - ballDiameter)
        if (ballX <= 0 || ballX >= getWidth() - ballDiameter) {
            xVelocity = -xVelocity; // လႅၵ်ႈလၢႆႈ သၢႆတၢင်း (ၸၼ်ၶိုၼ်းလင်)
        }
        
        // ပေႃးတိူဝ်ႉ ၶွပ်ႇၽၢႆႇၼိူဝ် (0) ဢမ်ႇၼၼ် ၶွပ်ႇၽၢႆႇတႂ်ႈ (getHeight() - ballDiameter)
        if (ballY <= 0 || ballY >= getHeight() - ballDiameter) {
            yVelocity = -yVelocity;
        }

        // *** လမ်ႇလွင်ႈသုတ်း: သင်ႇႁႂ်ႈ UI တႅမ်ႈႁၢင်ႈမႂ်ႇ (Redraw) ***
        repaint(); 
    }

    // 4. Method တႃႇတႅမ်ႈႁၢင်ႈ
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g); // ၽဵဝ်ႈပႅတ်ႈ ၼႃႈၸေႃးၵဝ်ႇ
        Graphics2D g2d = (Graphics2D) g;
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // တႅမ်ႈ မၢၵ်ႇၼင် (Ball) ၸွမ်းဢွင်ႈတီႈ X, Y ဢၼ်လႅၵ်ႈလၢႆႈမႂ်ႇၼၼ်ႉ
        g2d.setColor(new Color(255, 80, 80)); // သီလႅင်
        g2d.fillOval(ballX, ballY, ballDiameter, ballDiameter);
    }
}

public class AnimationDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Bouncing Ball Animation");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        BouncingBallCanvas canvas = new BouncingBallCanvas();
        canvas.setBackground(new Color(40, 40, 40)); // သီလမ်ၶုၼ်ႇ
        
        frame.add(canvas);
        frame.setVisible(true);
    }
}

```

### လွၵ်းလၢႆး Animation

တွၼ်ႈတႃႇႁဵတ်း Animation တဵမ်ထူၼ်ႈ ႁဝ်းလူဝ်ႇ 3 ၸၼ်ႉၶႃႈ:

1. **State (ၶေႃႈမုၼ်း):** Variables ဢၼ်မၵ်းမၼ်ႈ ဢွင်ႈတီႈ `x`, `y` လႄႈ သီ။
2. **Update (လႅၵ်ႈလၢႆႈ):** လွင်ႈၸႂ်ႉ `Timer` တွၼ်ႈတႃႇ လႅၵ်ႈလၢႆႈ Variables ၸိူဝ်းၼၼ်ႉ ယဝ်ႉႁွင်ႉၸႂ်ႉ `repaint()`။
3. **Render (တႅမ်ႈႁၢင်ႈ):** ၼႂ်း `paintComponent()` တေဢဝ် ၶေႃႈမုၼ်းဢၼ်မႂ်ႇၼၼ်ႉ မႃးတႅမ်ႈပဵၼ်ႁၢင်ႈ ဢွၵ်ႇမႃးၶႃႈ။