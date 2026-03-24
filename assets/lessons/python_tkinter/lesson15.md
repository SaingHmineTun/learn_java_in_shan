## Lesson 15: String Manipulation
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် လိၵ်ႈတႆး လႄႈ လိၵ်ႈဢင်းၵိတ်ႉ)**

### 1. ပဵၼ်သင်လူဝ်ႇ Processing?
မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈၶဝ်ႈမႃးၼႂ်း **Entry** ဢမ်ႇၼၼ် **Text Widget** ၼၼ်ႉ မၼ်းၵႆႉပႃးမႃး:
* **Spaces:** ပိုၼ်ႉတီႈပဝ်ႇ ၽၢႆႇၼႃႈ လႄႈ ၽၢႆႇလင်။
* **Cases:** တူဝ်လိၵ်ႈဢင်းၵိတ်ႉ တူဝ်ယႂ်ႇ (Uppercase) လႄႈ တူဝ်လဵၵ်း (Lowercase)။
* **Newlines:** ၵၢၼ်ၶိုၼ်ႈထႅဝ်မႂ်ႇ ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ။

သင်ႁဝ်းဢမ်ႇမႄးၸိူဝ်းၼႆႉပႅတ်ႈၼႆ **Dictionary** ႁဝ်းတေႁႃလိၵ်ႈဢမ်ႇႁၼ် (Search Fail) ၶႃႈယဝ်ႉ။

---

### 2. Methods ဢၼ်လွင်ႈယႂ်ႇ (Core Methods)
1.  **`.strip()`**: ၸႂ်ႉတႃႇတတ်းပႅတ်ႈ ပိုၼ်ႉတီႈပဝ်ႇ (Spaces) ၽၢႆႇၼႃႈ/ၽၢႆႇလင်။
2.  **`.lower()` / `.upper()`**: ပိၼ်ႇလိၵ်ႈဢင်းၵိတ်ႉ ႁႂ်ႈပဵၼ်တူဝ်လဵၵ်း/တူဝ်ယႂ်ႇ ၸွမ်းၵၼ်တင်းသဵင်ႈ။
3.  **`.replace()`**: ၸႂ်ႉတႃႇလႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈၼိုင်ႈတူဝ် ပဵၼ်ထႅင်ႈတူဝ်ၼိုင်ႈ။



---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေႁဵတ်း Software ဢၼ်မႄးလိၵ်ႈ (Clean Text) ၶႃႈၼႃ။

```python
import tkinter as tk

class StringProcessApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 15: String Processing")
        self.geometry("450x350")
        
        self.setup_ui()

    def setup_ui(self):
        tk.Label(self, text="တႅမ်ႈလိၵ်ႈတႆး ဢမ်ႇၼၼ် ဢင်းၵိတ်ႉ:", font=("NamKhone", 12)).pack(pady=10)

        self.input_entry = tk.Entry(self, font=("Panglong", 12), width=30)
        self.input_entry.pack(pady=5)

        # Function တႃႇမႄးလိၵ်ႈ
        def process_text():
            raw_text = self.input_entry.get()
            
            # 1. တတ်း Space ၼႃႈ/လင်
            # 2. ပိၼ်ႇပဵၼ်တူဝ်လဵၵ်း (တႃႇဢင်းၵိတ်ႉ)
            clean_text = raw_text.strip().lower()

            # 3. တူဝ်ယၢင်ႇ: Replace (လႅၵ်ႈလၢႆႈလိၵ်ႈ)
            # (တူဝ်ယၢင်ႇ: သင် User တႅမ်ႈ "apple" ႁႂ်ႈပိၼ်ႇပဵၼ် "မၢၵ်ႇၵႅမ်ႈၶွင်ႇ")
            if clean_text == "apple":
                clean_text = clean_text.replace("apple", "မၢၵ်ႇၵႅမ်ႈၶွင်ႇ")

            self.result_label.config(text=f"လိၵ်ႈဢၼ်မႄးယဝ်ႉ: {clean_text}")

        tk.Button(self, text="မႄးလိၵ်ႈ (Process)", command=process_text).pack(pady=15)

        self.result_label = tk.Label(self, text="", font=("Panglong", 14), fg="blue")
        self.result_label.pack(pady=20)

if __name__ == "__main__":
    app = StringProcessApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`raw_text.strip()`**: တေၸွႆႈႁႂ်ႈ User သင်တႅမ်ႈ `" hello "` (မီး Space) ၼႆ မၼ်းတေၵိုတ်း `"hello"` ၵူၺ်းသေ ႁဵတ်းႁႂ်ႈႁႃၼႂ်း Dictionary ငၢႆႈၶႃႈ။
* **`lower()`**: ပဵၼ်လွင်ႈယႂ်ႇ တႃႇႁပ်ႉ Input ဢင်းၵိတ်ႉ။ ဢမ်ႇဝႃႈ User တေတႅမ်ႈ "HELLO", "Hello", ဢမ်ႇၼၼ် "hello" ၼႆ မၼ်းတေပဵၼ် "hello" မိူၼ်ၵၼ်တင်းသဵင်ႈၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Quick-Shan Translator** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ String Manipulation တႃႇ:
1.  မႄးလိၵ်ႈဢင်းၵိတ်ႉ (Input) ႁႂ်ႈသႅၼ်ႈသႂ်။
2.  ၸတ်းၵၢၼ်လိၵ်ႈတႆး (Output) ႁႂ်ႈမၼ်းဢွၵ်ႇမႃး ႁၢင်ႈလီလီ။

---