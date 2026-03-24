## Lesson 21: Checkbutton & Radiobutton
**(လွၵ်းလၢႆးပၼ်တၢင်းလိူၵ်ႈ တီႈၵူၼ်းၸႂ်ႉတိုဝ်း)**

### 1. မၼ်းပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်? (Difference)
* **Checkbutton (Multiple Choice):** ၸႂ်ႉတႃႇလိူၵ်ႈလႆႈ **လၢႆလၢႆဢၼ်** တူဝ်ယၢင်ႇ: "ၶႂ်ႈပၼ်သတိ (Notification) ႁႃႉ?"၊ "ၶႂ်ႈသိမ်း Password ႁႃႉ?"။
* **Radiobutton (Single Choice):** ၸႂ်ႉတႃႇလိူၵ်ႈလႆႈ **ဢၼ်လဵဝ်ၵူၺ်း** တူဝ်ယၢင်ႇ: "လိူၵ်ႈၽႃႇသႃႇလိၵ်ႈ (တႆး ဢမ်ႇၼၼ် ဢင်းၵိတ်ႉ)"။



---

### 2. လွၵ်းလၢႆးၸႂ်ႉ Variable (The Link)
တႃႇတေႁူႉဝႃႈ User ၼဵၵ်းလိူၵ်ႈဢၼ်လႂ်ဝႆႉၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **IntVar()** (တႃႇသိမ်းမၢႆၼပ်ႉ 0 ဢမ်ႇၼၼ် 1) ဢမ်ႇၼၼ် **StringVar()** မႃးၵွင်ႉဝႆႉၸွမ်းၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်းၼႃႈတႃ Settings ဢွၼ်ႇၶႃႈၼႃ။

```python
import tkinter as tk

class PreferencesApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 21: User Preferences")
        self.geometry("400x350")

        # 1. သၢင်ႈ Variable တႃႇသိမ်းတၢင်းလိူၵ်ႈ
        self.notif_var = tk.IntVar()  # 1 = ပိုတ်ႇ, 0 = ပိၵ်ႉ
        self.lang_var = tk.StringVar(value="shan") # Default value

        self.setup_ui()

    def setup_ui(self):
        # --- Section 1: Checkbutton (Multi-choice) ---
        tk.Label(self, text="ၵၢၼ်မူၼ်ႉမႄး (Settings):", font=("Arial", 12, "bold")).pack(pady=10)
        
        check_btn = tk.Checkbutton(
            self, text="ပိုတ်ႇၵၢၼ်ပၼ်သတိ (Notifications)",
            variable=self.notif_var, font=("NamKhone", 11)
        )
        check_btn.pack(anchor="w", padx=50)

        # --- Section 2: Radiobutton (Single-choice) ---
        tk.Label(self, text="လိူၵ်ႈၽႃႇသႃႇလိၵ်ႈ:", font=("Arial", 12, "bold")).pack(pady=10)

        # Radiobutton ၸိူဝ်းၼႆႉ လူဝ်ႇၸႂ်ႉ Variable တူဝ်လဵဝ်ၵၼ်
        rb_shan = tk.Radiobutton(
            self, text="လိၵ်ႈတႆး (Shan)", variable=self.lang_var, 
            value="shan", font=("NamKhone", 11)
        )
        rb_shan.pack(anchor="w", padx=50)

        rb_eng = tk.Radiobutton(
            self, text="English", variable=self.lang_var, 
            value="eng", font=("Arial", 11)
        )
        rb_eng.pack(anchor="w", padx=50)

        # Button တႃႇၸမ်းၵူတ်ႇထတ်း Data
        tk.Button(self, text="သိမ်းၵၢၼ်တင်ႈၵႃႈ", command=self.save_settings).pack(pady=20)

    def save_settings(self):
        notif = "ပိုတ်ႇ" if self.notif_var.get() == 1 else "ပိၵ်ႉ"
        lang = "လိၵ်ႈတႆး" if self.lang_var.get() == "shan" else "English"
        
        print(f"Settings: Notif={notif}, Lang={lang}")

if __name__ == "__main__":
    app = PreferencesApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`variable=...`**: ဢၼ်ၼႆႉပဵၼ် "ၶူဝ်" ၵွင်ႉၸွမ်း Data မိူၼ်ၼင်ႇ Entry ၼၼ်ႉယဝ်ႉၶႃႈ။
* **`value=...`**: ၼႂ်း Radiobutton၊ တူဝ်လႂ်မီး Value မႅၼ်ႈၸွမ်း Variable ၼၼ်ႉ တေထုၵ်ႇလိူၵ်ႈ (Selected) ဝႆႉၶႃႈ။
* **`anchor="w"`**: ၸွႆႈႁႂ်ႈ Button ၸိူဝ်းၼႆႉ ၽဵင်ႇၵၼ်ၵႂႃႇၽၢႆႇသၢႆႉ (West) ႁႂ်ႈတူၺ်းငၢႆႈၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Widgets ၸိူဝ်းၼႆႉတႃႇ:
1.  **Checkbutton**: "ၶႂ်ႈႁႂ်ႈ Software သိမ်း Username ဝႆႉႁႃႉ?"
2.  **Radiobutton**: "လိူၵ်ႈမဵဝ်းငိုၼ်း (Currency) - ပၢတ်ႇတႆး ဢမ်ႇၼၼ် ၵျၢတ်ႉမၢၼ်ႈ"။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 21 ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီး Options ဢၼ် User လိူၵ်ႈလႆႈၸွမ်းၸႂ်ၶဝ်ယဝ်ႉၶႃႈ။

တေသိုပ်ႇၵႂႃႇ **Lesson 22: Focus & Events** (တႃႇႁဵတ်းႁႂ်ႈလွၵ်းတႅမ်ႈလိၵ်ႈ လႅၵ်ႈသီမိူဝ်ႈႁဝ်းၼႅၵ်း) ၶႃႈႁႃႉ?