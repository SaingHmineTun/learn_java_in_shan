## Lesson 9: Introduction to Button & Command Binding
**(လွၵ်းလၢႆးၸႂ်ႉ Button လႄႈ လၢႆးမတ်ႉ Function ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်)**

### 1. Button Widget ပဵၼ်သင်? (What is a Button?)
**Button** ၼႆႉ ပဵၼ် Widget ဢၼ်ၵူၼ်းၸႂ်ႉတိုဝ်း (User) တေၼဵၵ်း (Click) သေ သင်ႇႁႂ်ႈ Software ႁဝ်းႁဵတ်းၵၢၼ်သေမဵဝ်းမဵဝ်းၶႃႈယဝ်ႉ။ 
မၼ်းပဵၼ် "ႁူဝ်ၸႂ်" ၶွင်ၵၢၼ်တုမ်ႉတွပ်ႇၼႂ်း GUI ၶႃႈၼႃ။

### 2. လွၵ်းလၢႆးႁဵတ်းၵၢၼ် (Command Binding)
ၼႂ်း Tkinter ၼႆႉ ႁဝ်းတေၸႂ်ႉ Parameter ဢၼ်ၸိုဝ်ႈဝႃႈ **`command`** သေ "မတ်ႉ" (Bind) Button ႁဝ်း ဝႆႉတင်း Function ၶႃႈ။ မ
ိူဝ်ႈၼဵၵ်း Button ၼၼ်ႉ Python တေၵႂႃႇႁွင်ႉၸႂ်ႉ (Call) Function ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉၶႃႈယဝ်ႉ။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေသိုပ်ႇၸႂ်ႉလၢႆးတႅမ်ႈ **OOP** ၶႃႈၼႃ။

```python
import tkinter as tk

class ButtonApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Module 2: Button Lesson")
        self.geometry("350x250")
        self.configure(bg="#f0f0f0")
        
        self.setup_ui()

    def setup_ui(self):
        # 1. သၢင်ႈ Function ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈၼဵၵ်း Button
        def my_action():
            # မိူဝ်ႈၼဵၵ်း Button ႁႂ်ႈမၼ်းပိၼ်ႇလိၵ်ႈၼႂ်း Label
            self.label.config(text="မႂ်ႇသုင်ၶႃႈ! Button ႁဵတ်းၵၢၼ်ယဝ်ႉ။", fg="#2d5a27")

        # 2. သၢင်ႈ Label တႃႇၼႄၽွၼ်းလႆႈ
        self.label = tk.Label(self, text="တိုၵ်ႉပႂ်ႉႁႂ်ႈၼဵၵ်း Button ယူႇၶႃႈ...", 
                              font=("NamKhone", 12), bg="#f0f0f0")
        self.label.pack(pady=20)

        # 3. သၢင်ႈ Button လႄႈ မတ်ႉ (Bind) မၼ်းတင်း Function
        # **မၢႆတွင်း:** တီႈ command= လူဝ်ႇသႂ်ႇၸိုဝ်ႈ Function ၵူၺ်း (ဢမ်ႇလူဝ်ႇသႂ်ႇ ၶွပ်ႇ () )
        self.btn = tk.Button(
            self, 
            text="ၼဵၵ်းတီႈၼႆႉ", 
            font=("NamKhone", 12, "bold"),
            command=my_action, # မတ်ႉဝႆႉတင်း Function ၼိူဝ်ၼၼ်ႉ
            bg="#2d5a27",
            fg="white",
            padx=10,
            pady=5
        )
        self.btn.pack(pady=10)

if __name__ == "__main__":
    app = ButtonApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`command=my_action`**: ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇလိူဝ်ပိူၼ်ႈၶႃႈ။ ႁဝ်းသႂ်ႇ "ၸိုဝ်ႈ" Function ၵူၺ်း။ သင်ႁဝ်းသႂ်ႇ `my_action()` ဢၼ်မီးၶွပ်ႇၸွမ်းၼႆ Python တေ Run Function ၼၼ်ႉၵမ်းလဵဝ် မိူဝ်ႈပိုတ်ႇ App လႄႈ မၼ်းတေဢမ်ႇပႂ်ႉႁဝ်းၼဵၵ်း Button ၶႃႈၼႃ။
* **`.config(text="...")`**: ဢၼ်ၼႆႉ ပဵၼ်လၢႆးမႄးထႅမ် (Update) Widgets ဢၼ်မီးဝႆႉယဝ်ႉၼၼ်ႉၶႃႈ။ ႁဝ်းမႄးလႆႈတင်း လိၵ်ႈ (Text) လႄႈ သီ (Color) ၶႃႈယဝ်ႉ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Quick-Shan Translator** ၼၼ်ႉ Button ပဵၼ်တူဝ်ဢၼ်တေသင်ႇႁႂ်ႈ Python ၵႂႃႇဢဝ်လိၵ်ႈဢင်းၵိတ်ႉ ပိၼ်ႇပဵၼ်လိၵ်ႈတႆးၼၼ်ႉယဝ်ႉၶႃႈ။
* **Visual Feedback**: ၸၢင်ႈမႄးသီ `activebackground` တႃႇႁႂ်ႈသီ Button လႅၵ်ႈလၢႆႈ မိူဝ်ႈၼဵၵ်းမၼ်းၶႃႈ။
* **Command Reference**: လူဝ်ႇသႂ်ႇၸိုဝ်ႈ Function လၢႆလၢႆၵူၺ်း၊ ဢမ်ႇၸႂ်ႈၵၢၼ်ႁွင်ႉၸႂ်ႉ (Call) Function ၶႃႈ။

---