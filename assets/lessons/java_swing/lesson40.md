## 40: Calculating WPM (Words Per Minute) Logic

ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၶႃႈ! မိူဝ်ႈဢွၼ်တၢင်း ႁဝ်းတေၵႂႃႇၶူင်သၢင်ႈ Project လိုၼ်းသုတ်း ဢၼ်ပဵၼ် Typing Tutor တႄႉတႄႉၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈမီး "ဢွၵ်းဢေႃ" (Logic) တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ လွင်ႈဝႆး လႄႈ လွင်ႈမႅၼ်ႈ မိူဝ်ႈၽွင်း ပေႃႉလိၵ်ႈဢွၼ်တၢင်းၶႃႈ။

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်း လွၵ်းလၢႆးၼပ်ႉသွၼ်ႇ **WPM (Words Per Minute)** လႄႈ **Accuracy (%)** ဢၼ်ပဵၼ် ပိူင်လၵ်းၸဵင် (Standard) ၶွင် Typing Test ၵူႈဢၼ် ၼႂ်းလုမ်ႈၾႃႉၼႆႉၶႃႈ။

### 1. ပိူင်လၵ်းၸဵင်: 1 "Word" မီးလၢႆတူဝ်? (The 5-Character Rule)

ၼႂ်းလွင်ႈၼပ်ႉသွၼ်ႇ WPM ၼၼ်ႉ၊ ၶေႃႈဝႃႈ "Word" (ၶေႃႈၵႂၢမ်း) ၼၼ်ႉ မၼ်းဢမ်ႇလႆႈမၢႆထိုင် ၶေႃႈၵႂၢမ်းတႄႉတႄႉ ဢၼ်မီးလွင်ႈပွင်ႇၸႂ်ၶႃႈ။ လွင်ႈပေႃႉလိၵ်ႈ "I" (1 တူဝ်) လႄႈ "Application" (11 တူဝ်) ၼၼ်ႉ လွင်ႈယၢပ်ႇမၼ်း ဢမ်ႇမိူၼ်ၵၼ်လႄႈ၊ တွၼ်ႈတႃႇႁႂ်ႈမီးလွင်ႈၽဵင်ႇပဵင်းၵၼ် မၼ်းၸင်ႇမၵ်းမၼ်ႈဝႃႈ:

> **5 Keystrokes (လွင်ႈၼဵၵ်း 5 ၵမ်း) = 1 Word** (ပႃးတင်း ၶၢင်ႈပဝ်ႇ လႄႈ ၶိူင်ႈမၢႆ ၵူႈယိူင်ႈ)

### 2. သုၼ်ႇၼပ်ႉသွၼ်ႇ (The Math Formulas)

ႁဝ်းတေၸႂ်ႉ သုၼ်ႇၼပ်ႉသွၼ်ႇ (Formulas) 3 ဢၼ် တွၼ်ႈတႃႇ Typing Tutor ႁဝ်းၶႃႈ:

**1. Gross WPM (WPM တင်းသဵင်ႈ):**
ၼႆႉပဵၼ် လွင်ႈဝႆးတင်းသဵင်ႈ ဢၼ်ပႆႇလႆႈထွၼ်ပႅတ်ႈ ၶေႃႈၽိတ်းၶႃႈ။

`text{Gross WPM} = frac{text{Total Keystrokes} / 5}{text{Time in Minutes}}`

**2. Net WPM (WPM တႄႉတႄႉ):**
ၼႆႉပဵၼ် လွင်ႈဝႆးတႄႉတႄႉ ဢၼ်ထွၼ်ပႅတ်ႈ ၶေႃႈၽိတ်း (Uncorrected Errors) ဢၼ် User ဢမ်ႇလႆႈမႄးၶိုၼ်းၼၼ်ႉယဝ်ႉၶႃႈ။ (ပေႃးၼပ်ႉဢွၵ်ႇမႃး လႆႈမၢႆထွၼ် (Negative)၊ ႁဝ်းတေမၵ်းမၼ်ႈပဵၼ် 0 ၶႃႈ)


`text{Net WPM} = text{Gross WPM} - frac{text{Errors}}{text{Time in Minutes}}`

**3. Accuracy (လွင်ႈမႅၼ်ႈ):**
ၼပ်ႉသွၼ်ႇပဵၼ် ပိူဝ်ႇသႅၼ်း (%) တွၼ်ႈတႃႇတူၺ်းဝႃႈ ပေႃႉမႅၼ်ႈလၢႆပိူဝ်ႇသႅၼ်းၶႃႈ။


`text{Accuracy} = frac{text{Total Keystrokes} - text{Total Errors}}{text{Total Keystrokes}} times 100`

### 3. လွင်ႈၼပ်ႉ ၶၢဝ်းယၢမ်း ၼႂ်း Java

တွၼ်ႈတႃႇၼပ်ႉ `Time in Minutes` လႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Method **`System.currentTimeMillis()`** ဢၼ်တေသူင်ႇၶိုၼ်းမႃး ၶၢဝ်းယၢမ်းပဵၼ် မီႇလီႇၸႅၵ်ႉၵၢၼ်ႉ (Milliseconds) ၶႃႈ။

* $1000 text{milliseconds} = 1 text{second}$
* $60000 text milliseconds} = 1 text{minute}$

---

### Code တူဝ်ယၢင်ႇ (Typing Logic Engine)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Class ဢၼ်ၼိုင်ႈ ဢၼ်မီးၼႃႈၵၢၼ် တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ WPM လႄႈ Accuracy (ဢမ်ႇပႃး UI) ၶႃႈ။

