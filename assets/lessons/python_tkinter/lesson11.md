## Lesson 11: Logic with Functions
**(လွၵ်းလၢႆးၵွင်ႉ UI ၸွမ်း Python Logic)**

### 1. Connecting UI to Code
မိူဝ်ႈႁဝ်းတႅမ်ႈ GUI ၼၼ်ႉ ႁဝ်းမီးသွင်ၽၢႆႇၶႃႈ:
1.  **UI (The Face):** ၼႃႈတႃ Software (Entry, Button, Label)။
2.  **Logic (The Brain):** ပၢႆးဝူၼ်ႉ Python (If-Else, Lists, Dictionaries)။

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေသွၼ်လွင်ႈဢဝ် လိၵ်ႈဢင်းၵိတ်ႉ ဢၼ် User တႅမ်ႈၶဝ်ႈမႃးၼၼ်ႉ မႃးၵူတ်ႇထတ်း (Check) ၸွမ်း **Dictionary** သေ ပိၼ်ႇပဵၼ်လိၵ်ႈတႆးၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေႁဵတ်း "Mini-Translator" ဢွၼ်ႇၶႃႈၼႃ။

```python
import tkinter as tk

class LogicApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 11: Logic & UI")
        self.geometry("450x300")
        
        # 1. သၢင်ႈ Dictionary တႃႇသိမ်းၶေႃႈၵႂၢမ်း (The Brain)
        self.dictionary = {
            "hello": "မႂ်ႇသုင်",
            "python": "ၽႃႇသႃႇပၢႆးၸၢၵ်ႈ Python",
            "shan": "တႆး",
            "school": "ႁူင်းႁဵၼ်းလိၵ်ႈ"
        }

        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တႅမ်ႈလိၵ်ႈဢင်းၵိတ်ႉ (hello, shan, school):", font=("Arial", 11)).pack(pady=10)

        self.input_entry = tk.Entry(self, font=("Arial", 12), width=25)
        self.input_entry.pack(pady=5)

        # 2. Function ဢၼ်မီး Logic (The Engine)
        def translate_logic():
            word = self.input_entry.get().lower().strip() # ဢဝ်လိၵ်ႈမႃး လႄႈ မႄးႁႂ်ႈပဵၼ်တူဝ်လဵၵ်း
            
            # Logic: ၵူတ်ႇထတ်းဝႃႈ မီးၼႂ်း Dictionary ႁဝ်းႁႃႉ?
            if word in self.dictionary:
                result = self.dictionary[word]
                self.result_label.config(text=f"တီႈပွင်ႇ: {result}", fg="#2d5a27")
            else:
                self.result_label.config(text="ဢမ်ႇႁၼ်ၼႂ်းပပ်ႉလိၵ်ႈၶႃႈ!", fg="red")

        # 3. Button တႃႇသင်ႇ Run Logic
        tk.Button(self, text="ပိၼ်ႇလိၵ်ႈ", command=translate_logic, bg="#2d5a27", fg="white").pack(pady=15)

        self.result_label = tk.Label(self, text="", font=("Panglong", 16, "bold"))
        self.result_label.pack(pady=10)

if __name__ == "__main__":
    app = LogicApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`lower().strip()`**: ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ။ မၼ်းတေမႄးလိၵ်ႈ ႁႂ်ႈပဵၼ်တူဝ်လဵၵ်းတင်းသဵင်ႈ လႄႈ ယႃႉပႅတ်ႈ "ပိုၼ်ႉတီႈဝၢင်ႇ" (Spaces) ၽၢႆႇၼႃႈ/ၽၢႆႇလင် ၼင်ႇႁိုဝ် Logic ႁဝ်းပေႃးတေဢမ်ႇၽိတ်းၶႃႈ။
* **`if word in self.dictionary`**: ဢၼ်ၼႆႉ ပဵၼ်ၵၢၼ်ၸႂ်ႉ Logic တႅပ်းတတ်း။ သင်မီးၼႆ ႁႂ်ႈဢဝ် "Value" မၼ်းမႃးၼႄ၊ သင်ဢမ်ႇမီးၼႆ ႁႂ်ႈၼႄၶေႃႈၵႂၢမ်း Warning ၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Quick-Shan Translator** တူဝ်တႄႉမၼ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Logic ဢၼ်ယႂ်ႇလိူဝ်ၼႆႉ (မိူၼ်ၼင်ႇ လူတ်ႇဢဝ် Data မႃးတီႈ JSON ဢမ်ႇၼၼ် File) ၵူၺ်းၵႃႈ ပိုၼ်ႉထၢၼ်မၼ်း ပဵၼ်လၢႆးၵွင်ႉ Button ၸွမ်း Function ၸိူင်ႉၼႆယဝ်ႉၶႃႈ။

---