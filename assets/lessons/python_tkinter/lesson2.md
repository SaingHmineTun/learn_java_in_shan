## Lesson 2: The OOP Approach: Creating the App Class
**(လၢႆးတႅမ်ႈ GUI ပိူင် OOP: သၢင်ႈ App Class ၶိုၼ်ႈမႃး)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ OOP? (Why use OOP?)
မိူဝ်ႈၼႂ်း Lesson 1 ၼၼ်ႉ ႁဝ်းတႅမ်ႈ Code ၵႂႃႇၸွမ်းထႅဝ်မၼ်းယူဝ်းယူဝ်း (Procedural)။ ၵူၺ်းၵႃႈ သင် Software ႁဝ်းယႂ်ႇမႃး မီးၼႃႈတႃတင်းၼမ်ၼႆ ၸႂ်ႉ **Class** တေငၢႆႈလိူဝ်ၶႃႈ။
* **Organization:** သိမ်း Widgets တင်းၼမ်ဝႆႉၼႂ်းတီႈလဵဝ်ၵၼ်။
* **Reusability:** ၸႂ်ႉၶိုၼ်းလႆႈငၢႆႈ (မိူၼ်ၼင်ႇ Widget ၼႂ်း Flutter)။
* **State Management:** သိမ်း Data (Variables) ဝႆႉၼႂ်း `self` သေ ႁွင်ႉၸႂ်ႉလႆႈၵူႈတီႈ။

---

### 2. လွၵ်းလၢႆးသၢင်ႈ App Class (How to build it)
ၼႂ်း Tkinter ၼႆႉ ႁဝ်းတေၸႂ်ႉ **Inheritance** (လၢႆးသိုပ်ႇၸိူဝ်ႉ) ဢဝ်ဝႆႉၶႃႈ။ 
ႁဝ်းတေႁဵတ်းႁႂ်ႈ Class ႁဝ်း ပဵၼ်တူဝ်ၼႃႈတႃ (`tk.Tk`) လူင်မၼ်းၵမ်းလဵဝ်။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈ ၼႂ်း PyCharm ၶႃႈ။ မၼ်းတေတူၺ်း "Professional" လိူဝ်ၵဝ်ႇၼမ်ၶႃႈ။

```python
import tkinter as tk

# သၢင်ႈ Class ဢၼ်သိုပ်ႇပူၺ် (Inherit) မႃးတီႈ tk.Tk
class MyFirstApp(tk.Tk):
    def __init__(self):
        super().__init__() # ႁွင်ႉဢဝ် လွင်ႈႁဵတ်းၵၢၼ် Window လူင်မႃး

        # --- Settings Window ---
        self.title("TMK - Lesson 2 OOP")
        self.geometry("400x300")

        # --- Create Widgets ---
        self.setup_ui()

    def setup_ui(self):
        """တီႈၼႆႉ ပဵၼ်တီႈသႂ်ႇ Widgets တင်းၼမ်"""
        self.label = tk.Label(
            self, 
            text="မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ်လၢႆး OOP ယဝ်ႉ။", 
            font=("NamKhone", 14),
            fg="#1a1a1a"
        )
        self.label.pack(pady=50)

# --- Start Application ---
if __name__ == "__main__":
    app = MyFirstApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`class MyFirstApp(tk.Tk):`** : ႁဝ်းႁဵတ်းႁႂ်ႈ App ႁဝ်း ၵိူတ်ႇမႃးပဵၼ် Window ၵမ်းလဵဝ်။
* **`super().__init__():`** : ဢၼ်ၼႆႉ ပဵၼ်ၵၢၼ်ပိုတ်ႇ Window လူင်ၶိုၼ်ႈမႃး။ သင်ဢမ်ႇသႂ်ႇထႅဝ်ၼႆႉ Window တေဢမ်ႇဢွၵ်ႇ။
* **`self`** : ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ။ `self` မၢႆထိုင် "တူဝ် App ႁဝ်း"။ မိူဝ်ႈႁဝ်းသၢင်ႈ Label ႁဝ်းသႂ်ႇ `self` ပဵၼ် Parent မၼ်းၼၼ်ႉယဝ်ႉ။
* **`if __name__ == "__main__":`** : ဢၼ်ၼႆႉ ပဵၼ်လၢႆးတႅမ်ႈ Standard Python ႁႂ်ႈ Code ႁဝ်း Run မိူဝ်ႈႁဝ်းပိုတ်ႇ File ၼႆႉၵူၺ်း။

---