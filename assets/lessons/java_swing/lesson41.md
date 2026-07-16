## 41: Project: TMK Typing Tutor Core Engine

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Project လိုၼ်းသုတ်း ၶွင် Module 6 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းလႆႈလဵပ်ႈႁဵၼ်းမႃး လွင်ႈၸွမ်းတူၺ်း Keyboard (`KeyListener`), လွင်ႈတႅမ်ႈႁၢင်ႈ UI ႁင်းၵူၺ်း (`paintComponent`), လွင်ႈႁဵတ်း Animation (`Timer`), လႄႈ လွၵ်းလၢႆးၼပ်ႉသွၼ်ႇ WPM ယဝ်ႉၶႃႈ။

မိူဝ်ႈၼႆႉ ႁဝ်းတေဢဝ် လွၼ်ႉမွၼ်း ၸိူဝ်းၼႆႉတင်းသဵင်ႈ မႃးႁူမ်ႈၵၼ်သေ ၶူင်သၢင်ႈ **ငဝ်ႈၸိုင်ႈပိူင် (Core Engine) ၶွင် TMK Typing Tutor** — ဢၼ်ၸၢင်ႈ ပေႃႉလိၵ်ႈလႆႈတႄႉတႄႉ, လႅၵ်ႈလၢႆႈသီ လိၵ်ႈဢၼ်ၽိတ်း/မႅၼ်ႈ ၵမ်းလဵဝ်, လႄႈ ၼႄပၼ် ၶေႃႈမုၼ်း WPM ၽွင်းတိုၵ်ႉပေႃႉယူႇၼၼ်ႉၶႃႈ!

### 1. ပိူင်သၢင်ႈ Project (How it works)

* **Custom Canvas (`JPanel`):** ႁဝ်းတေဢမ်ႇၸႂ်ႉ `JTextArea` ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ `paintComponent` တွၼ်ႈတႃႇ တႅမ်ႈလိၵ်ႈ (Text) ဢွၵ်ႇမႃး ႁင်းၵူၺ်း။ လွၵ်းလၢႆးၼႆႉ မၼ်းၸွႆႈႁႂ်ႈႁဝ်း ၸၢင်ႈလႅၵ်ႈလၢႆႈ သီတူဝ်လိၵ်ႈ (Character) ၵူႈတူဝ်လႆႈ ၸွမ်းၼင်ႇ လွင်ႈပေႃႉမႅၼ်ႈ ဢမ်ႇၼၼ် ၽိတ်းၶႃႈ။
* **The Engine (`KeyListener`):** ႁဝ်းတေသိမ်း လိၵ်ႈသွင်ၸုမ်း: `targetText` (လိၵ်ႈဢၼ်လူဝ်ႇပေႃႉ) လႄႈ `typedText` (လိၵ်ႈဢၼ် User ပေႃႉယဝ်ႉ)။
* **Live Loop (`Timer`):** ၸႂ်ႉ Timer တွၼ်ႈတႃႇ သင်ႇ `repaint()` ၵူႈ 50ms တွၼ်ႈတႃႇ Update ၶၢဝ်းယၢမ်း လႄႈ WPM ႁႂ်ႈပဵၼ် Real-time။

---

### Code တႃႇ Project (TMK Typing Engine)

