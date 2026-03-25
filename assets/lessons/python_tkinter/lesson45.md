## Lesson 45: Form Validation
**(လွၵ်းလၢႆးၵူတ်ႇထတ်း ဢမ်ႇႁႂ်ႈ User သႂ်ႇၶေႃႈမုၼ်းၽိတ်းပိူင်)**

### 1. Form Validation ပဵၼ်သင်?
**Validation** မၢႆထိုင် ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း မိူဝ်ႈပႆႇသူင်ႇၵႂႃႇသိမ်းၼႂ်း Database ၶႃႈ။
* **Empty Check:** တူၺ်းဝႃႈ User ဝႆႉလွၵ်းပဝ်ႇ (Blank) ဝႆႉႁႃႉ?
* **Data Type Check:** တူၺ်းဝႃႈ လွၵ်းမၢႆၼပ်ႉ (Number) ၼၼ်ႉ ပဵၼ်မၢႆၼပ်ႉတႄႉႁႃႉ?
* **Range Check:** တူၺ်းဝႃႈ ဢႃႇယု ၼၼ်ႉ မႅၼ်ႈၸွမ်းပိူင်ႁႃႉ? (တူဝ်ယၢင်ႇ: ဢႃႇယုဢမ်ႇထုၵ်ႇလီယႂ်ႇလိူဝ် 100)။



---

### 2. လွၵ်းလၢႆးၸႂ်ႉ `try-except` လႄႈ `if-else`
ႁဝ်းတေၸႂ်ႉ Logic ဢွၼ်ႇၼႆႉ တႃႇႁႄႉၵၢင်ႈ ပၼ်ႁႃၶႃႈၼႃ:

1.  **If not name:** သင်လွၵ်းၸိုဝ်ႈပဝ်ႇဝႆႉ ႁႂ်ႈၼႄ Error။
2.  **Try int(age):** သင်ပိၼ်ႇဢႃႇယုပဵၼ်မၢႆၼပ်ႉဢမ်ႇလႆႈ ႁႂ်ႈၼႄ Error။

---

### 3. တူဝ်ယၢင်ႇ Code (Validation Logic)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Function တႃႇၵူတ်ႇထတ်း မိူဝ်ႈပႆႇ Save ၶႃႈၼႃ။

```python
import tkinter as tk
from tkinter import messagebox

class ValidationApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Student Records - Validation")
        self.geometry("300x250")

        # UI Elements
        tk.Label(self, text="ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း:").pack(pady=5)
        self.name_entry = tk.Entry(self)
        self.name_entry.pack()

        tk.Label(self, text="ဢႃႇယု:").pack(pady=5)
        self.age_entry = tk.Entry(self)
        self.age_entry.pack()

        tk.Button(self, text="သိမ်းၶေႃႈမုၼ်း", command=self.validate_and_save).pack(pady=20)

    def validate_and_save(self):
        name = self.name_entry.get().strip() # .strip() တႃႇတတ်းလွၵ်းပဝ်ႇ (Space) ဢွၵ်ႇ
        age_str = self.age_entry.get().strip()

        # 1. ၵူတ်ႇထတ်းလွၵ်းပဝ်ႇ
        if not name or not age_str:
            messagebox.showwarning("Warning", "ၶႅၼ်းတေႃႈထႅမ်ၶေႃႈမုၼ်း ႁႂ်ႈတဵမ်ၵူႈလွၵ်းၶႃႈ!")
            return

        # 2. ၵူတ်ႇထတ်းမၢႆၼပ်ႉ (Age)
        try:
            age = int(age_str)
            if age <= 0 or age > 100:
                messagebox.showerror("Error", "ဢႃႇယုထုၵ်ႇလီမီးၼႂ်းၵႄႈ 1-100 ၶႃႈ!")
                return
        except ValueError:
            messagebox.showerror("Error", "လွၵ်းဢႃႇယု လူဝ်ႇသႂ်ႇမၢႆၼပ်ႉၵူၺ်းၶႃႈ!")
            return

        # သင်ၵူတ်ႇထတ်းယဝ်ႉ ၵူႈၸၼ်ႉယဝ်ႉ ၸင်ႇသင်ႇ Save
        print(f"Data is Clean: {name}, {age}")
        messagebox.showinfo("Success", "ၶေႃႈမုၼ်းတႅတ်ႈၼႅတ်ႈယဝ်ႉ ၵမ်းၼႆႉသိမ်းလႆႈယဝ်ႉၶႃႈ!")

if __name__ == "__main__":
    app = ValidationApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`.strip()`**: ဢၼ်ၼႆႉၵျႃႉတႄႉၶႃႈ။ သင် User ၼဵၵ်း Space bar ပဝ်ႇပဝ်ႇဝႆႉ မၼ်းတေတတ်းဢွၵ်ႇသေ တူၺ်းဝႃႈမီးလိၵ်ႈတႄႉႁႃႉ ၼႆၶႃႈယဝ်ႉ။
* **`messagebox.showwarning`**: ပဵၼ်ၵၢၼ်ပၼ်ၾၢင်ႉ User ႁႂ်ႈၶဝ်မႄးၶိုၼ်း လူၺ်ႈဢမ်ႇႁႂ်ႈ Software ႁဝ်းလူႉ (Crash) ပႅတ်ႈၶႃႈ။
* **Early Return (`return`)**: ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ Function ၼႆႉ "ယဝ်ႉတူဝ်ႈ" ၵမ်းလဵဝ် သင်ႁၼ်လွင်ႈၽိတ်းပိူင် ၼင်ႇႁိုဝ် Code ၽၢႆႇတႂ်ႈမၼ်း ပေႃးတေဢမ်ႇသိုပ်ႇႁဵတ်းၵၢၼ်ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Validation** တႃႇႁႄႉၵၢင်ႈ ဢမ်ႇႁႂ်ႈ Data ယုင်ႈယၢင်ႈ ၼႂ်း Database ႁဝ်းၶႃႈ။
2.  မၼ်းတေၸွႆႈပၼ် "User Experience" ယွၼ်ႉ Software တေၸွႆႈပၼ်ၾၢင်ႉ User မိူဝ်ႈၶဝ်သႂ်ႇၶေႃႈမုၼ်းၽိတ်းၶႃႈယဝ်ႉ။

---