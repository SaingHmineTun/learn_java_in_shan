## Lesson 24: Project - TMK Secure Shan-Wallet Interface
**(ပၢင်သွၼ်: တႅမ်ႈ Software သိမ်းၸလၢင်းငိုၼ်း လႄႈ Password ဢၼ်ၵႅၼ်ႇၶႅင်)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
ႁဝ်းတေၸတ်းၼႃႈတႃ Software ႁဝ်းႁႂ်ႈမီးလွင်ႈတုမ်ႉတွပ်ႇ (Reactive) ၼင်ႇၼႆၶႃႈ:
* **Real-time Status:** မိူဝ်ႈတႅမ်ႈ Password ႁႂ်ႈမၼ်းၼႄ Security Level ၵမ်းလဵဝ်။
* **Validation:** ၵူတ်ႇထတ်းၸလၢင်းငိုၼ်း ႁႂ်ႈပဵၼ်တူဝ်ၼပ်ႉ (Numbers) ၵူၺ်း။
* **Alerts:** ၼႄ Messagebox မိူဝ်ႈသိမ်း Data ယဝ်ႉတူဝ်ႈ။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
ၸၢမ်းတႅမ်ႈ Code ဢၼ်ပဵၼ် Project ယႂ်ႇၼႆႉ ၼႂ်း PyCharm ၶႃႈ။

```python
import tkinter as tk
from tkinter import messagebox

class ShanWalletApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Secure Shan-Wallet v1.0")
        self.geometry("450x500")
        self.configure(bg="#f0f2f5")

        # 1. Variables (Reactive Data)
        self.amount_var = tk.StringVar()
        self.password_var = tk.StringVar()
        
        # Trace Password Strength
        self.password_var.trace_add("write", self.check_security)

        self.setup_ui()

    def setup_ui(self):
        # Header
        header = tk.Label(self, text="TMK Secure Wallet", font=("Arial", 18, "bold"), 
                          bg="#2d5a27", fg="white", pady=15)
        header.pack(fill="x")

        # Input Frame
        form_frame = tk.Frame(self, bg="#f0f2f5", pady=20)
        form_frame.pack()

        # Amount Input (Validation Lesson)
        tk.Label(form_frame, text="ၸလၢင်းငိုၼ်း (Amount):", bg="#f0f2f5").pack(anchor="w")
        self.amount_entry = tk.Entry(form_frame, textvariable=self.amount_var, font=("Arial", 14))
        self.amount_entry.pack(pady=5, fill="x")

        # Password Input (Trace Lesson)
        tk.Label(form_frame, text="Wallet Password:", bg="#f0f2f5").pack(anchor="w", pady=(10,0))
        self.pass_entry = tk.Entry(form_frame, textvariable=self.password_var, 
                                   font=("Arial", 14), show="*")
        self.pass_entry.pack(pady=5, fill="x")
        
        # Security Status Label
        self.security_lbl = tk.Label(form_frame, text="Password Status: ---", 
                                     font=("NamKhone", 10), bg="#f0f2f5")
        self.security_lbl.pack(anchor="w")

        # Save Button
        tk.Button(self, text="သိမ်းမၢႆငွေ (Save Wallet)", font=("NamKhone", 12, "bold"),
                  bg="#2d5a27", fg="white", padx=30, pady=10, 
                  command=self.save_data_logic).pack(pady=20)

    # Logic: Real-time Password Check
    def check_security(self, *args):
        p = self.password_var.get()
        if len(p) == 0:
            self.security_lbl.config(text="Status: ---", fg="gray")
        elif len(p) < 6:
            self.security_lbl.config(text="⚠️ Password ဢူၼ်ႈဢွၼ်ႈၼႅၼ်ႇ!", fg="red")
        else:
            self.security_lbl.config(text="✅ Password ၵႅၼ်ႇၶႅင်ယဝ်ႉ။", fg="green")

    # Logic: Save Data with Error Handling
    def save_data_logic(self):
        try:
            # Validate Amount
            amt = float(self.amount_var.get())
            pwd = self.password_var.get()

            if len(pwd) < 6:
                messagebox.showwarning("သတိ", "Password လူဝ်ႇမီး 6 တူဝ်ၶိုၼ်ႈၼိူဝ်ၶႃႈ!")
                return

            # Success Message
            messagebox.showinfo("ယဝ်ႉတူဝ်ႈ", f"သိမ်းၸလၢင်းငိုၼ်း {amt} ၵျၢတ်ႉ ယဝ်ႉတူဝ်ႈလီယဝ်ႉၶႃႈ!")
            
        except ValueError:
            messagebox.showerror("ၽိတ်းပိူင်", "တီႈလွၵ်းၸလၢင်းငိုၼ်း လူဝ်ႇတႅမ်ႈမၢႆၼပ်ႉၵူၺ်းၶႃႈ!")

if __name__ == "__main__":
    app = ShanWalletApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **`trace_add`**: ၸွႆႈႁႂ်ႈ Software ႁဝ်း "တူင်ႉၼိုင်" ၵမ်းလဵဝ် မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈ Password ယူႇၼၼ်ႉၶႃႈ။
* **`try-except`**: ႁၢမ်ႈ Error မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈ (ABC) ၶဝ်ႈၼႂ်းလွၵ်းၸလၢင်းငိုၼ်း။
* **`messagebox`**: ၸႂ်ႉၵပ်းသိုပ်ႇတင်း User လူၺ်ႈလိၵ်ႈတႆး ႁႂ်ႈၶဝ်ပွင်ႇၸႂ်ငၢႆႈၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႆႉပဵၼ် Software ဢၼ်မီးလွင်ႈ **Security** လႄႈ **User Experience (UX)** ဢၼ်လီၶႃႈယဝ်ႉ။
* မၼ်းမီး **Validation** (ၵူတ်ႇထတ်း Data ၽိတ်း)။
* မၼ်းမီး **Visual Feedback** (လႅၵ်ႈသီလိၵ်ႈၸွမ်းလွင်ႈၵႅၼ်ႇၶႅင်)။
* မၼ်းမီး **Clean Code** (ၸႂ်ႉ OOP လႄႈ Variables)။

---