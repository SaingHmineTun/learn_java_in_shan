## 35: Tracking Mouse Clicks & Movement (MouseListener)

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Module 6 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းတေႁဵၼ်းလွင်ႈ ဢၼ်လိုၵ်ႉသေပိူၼ်ႈ (Low-level) ၶွင် Java Swing ၶႃႈ — ၼၼ်ႉပဵၼ်
လွင်ႈၵုမ်းထိင်း Mouse, Keyboard လႄႈ လွင်ႈတႅမ်ႈႁၢင်ႈ (Custom Graphics) ႁင်းၵူၺ်း ဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ် တွၼ်ႈတႃႇၶူင်သၢင်ႈ **TMK Typing Tutor** ၶွင်ႁဝ်းၼၼ်ႉယဝ်ႉၶႃႈ။

ႁဝ်းတေတႄႇၵၼ်တီႈ လွင်ႈၸွမ်းတူၺ်း လွင်ႈတူင်ႉၼိုင် ၶွင် Mouse ၸွမ်းလူၺ်ႈ **`MouseListener`** လႄႈ **`MouseMotionListener`** ၶႃႈ။

### 1. Mouse Event ပဵၼ်သင်?

မိူဝ်ႈႁဝ်းၸႂ်ႉ Button ၼၼ်ႉ ႁဝ်းၸႂ်ႉ `ActionListener` တွၼ်ႈတႃႇပႂ်ႉထွမ်ႇ လွင်ႈ "ၼဵၵ်း (Click)" ၶႃႈ။ ၵူၺ်းၵႃႈ `ActionListener` ၼႆႉ မၼ်းဢမ်ႇၸၢင်ႈမွၵ်ႇႁဝ်းလႆႈဝႃႈ User ၼဵၵ်းၽၢႆႇသၢႆႉႁိုဝ် ၽၢႆႇၶႂႃ၊ ၼဵၵ်းသေပႆႇပွႆႇႁိုဝ်၊ ဢမ်ႇၼၼ် ဢဝ် Mouse လၢၵ်ႈ (Drag) ၵႂႃႇတင်းလႂ် ၶႃႈ။

တွၼ်ႈတႃႇႁူႉၶေႃႈမုၼ်းၸိူဝ်းၼႆႉ လိုၵ်ႉလိုၵ်ႉလွင်ႈလွင်ႈ ႁဝ်းတေလႆႈၸႂ်ႉ Listener 2 မဵဝ်းၶႃႈ:

1. **`MouseListener`**: တွၼ်ႈတႃႇလွင်ႈ ၼဵၵ်း, ပွႆႇ, လႄႈ လွင်ႈဢဝ် Mouse ၶဝ်ႈမႃး/ဢွၵ်ႇၵႂႃႇ ၼႂ်း Component။
2. **`MouseMotionListener`**: တွၼ်ႈတႃႇလွင်ႈ လၢၵ်ႈ (Drag) လႄႈ လွင်ႈၶၢႆႉ (Move) ၵႂႃႇမႃး ၶွင် Mouse။

### 2. Methods ဢၼ်လမ်ႇလွင်ႈ

မိူဝ်ႈ Mouse တူင်ႉၼိုင်၊ မၼ်းတေသူင်ႇ Object ဢၼ်ႁွင်ႉဝႃႈ **`MouseEvent`** မႃးပၼ်ႁဝ်းၶႃႈ။ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ `e.getX()` လႄႈ `e.getY()` တွၼ်ႈတႃႇႁႃ ဢွင်ႈတီႈ ၵႅၼ် X, Y တီႈဢၼ် Mouse ယူႇဝႆႉလႆႈၶႃႈ။

**တွၼ်ႈတႃႇ `MouseListener`:**

| Method | လွင်ႈတူင်ႉၼိုင် (Trigger) |
| --- | --- |
| `mouseClicked` | ၼဵၵ်းသေ ပွႆႇၶိုၼ်း ၼႂ်းဢွင်ႈတီႈလဵဝ်ၵၼ် ၽႂ်းၽႂ်း |
| `mousePressed` | ၼဵၵ်းလူင်းၵႂႃႇ (သေပႆႇပွႆႇၵေႃႈ ႁဵတ်းၵၢၼ်ယဝ်ႉ) |
| `mouseReleased` | ပွႆႇၼိဝ်ႉမိုဝ်း ဢၼ်ၼဵၵ်းဝႆႉၼၼ်ႉ |
| `mouseEntered` | ဢဝ် Mouse လတ်းၶဝ်ႈမႃး ၼႂ်းၶွပ်ႇ Component |
| `mouseExited` | ဢဝ် Mouse ဢွၵ်ႇၵႂႃႇ ၼွၵ်ႈၶွပ်ႇ Component |

**တွၼ်ႈတႃႇ `MouseMotionListener`:**

| Method | လွင်ႈတူင်ႉၼိုင် (Trigger) |
| --- | --- |
| `mouseDragged` | ၼဵၵ်းၶမ်ဝႆႉ သေ လၢၵ်ႈၵႂႃႇလၢၵ်ႈမႃး |
| `mouseMoved` | ၶၢႆႉ Mouse ၵႂႃႇမႃး (ဢမ်ႇလႆႈၼဵၵ်းသင်) |

### 3. လွင်ႈၸႂ်ႉ MouseAdapter (Trick တွၼ်ႈတႃႇလူတ်း Code)

