## Lesson 23: Logical Error Handling (Try-Except)
**(လွၵ်းလၢႆးႁၢမ်ႈ Software ဢမ်ႇႁႂ်ႈၵိုတ်း မိူဝ်ႈမီးလွင်ႈၽိတ်းပိူင်)**

### 1. Error Handling ပဵၼ်သင်? (What is Error Handling?)
မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼၼ်ႉ မၼ်းတေမီး Error ဢၼ်ႁဝ်း ဢမ်ႇဝူၼ်ႉဝႆႉမႃးလႆႈ တူဝ်ယၢင်ႇ:
* **ValueError**: User တႅမ်ႈ "ABC" ၼႂ်းလွၵ်းဢၼ်လူဝ်ႇ "Numbers"။
* **ZeroDivisionError**: ၵၢၼ်ဢဝ်မၢႆၼပ်ႉမႃးၸႅၵ်ႇ (Divide) တင်း 0။
* **FileNotFoundError**: ႁႃ File ဢမ်ႇႁၼ်။



---

### 2. ပိူင်တႅမ်ႈ Try-Except
* **`try`**: တႅမ်ႈ Code ဢၼ်ၸၢင်ႈမီး "Error" ဝႆႉၼႂ်းၼႆႉ။
* **`except`**: သင်မီး Error တႄႉ ႁႂ်ႈ Python ႁဵတ်းၵၢၼ်တီႈၼႆႈ (တူဝ်ယၢင်ႇ: ၼႄ Messagebox)။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢဝ်မၢႆၼပ်ႉမႃး "ပုၼ်ႈ" (Square) ၵၼ်ၶႃႈၼႃ။

```python
import tkinter as tk
from tkinter import messagebox

class ErrorHandlingApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 23: Error Handling")
        self.geometry("400x250")
        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တႅမ်ႈမၢႆၼပ်ႉ (Number) တႃႇပုၼ်ႈၵၼ်:", 
                 font=("NamKhone", 12)).pack(pady=10)

        self.num_entry = tk.Entry(self, font=("Arial", 14))
        self.num_entry.pack(pady=5)

        tk.Button(self, text="Calculate / ၼပ်ႉပုၼ်ႈ", 
                  command=self.calculate_square).pack(pady=15)

        self.result_lbl = tk.Label(self, text="ၽွၼ်းလႆႈ: ---", 
                                   font=("Panglong", 14), fg="blue")
        self.result_lbl.pack(pady=10)

    def calculate_square(self):
        # --- ၸႂ်ႉ Try-Except တႃႇႁၢမ်ႈ Error ---
        try:
            # 1. ဢဝ် Data မႃးပိၼ်ႇပဵၼ် Number
            number = float(self.num_entry.get())
            
            # 2. ၼပ်ႉပုၼ်ႈ
            result = number * number
            
            # 3. ၼႄၽွၼ်းလႅပ်ႈ
            self.result_lbl.config(text=f"ၽွၼ်းလႆႈ: {result}", fg="green")
            
        except ValueError:
            # သင် User တႅမ်ႈလိၵ်ႈ (Text) တႅၼ်း မၢႆၼပ်ႉ
            messagebox.showerror("⚠️ ၽိတ်းပိူင်", "လူဝ်ႇတႅမ်ႈမၢႆၼပ်ႉ (0-9) ၵူၺ်းၶႃႈ!")
            self.result_lbl.config(text="ၽွၼ်းလႆႈ: ၽိတ်းပိူင်!", fg="red")
            
        except Exception as e:
            # သင်မီး Error တၢင်ႇမဵဝ်း ဢၼ်ႁဝ်းဢမ်ႇႁူႉ
            messagebox.showerror("Error", f"မီးလွင်ႈၽိတ်းပိူင်: {e}")

if __name__ == "__main__":
    app = ErrorHandlingApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`try:`**: Python တေၸၢမ်းႁဵတ်းၵၢၼ်ၼႂ်းၼႆႉၵွၼ်ႇ။ သင်မႅၼ်ႈတင်းသဵင်ႈ Software တေဢမ်ႇမီး Error သင်ၶႃႈ။
* **`except ValueError:`**: သင် User တႅမ်ႈလိၵ်ႈၶဝ်ႈမႃး `float()` တေပဵၼ် Error။ Python တေ "ဝႅၼ်" (Skip) မႃးႁဵတ်းၵၢၼ်ၼႂ်း `except` ၼႆႉၵမ်းလဵဝ်။
* **User Safety**: ၵၢၼ်ၸႂ်ႉ `messagebox` ၼႂ်း `except` တေၸွႆႈပၼ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းဝႃႈ "ပဵၼ်သင်မၼ်းၸင်ႇဢမ်ႇႁဵတ်းၵၢၼ်" ၶႃႈၼႃ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Error Handling တႃႇ:
1.  **Money Validation**: မိူဝ်ႈ User တႅမ်ႈမၢႆငိုၼ်း (Amount) ႁႂ်ႈမၼ်းပဵၼ်တူဝ်ၼပ်ႉတႄႉတႄႉ။
2.  **File Operations**: မိူဝ်ႈ Software ၵႂႃႇပိုတ်ႇ File ဢၼ်သိမ်း Password သေ ႁႃ File ၼၼ်ႉဢမ်ႇႁၼ်၊ တေဢမ်ႇႁႂ်ႈ Software ၵိုတ်းၶႃႈ။

---