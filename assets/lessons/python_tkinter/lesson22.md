## Lesson 22: Focus & Events
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် မိူဝ်ႈ User ၼဵၵ်း ဢမ်ႇၼၼ် တူင်ႉၼိုင်ၸွမ်း Widget)**

### 1. Focus & Binding ပဵၼ်သင်?
* **Focus:** မၢႆထိုင် ဝႃႈ Widget တူဝ်လႂ် တိုၵ်ႉ "ႁပ်ႉၵၢၼ်" (Active) ဝႆႉယူႇ။ တူဝ်ယၢင်ႇ: မိူဝ်ႈႁဝ်းၼဵၵ်းၼႂ်းလွၵ်း Entry ၼိုင်ႈလွၵ်း ႁဝ်းႁွင်ႉဝႃႈ လွၵ်းၼၼ်ႉမီး "Focus" ၶႃႈယဝ်ႉ။
* **Binding Events:** ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ Python ႁဵတ်းၵၢၼ်သင်သေမဵဝ်းမဵဝ်း မိူဝ်ႈမီး "Events" မိူၼ်ၼင်ႇ:
    * `<FocusIn>`: မိူဝ်ႈ User ၼဵၵ်းၶဝ်ႈမႃးၼႂ်းလွၵ်း။
    * `<FocusOut>`: မိူဝ်ႈ User ၼဵၵ်းဢွၵ်ႇၵႂႃႇတၢင်ႇတီႈ။
    * `<Return>`: မိူဝ်ႈ User ၼဵၵ်း Enter တီႈ Keyboard။



---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်းႁႂ်ႈလွၵ်း Entry လႅၵ်ႈသီၶွပ်ႇ (Border) မိူဝ်ႈႁဝ်းၼဵၵ်းၶဝ်ႈၵႂႃႇၶႃႈၼႃ။

```python
import tkinter as tk

class EventApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 22: Focus & Events")
        self.geometry("400x250")
        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="ၸၢမ်းၼဵၵ်းၶဝ်ႈၼႂ်းလွၵ်းတူၺ်းၶႃႈ:", font=("NamKhone", 12)).pack(pady=10)

        # သၢင်ႈ Entry
        self.user_entry = tk.Entry(self, font=("Arial", 14), highlightthickness=2)
        self.user_entry.pack(pady=10)

        # 1. Bind FocusIn (မိူဝ်ႈၼဵၵ်းၶဝ်ႈ - လႅၵ်ႈပဵၼ်သီၶဵဝ်)
        self.user_entry.bind("<FocusIn>", lambda e: self.user_entry.config(highlightbackground="#2d5a27", highlightcolor="#2d5a27"))

        # 2. Bind FocusOut (မိူဝ်ႈၼဵၵ်းဢွၵ်ႇ - လႅၵ်ႈပဵၼ်သီၵွၼ်းၾႆး)
        self.user_entry.bind("<FocusOut>", lambda e: self.user_entry.config(highlightbackground="gray", highlightcolor="gray"))

        # 3. Bind Return Key (မိူဝ်ႈၼဵၵ်း Enter)
        self.user_entry.bind("<Return>", self.on_enter_pressed)

        self.status_lbl = tk.Label(self, text="", font=("Panglong", 11))
        self.status_lbl.pack(pady=20)

    def on_enter_pressed(self, event):
        content = self.user_entry.get()
        self.status_lbl.config(text=f"ၸဝ်ႈၵဝ်ႇၼဵၵ်း Enter ယဝ်ႉ: {content}", fg="#2d5a27")

if __name__ == "__main__":
    app = EventApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`.bind(event, callback)`**: ဢၼ်ၼႆႉပဵၼ် "ၶူဝ်" ဢၼ်ၵွင်ႉ Widget ၸွမ်း "ၵၢၼ်တူင်ႉၼိုင်" ၶႃႈ။
* **`lambda e:`**: မိူဝ်ႈႁဝ်းၸႂ်ႉ `.bind()` ၼၼ်ႉ Tkinter တေသူင်ႇ "Event object" (e) မႃးၸွမ်းတႃႇသေႇ။ ႁဝ်းလူဝ်ႇလႆႈႁပ်ႉမၼ်းဝႆႉၶႃႈ။
* **Highlightthickness**: တႃႇတေႁၼ်သီၶွပ်ႇလႅၵ်ႈလၢႆႈၸႅင်ႈလႅင်းၼၼ်ႉ ႁဝ်းလူဝ်ႇတင်ႈၵႃႈ `highlightthickness` ဝႆႉၵွၼ်ႇၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Focus & Events တႃႇ:
1.  **Visual Feedback**: မိူဝ်ႈ User ၼႅၵ်းလွၵ်း Password ႁႂ်ႈမၼ်းလႅၵ်ႈပဵၼ်သီၶဵဝ် (Active)။
2.  **User Experience**: မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈယဝ်ႉသေ ၼႅၵ်း Enter ႁႂ်ႈမၼ်း "Login" ပၼ်ၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇၵႂႃႇၼႅၵ်း Button ၶႃႈ။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 22 ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းတူၺ်း "Smooth" လႄႈ Professional မိူၼ်ၼင်ႇ App သေမဵဝ်းမဵဝ်းယဝ်ႉၶႃႈၼႃ။

တေသိုပ်ႇၵႂႃႇ **Lesson 23: Logical Error Handling (Try-Except)** ၶႃႈႁႃႉ? ဢၼ်ၼႆႉတေၸွႆႈႁၢမ်ႈ ဢမ်ႇႁႂ်ႈ Software ႁဝ်း "ၶႅင်" (Crash) မိူဝ်ႈ User ႁဵတ်းသင်ၽိတ်းပိူင်ၶႃႈ။