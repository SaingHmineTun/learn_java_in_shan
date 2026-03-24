## Lesson 13: The Text Widget
**(လွၵ်းလၢႆးၸႂ်ႉ Text Widget တႃႇၼႄလိၵ်ႈလၢႆထႅဝ်)**

### 1. Text Widget ပဵၼ်သင်? (What is a Text Widget?)
**Text Widget** ၼႆႉ ပဵၼ်လွၵ်းတႅမ်ႈလိၵ်ႈ ဢၼ်ယႂ်ႇလိူဝ် Entry ၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ:
* ၼႄၽွၼ်းလႆႈ ၵၢၼ်ပိၼ်ႇလိၵ်ႈ (Translation Output)။
* ႁပ်ႉဢဝ်လိၵ်ႈဢၼ်ယၢဝ်းယၢဝ်း (Paragraphs)။
* မႄးသီ (Color) လႄႈ မႄး Font ၼႂ်းလိၵ်ႈ ပႅၵ်ႇပိူင်ႈၵၼ်လႆႈၶႃႈ။

### 2. လွၵ်းလၢႆးၸႂ်ႉတိုဝ်း (The .insert() and .delete() methods)
ၼႂ်း Text Widget ၼႆႉ လၢႆးသႂ်ႇလိၵ်ႈ လႄႈ လၢႆးယႃႉလိၵ်ႈ မၼ်းတေပႅၵ်ႇပိူင်ႈတင်း Entry ဢိတ်းၼိုင်ႈၶႃႈ။ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ **Index** (တီႈယူႇလိၵ်ႈ) ၸိူင်ႉၼင်ႇ `"1.0"` (ထႅဝ် 1, တူဝ်မၢႆ 0) ၶႃႈ။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေသၢင်ႈလွၵ်း Text ဢၼ်ၼႄပၼ် ၽွၼ်းလႆႈလၢႆလၢႆထႅဝ်ၶႃႈၼႃ။

```python
import tkinter as tk

class TextWidgetApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 13: Text Widget")
        self.geometry("500x400")
        
        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="ၽွၼ်းလႆႈၵၢၼ်ပိၼ်ႇလိၵ်ႈ (Translation):", font=("NamKhone", 12)).pack(pady=10)

        # 1. သၢင်ႈ Text Widget (Height = 10 ထႅဝ်)
        self.output_text = tk.Text(self, font=("Panglong", 12), height=10, width=50)
        self.output_text.pack(pady=5, padx=20)

        # 2. Function တႃႇထႅမ်လိၵ်ႈၶဝ်ႈၵႂႃႇ
        def add_text():
            # "1.0" မၢႆထိုင် ထႅဝ် 1 တူဝ်မၢႆ 0 (တႄႇႁူဝ်မၼ်း)
            self.output_text.insert("1.0", "မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ်လိၵ်ႈထႅဝ်ၼိုင်ႈ။\n")
            self.output_text.insert(tk.END, "ၼႆႉပဵၼ်လိၵ်ႈထႅဝ်သွင် ဢၼ်မႃးသိုပ်ႇၽၢႆႇတႂ်ႈ။\n")

        # 3. Function တႃႇယႃႉလိၵ်ႈပႅတ်ႈတင်းသဵင်ႈ
        def clear_text():
            self.output_text.delete("1.0", tk.END)

        # Buttons
        btn_frame = tk.Frame(self)
        btn_frame.pack(pady=20)

        tk.Button(btn_frame, text="ထႅမ်လိၵ်ႈ", command=add_text).pack(side="left", padx=10)
        tk.Button(btn_frame, text="ယႃႉပႅတ်ႈ", command=clear_text).pack(side="left", padx=10)

if __name__ == "__main__":
    app = TextWidgetApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`tk.Text(..., height=10)`**: တင်ႈၵႃႈတင်းသုင်ပဵၼ် "ထႅဝ်" (Lines) ၶႃႈ။
* **`"1.0"`**: ပဵၼ် Index ဢၼ်မၢႆထိုင် တူဝ်လိၵ်ႈတူဝ်ထူၼ်ႈၼိုင်ႈ ၼႂ်းထႅဝ်ထူၼ်ႈၼိုင်ႈၶႃႈ။
* **`tk.END`**: မၢႆထိုင် တီႈသုတ်းၶွင်လိၵ်ႈတင်းသဵင်ႈ ဢၼ်မီးၼႂ်းလွၵ်းၼၼ်ႉၶႃႈ။
* **`\n`**: လူဝ်ႇသႂ်ႇတႃႇႁႂ်ႈမၼ်း "ၶိုၼ်ႈထႅဝ်မႂ်ႇ" (New Line) ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Quick-Shan Translator** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Text Widget တႃႇၼႄ "တီႈပွင်ႇ" (Meaning) ဢၼ်ပိၼ်ႇယဝ်ႉၼၼ်ႉၶႃႈ။
* **Read-Only**: သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ User ဢၢၼ်ႇလႆႈၵူၺ်းသေ တႅမ်ႈလိၵ်ႈၶဝ်ႈဢမ်ႇလႆႈၼႆ ႁဝ်းမၵ်းမၼ်ႈ `state="disabled"` လႆႈၶႃႈၼႃ။ (ၵူၺ်းၵႃႈ မိူဝ်ႈတေထႅမ်လိၵ်ႈၶဝ်ႈ လူဝ်ႇပိၼ်ႇပဵၼ် `"normal"` ၵွၼ်ႇၶႃႈ)

---