## Lesson 7: Styling Basics
**(လွၵ်းလၢႆးမႄးသီ Background, Foreground လႄႈ Padding)**

### 1. သီ Background လႄႈ Foreground (Colors)
ၼႂ်း Tkinter ၼႆႉ ႁဝ်းမႄးသီ Widgets လႆႈငၢႆႈငၢႆႈၶႃႈ။
* **`bg` (Background):** သီပိုၼ်ႉလင်ၶွင် Widget။
* **`fg` (Foreground):** သီလိၵ်ႈ (Text Color)။

**လၢႆးလိူၵ်ႈၸႂ်ႉသီ:**
1.  **ၸိုဝ်ႈသီ (Color Names):** မိူၼ်ၼင်ႇ `"red"`, `"blue"`, `"green"`, `"white"`, `"black"`။
2.  **Hex Codes:** ၸႂ်ႉတႃႇလႆႈသီဢၼ် "Professional" လိူဝ်ၵဝ်ႇ။ တူဝ်ယၢင်ႇ: `"#2d5a27"`။

---

### 2. ၸတ်းဢွင်ႈပဝ်ႇ (Internal & External Padding)
ၼင်ႇႁိုဝ် Widgets ႁဝ်း တေဢမ်ႇၵႂႃႇၸပ်းၵၼ်ႁႅင်းၼၼ်ႉ ႁဝ်းတေလႆႈပၼ် Padding ၶႃႈ။
* **`padx`, `pady`:** ပၼ်တီႈပဝ်ႇ **ၽၢႆႇၼွၵ်ႈ** Widget (ႁႂ်ႈ Widgets ႁၢင်ႇၵၼ်)။
* **`ipadx`, `ipady`:** ပၼ်တီႈပဝ်ႇ **ၽၢႆႇၼႂ်း** Widget (ႁဵတ်းႁႂ်ႈတူဝ် Widget ၼၼ်ႉ ယႂ်ႇၶိုၼ်ႈမႃး)။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေသၢင်ႈ Label ဢၼ်မီးသီ လႄႈ Padding ႁၢင်ႈလီလီၶႃႈ။

```python
import tkinter as tk

class StylingApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Styling Lesson")
        self.geometry("400x400")
        
        # တင်ႈသီ Background ၶွင် Window လူင်
        self.configure(bg="#f8f9fa") 

        self.setup_ui()

    def setup_ui(self):
        # 1. Label ဢၼ်ပႃး Background လႄႈ Foreground
        styled_label = tk.Label(
            self, 
            text="ႁူိၼ်းသွၼ်လိၵ်ႈ ထုင်ႉမၢဝ်းၶမ်း",
            font=("Panglong", 18, "bold"),
            bg="#2d5a27",  # သီၶဵဝ်
            fg="white"      # သီလိၵ်ႈၶၢဝ်
        )
        
        # 2. ၸႂ်ႉ ipadx/ipady ႁႂ်ႈတူဝ် Label ယႂ်ႇၶိုၼ်ႈမႃး (Internal)
        # ၸႂ်ႉ padx/pady ႁႂ်ႈမၼ်းႁၢင်ႇတင်း Window (External)
        styled_label.pack(ipadx=20, ipady=10, padx=20, pady=20)

        # 3. Label ယူဝ်းယူဝ်း တႃႇတူၺ်းလွင်ႈပႅၵ်ႇပိူင်ႈ
        normal_label = tk.Label(
            self, 
            text="ပၢင်သွၼ် Python GUI",
            font=("NamKhone", 14),
            bg="#f8f9fa",
            fg="#333333"
        )
        normal_label.pack(pady=10)

if __name__ == "__main__":
    app = StylingApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.configure(bg="#f8f9fa")`**: ဢၼ်ၼႆႉ ပဵၼ်ၵၢၼ်ပိၼ်ႇသီ Window လူင် (Root) ႁဝ်းၶႃႈ။
* **`ipadx=20, ipady=10`**: ႁဵတ်းႁႂ်ႈလိၵ်ႈၼႂ်း Label မီးပိုၼ်ႉတီႈႁၢင်ႇဝႆႉ (မိူၼ်ၼင်ႇ Button ႁၢင်ႈလီလီ)။
* **Hex Color (`#2d5a27`)**: ႁဝ်းၸၢင်ႈၵႂႃႇႁႃသီ (Hex Color Picker) ၼႂ်း Google သေ ဢဝ်မႃးၸႂ်ႉ တင်ႇၵျိူၵ်ႈၸႂ်။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Shan Digital ID Card** ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ `bg` မိူၼ်ၵၼ်တင်း Window လႄႈ Label ၼင်ႇႁိုဝ် Software ႁဝ်း ပေႃးတေတူၺ်း "Smooth" လႄႈ "Clean" ၼၼ်ႉယဝ်ႉၶႃႈ။

---