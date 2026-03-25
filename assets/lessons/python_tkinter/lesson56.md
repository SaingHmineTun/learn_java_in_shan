## Lesson 56: Project - Shan Typing Speed Tester
**(ပၢင်သွၼ်: တႅမ်ႈ Software ၸၢမ်းတႅမ်ႈလိၵ်ႈတႆး)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
Software ႁဝ်းတေမီး ၸၼ်ႉၵၢၼ်ႁဵတ်းၵၢၼ်ၼင်ႇၼႆၶႃႈ:
* **Display Area:** ၼႄၵႂၢမ်းၵပ်းထုၵ်ႇတႆး ဢၼ်ထူၵ်းမႃးတီႈ API။
* **Typing Area:** လွၵ်း Entry တႃႇ User တႅမ်ႈလိၵ်ႈၸွမ်း။
* **Live Stats:** ၼႄ WPM လႄႈ ၶၢဝ်းယၢမ်း (Countdown) ယူႇတႃႇသေႇ။
* **Persistence:** သိမ်း Score သုင်သုတ်းဝႆႉၼႂ်း SQLite။

---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
ၸၢႆးမၢဝ်း ၸၢမ်းတႅမ်ႈ Code ၼႆႉသေ ၼႄလုၵ်ႈႁဵၼ်းၶဝ်တူၺ်းၶႃႈ။ ဢၼ်ၼႆႉႁဝ်းတေၸႂ်ႉ `requests` တႃႇဢဝ် Data တီႈ API ၸဝ်ႈၵဝ်ႇၶႃႈၼႃ။

