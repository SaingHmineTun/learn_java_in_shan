## 43: Running Background Tasks with SwingWorker

ၼႂ်း Lesson 42 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ယဝ်ႉဝႃႈ လွင်ႈဢဝ်ၵၢၼ်ၼၵ်းယၢပ်ႇ ၵႂႃႇႁဵတ်းၼိူဝ် EDT ၼၼ်ႉ မၼ်းႁဵတ်းႁႂ်ႈ ၼႃႈၸေႃး UI ႁဝ်းၶမ် လႄႈ တူင်ႉၼိုင်ဢမ်ႇလႆႈ (Freeze) ၵႂႃႇၶႃႈ။ 
မိူဝ်ႈၼႆႉ ႁဝ်းတေမႃးၵႄႈလိတ်ႈ ပၼ်ႁႃၼႆႉ ၸွမ်းလူၺ်ႈ **`SwingWorker`** ၶႃႈ!

### 1. SwingWorker ပဵၼ်သင်?

**`SwingWorker`** ၼႆႉ ပဵၼ် Class ဢၼ် Java ႁဵတ်းဝႆႉပၼ် တွၼ်ႈတႃႇ ႁဵတ်းၵၢၼ်ၼၵ်း (Background Tasks) မိူၼ်ၼင်ႇ လွင်ႈလူတ်ႇၽၢႆႇ, လွင်ႈဢၢၼ်ႇ Database ႁိုင်ႁိုင် ၶႃႈ။
မၼ်းတေ ယူႇၽၢႆႇလင် သေ ဢမ်ႇၵႂႃႇၶႃႉၶႅင် လွင်ႈႁဵတ်းၵၢၼ်ၶွင် EDT ၶႃႈ။ ယဝ်ႉၵေႃႈ မၼ်းၸွႆႈႁႂ်ႈ UI ႁဝ်း တိုၵ်ႉတွပ်ႇလၢတ်ႈ (Responsive) လႆႈလီလီ ၽွင်းတိုၵ်ႉပႂ်ႉ ၵၢၼ်ၼၵ်းၼၼ်ႉ ႁဵတ်းယဝ်ႉ။

### 2. Method 2 ဢၼ် ၶွင် SwingWorker

လွင်ႈၸႂ်ႉတိုဝ်း `SwingWorker` ၼၼ်ႉ ႁဝ်းတေလႆႈ Override Method 2 ဢၼ်ၼႆႉၶႃႈ:

1. **`doInBackground()`**: ပဵၼ်ဢွင်ႈတီႈ ဢၼ်ႁဝ်းတေဢဝ် ၵၢၼ်ၼၵ်းၼၵ်း ၵႂႃႇသႂ်ႇဝႆႉၶႃႈ။ Method ၼႆႉ တေႁဵတ်းၵၢၼ်ၼိူဝ် **Background Thread** ၶႃႈ။
* *ၶေႃႈႁႄႉၵင်ႈ:* **ယႃႇပေ** ၵႂႃႇမႄး UI ဢမ်ႇၼၼ် သင်ႇ `setText()` ၼႂ်း Method ၼႆႉ လႃးလႃးၶႃႈ!


2. **`done()`**: ပဵၼ် Method ဢၼ်တေႁဵတ်းၵၢၼ် ႁင်းၵူၺ်း ၵမ်းလဵဝ် မိူဝ်ႈ `doInBackground()` ႁဵတ်းယဝ်ႉမူတ်းၶႃႈ။ Method ၼႆႉ မၼ်းတေၶိုၼ်းမႃးႁဵတ်းၵၢၼ်ၼိူဝ် **EDT** ၶိုၼ်းၶႃႈ။
* *လွင်ႈလီ:* ႁဝ်းၸၢင်ႈဢဝ် ၽွၼ်းလႆႈ (Result) မႃးမႄး UI လႄႈ သင်ႇ `setText()` လႆႈ လွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်းၶႃႈ။



### 3. လၢႆးၶူင်သၢင်ႈ (The Syntax)

`SwingWorker` ၼႆႉ မၼ်းလူဝ်ႇလႆႈမၵ်းမၼ်ႈ Generic Types (ပိူင်ၶေႃႈမုၼ်း) သွင်ဢၼ်ၶႃႈ: `SwingWorker<T, V>`

