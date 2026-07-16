## 36: Capturing Keystrokes (KeyListener)

ၼႂ်း Lesson 35 ႁဝ်းလႆႈႁဵၼ်းလွင်ႈၸွမ်းတူၺ်း လွင်ႈတူင်ႉၼိုင်ၶွင် Mouse ၵႂႃႇယဝ်ႉၶႃႈ။ မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈဢၼ်လမ်ႇလွင်ႈသုတ်း တွၼ်ႈတႃႇ Project လိုၼ်းသုတ်း ၶွင်ႁဝ်း (TMK Typing Tutor) — ၼၼ်ႉပဵၼ် လွင်ႈတီႉၺွပ်း လႄႈ ၸွမ်းတူၺ်း လွင်ႈၼဵၵ်းၶီးပွတ်ႉ (Keyboard) ၸွမ်းလူၺ်ႈ **`KeyListener`** ၶႃႈ။

### 1. KeyListener ပဵၼ်သင်?

**`KeyListener`** ၼႆႉ ပဵၼ် Interface ဢၼ်ပႂ်ႉထွမ်ႇ လွင်ႈတူင်ႉၼိုင် ၶွင် Keyboard မိူဝ်ႈ User ၼဵၵ်း၊ ပွႆႇ၊ ဢမ်ႇၼၼ် ပေႃႉတူဝ်လိၵ်ႈ ဢွၵ်ႇမႃးၶႃႈ။ 
မိူၼ်ၵၼ်တင်း `MouseAdapter` ဢၼ်ႁဝ်းလႆႈႁဵၼ်းမႃး၊ တွၼ်ႈတႃႇ Keyboard ႁဝ်းၵေႃႈၸၢင်ႈၸႂ်ႉ **`KeyAdapter`** တွၼ်ႈတႃႇလူတ်းယွမ်း Code ႁႂ်ႈပွတ်းလႆႈၶႃႈ။

### 2. လွင်ႈတူင်ႉၼိုင် 3 မဵဝ်း (The 3 Key Events)

မိူဝ်ႈႁဝ်းပေႃႉ Keyboard ၼိုင်ႈၵမ်း၊ မၼ်းတေသူင်ႇ Object ဢၼ်ႁွင်ႉဝႃႈ **`KeyEvent`** မႃးပၼ်ႁဝ်းၶႃႈ။ 
ၼႂ်း `KeyListener` ၼၼ်ႉ မီး Method 3 ဢၼ် ဢၼ်ႁဵတ်းၵၢၼ် ဢမ်ႇမိူၼ်ၵၼ်:

| Method | လွင်ႈတူင်ႉၼိုင် လႄႈ လၢႆးၸႂ်ႉတိုဝ်း                                                                                                                                                                              |
| --- |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `keyPressed` | ႁဵတ်းၵၢၼ် ၵမ်းလဵဝ် မိူဝ်ႈၼဵၵ်းၶီး (Key) လူင်းၵႂႃႇ။ သၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ တီႉၺွပ်း **ၶီးၶိုၵ်ႉတွၼ်း** မိူၼ်ၼင်ႇ Shift, Enter, Backspace, ဢမ်ႇၼၼ် Arrow Keys။ ႁဝ်းတေၸႂ်ႉ `e.getKeyCode()` တွၼ်ႈတႃႇဢၢၼ်ႇမၢႆၶူတ်ႉမၼ်း။ |
| `keyTyped` | ႁဵတ်းၵၢၼ် မိူဝ်ႈလွင်ႈၼဵၵ်းၼၼ်ႉ ဢွၵ်ႇမႃးပဵၼ် **တူဝ်လိၵ်ႈတႄႉတႄႉ** (Character)။ သၢင်ႇထုၵ်ႇတွၼ်ႈတႃႇ ၸွမ်းတူၺ်း လွင်ႈပေႃႉလိၵ်ႈ မိူၼ်ၼင်ႇ 'A', 'b', '1'။ ႁဝ်းတေၸႂ်ႉ `e.getKeyChar()` တွၼ်ႈတႃႇဢၢၼ်ႇတူဝ်လိၵ်ႈၼၼ်ႉ။      |
| `keyReleased` | ႁဵတ်းၵၢၼ် မိူဝ်ႈ User ပွႆႇၶီး (Key) ၼၼ်ႉၶိုၼ်း။                                                                                                                                                                 |

### 3. The Golden Rule တွၼ်ႈတႃႇ Keyboard: "Focus"

ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈသုတ်း မိူဝ်ႈၸႂ်ႉ `KeyListener`: **Component ဢၼ်တေႁပ်ႉ Keyboard Event လႆႈၼၼ်ႉ တေလႆႈမီး "Focus" ဝႆႉၶႃႈ။**

ပေႃးႁဝ်းဢဝ် `KeyListener` ၵႂႃႇသႂ်ႇၼႂ်း `JFrame` ဢမ်ႇၼၼ် `JPanel` လၢႆလၢႆ မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ၶႃႈ။ ႁဝ်းတေလႆႈသင်ႇ 2 ၶေႃႈၼႆႉ ဢွၼ်တၢင်း:

