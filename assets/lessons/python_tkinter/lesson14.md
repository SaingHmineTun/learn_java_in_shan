## Lesson 14: Managing Layouts with Nested Frames
**(လွၵ်းလၢႆးၸတ်းၼႃႈတႃ App လူၺ်ႈၵၢၼ်ၸႂ်ႉ Frames)**

### 1. Frame Widget ပဵၼ်သင်? (What is a Frame?)
**Frame** ၼႆႉ မၼ်းမိူၼ်ၼင်ႇ "ႁွင်ႈ" ဢမ်ႇၼၼ် "ၵွၵ်း" (Container) ဢၼ်ဢမ်ႇႁၼ်တူဝ်မၼ်းၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ:
* ဢဝ် Widgets ဢၼ်မိူၼ်ၵၼ် ဝၢင်းဝႆႉၸုမ်းလဵဝ်ၵၼ်။
* ၸွႆႈႁႂ်ႈၵၢၼ်ၸႂ်ႉ `.pack()` လႄႈ `.grid()` ႁဵတ်းၵၢၼ်ငၢႆႈလိူဝ်ၵဝ်ႇ။

---

### 2. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ Frame?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈဝၢင်း Button 2 တူဝ် ႁႂ်ႈမၼ်းၼင်ႈၸွမ်းၵၼ် (Side by side) ၼႂ်း App ဢၼ်ၸႂ်ႉ `.pack()` ၼႆ...
* သင်ဢမ်ႇမီး Frame၊ Button တေတူၵ်းလူင်းမႃးထႅဝ်လဵဝ်ၵၼ် (Vertical)။
* သင်ႁဝ်းၸႂ်ႉ Frame၊ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ Frame ၼၼ်ႉ `.pack()` လူင်းမႃး၊ ယဝ်ႉၵေႃႈ သင်ႇႁႂ်ႈ Button ၼႂ်း Frame ၼၼ်ႉ `.pack(side="left")` ၶိုင်ႈၵၼ်ၵႂႃႇၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေသၢင်ႈ Header လႄႈ Button Bar လူၺ်ႈၸႂ်ႉ Frame ၶႃႈၼႃ။

```python
import tkinter as tk

class FrameApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 14: Frame Layout")
        self.geometry("400x300")
        
        self.setup_ui()

    def setup_ui(self):
        # 1. သၢင်ႈ Top Frame (တႃႇ Header)
        top_frame = tk.Frame(self, bg="#2d5a27", height=60)
        top_frame.pack(fill="x") # ႁႂ်ႈယႂ်ႇတဵမ်ၽၢႆႇၼွၼ်း

        tk.Label(top_frame, text="Quick-Shan Translator", 
                 fg="white", bg="#2d5a27", font=("Arial", 14, "bold")).pack(pady=15)

        # 2. သၢင်ႈ Middle Frame (တႃႇ Input)
        mid_frame = tk.Frame(self)
        mid_frame.pack(pady=20)

        tk.Label(mid_frame, text="တႅမ်ႈလိၵ်ႈ:").pack(side="left")
        tk.Entry(mid_frame, width=20).pack(side="left", padx=10)

        # 3. သၢင်ႈ Bottom Frame (တႃႇ Buttons)
        # ႁဝ်းဢဝ် Button 2 တူဝ် ဝၢင်းဝႆႉၼႂ်းၼႆႉ ႁႂ်ႈမၼ်းၽဵင်ႇၵၼ်
        btn_frame = tk.Frame(self)
        btn_frame.pack(pady=10)

        tk.Button(btn_frame, text="Translate", width=10).pack(side="left", padx=5)
        tk.Button(btn_frame, text="Clear", width=10).pack(side="left", padx=5)

if __name__ == "__main__":
    app = FrameApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`tk.Frame(self)`**: `self` မၢႆထိုင် ဝႃႈ Frame ၼႆႉ ယူႇၼႂ်း Window လူင်။
* **`tk.Button(btn_frame, ...)`**: ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ! ႁဝ်းမၵ်းမၼ်ႈဝႃႈ Button ၼႆႉ ယူႇၼႂ်း `btn_frame` ဢမ်ႇၸႂ်ႈၼႂ်း `self`။
* **Nested Layout**: ၵၢၼ်ဢဝ် Widget သႂ်ႇၼႂ်း Frame သေ ဢဝ် Frame သႂ်ႇၼႂ်း Window ထႅင်ႈၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **"Nesting"** ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Quick-Shan Translator** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Frame တူဝ်ၼိုင်ႈ တႃႇလွၵ်း Input (ဢင်းၵိတ်ႉ) လႄႈ Frame ထႅင်ႈတူဝ်ၼိုင်ႈ တႃႇလွၵ်း Output (လိၵ်ႈတႆး) ၼင်ႇႁိုဝ် Software ႁဝ်း ပေႃးတေတူၺ်းသႅၼ်ႈသႂ် မိူၼ်ၼင်ႇ App တူဝ်တႄႉၼၼ်ႉယဝ်ႉၶႃႈ။

---