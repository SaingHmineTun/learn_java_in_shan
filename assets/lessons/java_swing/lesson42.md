## 42: Why UIs Freeze: The Event Dispatch Thread (EDT)

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး Module 7 ၶႃႈ! ၼႂ်း Module ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွင်ႈလမ်ႇလွင်ႈ သွင်လွင်ႈ ဢၼ်တေႁဵတ်းႁႂ်ႈ Application ႁဝ်း ပဵၼ်ၸၼ်ႉပရူဝ်ႇ (Professional) တႄႉတႄႉ — ၼၼ်ႉပဵၼ် 
လွင်ႈႁဵတ်းၵၢၼ်လၢႆလၢႆလွင်ႈ ၽွမ်ႉၵၼ် (Multithreading) လႄႈ လွင်ႈသိမ်းၶေႃႈမုၼ်း သႂ်ႇၼႂ်းၶိူင်ႈ (Data Persistence) ၶႃႈ။
ႁဝ်းတေတႄႇၵၼ်တီႈ ပၼ်ႁႃဢၼ် ၽူႈတႅမ်ႈ Code ၵူႈၵေႃႉ တေလႆႈထူပ်း — ၼၼ်ႉပဵၼ် **"ပၼ်ႁႃ ၼႃႈၸေႃးၶမ် (UI Freezing)"** လႄႈ လွင်ႈလမ်ႇလွင်ႈၶွင် **EDT** ၶႃႈ။

### 1. Event Dispatch Thread (EDT) ပဵၼ်သင်?

ၼႂ်း Java Swing ၼၼ်ႉ လွင်ႈဢၼ် တႅမ်ႈႁၢင်ႈ UI လႄႈ ႁပ်ႉလွင်ႈတူင်ႉၼိုင် (Events) ၸိူဝ်းမိူၼ်ၼင်ႇ လွင်ႈၼဵၵ်း Mouse ဢမ်ႇၼၼ် ပေႃႉ Keyboard ၼၼ်ႉ 
မၼ်းမီး **"ၽူႈၸတ်းၵၢၼ် ၵေႃႉလဵဝ်ၵူၺ်း"** ၶႃႈ။ ၽူႈၸတ်းၵၢၼ်ၵေႃႉၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Event Dispatch Thread (EDT)**။

EDT ၼႆႉ ႁဵတ်းၵၢၼ်မိူၼ်ၼင်ႇ ၽူႈႁပ်ႉၶႅၵ်ႇ ၼႂ်းလၢၼ်ႉၶဝ်ႈသွႆးၶႃႈ:

* မၼ်းတေ ႁပ်ႉ Order (Events ဢၼ် User ၼဵၵ်း)။
* မၼ်းတေ ဢဝ်ၶဝ်ႈသွႆး မႃးသူင်ႇ (တႅမ်ႈႁၢင်ႈ UI လႄႈ Update ၼႃႈၸေႃး `repaint()`)။

### 2. ပဵၼ်သင်လႄႈ UI ႁဝ်း ၶမ် ဢမ်ႇၼၼ် Not Responding?

ယွၼ်ႉဝႃႈ ၽူႈႁပ်ႉၶႅၵ်ႇ (EDT) ၼႆႉ မီးၵေႃႉလဵဝ်ၵူၺ်း၊ ပေႃးႁဝ်းဢဝ် ၵၢၼ်ဢၼ်ၼၵ်းၼၵ်း လႄႈ ၸႂ်ႉၶၢဝ်းယၢမ်းႁိုင်ႁိုင် (Heavy Tasks) ၵႂႃႇသင်ႇႁႂ်ႈမၼ်းႁဵတ်း — မိူၼ်ၼင်ႇ လွင်ႈလူတ်ႇ (Download) ၽၢႆႇယႂ်ႇယႂ်ႇ၊ လွင်ႈဢၢၼ်ႇ Database ဢၼ်မီးၶေႃႈမုၼ်း 10,000 ထႅဝ်၊ ဢမ်ႇၼၼ် `Thread.sleep(5000)` — ၽူႈႁပ်ႉၶႅၵ်ႇၵေႃႉၼႆႉ တေၶမ်ယူႇဝႆႉလႄႈ လႄႈ **ဢမ်ႇမီးၽႂ်မႃးႁပ်ႉ Order ဢမ်ႇၼၼ် တွပ်ႇလၢတ်ႈ ၶႅၵ်ႇ (User) လႆႈထႅင်ႈယဝ်ႉၶႃႈ**။

ၽွၼ်းလႆႈမၼ်းတႄႉ:

1. ၼဵၵ်း Button တၢင်ႇဢၼ် ၵေႃႈဢမ်ႇလႆႈ (ဢမ်ႇတူင်ႉၼိုင်)။
2. လၢၵ်ႈ (Drag) Window ၵေႃႈဢမ်ႇလႆႈ။
3. လိၵ်ႈဢၼ်သင်ႇ `setText()` ဝႆႉ ၵေႃႈတေပႆႇလႅၵ်ႈလၢႆႈ တေႃႇပေႃး ၵၢၼ်ၼၵ်းၼၼ်ႉ ယဝ်ႉၶႃႈ။

