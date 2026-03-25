## Lesson 49: Introduction to Concurrency
**(လွၵ်းလၢႆးႁဵတ်းႁႂ်ႈ Software ႁဵတ်းၵၢၼ်လၢႆလွင်ႈ ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်)**

### 1. Concurrency ပဵၼ်သင်?
**Concurrency** မၢႆထိုင် ၵၢၼ်ပိုတ်ႇ "သဵၼ်ႈတၢင်း" (Threads) ႁႂ်ႈ Software ႁဝ်းႁဵတ်းၵၢၼ်လၢႆလွင်ႈႁူမ်ႈၵၼ်။ ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ ႁဝ်းလူဝ်ႇႁႂ်ႈ:
* **Thread 1 (Main):** ပႂ်ႉႁပ်ႉလိၵ်ႈဢၼ် User တႅမ်ႈ (Keyboard Input)။
* **Thread 2 (Timer):** ၼပ်ႉၶၢဝ်းယၢမ်း (Countdown) မိူဝ်ႈၽွင်းႁဝ်း ပေႃႉလိၵ်ႈ။

သင်ႁဝ်းဢမ်ႇၸႂ်ႉ Concurrency ၼႆ မိူဝ်ႈ Python တိုၵ်ႉၼပ်ႉၶၢဝ်းယၢမ်းယူႇၼၼ်ႉ User တေတႅမ်ႈလိၵ်ႈသင်ၵေႃႈဢမ်ႇလႆႈ၊ Window ၵေႃႈတေ "ၵိုတ်း" (Freeze) ၵႂႃႇၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။



---

### 2. ပဵၼ်သင် Games ၸင်ႇလူဝ်ႇ Threads?
ဝူၼ်ႉတူၺ်းဝႃႈ ၼႂ်းပၢႆးလဵၼ်ႈ (Game) ၼိုင်ႈဢၼ်:
1.  **Rendering:** ႁၢင်ႈတူင်ႉ လူဝ်ႇလႅၵ်ႈလၢႆႈယူႇၵူႈ Frame။
2.  **Physics:** လွင်ႈတူင်ႉၼိုင်၊ လွင်ႈတုမ်ႉၵၼ် လူဝ်ႇၼပ်ႉသွၼ်ႇယူႇတႃႇသေႇ။
3.  **User Input:** လူဝ်ႇပႂ်ႉထွမ်ႇဝႃႈ User ၼဵၵ်း Key လႂ်။

သင်လွင်ႈၸိူဝ်းၼႆႉ ဢမ်ႇႁဵတ်းၵၢၼ် "ႁူမ်ႈၵၼ်" (Concurrent) ၼႆ Game ႁဝ်းတေထိူင်း (Lag) လႄႈ လဵၼ်ႈဢမ်ႇလႆႈၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Threading vs Single Thread)
ႁဝ်းၸၢမ်းတႅမ်ႈတူၺ်း Code ဢၼ်ၼပ်ႉၶၢဝ်းယၢမ်း ၼႂ်း GUI ၼႆႉၶႃႈၼႃ:

```python
import tkinter as tk
import threading
import time

class TypingApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - Concurrency")
        self.geometry("300x200")
        
        self.time_left = 60
        self.label = tk.Label(self, text="Time: 60", font=("Arial", 20))
        self.label.pack(pady=20)
        
        tk.Button(self, text="Start Timer", command=self.start_thread).pack()

    def start_thread(self):
        # 1. သၢင်ႈ Thread မႂ်ႇ တႃႇၼပ်ႉၶၢဝ်းယၢမ်း ၽၢႆႇလင် (Background)
        t = threading.Thread(target=self.countdown)
        t.daemon = True # ႁႂ်ႈမၼ်းပိၵ်ႉၸွမ်း မိူဝ်ႈႁဝ်းပိၵ်ႉ App
        t.start()

    def countdown(self):
        # 2. ၵၢၼ်ၼပ်ႉၶၢဝ်းယၢမ်း ဢၼ်ဢမ်ႇပိၵ်ႉ (Block) GUI
        while self.time_left > 0:
            time.sleep(1)
            self.time_left -= 1
            # Update GUI လူၺ်ႈၸႂ်ႉ .after() တႃႇႁႂ်ႈမၼ်း Safe
            self.after(0, lambda: self.label.config(text=f"Time: {self.time_left}"))
        
        self.after(0, lambda: self.label.config(text="Time's Up!", fg="red"))

if __name__ == "__main__":
    app = TypingApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`threading.Thread`**: မိူၼ်ၼင်ႇႁဝ်းၸၢင်ႈ "ၵူၼ်းၸွႆႈ" (Assistant) မႃးထႅင်ႈၵေႃႉၼိုင်ႈ။ ႁဝ်းမီးၼႃႈတီႈပႂ်ႉတူၺ်း Window၊ ၵူၼ်းၸွႆႈမီးၼႃႈတီႈၼပ်ႉၶၢဝ်းယၢမ်း။
* **`t.start()`**: တႄႇသင်ႇႁႂ်ႈၵူၼ်းၸွႆႈၼၼ်ႉ ႁဵတ်းၵၢၼ်ၶွင်မၼ်း ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်တင်း ႁဝ်းၶႃႈယဝ်ႉ။
* **Responsive UI**: ႁဝ်းတေႁၼ်ဝႃႈ မိူဝ်ႈမၼ်းတိုၵ်ႉၼပ်ႉၶၢဝ်းယၢမ်းယူႇၼၼ်ႉ ႁဝ်းတိုၵ်ႉၸၼ် Window ၵႂႃႇမႃးလႆႈ၊ ၼဵၵ်း Button လႆႈယူႇ ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  **Threading** တေၸွႆႈႁႂ်ႈ Timer ႁဝ်းတူင်ႉယူႇတႃႇသေႇ မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈ။
2.  ႁဝ်းလူဝ်ႇၸႂ်ႉ **`.after()`** တႃႇ Update GUI ၼႂ်း Main Thread တႃႇသေႇ ၼင်ႇႁိုဝ် App ပေႃးတေဢမ်ႇ Error ၶႃႈယဝ်ႉ။

---
