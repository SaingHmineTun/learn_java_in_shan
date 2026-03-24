## Lesson 16: Project - Building 'Quick-Shan Translator'

**(ပၢင်သွၼ်: တႅမ်ႈ Software ပိၼ်ႇလိၵ်ႈတႆး ဢၼ်ၸႂ်ႉတိုဝ်းလႆႈတႄႉ)**

### 1. ပိူင်ဝၢင်း Software (Application Design)

ႁဝ်းတေၸတ်းၼႃႈတႃ Software ႁဝ်းလူၺ်ႈ **Nested Frames** ၼင်ႇၼႆၶႃႈ:

* **Top Frame:** တႃႇႁူဝ်ၶေႃႈ (Title)။
* **Middle Frame:** တႃႇလွၵ်း Entry (ႁပ်ႉလိၵ်ႈဢင်းၵိတ်ႉ) လႄႈ Button (ပိၼ်ႇလိၵ်ႈ)။
* **Bottom Frame:** တႃႇလွၵ်း Text (ၼႄၽွၼ်းလႆႈလိၵ်ႈတႆး)။

---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)

ၸၢမ်းတႅမ်ႈ Code ဢၼ်ပဵၼ် Project ယႂ်ႇၼႆႉ ၼႂ်း PyCharm ၶႃႈ။

```python
import tkinter as tk

class QuickShanApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Quick Shan Translator v1.0")
        self.geometry("500x450")
        self.configure(bg="#f5f5f5")

        # 1. ပပ်ႉလိၵ်ႈ (Dictionary Data)
        self.data = {
            "hello": "မႂ်ႇသုင်",
            "thank you": "ယိၼ်းၸူမ်းယဝ်ႉ",
            "teacher": "ၸဝ်ႈၶူး / သြႃႇ",
            "student": "လုၵ်ႈႁဵၼ်း",
            "computer": "ၶွမ်ႇပိဝ်ႇတႃႇ",
            "python": "ၽႃႇသႃႇပၢႆးၸၢၵ်ႈ Python"
        }

        self.setup_ui()

    def setup_ui(self):
        # --- Top Frame (Header) ---
        top_frame = tk.Frame(self, bg="#2d5a27", pady=10)
        top_frame.pack(fill="x")
        tk.Label(top_frame, text="Quick-Shan Translator", 
                 font=("Arial", 16, "bold"), fg="white", bg="#2d5a27").pack()

        # --- Middle Frame (Input Area) ---
        mid_frame = tk.Frame(self, bg="#f5f5f5", pady=20)
        mid_frame.pack()

        tk.Label(mid_frame, text="Enter English Word:", bg="#f5f5f5").pack()
        self.input_entry = tk.Entry(mid_frame, font=("Arial", 14), width=30)
        self.input_entry.pack(pady=10)

        # Button တႃႇပိၼ်ႇလိၵ်ႈ
        tk.Button(mid_frame, text="Translate / ပိၼ်ႇလိၵ်ႈ", font=("NamKhone", 12),
                  command=self.translate_action, bg="#2d5a27", fg="white", 
                  padx=20, pady=5).pack()

        # --- Bottom Frame (Output Area) ---
        bottom_frame = tk.Frame(self, bg="#f5f5f5", pady=10)
        bottom_frame.pack(fill="both", expand=True, padx=30)

        tk.Label(bottom_frame, text="Shan Result:", bg="#f5f5f5").pack(anchor="w")
        self.output_text = tk.Text(bottom_frame, font=("Panglong", 14), height=6, bg="white")
        self.output_text.pack(fill="both", pady=5)

    def translate_action(self):
        # 1. ဢဝ်လိၵ်ႈမႃး လႄႈ မႄး (String Manipulation)
        word = self.input_entry.get().strip().lower()

        # 2. ပၢႆးဝူၼ်ႉ (Logic)
        if word in self.data:
            result = self.data[word]
        else:
            result = "--- ဢမ်ႇႁၼ်ၼႂ်းပပ်ႉလိၵ်ႈၶႃႈ ---"

        # 3. ၼႄၽွၼ်းလႅပ်ႈ (Update UI)
        self.output_text.config(state="normal") # ပိုတ်ႇႁႂ်ႈမႄးလႆႈ
        self.output_text.delete("1.0", tk.END)  # ယႃႉလိၵ်ႈၵဝ်ႇပႅတ်ႈ
        self.output_text.insert("1.0", result)  # သႂ်ႇလိၵ်ႈမႂ်ႇ
        self.output_text.config(state="disabled") # ပိၵ်ႉႁႂ်ႈဢၢၼ်ႇလႆႈၵူၺ်း

if __name__ == "__main__":
    app = QuickShanApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)

* **`self.data`**: ဢၼ်ၼႆႉ ပဵၼ် "Brain" ၶွင် App။ ႁဝ်းၸၢင်ႈ ထႅမ်သႂ်ႇၶေႃႈၵႂၢမ်း တင်းၼမ်လႆႈၶႃႈ။
* **`state="disabled"`**: ႁဝ်းၸႂ်ႉၼႂ်း Text Widget ၼင်ႇႁိုဝ် User ပေႃးတေဢမ်ႇၵႂႃႇတႅမ်ႈလိၵ်ႈလု (Edit)
  တီႈၽွၼ်းလႆႈၵၢၼ်ပိၼ်ႇလိၵ်ႈၼၼ်ႉယဝ်ႉ။
* **String Manipulation**: ၵၢၼ်ၸႂ်ႉ `.strip().lower()` တေၸွႆႈႁႂ်ႈ Software ႁဝ်း ဢမ်ႇၽိတ်းငၢႆႈ မိူဝ်ႈ
  User တႅမ်ႈလိၵ်ႈပႅၵ်ႇပိူင်ႈၵၼ်ၶႃႈ။

---