```java
public class TypingLogic {
    private long startTime;
    private int totalKeystrokes;
    private int uncorrectedErrors;

    public TypingLogic() {
        this.totalKeystrokes = 0;
        this.uncorrectedErrors = 0;
    }

    // ႁွင်ႉ Method ၼႆႉ မိူဝ်ႈ User တႄႇပေႃႉလိၵ်ႈ တူဝ်ဢွၼ်တၢင်းသုတ်း
    public void startTyping() {
        this.startTime = System.currentTimeMillis();
    }

    // ႁွင်ႉ Method ၼႆႉ မိူဝ်ႈ User ပေႃႉလိၵ်ႈ ၵူႈၵမ်း
    public void registerKeystroke(boolean isMistake) {
        totalKeystrokes++;
        if (isMistake) {
            uncorrectedErrors++;
        }
    }

    // Method တွၼ်ႈတႃႇ ၼပ်ႉသွၼ်ႇ Net WPM
    public int calculateNetWPM() {
        if (totalKeystrokes == 0) return 0;

        long currentTime = System.currentTimeMillis();
        // ၼပ်ႉၶၢဝ်းယၢမ်း (Milliseconds) လႅၵ်ႈပဵၼ် Minutes
        double timeInMinutes = (currentTime - startTime) / 60000.0;

        if (timeInMinutes <= 0) return 0;

        // ၼပ်ႉ Gross WPM လႄႈ Net WPM ၸွမ်း Formula
        double grossWPM = (totalKeystrokes / 5.0) / timeInMinutes;
        double netWPM = grossWPM - (uncorrectedErrors / timeInMinutes);

        // ႁဵတ်းႁႂ်ႈပဵၼ် မၢႆတဵမ် လႄႈ ယႃႇႁႂ်ႈလႆႈ မၢႆထွၼ် (Negative)
        int finalWPM = (int) Math.round(netWPM);
        return Math.max(0, finalWPM); 
    }

    // Method တွၼ်ႈတႃႇ ၼပ်ႉသွၼ်ႇ Accuracy (%)
    public int calculateAccuracy() {
        if (totalKeystrokes == 0) return 100; // ပႆႇပေႃႉသင် ပွင်ႇဝႃႈ မႅၼ်ႈ 100%

        double accuracy = ((double) (totalKeystrokes - uncorrectedErrors) / totalKeystrokes) * 100.0;
        return (int) Math.round(accuracy);
    }

    // Method တႃႇတူၺ်း ၽွၼ်းလႆႈ (တႃႇ Test)
    public void printStats() {
        System.out.println("Keystrokes: " + totalKeystrokes);
        System.out.println("Errors: " + uncorrectedErrors);
        System.out.println("Net WPM: " + calculateNetWPM());
        System.out.println("Accuracy: " + calculateAccuracy() + "%");
    }

    // --- Main Method တွၼ်ႈတႃႇ ၸၢမ်း Code (Simulation) ---
    public static void main(String[] args) throws InterruptedException {
        TypingLogic logic = new TypingLogic();
        
        System.out.println("Typing started...");
        logic.startTyping();

        // ပွမ်ႁဵတ်း မိူၼ် User ပေႃႉလိၵ်ႈ 50 ၵမ်း (10 Words) ၼႂ်းၶၢဝ်းယၢမ်း 12 ၸႅၵ်ႉၵၢၼ်ႉ
        for (int i = 1; i <= 50; i++) {
            // ပွမ်ႁဵတ်းဝႃႈ ၽိတ်း 2 ၵမ်း
            boolean madeMistake = (i == 10 || i == 25); 
            logic.registerKeystroke(madeMistake);
        }
        
        // ပွမ်ၵိုတ်းၶၢဝ်းယၢမ်း 12 ၸႅၵ်ႉၵၢၼ်ႉ 
        Thread.sleep(12000); 

        System.out.println("\n--- Final Results ---");
        logic.printStats();
        // ၽွၼ်းလႆႈထုၵ်ႇလီပဵၼ်: 
        // 12 secs = 0.2 min. 
        // Gross WPM = (50/5) / 0.2 = 50. 
        // Net WPM = 50 - (2 / 0.2) = 50 - 10 = 40 WPM.
    }
}

```

### ၶေႃႈမၢႆတွင်း (Key Takeaways)

1. **`Math.round()` လႄႈ Casting:** ၼႂ်းလွင်ႈၼပ်ႉသွၼ်ႇ WPM ႁဝ်းၸႂ်ႉ `double` တွၼ်ႈတႃႇႁႂ်ႈမၼ်းတႅတ်ႈၼႅတ်ႈ (Precise)၊ ၵူၺ်းၵႃႈ မိူဝ်ႈၼႄၽွၼ်းလႆႈ ႁဝ်းတေ `Math.round()` လႄႈ လႅၵ်ႈပဵၼ် `int` (မၢႆတဵမ်) တွၼ်ႈတႃႇႁႂ်ႈ User ဢၢၼ်ႇငၢႆႈၶႃႈ။
2. **`Math.max(0, finalWPM)`:** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇ ႁႄႉၵင်ႈ (Guard) ဢမ်ႇႁႂ်ႈ WPM လႆႈမၢႆထွၼ် (Negative) မိူဝ်ႈ User ပေႃႉၽိတ်းၼမ်ပူၼ်ႉတီႈၼၼ်ႉၶႃႈ။