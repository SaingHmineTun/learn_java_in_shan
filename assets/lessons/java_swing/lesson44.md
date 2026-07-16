## 44: Visualizing Loading State (JProgressBar)

ၼႂ်း Lesson 43 ၼၼ်ႉ ႁဝ်းလႆႈႁဵၼ်းလၢႆးၸႂ်ႉ `SwingWorker` တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်ၼၵ်း ၽၢႆႇလင် သေ ဢမ်ႇႁဵတ်းႁႂ်ႈ UI ၶမ် (Freeze) ၵႂႃႇယဝ်ႉၶႃႈ။ 
ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇ User Experience (UX) ဢၼ်လီၼၼ်ႉ၊ ႁဝ်းထုၵ်ႇလီမီး သဵၼ်ႈမၢႆၼႄလွင်ႈၶိုပ်ႈၼႃႈ ႁႂ်ႈ User လႆႈႁူႉဝႃႈ ၵၢၼ်ၼၼ်ႉ တိုၵ်ႉႁဵတ်းထိုင်လႂ် ယဝ်ႉၼႆၶႃႈ။
တွၼ်ႈတႃႇႁဵတ်းလွင်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ Component ဢၼ်ႁွင်ႉဝႃႈ **`JProgressBar`** ၶႃႈ။

### 1. လွင်ႈၼႄပိူင် JProgressBar မီး 2 မဵဝ်း

`JProgressBar` ၸၢင်ႈၼႄလွင်ႈၶိုပ်ႈၼႃႈ လႆႈသွင်ယိူင်ႈၶႃႈ:

* **Determinate Mode (ႁူႉလွင်ႈယဝ်ႉတူဝ်):** မီးလွင်ႈတႄႇ (0%) လႄႈ လွင်ႈသုတ်း (100%) တႅတ်ႈၼႅတ်ႈ။ ႁဝ်းၸၢင်ႈသင်ႇ `progressBar.setValue(50)` တွၼ်ႈတႃႇၼႄဝႃႈ ထိုင် 50% ယဝ်ႉ။
* **Indeterminate Mode (ဢမ်ႇႁူႉလွင်ႈယဝ်ႉတူဝ်):** ၸႂ်ႉတွၼ်ႈတႃႇ ၵၢၼ်ဢၼ်ႁဝ်းဢမ်ႇႁူႉဝႃႈ တေယဝ်ႉမိူဝ်ႈလႂ် (ပိူင်ယၢင်ႇ: တိုၵ်ႉၵပ်းသိုပ်ႇ Server)။ မၼ်းတေပဵၼ် ၶႅပ်းသီ ဢၼ်လႅၼ်ႈၵႂႃႇလႅၼ်ႈမႃး ဢမ်ႇမီးတီႈသုတ်းၶႃႈ။ ၸႂ်ႉ `progressBar.setIndeterminate(true)` တွၼ်ႈတႃႇပိုတ်ႇလွင်ႈၼႆႉ။

### 2. လွင်ႈဢဝ် JProgressBar ၵႂႃႇၵိုၵ်းၸပ်း SwingWorker

တွၼ်ႈတႃႇဢဝ် `JProgressBar` ၵႂႃႇႁဵတ်းၵၢၼ်ၸွမ်း `SwingWorker` ၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ Parameter ထူၼ်ႈသွင် (Progress Type `V`) ၶွင် `SwingWorker<T, V>` ဢၼ်ႁဝ်းပွႆႇပဵၼ် `Void` ဝႆႉၼႂ်း Lesson ပူၼ်ႉမႃးၼၼ်ႉၶႃႈ။

ယၢမ်းလဵဝ် ႁဝ်းတေလႅၵ်ႈမၼ်းပဵၼ် **`Integer`** (တွၼ်ႈတႃႇသူင်ႇမၢႆၼပ်ႉ 0 တေႃႇ 100) သေ ၸႂ်ႉ Method လမ်ႇလွင်ႈထႅင်ႈ 2 ဢၼ်:

1. **`publish(Integer value)`**: ၸႂ်ႉၼႂ်း `doInBackground()` တွၼ်ႈတႃႇသူင်ႇ မၢႆၼပ်ႉ Progress ဢွၵ်ႇမႃး။
2. **`process(List<Integer> chunks)`**: Method ၼႆႉတေႁဵတ်းၵၢၼ်ၼိူဝ် **EDT** လႄႈ ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း ဢၼ် `publish` သူင်ႇမႃးၼၼ်ႉ မႃး Update `JProgressBar` ႁဝ်းၶႃႈ။

---

### Code တူဝ်ယၢင်ႇ (Live Progress Tracking)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Program ဢၼ်ပွမ်ႁဵတ်းဝႃႈ တိုၵ်ႉလူတ်ႇၽၢႆႇ လႄႈ မီး JProgressBar ဢၼ်ၼႄလွင်ႈၶိုပ်ႈၼႃႈ 0% တေႃႇထိုင် 100% ၸွမ်းလူၺ်ႈ `SwingWorker` ၶႃႈ။

