## Lesson 10: The Entry Widget
**(လွၵ်းလၢႆးၸႂ်ႉ Entry Widget တႃႇႁပ်ႉဢဝ်လိၵ်ႈ)**

### 1. Entry Widget ပဵၼ်သင်? (What is an Entry?)
**Entry** ၼႆႉ ပဵၼ် Widget ဢၼ်ပၼ်လွၵ်းတႅမ်ႈလိၵ်ႈ ထႅဝ်လဵဝ် (Single-line text box) ၶႃႈ။ 
ႁဝ်းၸႂ်ႉမၼ်းတႃႇႁပ်ႉဢဝ် ၸိုဝ်ႈ၊ မၢႆၾူၼ်း၊ ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်းဢင်းၵိတ်ႉ ဢၼ်ႁဝ်းတေဢဝ်မႃး ပိၼ်ႇပဵၼ်လိၵ်ႈတႆးၼၼ်ႉယဝ်ႉ။

### 2. လွၵ်းလၢႆးဢဝ် Data ဢွၵ်ႇမႃး (The .get() method)
ၼင်ႇႁိုဝ် Python တေႁူႉဝႃႈ ၵူၼ်းၸႂ်ႉတိုဝ်း တႅမ်ႈလိၵ်ႈသင်ဝႆႉၼႂ်းလွၵ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Method ဢၼ်မီးၸိုဝ်ႈဝႆႉဝႃႈ **`.get()`** ၶႃႈယဝ်ႉ။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢွၼ်ႇ ဢၼ်ႁပ်ႉဢဝ်ၸိုဝ်ႈသေ မႂ်ႇသုင်ပၼ်ၶႃႈ။

```python
import tkinter as tk

class EntryApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 10: Entry Widget")
        self.geometry("400x250")
        
        self.setup_ui()

    def setup_ui(self):
        # 1. Label သင်ႇႁႂ်ႈတႅမ်ႈလိၵ်ႈ
        self.lbl = tk.Label(self, text="တႅမ်ႈၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ တီႈၼႆႉ:", font=("NamKhone", 12))
        self.lbl.pack(pady=10)

        # 2. သၢင်ႈ Entry (လွၵ်းတႅမ်ႈလိၵ်ႈ)
        self.name_entry = tk.Entry(self, font=("Panglong", 12), width=30)
        self.name_entry.pack(pady=5)

        # 3. Function တႃႇဢဝ်လိၵ်ႈၼႂ်း Entry မႃးၸႂ်ႉ
        def greet_user():
            user_input = self.name_entry.get() # ဢဝ်လိၵ်ႈဢွၵ်ႇမႃး
            if user_input:
                self.result_lbl.config(text=f"မႂ်ႇသုင်ၶႃႈ... {user_input}!", fg="blue")
            else:
                self.result_lbl.config(text="လူဝ်ႇတႅမ်ႈၸိုဝ်ႈၵွၼ်ႇၶႃႈ!", fg="red")

        # 4. Button တႃႇသင်ႇႁႂ်ႈ Greet
        self.btn = tk.Button(self, text="ၼဵၵ်းတႃႇၵပ်းသိုပ်ႇ", command=greet_user)
        self.btn.pack(pady=10)

        # 5. Label ၼႄၽွၼ်းလႅပ်ႈ
        self.result_lbl = tk.Label(self, text="", font=("NamKhone", 14, "bold"))
        self.result_lbl.pack(pady=10)

if __name__ == "__main__":
    app = EntryApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.name_entry.get()`**: ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ။ မၼ်းတေၵႂႃႇ ဢဝ်လိၵ်ႈ ဢၼ်မီးၼႂ်းလွၵ်း Entry ၼၼ်ႉ ပၼ်ပဵၼ် String (Text) မႃးၶႃႈ။
* **`self.name_entry.insert(0, "Text")`**: ၸႂ်ႉတႃႇသႂ်ႇလိၵ်ႈဝႆႉၼႂ်းလွၵ်း တႄႇတီႈလွၵ်းမၢႆ 0 ၶႃႈ။
* **`self.name_entry.delete(0, tk.END)`**: ၸႂ်ႉတႃႇ "ယႃႉပႅတ်ႈ" လိၵ်ႈတင်းသဵင်ႈ ၼႂ်းလွၵ်း Entry ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Quick-Shan Translator** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Entry တႃႇႁပ်ႉဢဝ် ၶေႃႈၵႂၢမ်းဢင်းၵိတ်ႉ (Input) ဢၼ် User တႅမ်ႈၶဝ်ႈမႃးၼၼ်ႉယဝ်ႉၶႃႈ။
* **Font Support**: ၼႂ်း Entry ၵေႃႈ လူဝ်ႇသႂ်ႇ Font တႆး (Panglong) ၼင်ႇႁိုဝ် မိူဝ်ႈတႅမ်ႈလိၵ်ႈတႆးၶဝ်ႈၵႂႃႇ ပေႃးတေဢွၵ်ႇမၢၼ်ႇမႅၼ်ႈၼၼ်ႉယဝ်ႉၶႃႈ။

---