### 3. The Golden Rules ၶွင် Swing Concurrency

တွၼ်ႈတႃႇႁႄႉၵင်ႈ ပၼ်ႁႃၼႆႉ၊ Java Swing မီး ၶေႃႈမၵ်းမၼ်ႈ ဢၼ်လမ်ႇလွင်ႈသုတ်း 2 ၶေႃႈ:

1. **ယႃႇပေဢဝ် ၵၢၼ်ၼၵ်း (Time-consuming tasks) မႃးႁဵတ်းၼိူဝ် EDT.** ႁဝ်းတေလႆႈဢဝ်ၵႂႃႇႁဵတ်းၼႂ်း သၢႆၵၢၼ်ၽၢႆႇလင် (Background Threads) ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson 43 ၶႃႈ။
2. **တွၼ်ႈတႃႇ လႅၵ်ႈလၢႆႈ UI Component (မိူၼ်ၼင်ႇ `setText()`) တေလႆႈႁဵတ်းၼိူဝ် EDT ၵူၺ်း.** ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် Background Thread မႃးမႄး UI ၵမ်းသိုဝ်ႈၶႃႈ។

---

### Code တူဝ်ယၢင်ႇ (The Freezing UI Problem)

ၸၢမ်း Run Code ၽၢႆႇတႂ်ႈၼႆႉတူၺ်းၶႃႈ။ ပေႃးသူၸဝ်ႈ ၼဵၵ်း Button ဢၼ်ႁွင်ႉဝႃႈ "Download File (Bad)"၊ တေလႆႈႁၼ်ဝႃႈ UI တင်းသဵင်ႈ တေၶမ်ၵႂႃႇ 5 ၸႅၵ်ႉၵၢၼ်ႉ လႄႈ ၼဵၵ်း Button "Test UI" ၵေႃႈ တေဢမ်ႇႁဵတ်းၵၢၼ် ၵမ်းလဵဝ်ၶႃႈ။ ၼႆႉယဝ်ႉၶႃႈ ပဵၼ်လွင်ႈ **EDT Blocking**!

```java
import javax.swing.*;
import java.awt.*;

public class UI_Freeze_Demo {
    public static void main(String[] args) {
        // လၢႆးဢၼ်ထုၵ်ႇမႅၼ်ႈ: သင်ႇႁႂ်ႈ UI ၶွင်ႁဝ်း တႄႇႁဵတ်းၵၢၼ်ၼိူဝ် EDT တင်းသဵင်ႈ
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("TMK UI Freeze Demo");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 50));

        JButton badBtn = new JButton("Download File (Bad)");
        JButton testBtn = new JButton("Test UI (Click Me)");

        // Action ဢၼ်ၼႆႉ ႁဵတ်းၵၢၼ်ၼိူဝ် EDT (လွင်ႈၽိတ်းပိူင်ႈ ဢၼ်ယႂ်ႇလူင်)
        badBtn.addActionListener(e -> {
            System.out.println("Starting download...");
            badBtn.setText("Downloading..."); // လိၵ်ႈၼႆႉ တေပႆႇလႅၵ်ႈလၢႆႈ ၵမ်းလဵဝ်ၶႃႈ!
            
            try {
                // ပွမ်ႁဵတ်း ၵၢၼ်ၼၵ်း ဢၼ်ၸႂ်ႉၶၢဝ်းယၢမ်း 5 ၸႅၵ်ႉၵၢၼ်ႉ
                // မၼ်းတေ "ဢိုတ်း (Block)" EDT ဝႆႉ
                Thread.sleep(5000); 
            } catch (InterruptedException ex) {
                ex.printStackTrace();
            }
            
            System.out.println("Download complete!");
            badBtn.setText("Done!");
        });

        // Action ဢၼ်ၼႆႉ တွၼ်ႈတႃႇၸၢမ်းတူၺ်းဝႃႈ UI ႁဝ်း တိုၵ်ႉတွပ်ႇလၢတ်ႈယူႇ ႁိုဝ်ဢမ်ႇ
        testBtn.addActionListener(e -> {
            System.out.println("UI is still responsive!");
        });

        frame.add(badBtn);
        frame.add(testBtn);
        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း `SwingUtilities.invokeLater()`

ၼႂ်း Code ၽၢႆႇၼိူဝ်ၼၼ်ႉ ႁဝ်းလႆႈႁၼ် Method ဢၼ်ၼိုင်ႈ:

```java
SwingUtilities.invokeLater(() -> createAndShowGUI());

```

ၼႆႉပဵၼ် လွၵ်းလၢႆးဢၼ် Java Swing မၵ်းမၼ်ႈဝႆႉဝႃႈ **"ၶႅၼ်းတေႃႈ ဢဝ် Code UI တင်းသဵင်ႈ ၵႂႃႇႁဵတ်းၼိူဝ် EDT သေၵမ်း"** ၶႃႈ။ 
မၼ်းတေၸွႆႈႁႄႉၵင်ႈ ပၼ်ႁႃ ဢၼ်လၢၵ်ႇလၢႆး ၽွင်းတိုၵ်ႉတႄႇပိုတ်ႇ Window ၼၼ်ႉလႆႈၶႃႈ။