```java
import javax.swing.*;
import java.awt.*;
import java.util.List; // လူဝ်ႇလႆႈ Import တွၼ်ႈတႃႇ List ၼႂ်း process()

public class ProgressBarDemo {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("JProgressBar & SwingWorker");
        frame.setSize(450, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        // ၸႂ်ႉ BorderLayout သေ သႂ်ႇၶၢင်ႈပဝ်ႇ (Padding)
        frame.setLayout(new BorderLayout(10, 10)); 
        ((JComponent) frame.getContentPane()).setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        // 1. ၶူင်သၢင်ႈ JProgressBar (တႄႇတီႈ 0, သုတ်းတီႈ 100)
        JProgressBar progressBar = new JProgressBar(0, 100);
        progressBar.setValue(0);
        progressBar.setStringPainted(true); // ပိုတ်ႇႁႂ်ႈၼႄ လိၵ်ႈ 0% - 100% ၼိူဝ် Bar
        progressBar.setFont(new Font("Arial", Font.BOLD, 14));

        JButton startBtn = new JButton("Start Download");

        // 2. သႂ်ႇ Action လႄႈ ၶူင်သၢင်ႈ SwingWorker
        startBtn.addActionListener(e -> {
            startBtn.setEnabled(false);
            progressBar.setValue(0);
            progressBar.setString(null); // လႅၵ်ႈပဵၼ်လၢႆးၼႄ ပိူဝ်ႇသႅၼ်း Default ၶိုၼ်း

            // SwingWorker<String, Integer> 
            // String = ၽွၼ်းလႆႈလိုၼ်းသုတ်း, Integer = မၢႆၼပ်ႉ Progress
            SwingWorker<String, Integer> worker = new SwingWorker<String, Integer>() {
                
                @Override
                protected String doInBackground() throws Exception {
                    // ပွမ်ႁဵတ်း ၵၢၼ်လူတ်ႇၽၢႆႇ (Loop 0 ถိုင် 100)
                    for (int i = 0; i <= 100; i += 10) {
                        Thread.sleep(400); // ပွမ်ၸႂ်ႉၶၢဝ်းယၢမ်း (0.4 ၸႅၵ်ႉၵၢၼ်ႉ ၵူႈៗ 10%)
                        
                        // *** ႁွင်ႉ publish() တွၼ်ႈတႃႇသူင်ႇ Progress ***
                        publish(i); 
                    }
                    return "Download Complete!";
                }

                // *** ႁပ်ႉဢဝ် Progress တီႈ publish() သေ မႃး Update UI ***
                @Override
                protected void process(List<Integer> chunks) {
                    // ဢဝ်မၢႆၼပ်ႉ ဢၼ်လိုၼ်းသုတ်း (Latest progress) ၼႂ်း List
                    int latestProgress = chunks.get(chunks.size() - 1);
                    progressBar.setValue(latestProgress);
                }

                @Override
                protected void done() {
                    try {
                        String result = get(); // ဢၢၼ်ႇဢဝ် ၽွၼ်းလႆႈတီႈ doInBackground
                        progressBar.setString(result); // ဢဝ်လိၵ်ႈ "Download Complete!" သႂ်ႇတႅၼ်း %
                        startBtn.setEnabled(true);
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            };

            worker.execute(); // သင်ႇႁႂ်ႈ Worker တႄႇႁဵတ်းၵၢၼ်
        });

        frame.add(progressBar, BorderLayout.CENTER);
        frame.add(startBtn, BorderLayout.SOUTH);
        frame.setVisible(true);
    }
}

```

### လွင်ႈၸႂ်ႉ `process(List<Integer> chunks)`

ႁဝ်းၸၢင်ႈထၢမ်ဝႃႈ "ပဵၼ်သင်လႄႈ ၶေႃႈမုၼ်း ဢၼ်သူင်ႇမႃး လႆႈမႃးပဵၼ် `List`?"။
ယွၼ်ႉဝႃႈ `publish()` မၼ်းႁဵတ်းၵၢၼ်ဝႆးၼႃႇ လႄႈ EDT ဢမ်ႇၸၢင်ႈ Update ၶိုတ်းလႆႈ ၵူႈၵမ်း၊ Java ၸင်ႇႁုပ်ႈဢဝ် ၶေႃႈမုၼ်းဢၼ်သူင်ႇမႃး လၢႆလၢႆၵမ်း (Chunks) သေ သူင်ႇမႃးပၼ် ၼႂ်း `process()` ၵမ်းလဵဝ်ၶႃႈ။ 
လွၵ်းလၢႆးဢၼ်လီသုတ်း တွၼ်ႈတႃႇ Progress Bar တႄႉ ပဵၼ်လွင်ႈ ဢၢၼ်ႇဢဝ် **တူဝ်လိုၼ်းသုတ်း (Latest)** ၼႂ်း List ၸွမ်းၼင်ႇ `chunks.get(chunks.size() - 1)` ၼၼ်ႉယဝ်ႉၶႃႈ။