
## Lesson 18: Real-time UI Updates with .trace()
**(လွၵ်းလၢႆးသင်ႇႁႂ်ႈ Python ၼင်ႈပႂ်ႉတူၺ်း လွင်ႈလႅၵ်ႈလၢႆႈ Variable)**

### 1. .trace_add() ပဵၼ်သင်? (What is Trace?)
ၼႂ်း Lesson 17 ၼၼ်ႉ ႁဝ်းႁူႉယဝ်ႉဝႃႈ `textvariable` ၸွႆႈၵွင်ႉ Data။ ၵမ်းၼႆႉ သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Python **"ႁဵတ်းၵၢၼ်သင်သေမဵဝ်းမဵဝ်း"** (တူဝ်ယၢင်ႇ: ၵူတ်ႇထတ်း Password) ၵမ်းလဵဝ် မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`.trace_add()`** ၶႃႈယဝ်ႉ။

မၼ်းမိူၼ်ၼင်ႇႁဝ်းဝၢင်း "ၵူၼ်းပႂ်ႉတူၺ်း  " (Observer) ဝႆႉ တီႈ Variable ၼၼ်ႉၶႃႈ။



---

### 2. Mode ဢၼ်ၸႂ်ႉၵႆႉ (Common Modes)
* **`"write"`**: ႁႂ်ႈႁဵတ်းၵၢၼ် မိူဝ်ႈမီးၵၢၼ်တႅမ်ႈလိၵ်ႈၶဝ်ႈ (User is typing)။
* **`"read"`**: ႁႂ်ႈႁဵတ်းၵၢၼ် မိူဝ်ႈမီးၵၢၼ်လူဢဝ် Data ဢွၵ်ႇ (Data is accessed)။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢၼ်ၵူတ်ႇထတ်းတူၺ်းဝႃႈ Password ယၢဝ်းပေႃးႁႃႉ? ၼႆၶႃႈ။

```python
import tkinter as tk

class TraceApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 18: Real-time Trace")
        self.geometry("400x300")

        # 1. သၢင်ႈ Variable
        self.password_var = tk.StringVar()
        
        # 2. သင်ႇႁႂ်ႈ Trace (ပႂ်ႉတူၺ်း Mode "write")
        # မိူဝ်ႈမီးၵၢၼ်တႅမ်ႈလိၵ်ႈ ႁႂ်ႈၵႂႃႇႁွင်ႉၸႂ်ႉ Function 'check_password'
        self.password_var.trace_add("write", self.check_password)

        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တင်ႈ Password (လူဝ်ႇ 6 တူဝ်ၶိုၼ်ႈၼိူဝ်):", 
                 font=("NamKhone", 12)).pack(pady=10)

        # 3. ၵွင်ႉ Entry ၸွမ်း Variable
        # သႂ်ႇ show="*" တႃႇပိၵ်ႉ Password ဝႆႉ
        self.entry = tk.Entry(self, textvariable=self.password_var, 
                              font=("Arial", 14), show="*")
        self.entry.pack(pady=5)

        # 4. Label ၼႄၽွၼ်းလႅပ်ႈ Security
        self.status_lbl = tk.Label(self, text="ပႂ်ႉတႅမ်ႈလိၵ်ႈယူႇ...", 
                                   font=("Panglong", 12), fg="gray")
        self.status_lbl.pack(pady=20)

    # 5. Function ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈ Trace တူၺ်းႁၼ်လွင်ႈလႅၵ်ႈလၢႆႈ
    def check_password(self, *args):
        p_word = self.password_var.get()
        
        if len(p_word) == 0:
            self.status_lbl.config(text="ပႂ်ႉတႅမ်ႈလိၵ်ႈယူႇ...", fg="gray")
        elif len(p_word) < 6:
            self.status_lbl.config(text="Password တိုၵ်ႉဢူၼ်ႈဢွၼ်ႈယူႇ!", fg="red")
        else:
            self.status_lbl.config(text="Password ၵႅၼ်ႇၶႅင်ယဝ်ႉ။", fg="green")

if __name__ == "__main__":
    app = TraceApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`trace_add("write", callback)`**: မၼ်းတေၸႂ်ႉတႃႇမၵ်းမၼ်ႈဝႃႈ သင်မီးၵၢၼ်မႄး Data (Write) ၼႆ ႁႂ်ႈၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်း Function (Callback) ၼၼ်ႉၵမ်းလဵဝ်။
* **`*args`**: ၼႂ်း Function ဢၼ် Trace ႁွင်ႉၸႂ်ႉၼၼ်ႉ လူဝ်ႇလႆႈသႂ်ႇ `*args` ဝႆႉ ယွၼ်ႉ Tkinter တေသူင်ႇ Data ဢၼ်ပဵၼ် Internal IDs မႃးပႃးၸွမ်းၶႃႈ။
* **Real-time Feedback**: ႁဝ်းတေႁၼ်ဝႃႈ ႁဝ်းဢမ်ႇလူဝ်ႇၼဵၵ်း Button၊ Software မၼ်းႁူႉၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းတိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၼၼ်ႉၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ `.trace_add()` တႃႇ:
1.  ၵူတ်ႇထတ်း Password တႃႇသေႇ။
2.  ပိုတ်ႇ/ပိၵ်ႉ (Enable/Disable) Button မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈတဵမ် ဢမ်ႇၼၼ် ဢမ်ႇတဵမ်။

---