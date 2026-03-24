## Lesson 17: Understanding Variables (StringVar, IntVar)
**(လွၵ်းလၢႆးၸႂ်ႉ Variable တူဝ်ပိၼ်ႇလႅၵ်ႈ ၼႂ်း GUI)**

### 1. Tkinter Variables ပဵၼ်သင်? (What are they?)
ၼႂ်း Python ယူဝ်းယူဝ်း ႁဝ်းၸႂ်ႉ `x = "Hello"`။ ၵူၺ်းၵႃႈ ၼႂ်း GUI ၼၼ်ႉ သင်ႁဝ်းၸႂ်ႉ Variable ယူဝ်းယူဝ်း ၼႃႈတႃ Software ႁဝ်း (Label) တေဢမ်ႇႁူႉဝႃႈ Data လႅၵ်ႈလၢႆႈၵႂႃႇယဝ်ႉ။

ၼင်ႇႁိုဝ် Widget တင်း Variable ပေႃးတေၵွင်ႉၵၼ် (Data Binding) ဝႆႉၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Variable ၶိုၵ်ႉတွၼ်း ဢၼ် Tkinter မၵ်းမၼ်ႈဝႆႉပၼ်ၶႃႈ။

* **`tk.StringVar()`**: တႃႇသိမ်းလိၵ်ႈ (String)။
* **`tk.IntVar()`**: တႃႇသိမ်းမၢႆၼပ်ႉ (Integer/Numbers)။



---

### 2. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉမၼ်း? (Why use them?)
1.  **Automatic Updates:** မိူဝ်ႈႁဝ်းမႄး Variable ၼၼ်ႉ Label ဢၼ်ၵွင်ႉဝႆႉၸွမ်းမၼ်း တေလႅၵ်ႈလၢႆႈလိၵ်ႈၸွမ်း ႁင်းမၼ်းၵမ်းလဵဝ် (Reactive UI)။
2.  **Tracking Change:** ႁဝ်းသင်ႇႁႂ်ႈ Python "ၼင်ႈပႂ်ႉတူၺ်း" (Trace) လႆႈဝႃႈ မိူဝ်ႈလႂ် User တႅမ်ႈလိၵ်ႈၶဝ်ႈမႃး ႁႂ်ႈၵႂႃႇႁဵတ်းၵၢၼ်သင်သေမဵဝ်းမဵဝ်း။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢၼ် "မႂ်ႇသုင်" ပၼ် User ၸွမ်းၼင်ႇ ဢၼ်ၶဝ်တႅမ်ႈၶဝ်ႈမႃးၼၼ်ႉၶႃႈယဝ်ႉ။

```python
import tkinter as tk

class VariableApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 17: Tkinter Variables")
        self.geometry("400x250")

        # 1. သၢင်ႈ StringVar (တူဝ်ပိၼ်ႇလႅၵ်ႈ)
        # မၼ်းတေသိမ်း Data ဝႆႉၼႂ်းတူဝ်မၼ်း
        self.user_input = tk.StringVar()
        
        # တင်ႈၵႃႈပၼ်မၼ်းဝႆႉ တႄႇႁူဝ် (Default Value)
        self.user_input.set("ၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ")

        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တႅမ်ႈၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ တီႈၼႆႉ:", font=("NamKhone", 12)).pack(pady=10)

        # 2. ၵွင်ႉ (Bind) Entry ၸွမ်း StringVar လူၺ်ႈ textvariable
        # ၵမ်းၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ .get() ၼႂ်း Entry ယဝ်ႉ
        self.entry = tk.Entry(self, textvariable=self.user_input, font=("Panglong", 12))
        self.entry.pack(pady=5)

        # 3. Label ဢၼ်တေၼႄ Data ၼႂ်း StringVar
        # ႁဝ်းၵွင်ႉ textvariable ဝႆႉ မိူၼ်ၵၼ်ၶႃႈ
        self.display_lbl = tk.Label(self, textvariable=self.user_input, 
                                     font=("Panglong", 16, "bold"), fg="blue")
        self.display_lbl.pack(pady=20)

        # 4. Button တႃႇၸမ်းမႄး Data ၼႂ်း Variable
        def clear_data():
            self.user_input.set("") # မႄး Data ၼႂ်း Variable ၵမ်းလဵဝ်

        tk.Button(self, text="ယႃႉလိၵ်ႈပႅတ်ႈ", command=clear_data).pack()

if __name__ == "__main__":
    app = VariableApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`.set("Text")`**: ၸႂ်ႉတႃႇ "ပူၵ်းသႂ်ႇ" Data ၶဝ်ႈၵႂႃႇၼႂ်း Variable။
* **`.get()`**: ၸႂ်ႉတႃႇ "ထုၵ်ႈဢဝ်" Data ဢွၵ်ႇမႃးၸႂ်ႉ။
* **`textvariable=...`**: ဢၼ်ၼႆႉပဵၼ် "ၶူဝ်" (Bridge) ဢၼ်ၵွင်ႉ Widget ၸွမ်း Data ၶႃႈ။ မိူဝ်ႈ Variable လႅၵ်ႈလၢႆႈ Widget ၵေႃႈတေပိၼ်ႇၸွမ်းၵမ်းလဵဝ်။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Secure Shan-Wallet** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **StringVar** တႃႇၵူတ်ႇထတ်း Password ၶႃႈ။ တူဝ်ယၢင်ႇ: မိူဝ်ႈ User တႅမ်ႈ Password ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Variable ၼႆႉသေ ၼႄလွင်ႈ "Security Level" (ဢူၼ်ႈဢွၼ်ႈ ဢမ်ႇၼၼ် ၵႅၼ်ႇၶႅင်) ပၼ်ၶဝ်ၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။