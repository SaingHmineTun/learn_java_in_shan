## Lesson 20: Messagebox in Shan Language
**(လွၵ်းလၢႆးၼႄ Alert ပၼ်သတိ လူၺ်ႈလိၵ်ႈတႆး)**

### 1. Messagebox ပဵၼ်သင်? (What is a Messagebox?)
**Messagebox** ၼႆႉ ပဵၼ် Window ဢွၼ်ႇ ဢၼ်တေ Popup ဢွၵ်ႇမႃး မိူဝ်ႈမီးသေလွင်ႈလွင်ႈ ၼႂ်း Software ႁဝ်း။ တူဝ်ယၢင်ႇ:
* မိူဝ်ႈ User တႅမ်ႈ Password ၽိတ်း။
* မိူဝ်ႈသိမ်း Data ယဝ်ႉတူဝ်ႈ (Success)။
* မိူဝ်ႈ User တေပိၵ်ႉ App (Confirm Exit)။

### 2. မဵဝ်း Messagebox ဢၼ်ၵႆႉၸႂ်ႉ (Common Types)
1.  **`showinfo()`**: တႃႇၼႄၶေႃႈမုၼ်း (Information)။
2.  **`showwarning()`**: တႃႇပၼ်သတိ (Warning)။
3.  **`showerror()`**: တႃႇၼႄလွင်ႈၽိတ်းပိူင် (Error)။
4.  **`askyesno()`**: တႃႇထၢမ်လွင်ႈတႅပ်းတတ်း (Confirmation)။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢၼ်မီး Button ပၼ်သတိ လူၺ်ႈလိၵ်ႈတႆးၶႃႈၼႃ။

```python
import tkinter as tk
from tkinter import messagebox # လူဝ်ႇ Import ဢၼ်ၼႆႉၸွမ်းၶႃႈ

class AlertApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 20: Shan Messagebox")
        self.geometry("350x250")

        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="ၸၢမ်းၼႅၵ်း Button တူၺ်းၶႃႈ:", 
                 font=("NamKhone", 12)).pack(pady=20)

        # 1. Button တႃႇၼႄ Information
        tk.Button(self, text="ၼႄၶေႃႈမုၼ်း", 
                  command=self.show_info).pack(pady=5)

        # 2. Button တႃႇပၼ်သတိ (Warning)
        tk.Button(self, text="ပၼ်သတိ", 
                  command=self.show_warn).pack(pady=5)

        # 3. Button တႃႇထၢမ် "ၸႂ်ႈ/ဢမ်ႇၸႂ်ႈ"
        tk.Button(self, text="ပိၵ်ႉ Software", 
                  command=self.ask_exit).pack(pady=5)

    def show_info(self):
        messagebox.showinfo("TMK Info", "ၵၢၼ်သိမ်း Data ယဝ်ႉတူဝ်ႈလီယဝ်ႉၶႃႈ!")

    def show_warn(self):
        messagebox.showwarning("⚠️ သတိ", "Password ၸဝ်ႈၵဝ်ႇ တိုၵ်ႉဢူၼ်ႈဢွၼ်ႈယူႇၶႃႈၼႃ!")

    def ask_exit(self):
        # မၼ်းတေတုမ်ႉတွပ်ႇမႃးပဵၼ် True (Yes) ဢမ်ႇၼၼ် False (No)
        answer = messagebox.askyesno("ထၢမ်တူၺ်း", "ၸဝ်ႈၵဝ်ႇ ၶႂ်ႈပိၵ်ႉ Software တႄႉႁႃႉ?")
        if answer:
            self.destroy() # ပိၵ်ႉ App

if __name__ == "__main__":
    app = AlertApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`from tkinter import messagebox`**: ဢၼ်ၼႆႉပဵၼ် Sub-module ၶႃႈ။ ႁဝ်းလူဝ်ႇ Import မၼ်းပႅၵ်ႇပိူင်ႈတင်း `tk` ဢိတ်းၼိုင်ႈ။
* **Title & Message**: ၼႂ်း Messagebox ၼၼ်ႉ Parameter တူဝ်ထူၼ်ႈၼိုင်ႈ ပဵၼ် "ႁူဝ်ၶေႃႈ" (Title)၊ တူဝ်ထူၼ်ႈသွင် ပဵၼ် "လိၵ်ႈၼႂ်း Alert" (Message) ၶႃႈယဝ်ႉ။
* **Confirmation**: ၵၢၼ်ၸႂ်ႉ `askyesno` တေၸွႆႈႁႂ်ႈ Software ႁဝ်း "Safe" လိူဝ်ၵဝ်ႇ။ တူဝ်ယၢင်ႇ: မိူဝ်ႈ User တေယႃႉ Data (Delete) ၼႆ ႁဝ်းလူဝ်ႇထၢမ်ၶဝ်ၵွၼ်ႇၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Messagebox တႃႇ:
1.  ပၼ်သတိ မိူဝ်ႈ User တႅမ်ႈ Password ၽိတ်း။
2.  ၼႄၶေႃႈမုၼ်း မိူဝ်ႈ "သူင်ႇငိုၼ်း" (Transfer) ယဝ်ႉတူဝ်ႈ။
3.  ထၢမ်လွင်ႈ "Logout" မိူဝ်ႈ User တေဢွၵ်ႇ App။

---