တႅမ်ႈ Code ၽၢႆႇတႂ်ႈၼႆႉသေ ၸၢမ်း Run တူၺ်းၶႃႈ။ ၶတ်းၸႂ် ပေႃႉလိၵ်ႈ ၸွမ်းၼင်ႇ ဢၼ်ၼႄဝႆႉၼၼ်ႉ တူၺ်းၶႃႈ။ လွင်ႈလႅၵ်ႈလၢႆႈသီ လႄႈ WPM တေႁဵတ်းၵၢၼ် ၵမ်းလဵဝ်ၶႃႈ!

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class TMKTypingEngine extends JPanel implements KeyListener {

    // 1. ၶေႃႈမုၼ်း (State Variables)
    private String targetText = "Welcome to our Thung Mao Kham Typing Tutor!";
    private StringBuilder typedText = new StringBuilder(); // ၸႂ်ႉ StringBuilder တွၼ်ႈတႃႇထႅမ်/လုတ်း လိၵ်ႈလႆႈဝႆး
    
    private long startTime = 0;
    private int uncorrectedErrors = 0;
    private boolean isFinished = false;
    private Timer timer;

    public TMKTypingEngine() {
        // ပိုတ်ႇလွင်ႈႁပ်ႉ Focus လႄႈ Key Events
        setFocusable(true);
        addKeyListener(this);
        setBackground(new Color(30, 30, 35)); // သီပိုၼ်ႉလင်လမ်

        // ၶူင်သၢင်ႈ Timer တွၼ်ႈတႃႇ Update ၼႃႈၸေႃး ၵူႈ 50ms
        timer = new Timer(50, e -> repaint());
    }

    // ==========================================
    // 2. လွင်ႈတႅမ်ႈ UI လႄႈ Text ႁင်းၵူၺ်း (Custom Paint)
    // ==========================================
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        // ၸႂ်ႉ Font ဢၼ်တင်းယႂ်ႇတူဝ်လိၵ်ႈ ပဵင်းၵၼ် (Monospaced) တွၼ်ႈတႃႇတႅမ်ႈငၢႆႈ
        g2d.setFont(new Font("Monospaced", Font.BOLD, 24));
        FontMetrics fm = g2d.getFontMetrics();

        int startX = 50;
        int currentX = startX;
        int startY = 150;

        // Loop တႅမ်ႈလိၵ်ႈ ၵူႈတူဝ် (Character by Character)
        for (int i = 0; i < targetText.length(); i++) {
            char targetChar = targetText.charAt(i);
            
            // လိူၵ်ႈ သီ ၸွမ်းၼင်ႇ လွင်ႈပေႃႉ
            if (i < typedText.length()) {
                char typedChar = typedText.charAt(i);
                if (typedChar == targetChar) {
                    g2d.setColor(new Color(100, 255, 100)); // မႅၼ်ႈ (Green)
                } else {
                    g2d.setColor(new Color(255, 100, 100)); // ၽိတ်း (Red)
                }
            } else {
                g2d.setColor(new Color(150, 150, 150)); // ပႆႇပေႃႉ (Gray)
            }

            // တႅမ်ႈ တူဝ်လိၵ်ႈ
            String charStr = String.valueOf(targetChar);
            g2d.drawString(charStr, currentX, startY);

            // တႅမ်ႈ Cursor (လွၵ်းတႂ်ႈ) တီႈဢၼ်တိုၵ်ႉတေပေႃႉ
            if (i == typedText.length() && !isFinished) {
                g2d.setColor(Color.WHITE);
                g2d.fillRect(currentX, startY + 5, fm.charWidth(targetChar), 4);
            }

            // ၶၢႆႉ X ၵႂႃႇၽၢႆႇၶႂႃ တွၼ်ႈတႃႇတႅမ်ႈ တူဝ်ဢၼ်တေမႃး
            currentX += fm.charWidth(targetChar);
        }

        // တႅမ်ႈ Live Stats (WPM လႄႈ Accuracy)
        drawLiveStats(g2d, fm, startX, 300);
    }

    private void drawLiveStats(Graphics2D g2d, FontMetrics fm, int x, int y) {
        g2d.setColor(new Color(100, 200, 255));
        g2d.setFont(new Font("Arial", Font.PLAIN, 18));
        
        int wpm = calculateWPM();
        int accuracy = calculateAccuracy();
        
        String stats = String.format("Net WPM: %d   |   Accuracy: %d%%", wpm, accuracy);
        g2d.drawString(stats, x, y);

        if (isFinished) {
            g2d.setColor(Color.GREEN);
            g2d.drawString("Test Completed! Press ESC to restart.", x, y + 40);
        }
    }

    // ==========================================
    // 3. ဢွၵ်းဢေႃ (WPM Logic)
    // ==========================================
    private int calculateWPM() {
        if (startTime == 0 || typedText.length() == 0) return 0;
        
        long now = isFinished ? System.currentTimeMillis() : System.currentTimeMillis();
        double mins = (now - startTime) / 60000.0;
        if (mins <= 0) return 0;

        double grossWPM = (typedText.length() / 5.0) / mins;
        double netWPM = grossWPM - (uncorrectedErrors / mins);
        return Math.max(0, (int) Math.round(netWPM));
    }

    private int calculateAccuracy() {
        if (typedText.length() == 0) return 100;
        return (int) Math.round(((double)(typedText.length() - uncorrectedErrors) / typedText.length()) * 100);
    }

    // ==========================================
    // 4. လွင်ႈႁပ်ႉ Keyboard (KeyListener)
    // ==========================================
    @Override
    public void keyTyped(KeyEvent e) {
        if (isFinished) return;

        char c = e.getKeyChar();
        
        // ပေႃးပဵၼ် Backspace ယႃႇပေႁဵတ်းသင် တီႈၼႆႈ (ႁဝ်းတေႁဵတ်းတီႈ keyPressed)
        if (c == KeyEvent.VK_BACK_SPACE) return;

        // တႄႇ Timer မိူဝ်ႈပေႃႉ တူဝ်ဢွၼ်တၢင်းသုတ်း
        if (startTime == 0) {
            startTime = System.currentTimeMillis();
            timer.start();
        }

        // ၵူတ်ႇတူၺ်း လွင်ႈၽိတ်းပိူင်ႈ
        int currentIndex = typedText.length();
        if (currentIndex < targetText.length()) {
            if (c != targetText.charAt(currentIndex)) {
                uncorrectedErrors++;
            }
            typedText.append(c);
        }

        // ၵူတ်ႇတူၺ်းဝႃႈ ပေႃႉယဝ်ႉမူတ်းယဝ်ႉႁိုဝ်
        if (typedText.length() == targetText.length()) {
            isFinished = true;
            timer.stop();
        }
        
        repaint(); // Update UI
    }

    @Override
    public void keyPressed(KeyEvent e) {
        // လွင်ႈၸတ်းၵၢၼ် Backspace (မွတ်ႇၶိုၼ်းလင်)
        if (e.getKeyCode() == KeyEvent.VK_BACK_SPACE && typedText.length() > 0 && !isFinished) {
            typedText.deleteCharAt(typedText.length() - 1);
            repaint();
        }
        
        // လွင်ႈၸတ်းၵၢၼ် Escape (တႄႇမႂ်ႇ)
        if (e.getKeyCode() == KeyEvent.VK_ESCAPE) {
            typedText.setLength(0);
            uncorrectedErrors = 0;
            startTime = 0;
            isFinished = false;
            timer.stop();
            repaint();
        }
    }

    @Override
    public void keyReleased(KeyEvent e) {} // ဢမ်ႇလႆႈၸႂ်ႉ

    // ==========================================
    // 5. Main Method တွၼ်ႈတႃႇ Run Project
    // ==========================================
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Typing Tutor");
        frame.setSize(800, 450);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        TMKTypingEngine engine = new TMKTypingEngine();
        frame.add(engine);
        
        frame.setVisible(true);
        engine.requestFocusInWindow(); // *** လမ်ႇလွင်ႈသုတ်း: သင်ႇႁပ်ႉ Focus တွၼ်ႈတႃႇ Keyboard ***
    }
}

