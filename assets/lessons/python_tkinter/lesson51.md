## Lesson 51: Real-time Input Tracking (WPM Logic)
**(လွၵ်းလၢႆးၼပ်ႉသွၼ်ႇ တၢင်းသႆႉ ဢၼ်တႅမ်ႈလိၵ်ႈ)**

### 1. WPM ပဵၼ်သင်? (What is WPM?)
**WPM** မၢႆထိုင် ဝႃႈၼႂ်း 1 မိၼိတ်ႉ (60 ၸႅၵ်ႉၵၼ်ႉ) ၼၼ်ႉ ႁဝ်းတႅမ်ႈလိၵ်ႈလႆႈၵႃႈႁိုင်။
* **Standard Rule:** ပိူင်ဝၢင်းၵူႈမိူင်းမိူင်းမၵ်းမၼ်ႈဝႃႈ လိၵ်ႈ **5 တူဝ် (5 Characters)** ၼၼ်ႉ ၼပ်ႉပဵၼ် **1 Word** ၶႃႈယဝ်ႉ။
* **Formula:**
  $$WPM = frac{(text{Total Characters} / 5)}{text{Time Spent (Minutes)}}$$



---

### 2. လွၵ်းလၢႆး Tracking (Real-time)
ၼႂ်း Tkinter ႁဝ်းတေၸႂ်ႉ Variable ဢၼ်ၸိုဝ်ႈဝႃႈ **`StringVar`** သေ သႂ်ႇ **`.trace_add()`** ဝႆႉ။ မၼ်းတေၸွႆႈႁႂ်ႈ Python "တူၺ်းယူႇတႃႇသေႇ" ဝႃႈ User တႅမ်ႈလိၵ်ႈသင်ၶဝ်ႈမႃးၵမ်းလဵဝ် (Real-time) ၶႃႈၼႃ။

---

### 3. တူဝ်ယၢင်ႇ Code (WPM Counter)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ မၼ်းတေၼပ်ႉ WPM ပၼ် ၵမ်းလဵဝ်မိူဝ်ႈႁဝ်းတိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၶႃႈၼႃ။

```python
import tkinter as tk
import time

class WPMTester(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - WPM Logic")
        self.geometry("400x300")
        
        self.start_time = None
        self.total_chars = 0
        
        # UI Elements
        tk.Label(self, text="တႅမ်ႈလိၵ်ႈတႆး တီႈၼႆႈ:", font=("Panglong", 12)).pack(pady=10)
        
        # 1. ၸႂ်ႉ StringVar တႃႇ Track လိၵ်ႈ
        self.text_var = tk.StringVar()
        self.text_var.trace_add("write", self.calculate_wpm)
        
        self.entry = tk.Entry(self, textvariable=self.text_var, font=("Arial", 14))
        self.entry.pack(pady=10, padx=20, fill="x")
        
        self.wpm_label = tk.Label(self, text="WPM: 0", font=("Arial", 20, "bold"), fg="blue")
        self.wpm_label.pack(pady=20)

    def calculate_wpm(self, *args):
        # 2. တႄႇၼပ်ႉၶၢဝ်းယၢမ်း မိူဝ်ႈတႄႇတႅမ်ႈတူဝ်ႁႅၵ်ႈ
        if not self.start_time:
            self.start_time = time.time()
            
        # 3. ၼပ်ႉတူဝ်လိၵ်ႈတင်းသဵင်ႈ
        current_text = self.text_var.get()
        char_count = len(current_text)
        
        # 4. ၼပ်ႉၶၢဝ်းယၢမ်းဢၼ်ပူၼ်ႉၵႂႃႇ (Seconds to Minutes)
        elapsed_time = time.time() - self.start_time
        minutes = elapsed_time / 60
        
        if minutes > 0:
            # 5. သွၼ်ႇ WPM (Standard: 5 chars = 1 word)
            words = char_count / 5
            wpm = round(words / minutes)
            self.wpm_label.config(text=f"WPM: {wpm}")

if __name__ == "__main__":
    app = WPMTester()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`trace_add("write", ...)`**: ဢၼ်ၼႆႉၵျႃႉတႄႉၶႃႈ။ ပေႃး User တႅမ်ႈလိၵ်ႈၶဝ်ႈမႃး 1 တူဝ်ၵေႃႈယႃႇ၊ မၼ်းတေသင်ႇႁႂ်ႈ Function `calculate_wpm` ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။
* **`time.time()`**: ဢဝ်ၶၢဝ်းယၢမ်းယၢမ်းလဵဝ် (ပဵၼ် Seconds) မႃးတူၺ်း။
* **`round()`**: ၸွႆႈႁႂ်ႈမၢႆၼပ်ႉ WPM ႁဝ်းပဵၼ် "တူဝ်တဵမ်" (တူဝ်ယၢင်ႇ: 45 WPM တႅၼ်းဢၼ်ပဵၼ် 45.234) ၶႃႈၼႃ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  **WPM** တေပဵၼ် "Score" ၶွင်လုၵ်ႈႁဵၼ်းၶဝ်။ သင်ၶဝ်တႅမ်ႈလိၵ်ႈ လႆႈဝႆး WPM ၵေႃႈတေၶိုၼ်ႈသုင်ၶႃႈယဝ်ႉ။
2.  ႁဝ်းၸၢင်ႈထႅမ် **Accuracy Logic** (ၼပ်ႉသွၼ်ႇလွင်ႈတႅမ်ႈမႅၼ်ႈ/ၽိတ်း) ၸွမ်းၼႂ်း Lesson ၽၢႆႇၼႃႈၶႃႈၼႃ။

---