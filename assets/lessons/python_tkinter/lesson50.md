## Lesson 50: The Countdown Timer
**(လွၵ်းလၢႆးၸႂ်ႉ Method .after() တႃႇၼပ်ႉၶၢဝ်းယၢမ်း ၼႂ်း GUI)**

### 1. `.after()` Method ပဵၼ်သင်?
**`.after(ms, function)`** ပဵၼ်ၶေႃႈသင်ႇ ဢၼ်လၢတ်ႈတေႃႇ Tkinter ဝႃႈ: *"ပႂ်ႉထႅင်ႈ (ms) Milliseconds သေ ယဝ်ႉ ၸင်ႇၵႂႃႇႁဵတ်း Function ၼႆႉၼႆယဝ်ႉ"*။
* **1000 ms** = 1 Second (ၸႅၵ်ႉၵၼ်ႉ)။
* မၼ်းပႅၵ်ႇပိူင်ႈတင်း `time.sleep()` တီႈဢၼ်မၼ်း **ဢမ်ႇႁဵတ်းႁႂ်ႈ Window ၶႅင်** (Non-blocking) ၶႃႈယဝ်ႉ။



---

### 2. လွၵ်းလၢႆးႁဵတ်း Recursive Timer
တႃႇႁႂ်ႈမၼ်းၼပ်ႉၶၢဝ်းယၢမ်းသိုပ်ႇၵၼ်ၵႂႃႇတိၵ်းတိၵ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉလၢႆး **Recursive** (Function ဢၼ်ႁွင်ႉၸႂ်ႉတူဝ်မၼ်းၶိုၼ်း) ၶႃႈယဝ်ႉ။

1.  Update လိၵ်ႈတီႈ Label။
2.  သင်ႇ `.after(1000, countdown)` ႁႂ်ႈမၼ်းပႂ်ႉ 1 ၸႅၵ်ႉၵၼ်။
3.  ဝၢႆးပူၼ်ႉ 1 ၸႅၵ်ႉၵၼ်၊ မၼ်းတေၶိုၼ်းႁဵတ်း Function ၼၼ်ႉမႂ်ႇထႅင်ႈပွၵ်ႈၼိုင်ႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Timer with .after)
ႁဝ်းၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ဢၼ်ၼႆႉဢမ်ႇလူဝ်ႇ `import threading` ၵေႃႈႁဵတ်းၵၢၼ်လႆႈၶႃႈၼႃ။

```python
import tkinter as tk

class CountdownApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - .after() Timer")
        self.geometry("300x250")
        
        self.seconds_left = 30 # တႄႇၼပ်ႉတီႈ 30
        self.running = False
        
        self.label = tk.Label(self, text="30", font=("Arial", 40, "bold"))
        self.label.pack(pady=30)
        
        self.start_btn = tk.Button(self, text="Start Countdown", command=self.start_timer)
        self.start_btn.pack()

    def start_timer(self):
        if not self.running:
            self.running = True
            self.update_timer() # တႄႇႁွင်ႉ Function ၼပ်ႉၶၢဝ်းယၢမ်း

    def update_timer(self):
        if self.seconds_left > 0 and self.running:
            # 1. လူတ်းမၢႆၼပ်ႉလူင်း
            self.seconds_left -= 1
            # 2. Update ၼႃႈတႃ GUI
            self.label.config(text=str(self.seconds_left))
            
            # 3. ⚠️ ဢၼ်ၼႆႉပဵၼ်ႁူဝ်ၸႂ်: သင်ႇႁႂ်ႈမၼ်းၶိုၼ်းႁဵတ်းတူဝ်မၼ်း ၼႂ်းထႅင်ႈ 1 ၸႅၵ်ႉၵၼ်
            self.after(1000, self.update_timer)
        else:
            self.running = False
            self.label.config(text="0", fg="red")
            print("Time is Up!")

if __name__ == "__main__":
    app = CountdownApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **Non-blocking:** မိူဝ်ႈ App တိုၵ်ႉပႂ်ႉ 1000ms ယူႇၼၼ်ႉ Main Loop ၶွင် Tkinter တိုၵ်ႉႁဵတ်းၵၢၼ်လႆႈယူႇ။ User တေၸၢင်ႈတႅမ်ႈလိၵ်ႈၶဝ်ႈၼႂ်း Entry လႆႈသိုပ်ႇၵႂႃႇတိၵ်းတိၵ်းၶႃႈယဝ်ႉ။
* **Self-Repeating:** လၢႆးၼႆႉမိူၼ်ၼင်ႇႁဝ်းတင်ႈၼႃႇလိၵ်ႈပလုၵ်ႉဝႆႉ။ ပေႃးမၼ်းတွၵ်ႇၵမ်းၼိုင်ႈယဝ်ႉ ႁဝ်းသင်ႇႁႂ်ႈမၼ်းတွၵ်ႇထႅင်ႈ ၼႂ်းၶၢဝ်းယၢမ်းၽၢႆႇၼႃႈၶႃႈယဝ်ႉ။
* **Thread-Safe:** ၵၢၼ်ၸႂ်ႉ `.after()` ၼႆႉ လီလိူဝ် Threading တီႈဢၼ်မၼ်းႁဵတ်းၵၢၼ်ၼႂ်း "Main Thread" တႃႇသေႇ၊ ႁဵတ်းႁႂ်ႈ App ႁဝ်းဢမ်ႇၵႆႉ Crash ၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ `.after()` တႃႇၼပ်ႉၶၢဝ်းယၢမ်း 60 ၸႅၵ်ႉၵၼ် တႃႇၼပ်ႉၵႃႈၶၼ် **WPM**။
2.  ႁဝ်းၸၢင်ႈၸႂ်ႉ `.after()` တႃႇႁဵတ်းႁၢင်ႈတူင်ႉ (Animation) ဢွၼ်ႇၸိူင်ႉၼင်ႇ လိၵ်ႈဝႅပ်ႇဝႅပ်ႇ (Flashing text) မိူဝ်ႈၶၢဝ်းယၢမ်းၸတ်ႉတေမူတ်းၶႃႈယဝ်ႉ။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 50 ၼႆႉ တေႁဵတ်းႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် ႁူႉလၢႆးၵုမ်းထိင်းၶၢဝ်းယၢမ်း ၼႂ်း GUI လႆႈပဵၼ်ပိူင်ယဝ်ႉၶႃႈ။

တေသိုပ်ႇၵႂႃႇ **Lesson 51: Real-time Input Tracking: Word per Minute (WPM) Logic** (တႃႇၼပ်ႉတူၺ်းဝႃႈ ၼႂ်းၼိုင်ႈမိၼတ်ႉ User တႅမ်ႈလိၵ်ႈလႆႈၵႃႈႁိုင်) ၶႃႈႁႃႉ?

1. သိုပ်ႇသွၼ် Lesson 51
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းထႅမ် Button "Reset" တႃႇႁႂ်ႈ Timer ၶိုၼ်းပဵၼ် 30 မိူၼ်ၵဝ်ႇ
3. သိုပ်ႇၵႂႃႇ Lesson 52 (Keyboard Events) ၵမ်းလဵဝ်

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?