```

### ၶေႃႈမၢႆတွင်း (Key Takeaways)

1. **လွင်ႈၸႂ်ႉ Font "Monospaced":** ၼႂ်း UI ဢၼ်လူဝ်ႇလႆႈ တႅမ်ႈလိၵ်ႈပဵၼ်တူဝ် (Character by character) သေ လၢႆႈသီမၼ်းၼၼ်ႉ၊ လွင်ႈၸႂ်ႉ Font "Monospaced" (မိူၼ်ၼင်ႇ `Consolas` ဢမ်ႇၼၼ် `Courier`) မၼ်းႁဵတ်းႁႂ်ႈ တူဝ်လိၵ်ႈၵူႈတူဝ် မီးတၢင်းၵႂၢင်ႈ ပဵင်းၵၼ်ၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်း ၼပ်ႉသွၼ်ႇ ဢွင်ႈတီႈ `currentX += fm.charWidth(...)` လႆႈငၢႆႈ လႄႈ ဢမ်ႇပဵၼ် လွင်ႈလိၵ်ႈထပ်းၵၼ်ၶႃႈ။
2. **`StringBuilder`:** တွၼ်ႈတႃႇ String ဢၼ်လူဝ်ႇလႆႈ ထႅမ်သႂ်ႇ လႄႈ မွတ်ႇပႅတ်ႈ (Backspace) ဝႆးဝႆး လၢႆလၢႆၵမ်းၼၼ်ႉ၊ လွင်ႈၸႂ်ႉ `StringBuilder` မၼ်း ၶႅမ်ႉလႄႈ ဝႆးသေ လွင်ႈၸႂ်ႉ `String` ဢၼ်ဢဝ် `+` မႃးသိုပ်ႇၵၼ်ၶႃႈ။
3. **Live Updates လႄႈ Performance:** လွင်ႈႁဝ်းၸႂ်ႉ Timer `50ms` သေ သင်ႇ `repaint()` ၼၼ်ႉ မၼ်းဢမ်ႇႁဵတ်းႁႂ်ႈ Program ႁဝ်းထိူင်းၶႃႈ ယွၼ်ႉဝႃႈ `paintComponent` ၼႂ်း Java Swing မၼ်းထုၵ်ႇ Optimize ဝႆႉလီတႄႉတႄႉယဝ်ႉၶႃႈ။

---