* **`T` (Result Type):** ပိူင်ၶေႃႈမုၼ်း ဢၼ် `doInBackground` တေသူင်ႇၶိုၼ်းမႃး (Return) ပၼ် `done` (ပိူင်ယၢင်ႇ: `String`, `Boolean`)။
* **`V` (Progress Type):** ပိူင်ၶေႃႈမုၼ်း တွၼ်ႈတႃႇသူင်ႇလွင်ႈၶိုပ်ႈၼႃႈ (Progress Update)။ ယၢမ်းလဵဝ်ႁဝ်းပႆႇၸႂ်ႉလႄႈ တေသႂ်ႇဝႆႉပဵၼ် `Void` ၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (The Responsive UI)

ႁဝ်းမႃးဢဝ် Code ၼႂ်း Lesson 42 ဢၼ်ၶမ်ၼၼ်ႉ မႃးမႄးတႅမ်ႈၶိုၼ်း ၸွမ်းလူၺ်ႈ `SwingWorker` တူၺ်းၶႃႈ။ တေလႆႈႁၼ်ဝႃႈ UI ႁဝ်း ဢမ်ႇၶမ်ယဝ်ႉ!

```java
import javax.swing.*;
import java.awt.*;

public class SwingWorkerDemo {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("TMK SwingWorker Demo");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 50));

        JButton downloadBtn = new JButton("Download File (Good)");
        JButton testBtn = new JButton("Test UI (Click Me)");

        downloadBtn.addActionListener(e -> {
            downloadBtn.setEnabled(false); // ပိၵ်ႉ Button ဝႆႉ ဢမ်ႇႁႂ်ႈၼဵၵ်းလႆႈလၢႆၵမ်း
            downloadBtn.setText("Downloading...");

            // 1. ၶူင်သၢင်ႈ SwingWorker ဢၼ်တေသူင်ႇၶိုၼ်း String လႄႈ ဢမ်ႇၸႂ်ႉ Progress (Void)
            SwingWorker<String, Void> worker = new SwingWorker<String, Void>() {
                
                // --- ႁဵတ်းၵၢၼ် ယူႇၽၢႆႇလင် (Background Thread) ---
                @Override
                protected String doInBackground() throws Exception {
                    System.out.println("Worker: Starting heavy task...");
                    
                    // ပွမ်ႁဵတ်း ၵၢၼ်ၼၵ်း 5 ၸႅၵ်ႉၵၢၼ်ႉ
                    Thread.sleep(5000); 
                    
                    // သူင်ႇၽွၼ်းလႆႈ ၶိုၼ်း (Return result)
                    return "Download Complete!"; 
                }

                // --- ႁဵတ်းၵၢၼ် မိူဝ်ႈယဝ်ႉတူဝ် (EDT) ---
                @Override
                protected void done() {
                    try {
                        // get() ၸႂ်ႉတွၼ်ႈတႃႇ ႁပ်ႉဢဝ် ၽွၼ်းလႆႈ တီႈ doInBackground
                        String result = get(); 
                        
                        // မႄး UI လႆႈ လွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်း
                        downloadBtn.setText(result);
                        downloadBtn.setEnabled(true);
                        System.out.println("Worker: Task finished and UI updated.");
                        
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            };

            // 2. သင်ႇႁႂ်ႈ SwingWorker တႄႇႁဵတ်းၵၢၼ်
            worker.execute();
        });

        // Action တွၼ်ႈတႃႇၸၢမ်း UI
        testBtn.addActionListener(e -> {
            System.out.println("UI is alive and responsive!");
        });

        frame.add(downloadBtn);
        frame.add(testBtn);
        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ: `worker.execute()`

မိူဝ်ႈႁဝ်းၶူင်သၢင်ႈ `SwingWorker` ယဝ်ႉ၊ မၼ်းတေပႆႇတႄႇႁဵတ်းၵၢၼ် ႁင်းၵူၺ်းမၼ်းၶႃႈ။ ႁဝ်းတေလႆႈသင်ႇ **`worker.execute()`** ၵူႈၵမ်း တွၼ်ႈတႃႇပွႆႇႁႂ်ႈမၼ်း ၵႂႃႇႁဵတ်းၵၢၼ် ၽၢႆႇလင်ၶႃႈ။

ပေႃးႁဝ်း Run Code ၼႆႉသေ ၼဵၵ်း Download၊ ႁဝ်းၸၢင်ႈ ၼဵၵ်း Button "Test UI" ဢမ်ႇၼၼ် လၢၵ်ႈ Window ၵႂႃႇမႃးလႆႈ လွတ်ႈလွတ်ႈလႅဝ်းလႅဝ်း ၽွင်းတိုၵ်ႉပႂ်ႉယူႇၼၼ်ႉၶႃႈ!