1. `component.setFocusable(true);` (ပိုတ်ႇပၼ်လွင်ႈႁပ်ႉ Focus)
2. `component.requestFocusInWindow();` (သင်ႇႁႂ်ႈမၼ်း ႁပ်ႉဢဝ် Focus ၵမ်းလဵဝ်)

---

### Code တူဝ်ယၢင်ႇ (Keystroke Tracker)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program ဢၼ်ၼႄပၼ် ၶီး (Key) ဢၼ် User ၼဵၵ်း သေ ၸႅၵ်ႇၼႄပၼ်ပႃးဝႃႈ မၼ်းပဵၼ် တူဝ်လိၵ်ႈ (`keyTyped`) ႁိုဝ် ပဵၼ် ၶီးၶိုၵ်ႉတွၼ်း (`keyPressed`) ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

public class KeyListenerDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("TMK Keyboard Tracker");
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // 1. ၶူင်သၢင်ႈ Label တွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်းၶီးပွတ်ႉ
        JLabel displayLabel = new JLabel("Press any key on your keyboard...", SwingConstants.CENTER);
        displayLabel.setFont(new Font("Consolas", Font.BOLD, 24));
        displayLabel.setForeground(new Color(0, 102, 204));
        frame.add(displayLabel, BorderLayout.CENTER);

        // 2. ၶူင်သၢင်ႈ Label ထႅင်ႈဢၼ် တွၼ်ႈတႃႇၼႄ Key Char လႄႈ Key Code
        JLabel detailLabel = new JLabel("Details will appear here", SwingConstants.CENTER);
        detailLabel.setFont(new Font("Arial", Font.PLAIN, 16));
        frame.add(detailLabel, BorderLayout.SOUTH);

        // 3. *** လမ်ႇလွင်ႈသုတ်း: ပိုတ်ႇ Focus ပၼ် Frame ***
        frame.setFocusable(true);

        // 4. သႂ်ႇ KeyAdapter တွၼ်ႈတႃႇ ပႂ်ႉထွမ်ႇ Keyboard
        frame.addKeyListener(new KeyAdapter() {
            
            // ႁဵတ်းၵၢၼ်မိူဝ်ႈ ၼဵၵ်းၶီးလူင်းၵႂႃႇ (လီတႃႇၶီးၶိုၵ်ႉတွၼ်း မိူၼ်ၼင်ႇ Shift, Space, Enter)
            @Override
            public void keyPressed(KeyEvent e) {
                int keyCode = e.getKeyCode();
                String keyName = KeyEvent.getKeyText(keyCode); // လႅၵ်ႈ Code ပဵၼ်ၸိုဝ်ႈၶီး ဢၢၼ်ႇငၢႆႈငၢႆႈ
                
                displayLabel.setText("KEY PRESSED: " + keyName);
                detailLabel.setText("Key Code: " + keyCode);
            }

            // ႁဵတ်းၵၢၼ်မိူဝ်ႈ ပေႃႉဢွၵ်ႇမႃးပဵၼ် တူဝ်လိၵ်ႈ (လီတႃႇလွင်ႈပေႃႉလိၵ်ႈ A-Z, 0-9)
            @Override
            public void keyTyped(KeyEvent e) {
                char keyChar = e.getKeyChar();
                
                // ၵူတ်ႇတူၺ်းဝႃႈ မၼ်းပဵၼ်တူဝ်လိၵ်ႈ တႄႉတႄႉႁိုဝ်
                if (Character.isDefined(keyChar) && keyChar != KeyEvent.VK_BACK_SPACE) {
                    detailLabel.setText(detailLabel.getText() + " | Typed Char: '" + keyChar + "'");
                }
            }
        });

        // 5. ၼႄ Window လႄႈ သင်ႇႁႂ်ႈႁပ်ႉ Focus ၵမ်းလဵဝ်
        frame.setVisible(true);
        frame.requestFocusInWindow(); // လူဝ်ႇလႆႈႁွင်ႉ မိူဝ်ႈဝၢႆးသေ setVisible(true)
    }
}

```

ပေႃးႁဝ်း Run Code ၼႆႉယဝ်ႉ ၸၢမ်းပေႃႉတူဝ်လိၵ်ႈ `A`, ၼဵၵ်း `Spacebar`, ဢမ်ႇၼၼ် ၼဵၵ်း `Shift` တူၺ်းၶႃႈ။ တေလႆႈႁၼ်ဝႃႈ `keyPressed` တီႉၺွပ်းလႆႈၵူႈၶီး၊ ၵူၺ်းၵႃႈ `keyTyped` တႄႉ ႁဵတ်းၵၢၼ် မိူဝ်ႈမၼ်းပဵၼ် တူဝ်လိၵ်ႈ ဢၼ်ပေႃႉဢွၵ်ႇမႃးလႆႈ ၵူၺ်းၶႃႈ။ 
ႁဝ်းတေလႆႈဢဝ် ၶေႃႈမုၼ်းၼႆႉ ၵႂႃႇၸႂ်ႉၼႂ်း Typing Tutor ႁဝ်း တွၼ်ႈတႃႇၵူတ်ႇတူၺ်းဝႃႈ User ပေႃႉမႅၼ်ႈႁိုဝ်ၽိတ်း ၼၼ်ႉၶႃႈ!