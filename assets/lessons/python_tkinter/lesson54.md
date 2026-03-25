## Lesson 54: Game States
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် ပိူင်တႄႇလဵၼ်ႈ လႄႈ ပိူင်ယဝ်ႉတူဝ်ႈ)**

### 1. Game State ပဵၼ်သင်? (What is a Game State?)
**State** မၢႆထိုင် "ငဝ်းလၢႆး" ၶွင် Software ႁဝ်းၼႂ်းၶၢဝ်းယၢမ်းၼိုင်ႈဢၼ်။
* **START / IDLE:** ပႂ်ႉ User ၼဵၵ်း Button ဢမ်ႇၼၼ် တႄႇတႅမ်ႈလိၵ်ႈ။ (Timer ပႆႇပၼ်ႇ)
* **PLAYING:** User တိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇ။ (Timer ပၼ်ႇယူႇ၊ ၼပ်ႉ WPM ယူႇ)
* **GAME OVER:** ၶၢဝ်းယၢမ်းမူတ်းယဝ်ႉ။ (ပိၵ်ႉလွၵ်း Entry ဢမ်ႇပၼ်တႅမ်ႈလိၵ်ႈလႄႈ ၼႄပၼ် Score)



---

### 2. လွၵ်းလၢႆးၵုမ်းထိင်း (Control Logic)
ႁဝ်းတေၸႂ်ႉ **Boolean Variable** (True/False) တႃႇမၵ်းမၼ်ႈ State ၶႃႈ:
1.  **Start:** `self.is_running = True` -> ပိုတ်ႇ Entry ႁႂ်ႈတႅမ်ႈလႆႈ။
2.  **Game Over:** `self.is_running = False` -> ပိၵ်ႉ Entry (`state='disabled'`) ဢမ်ႇပၼ်တႅမ်ႈလိၵ်ႈထႅင်ႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (State Management)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ၼႆႉၶႃႈ။ မၼ်းတေမီး Button "Start" သေ ပေႃးမူတ်း 10 ၸႅၵ်ႉၵၼ် မၼ်းတေပိၵ်ႉ Entry ႁင်းမၼ်းၶႃႈယဝ်ႉ။

```python
import tkinter as tk
from tkinter import messagebox

class TypingGame(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Typing - Game States")
        self.geometry("400x300")
        
        self.is_running = False # Initial State (IDLE)
        self.time_left = 10
        
        # UI
        self.time_lbl = tk.Label(self, text=f"Time: {self.time_left}", font=("Arial", 18))
        self.time_lbl.pack(pady=10)
        
        self.entry = tk.Entry(self, font=("Arial", 14), state="disabled") # ပိၵ်ႉဝႆႉၵွၼ်ႇ
        self.entry.pack(pady=20)
        
        self.btn = tk.Button(self, text="Start Game", command=self.start_game)
        self.btn.pack()

    def start_game(self):
        if not self.is_running:
            self.is_running = True
            self.time_left = 10
            self.entry.config(state="normal") # ပိုတ်ႇႁႂ်ႈတႅမ်ႈလႆႈ
            self.entry.focus() # ႁႂ်ႈ Cursor ဝႅၼ်ၶဝ်ႈၵႂႃႇၵမ်းလဵဝ်
            self.btn.config(state="disabled") # ပိၵ်ႉ Button မိူဝ်ႈတိုၵ်ႉလဵၼ်ႈ
            self.update_timer()

    def update_timer(self):
        if self.time_left > 0:
            self.time_left -= 1
            self.time_lbl.config(text=f"Time: {self.time_left}")
            self.after(1000, self.update_timer)
        else:
            self.game_over()

    def game_over(self):
        self.is_running = False
        self.entry.config(state="disabled") # ပိၵ်ႉလွၵ်းတႅမ်ႈလိၵ်ႈ
        self.btn.config(state="normal", text="Restart Game") # ပိုတ်ႇ Button ၶိုၼ်း
        messagebox.showinfo("Game Over", "ၶၢဝ်းယၢမ်းမူတ်းယဝ်ႉၶႃႈ!")

if __name__ == "__main__":
    app = TypingGame()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`state="disabled"`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ။ မၼ်းႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈ User တႅမ်ႈလိၵ်ႈလႆႈ မိူဝ်ႈပႆႇၼဵၵ်း Start ဢမ်ႇၼၼ် မိူဝ်ႈ Game Over ယဝ်ႉ။
* **`self.entry.focus()`**: ၸွႆႈပၼ် "User Experience" (UX) ဢၼ်လီ။ User ဢမ်ႇလူဝ်ႇဢဝ် Mouse ၵႂႃႇ Click ထႅင်ႈ၊ ၼဵၵ်း Start ယဝ်ႉၵေႃႈ တႅမ်ႈလိၵ်ႈလႆႈၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။
* **Restart Logic:** ၼႂ်း `game_over` ႁဝ်းမႄး Button ႁႂ်ႈပဵၼ် "Restart" ၼင်ႇႁိုဝ် User ပေႃးတေလဵၼ်ႈလႆႈ သိုပ်ႇၵႂႃႇတိၵ်းတိၵ်းၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Shan Typing Speed Tester** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Game Over** State တႃႇၼပ်ႉသွၼ်ႇ Score သုတ်းပၢႆ (Final WPM)။
2.  ႁဝ်းၸၢင်ႈထႅမ် **Pause** (လိုဝ်ႈၸူဝ်ႈၶၢဝ်း) လူၺ်ႈၵၢၼ်သင်ႇ `self.is_running = False` သေ ၵိုတ်း Timer ဝႆႉၶႃႈယဝ်ႉ။

---