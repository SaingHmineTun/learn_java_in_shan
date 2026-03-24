## Lesson 19: Input Validation
**(လွၵ်းလၢႆးၵူတ်ႇထတ်း တူဝ်လိၵ်ႈတႆး လႄႈ ဢင်းၵိတ်ႉ)**

### 1. Input Validation ပဵၼ်သင်? (What is Validation?)
**Validation** မၢႆထိုင် ၵၢၼ်ၵူတ်ႇထတ်း Data မိူဝ်ႈပႆႇဢဝ်ၵႂႃႇၸႂ်ႉၶႃႈ။ တူဝ်ယၢင်ႇ:
* သင် User တႅမ်ႈမၢႆၼပ်ႉ (Number) ၼႂ်းလွၵ်း "ၸိုဝ်ႈ" ၼႆ ႁဝ်းလူဝ်ႇႁူႉ။
* သင်ႁဝ်းလူဝ်ႇလိၵ်ႈတႆး ၵူၺ်းၵႃႈ User သမ်ႉတႅမ်ႈလိၵ်ႈဢင်းၵိတ်ႉၼႆ ႁဝ်းလူဝ်ႇပၼ် Warning။

ၼႂ်း Python ႁဝ်းၸၢင်ႈၸႂ်ႉ **Unicode Range** တႃႇႁူႉဝႃႈ လိၵ်ႈၼၼ်ႉ ပဵၼ်လိၵ်ႈတႆးႁႃႉ ဢမ်ႇၸႂ်ႈႁႃႉ ၼၼ်ႉယဝ်ႉၶႃႈ။



---

### 2. လွၵ်းလၢႆးၵူတ်ႇထတ်း (The Logic)
တူဝ်လိၵ်ႈတႆး (Shan Script) ၼၼ်ႉ ၵႆႉယူႇၼႂ်း Unicode Range `\u1000` တေႃႇ `\u109F` (Myanmar Block) ၶႃႈ။ ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢွၼ်ႇၼိုင်ႈ တႃႇပႂ်ႉတူၺ်းလႆႈၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸႂ်ႉ `.trace_add()` ဢၼ်ႁဵၼ်းမႃးၼႂ်း Lesson 18 သေ မႃးၵူတ်ႇထတ်းလိၵ်ႈၵမ်းလဵဝ်ၶႃႈ။

```python
import tkinter as tk
import re # ၸႂ်ႉ Regular Expression တႃႇၵူတ်ႇထတ်းလိၵ်ႈ

class ValidationApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 19: Input Validation")
        self.geometry("450x300")

        self.input_var = tk.StringVar()
        self.input_var.trace_add("write", self.validate_input)

        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တႅမ်ႈလိၵ်ႈတႆးၵူၺ်း (Shan Characters Only):", 
                 font=("NamKhone", 12)).pack(pady=10)

        self.entry = tk.Entry(self, textvariable=self.input_var, font=("Panglong", 14))
        self.entry.pack(pady=5)

        self.info_lbl = tk.Label(self, text="ၵူတ်ႇထတ်းယူႇ...", font=("NamKhone", 11), fg="gray")
        self.info_lbl.pack(pady=20)

    def validate_input(self, *args):
        text = self.input_var.get()
        
        if not text:
            self.info_lbl.config(text="ပႂ်ႉတႅမ်ႈလိၵ်ႈယူႇ...", fg="gray")
            return

        # ၵူတ်ႇထတ်းဝႃႈ မီးလိၵ်ႈဢင်းၵိတ်ႉ (A-Z) ပႃးႁႃႉ?
        if re.search(r'[a-zA-Z]', text):
            self.info_lbl.config(text="⚠️ ၽိတ်းယဝ်ႉ! လူဝ်ႇတႅမ်ႈလိၵ်ႈတႆးၵူၺ်းၶႃႈ။", fg="red")
            self.entry.config(highlightthickness=2, highlightbackground="red")
        else:
            self.info_lbl.config(text="✅ မႅၼ်ႈယဝ်ႉ! ၼႆႉပဵၼ်လိၵ်ႈတႆးၶႃႈ။", fg="green")
            self.entry.config(highlightthickness=2, highlightbackground="green")

if __name__ == "__main__":
    app = ValidationApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`import re`**: ပဵၼ် Regular Expression ဢၼ်ၸွႆႈႁႃ "Pattern" ၼႂ်းလိၵ်ႈၶႃႈ။
* **`re.search(r'[a-zA-Z]', text)`**: မၼ်းတေၵႂႃႇႁႃတူၺ်းဝႃႈ ၼႂ်းလိၵ်ႈၼၼ်ႉ မီးတူဝ်ဢင်းၵိတ်ႉပႃးဝႆႉႁႃႉ? သင်ပႃးၼႆ မၼ်းတေပၼ် Warning ၵမ်းလဵဝ်။
* **Visual Validation**: ႁဝ်းၸႂ်ႉ `highlightbackground` တႃႇႁဵတ်းႁႂ်ႈၶွပ်ႇ (Border) ၶွင် Entry ပဵၼ်သီလႅင် မိူဝ်ႈ User တႅမ်ႈၽိတ်း ၼင်ႇႁိုဝ်ၶဝ်ပေႃးတေႁူႉတူဝ်ငၢႆႈငၢႆႈၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Validation တႃႇ:
1.  ၵူတ်ႇထတ်းဝႃႈ ၶၼ်ငိုၼ်း (Amount) ၼၼ်ႉ ပဵၼ်တူဝ်ၼပ်ႉ (Numbers) တႄႉႁႃႉ?
2.  ၵူတ်ႇထတ်းဝႃႈ ၸိုဝ်ႈ (Username) ၼၼ်ႉ ယၢဝ်းလီပဵင်းပေႃးယဝ်ႉႁ?
3.  ႁၢမ်ႈတႅမ်ႈလိၵ်ႈၽိတ်းပိူင် ၼႂ်းလွၵ်း Password။

---