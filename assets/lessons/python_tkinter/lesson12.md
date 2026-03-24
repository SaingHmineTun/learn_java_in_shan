## Lesson 12: Using Lambda for Passing Arguments
**(လွၵ်းလၢႆးၸႂ်ႉ Lambda တႃႇသူင်ႇ Data ၶဝ်ႈၵႂႃႇၼႂ်း Button)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ Lambda? (Why Lambda?)
ၵူႈပွၵ်ႈၼႆႉ မိူဝ်ႈႁဝ်းတႅမ်ႈ `command=my_function` ၼၼ်ႉ ႁဝ်းသူင်ႇ Data (Arguments) ၶဝ်ႈၵႂႃႇၸွမ်းဢမ်ႇလႆႈၶႃႈ။ သင်ႁဝ်းသႂ်ႇဝႃႈ `command=my_function("Hello")` ၼႆ Python တေ Run မၼ်းၵမ်းလဵဝ် မိူဝ်ႈပိုတ်ႇ App။

ၼင်ႇႁိုဝ် တေသူင်ႇ Data ၶဝ်ႈၵႂႃႇလႆႈသေ ႁႂ်ႈမၼ်းပႂ်ႉႁဝ်း "ၼႅၵ်း" (Click) ၵွၼ်ႇၸင်ႇႁဵတ်းၵၢၼ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`lambda`** ၶႃႈယဝ်ႉ။



---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေႁဵတ်း Button လၢႆလၢႆတူဝ် ဢၼ်သူင်ႇလိၵ်ႈ ပႅၵ်ႇပိူင်ႈၵၼ် ၵႂႃႇတီႈ Function လဵဝ်ၵၼ်ၶႃႈ။

```python
import tkinter as tk

class LambdaApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 12: Lambda Logic")
        self.geometry("400x300")
        
        self.setup_ui()

    def setup_ui(self):
        self.lbl = tk.Label(self, text="လိူၵ်ႈၼဵၵ်း Button တူၺ်းၶႃႈ:", font=("NamKhone", 12))
        self.lbl.pack(pady=20)

        # 1. Function ဢၼ်ႁပ်ႉဢဝ် Argument (Data)
        def show_message(text_to_show):
            self.lbl.config(text=text_to_show, fg="blue")

        # 2. သၢင်ႈ Button တူဝ်ထူၼ်ႈၼိုင်ႈ (သူင်ႇလိၵ်ႈတႆး)
        # ၸႂ်ႉ lambda: တႃႇ "မတ်ႉ" Function ဝႆႉ ဢမ်ႇႁႂ်ႈမၼ်း Run ၵမ်းလဵဝ်
        btn1 = tk.Button(
            self, 
            text="Shan", 
            command=lambda: show_message("မႂ်ႇသုင်ၶႃႈ!")
        )
        btn1.pack(pady=5)

        # 3. သၢင်ႈ Button တူဝ်ထူၼ်ႈသွင် (သူင်ႇလိၵ်ႈဢင်းၵိတ်ႉ)
        btn2 = tk.Button(
            self, 
            text="English", 
            command=lambda: show_message("Hello World!")
        )
        btn2.pack(pady=5)

if __name__ == "__main__":
    app = LambdaApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`lambda:`**: မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းႁဵတ်း Function ဢွၼ်ႇ (Anonymous Function) ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈသေ ဝၢင်းဝႆႉၶႃႈ။ မၼ်းတေပႂ်ႉႁဝ်းၼဵၵ်း Button ၵွၼ်ႇ ၸင်ႇတေၵႂႃႇႁွင်ႉၸႂ်ႉ Function လူင်ႁဝ်းၶႃႈယဝ်ႉ။
* **`command=lambda: func(arg)`**: ဢၼ်ၼႆႉ ပဵၼ်ပိူင် (Standard) ဢၼ်ႁဝ်း တေလႆႈၸႂ်ႉတႃႇသေႇ မိူဝ်ႈလူဝ်ႇသူင်ႇ Data ၶဝ်ႈ Button ၶႃႈၼႃ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Quick-Shan Translator** ၼၼ်ႉ သင်ႁဝ်းမီး Button တင်းၼမ် (တူဝ်ယၢင်ႇ: Clear Button, Translate Button, Copy Button) ႁဝ်းၸၢင်ႈၸႂ်ႉ `lambda` သေ သူင်ႇ Data ၵႂႃႇမႄး (Update) လိၵ်ႈၼႂ်း UI ႁဝ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။

---