ပေႃးႁဝ်း `implements MouseListener` တိုၼ်းမၼ်း၊ ႁဝ်းတေလႆႈတႅမ်ႈ Override Method တင်း 5 ဢၼ်ယဝ်ႉ။ ႁဝ်းဢမ်ႇၸႂ်ႉမူတ်းၵေႃႈ တိုၼ်းတေလႆႈတႅမ်ႈယဝ်ႉ။ (Code တေယၢဝ်းလႄႈ သုၵ်ႉ)။

တွၼ်ႈတႃႇၵႄႈလိတ်ႈလွင်ႈၼႆႉ Java မီး **`MouseAdapter`** ၶႃႈ။ မၼ်းပဵၼ် Class ဢၼ်တႅမ်ႈ Method ပဝ်ႇပဝ်ႇဝႆႉပၼ်ယဝ်ႉလႄႈ၊ ႁဝ်းၵူၺ်းလူဝ်ႇ လိူၵ်ႈ Override Method ဢၼ်ႁဝ်းၶႂ်ႈၸႂ်ႉ ဢၼ်လဵဝ်ၵေႃႈလႆႈယဝ်ႉၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Mouse Tracking Pad)

ႁဝ်းမႃးၸၢမ်းၶူင်သၢင်ႈ `JPanel` ဢၼ်ၼိုင်ႈ ဢၼ်ၸၢင်ႈၸွမ်းတူၺ်း (Track) ဢွင်ႈတီႈ X, Y ၶွင် Mouse လႄႈ လႅၵ်ႈလၢႆႈသီ မိူဝ်ႈႁဝ်းဢဝ် Mouse ၶဝ်ႈမႃး ဢမ်ႇၼၼ် ၼဵၵ်းဝႆႉ ၼၼ်ႉၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class MouseEventDemo {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Mouse Tracker Pad");
        frame.setSize(500, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // 1. ၶူင်သၢင်ႈ Label တွၼ်ႈတႃႇၼႄ ၶေႃႈမုၼ်း X, Y
        JLabel statusLabel = new JLabel("Move the mouse over the tracking pad...", SwingConstants.CENTER);
        statusLabel.setFont(new Font("Arial", Font.BOLD, 16));
        statusLabel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        frame.add(statusLabel, BorderLayout.NORTH);

        // 2. ၶူင်သၢင်ႈ Panel (Tracking Pad) ဢၼ်တေႁပ်ႉ Mouse Events
        JPanel trackPad = new JPanel();
        trackPad.setBackground(Color.LIGHT_GRAY);
        trackPad.setBorder(BorderFactory.createLineBorder(Color.DARK_GRAY, 3));
        frame.add(trackPad, BorderLayout.CENTER);

        // 3. ၸႂ်ႉ MouseAdapter တွၼ်ႈတႃႇပႂ်ႉထွမ်ႇ လွင်ႈတူင်ႉၼိုင် (Events)
        
        // ဢဝ် Adapter သႂ်ႇပၼ် တွၼ်ႈတႃႇလွင်ႈ ၼဵၵ်း လႄႈ ၶဝ်ႈ/ဢွၵ်ႇ
        trackPad.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                trackPad.setBackground(new Color(200, 230, 255)); // လၢႆႈပဵၼ် သီသွမ်ႇ
                statusLabel.setText("Mouse Entered the pad!");
            }

            @Override
            public void mouseExited(MouseEvent e) {
                trackPad.setBackground(Color.LIGHT_GRAY); // လၢႆႈၶိုၼ်း သီၵဝ်ႇ
                statusLabel.setText("Mouse Exited the pad.");
            }

            @Override
            public void mousePressed(MouseEvent e) {
                trackPad.setBackground(new Color(255, 200, 200)); // လၢႆႈပဵၼ် သီလႅင် မိူဝ်ႈၼဵၵ်း
                statusLabel.setText("Mouse Pressed at: X=" + e.getX() + ", Y=" + e.getY());
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                trackPad.setBackground(new Color(200, 230, 255)); // လၢႆႈၶိုၼ်း သီသွမ်ႇ မိူဝ်ႈပွႆႇ
                statusLabel.setText("Mouse Released.");
            }
        });

        // ဢဝ် Adapter သႂ်ႇပၼ် တွၼ်ႈတႃႇလွင်ႈ လၢၵ်ႈ လႄႈ ၶၢႆႉ
        trackPad.addMouseMotionListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                // Update ဢွင်ႈတီႈ X, Y ၵူႈၵမ်း မိူဝ်ႈ Mouse ၶၢႆႉ
                statusLabel.setText("Moving: X=" + e.getX() + ", Y=" + e.getY());
            }

            @Override
            public void mouseDragged(MouseEvent e) {
                // Update ဢွင်ႈတီႈ X, Y မိူဝ်ႈၼဵၵ်းသေလၢၵ်ႈ (Drag)
                statusLabel.setText("Dragging: X=" + e.getX() + ", Y=" + e.getY());
            }
        });

        frame.setVisible(true);
    }
}

```

ပေႃးႁဝ်း Run Code ၼႆႉယဝ်ႉ ဢဝ် Mouse ၵႂႃႇပွႆႇၼိူဝ် Panel ၼၼ်ႉတူၺ်းၶႃႈ။ တေလႆႈႁၼ် သီမၼ်းလႅၵ်ႈလၢႆႈ လႄႈ မၢႆၼပ်ႉ X, Y တီႈ Label တေလႅၵ်ႈလၢႆႈၸွမ်း ၵမ်းလဵဝ်ၶႃႈ။