## Lesson 3: Window Configuration
**(လွင်ႈမၵ်းမၼ်ႈ Window: Title, Geometry, လႄႈ Resizing)**

### 1. လွင်ႈမၵ်းမၼ်ႈ ပိုၼ်ႉထၢၼ် (Basic Config)
မိူဝ်ႈႁဝ်းသၢင်ႈ Window ၶိုၼ်ႈမႃးယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇမႄးထႅမ်လွင်ႈတၢင်းမၼ်း 
ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတိုဝ်း ပေႃးတေႁူႉဝႃႈ မၼ်းပဵၼ် Software သင်ၶႃႈ။

* **Title:** တႅမ်ႈလိၵ်ႈသႂ်ႇဝႆႉ တီႈၼိူဝ်သုတ်း (Title Bar)။
* **Geometry:** မၵ်းမၼ်ႈ တင်းၵႂၢင်ႈ လႄႈ တင်းသုင် (Width x Height)။
* **Resizable:** မၵ်းမၼ်ႈဝႃႈ တေပၼ်ၵူၼ်းၸႂ်ႉတိုဝ်း ၸၼ်ႁႂ်ႈမၼ်းယႂ်ႇ/လဵၵ်း လႆႈႁႃႉ?

---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေမႄးထႅမ်ၼႂ်း `__init__` မၼ်းၶႃႈ။

```python
import tkinter as tk

class ConfigApp(tk.Tk):
    def __init__(self):
        super().__init__()

        # 1. တင်ႈႁူဝ်ၶေႃႈ Software (Title)
        self.title("TMK Student Manager v1.0")

        # 2. တင်ႈတင်းၵႂၢင်ႈ x တင်းသုင် (Width x Height)
        # မိူၼ်ၼင်ႇ: "500x400" (ဢမ်ႇလူဝ်ႇသႂ်ႇ ပႃႇၵၢင်)
        self.geometry("600x400")

        # 3. တင်ႈၵႃႈ ဢမ်ႇပၼ်ၸၼ်ႁႂ်ႈယႂ်ႇ/လဵၵ်း (Resizable)
        # (width=False, height=False) -> ၸၼ်ဢမ်ႇလႆႈတင်းသွင်ၽၢႆႇ
        self.resizable(False, False)

        # 4. တင်ႈသီ Background ၼႃႈတႃ Software
        self.configure(bg="#f0f0f0") 

        self.setup_ui()

    def setup_ui(self):
        label = tk.Label(self, text="ၼႃႈတႃ Software ႁဝ်း တင်ႈၵႃႈဝႆႉယဝ်ႉၶႃႈ!", bg="#f0f0f0")
        label.pack(pady=100)

if __name__ == "__main__":
    app = ConfigApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.title("...")`**: သႂ်ႇလိၵ်ႈလႆႈတင်း လိၵ်ႈဢင်းၵိတ်ႉ လႄႈ လိၵ်ႈတႆးၶႃႈ။
* **`self.geometry("600x400+100+100")`**:
    * `600x400` ပဵၼ်တင်းယႂ်ႇ (Size)။
    * `+100+100` ပဵၼ်တီႈတင်ႈ (Position) တီႈၼိူဝ်ၼႃႈၸေႃး (X, Y) ၶႃႈ။
* **`self.resizable(True, False)`**: သင်ႁဵတ်းၼႆ မၢႆထိုင်ဝႃႈ ပၼ်ၸၼ်ႁႂ်ႈ "ၵႂၢင်ႈ" လႆႈယူႇ၊ ၵူၺ်းၵႃႈ "သုင်" တႄႉ ၸၼ်ဢမ်ႇလႆႈၶႃႈ။
* **`self.configure(bg="color")`**: ၸႂ်ႉတႃႇတင်ႈသီ Background။ ၸႂ်ႉလႆႈတင်းသီ (Red, Blue) ဢမ်ႇၼၼ် Hex Code (#FFFFFF) ၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ပိူင်ယႂ်ႇမၼ်းၼႂ်း Lesson ၼႆႉ တႃႇတေႁဵတ်း **Shan Digital ID Card** ၼၼ်ႉ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ `resizable(False, False)` ဝႆႉၶႃႈ။ ၼင်ႇႁိုဝ် ႁူပ်ႉၶႅပ်းႁၢင်ႈ လႄႈ လိၵ်ႈႁဝ်း ပေႃးတေဢမ်ႇလုၵ်ႉ (Distorted) မိူဝ်ႈၵူၼ်းၸႂ်ႉတိုဝ်း ၸၼ်ၼႃႈတၢင်ႇမၼ်းၼၼ်ႉယဝ်ႉၶႃႈ။

---