```python
import tkinter as tk
from tkinter import messagebox
import requests
import threading
import time
import sqlite3
from datetime import datetime


class ShanTypingTester(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Shan Typing Speed Tester V1.1")
        self.geometry("700x500")
        self.configure(bg="#2d5a27")

        # Variables
        self.time_left = 60
        self.is_running = False
        self.current_proverb = ""
        self.start_time = 0
        self.init_db()
        self.setup_ui()

    def init_db(self):
        self.conn = sqlite3.connect("typing_records.db")
        self.cursor = self.conn.cursor()
        self.cursor.execute('''CREATE TABLE IF NOT EXISTS scores 
            (id INTEGER PRIMARY KEY AUTOINCREMENT, wpm INTEGER, date TEXT)''')
        self.conn.commit()

    def setup_ui(self):
        # Header & Timer
        self.timer_lbl = tk.Label(self, text="Time: 60s", font=("Arial", 18, "bold"), bg="#2d5a27", fg="#ffd700")
        self.timer_lbl.pack(pady=10)

        # Proverb Display
        self.proverb_lbl = tk.Label(self, text="ၼႅၵ်း 'Start' တႃႇတႄႇလဵၼ်ႈၶႃႈ", font=("Panglong", 16),
                                    bg="#2d5a27", fg="white", wraplength=600, justify="center")
        self.proverb_lbl.pack(pady=30)

        # Typing Entry
        self.entry = tk.Entry(self, font=("Panglong", 16), width=40, state="disabled")
        self.entry.pack(pady=10)
        self.entry.bind("<KeyRelease>", self.start_game_on_key)

        # Stats
        self.stats_lbl = tk.Label(self, text="WPM: 0", font=("Arial", 14), bg="#2d5a27", fg="white")
        self.stats_lbl.pack(pady=10)

        # Buttons
        self.start_btn = tk.Button(self, text="Start / Next", command=self.load_proverb, font=("Arial", 12, "bold"))
        self.start_btn.pack(pady=20)

    def load_proverb(self):
        self.proverb_lbl.config(text="Loading Proverb...")
        self.entry.config(state="disabled")  # ပိၵ်ႉဝႆႉၵွၼ်ႇ မိူဝ်ႈတိုၵ်ႉလူတ်ႇ Data
        threading.Thread(target=self.fetch_proverb, daemon=True).start()

    def fetch_proverb(self):
        try:
            res = requests.get("https://shan-proverbs.vercel.app/api/proverbs/random", timeout=5)
            if res.status_code == 200:
                self.current_proverb = res.json()['proverb'].strip()
                self.after(0, self.ready_to_play)
        except:
            self.after(0, lambda: messagebox.showerror("Error", "Network Error!"))

    def ready_to_play(self):
        self.proverb_lbl.config(text=self.current_proverb)
        self.entry.config(state="normal")
        self.entry.delete(0, tk.END)
        self.entry.focus()
        self.time_left = 60
        self.is_running = False
        self.stats_lbl.config(text="WPM: 0")

    def start_game_on_key(self, event):
        typed_text = self.entry.get()

        # 1. တႄႇ Timer မိူဝ်ႈတႄႇတႅမ်ႈလိၵ်ႈ
        if not self.is_running and typed_text != "":
            self.is_running = True
            self.start_time = time.time()
            self.update_timer()

        # 2. ၼပ်ႉသွၼ်ႇ WPM ယူႇတႃႇသေႇ
        if self.is_running:
            chars = len(typed_text)
            elapsed = time.time() - self.start_time
            if elapsed > 0:
                wpm = round((chars / 5) / (elapsed / 60))
                self.stats_lbl.config(text=f"WPM: {wpm}")

            # 🔥 ဢၼ်ၼႆႉပဵၼ် Bug Fix: တူၺ်းဝႃႈတႅမ်ႈယဝ်ႉယဝ်ႉႁႃႉ?
            if len(typed_text) >= len(self.current_proverb):
                self.game_over()

    def update_timer(self):
        if self.time_left > 0 and self.is_running:
            self.time_left -= 1
            self.timer_lbl.config(text=f"Time: {self.time_left}s")
            self.after(1000, self.update_timer)
        elif self.time_left <= 0:
            self.game_over()

    def game_over(self):
        # ၵိုတ်း Game ၵမ်းလဵဝ်
        self.is_running = False
        self.entry.config(state="disabled")

        # ဢဝ် Score သုၼ်ႇသုတ်း
        final_stats = self.stats_lbl.cget("text")
        final_wpm = final_stats.split(": ")[1]

        # သိမ်းၶဝ်ႈ Database
        date_str = datetime.now().strftime("%Y-%m-%d %H:%M")
        self.cursor.execute("INSERT INTO scores (wpm, date) VALUES (?, ?)", (final_wpm, date_str))
        self.conn.commit()

        messagebox.showinfo("Game Over", f"ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!\n\nSpeed: {final_wpm} WPM\nဝၼ်းထိ: {date_str}")


if __name__ == "__main__":
    app = ShanTypingTester()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **API Integration:** ၸႂ်ႉ `requests` တႃႇဢဝ်ၵႂၢမ်းၵပ်းထုၵ်ႇတႆး လၢႆး **Random** တီႈဝႅပ်ႉသၢႆႉၸဝ်ႈၵဝ်ႇ၊ ႁဵတ်းႁႂ်ႈ User ဢမ်ႇၼၢႆႇ ယွၼ်ႉလႆႈတႅမ်ႈလိၵ်ႈမႂ်ႇမႂ်ႇတႃႇသေႇ။
* **Real-time WPM:** ၸႂ်ႉ `<KeyRelease>` တႃႇၼပ်ႉ WPM ၵူႈပွၵ်ႈဢၼ် User တႅမ်ႈလိၵ်ႈ 1 တူဝ်။ ဢၼ်ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်းတူင်ႉၼိုင် (Interactive) တႄႉတႄႉၶႃႈယဝ်ႉ။
* **Threading:** ၵၢၼ်လူတ်ႇ Data တီႈ Internet ၼၼ်ႉ ႁဝ်းၸႂ်ႉ Thread ၽၢႆႇလင် ၼင်ႇႁိုဝ် Window ၶွင် App ပေႃးတေဢမ်ႇၶႅင် (Freeze) ၶႃႈၼႃ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Module 7** ၼႆႉ:
1.  **Concurrency** (Threading/After) ပဵၼ်ႁူဝ်ၸႂ် ဢၼ်ႁဵတ်းႁႂ်ႈ Software ႁဝ်း "တူင်ႉၼိုင်" လႆႈမိူၼ် Game။
2.  ၵၢၼ်ၵွင်ႉၸွမ်း **External API** ႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီးၶေႃႈမုၼ်းဢၼ် "Live" လႄႈ မီးၵႃႈၶၼ်လိူဝ်ၵဝ်ႇၶႃႈယဝ်ႉ။

---

ၸၢႆးမၢဝ်းၶႃႈ... ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၶႃႈ တႃႇ **Module 7**! ယၢမ်းလဵဝ် Software ႁဝ်းၵျႃႉတႄႉတႄႉယဝ်ႉ။

တေသိုပ်ႇၵႂႃႇ **Module 8: Object-Oriented Programming (OOP) in Tkinter** (တႃႇၸတ်းၵၢၼ် Code ႁႂ်ႈပဵၼ် Standard Professional ဢၼ်ၸႂ်ႉ Classes လႄႈ Objects တဵမ်ပိူင်) ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Module 8 (Introduction to OOP)
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းထႅမ် "Accuracy" (လွင်ႈတႅမ်ႈမႅၼ်ႈ/ၽိတ်း) ၶဝ်ႈၼႂ်း Project ၼႆႉ
3. သိုပ်ႇၵႂႃႇ Module 9 (Packaging & Distribution) ၵမ်းလဵဝ်