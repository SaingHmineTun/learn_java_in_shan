## Lesson 4: Mastering the Grid Manager
**(လွၵ်းလၢႆးဝၢင်း Widgets: Rows လႄႈ Columns)**

### 1. Grid Manager ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်? (What is Grid?)
မိူဝ်ႈႁဝ်းၸႂ်ႉ `.pack()` ၼၼ်ႉ Widgets ႁဝ်းတေလႆႈဝၢင်းသိုပ်ႇၵၼ် လူင်းမႃးတေႃႇတႂ်းၵူၺ်း။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်းၸႂ်ႉ **`.grid()`** ၼႆ ႁဝ်းတေၸတ်းၵၢၼ်လႆႈမိူၼ်ၼင်ႇ ၼႃႈၸေႃး Excel ၶႃႈ။
* **Row:** ၸတ်းဝၢင်းၸွမ်း ထႅဝ်ၼွၼ်း (Row 0, 1, 2, ...)
* **Column:** ၸတ်းဝၢင်းၸွမ်း ထႅဝ်တင်ႈ (Column 0, 1, 2, ...)



---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ 
ႁဝ်းတေဝၢင်း Label ႁႂ်ႈမၼ်းပဵၼ် 2 ထႅဝ် 2 လွၵ်းၶႃႈၼႃ။

```python
import tkinter as tk

class GridLayoutApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Grid Manager Lesson")
        self.geometry("400x300")
        
        self.setup_ui()

    def setup_ui(self):
        # သၢင်ႈ Labels တႃႇၸမ်းဝၢင်း Grid
        # Row 0
        label1 = tk.Label(self, text="Row 0, Col 0", bg="yellow", width=15)
        label1.grid(row=0, column=0, padx=5, pady=5)

        label2 = tk.Label(self, text="Row 0, Col 1", bg="green", width=15)
        label2.grid(row=0, column=1, padx=5, pady=5)

        # Row 1
        label3 = tk.Label(self, text="Row 1, Col 0", bg="red", width=15)
        label3.grid(row=1, column=0, padx=5, pady=5)

        label4 = tk.Label(self, text="Row 1, Col 1", bg="orange", width=15)
        label4.grid(row=1, column=1, padx=5, pady=5)

        # Row 2 - Column Span (ဝၢင်းၶၢမ်ႈလွၵ်း)
        label5 = tk.Label(self, text="Row 2, Column Span 2", bg="lightblue")
        label5.grid(row=2, column=0, columnspan=2, sticky="we", padx=5, pady=5)

if __name__ == "__main__":
    app = GridLayoutApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`row` / `column`**: မၵ်းမၼ်ႈဝႃႈ တေဝၢင်းဝႆႉတီႈ လွၵ်းလႂ် (တႄႇဢဝ် 0 မႃး)။
* **`padx` / `pady`**: ပၼ်တီႈပဝ်ႇ (Padding) ၽၢႆႇသၢႆႉ/ၶႂႃ လႄႈ ၽၢႆႇၼိူဝ်/တႂ်ႈ ႁႂ်ႈ Widgets ဢမ်ႇပေႃးၸပ်းၵၼ်။
* **`columnspan`**: ဝၢင်းၶၢမ်ႈလွၵ်း (Column)။ တူဝ်ယၢင်ႇ: သင်ၸႂ်ႉ `columnspan=2` မၢႆထိုင်ဝႃႈ မၼ်းတေယႂ်ႇၵႂႃႇ 2 လွၵ်းၶႃႈ။
* **`sticky`**: မၵ်းမၼ်ႈဝႃႈ တေႁႂ်ႈ Widgets ႁဝ်း ၸပ်းၵႂႃႇၽၢႆႇလႂ် (n=ၼိူဝ်, s=တႂ်ႈ, w=သၢႆႉ, e=ၶႂႃ)။ သင်ၸႂ်ႉ `sticky="we"` မၢႆထိုင်ဝႃႈ ႁႂ်ႈမၼ်းယႂ်ႇတဵမ် လွၵ်းၽၢႆႇသၢႆႉတင်းၽၢႆႇၶႂႃၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Shan Digital ID Card** ၼၼ်ႉ လွၵ်းလၢႆး **Grid** ၼႆႉ ပဵၼ်ဢၼ်လွင်ႈယႂ်ႇလိူဝ်ပိူၼ်ႈၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉမၼ်းသေ ဝၢင်းၶႅပ်းႁၢင်ႈဝႆႉ ၽၢႆႇၼိုင်ႈ၊ ဝၢင်းလိၵ်ႈဝႆႉ ၽၢႆႇၼိုင်ႈ ႁႂ်ႈမၼ်းတူၺ်းငၢႆႈ လႄႈ ႁၢင်ႈလီၼၼ်ႉယဝ်ႉၶႃႈ။

---