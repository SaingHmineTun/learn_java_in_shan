## Lesson 5: The Label Widget (Shan Unicode Support)
**(လွၵ်းလၢႆးၸႂ်ႉ Label Widget လႄႈ လိၵ်ႈတႆး Unicode)**

### 1. Label Widget ပဵၼ်သင်? (What is Label?)
**Label** ၼႆႉ ပဵၼ် Widget ဢၼ်ၸႂ်ႉတႃႇ "ၼႄလိၵ်ႈ" (Display Text) ဢမ်ႇၼၼ် "ၼႄၶႅပ်းႁၢင်ႈ" (Display Image) ယူဝ်းယူဝ်းၶႃႈ။ 
ၵူၼ်းၸႂ်ႉတိုဝ်း တေတႅမ်ႈလိၵ်ႈၶဝ်ႈၼႂ်းမၼ်းဢမ်ႇလႆႈ၊ မၼ်းမီးဝႆႉတႃႇ "ဢၢၼ်ႇ" ၵူၺ်းၶႃႈ။

### 2. လွင်ႈၸႂ်ႉ လိၵ်ႈတႆး (Shan Unicode Support)
ၼႂ်း Windows ဢမ်ႇၼၼ် macOS ၼၼ်ႉ သင်ႁဝ်းတႅမ်ႈလိၵ်ႈတႆးသႂ်ႇၵမ်းလဵဝ် မၼ်းတေၸၢင်ႈဢွၵ်ႇပဵၼ် "လွၵ်းသီႇၸဵင်ႇ" (Boxes) ဢမ်ႇၼၼ် လိၵ်ႈဢမ်ႇၸႅင်ႈၶႃႈ။ 
ၼင်ႇႁိုဝ်တေဢွၵ်ႇႁၢင်ႈလီၼၼ်ႉ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ **Font Family** မၼ်းၶႃႈ။

* **Fonts ဢၼ်လူဝ်ႇၸႂ်ႉ:** `Panglong`, `NamKhone`, `Tai Heritage Pro`, ဢမ်ႇၼၼ် `Microsoft Tai Le`။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ ႁဝ်းတေသၢင်ႈ Label သေ မၵ်းမၼ်ႈ Font ႁႂ်ႈမၼ်းႁၢင်ႈလီၶႃႈ။

```python
import tkinter as tk

class ShanLabelApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Shan Label Lesson")
        self.geometry("500x300")
        self.configure(bg="#ffffff")
        
        self.setup_ui()

    def setup_ui(self):
        # 1. တႅမ်ႈလိၵ်ႈတႆး ၸႂ်ႉ Font Panglong
        # fg = သီလိၵ်ႈ, bg = သီပိုၼ်ႉလင်
        title_label = tk.Label(
            self, 
            text="ႁူိၼ်းသွၼ်လိၵ်ႈ ထုင်ႉမၢဝ်းၶမ်း", 
            font=("Panglong", 20, "bold"),
            fg="#2d5a27",
            bg="#ffffff"
        )
        title_label.pack(pady=20)

        # 2. တႅမ်ႈလိၵ်ႈတႆး ၸႂ်ႉ Font NamKhone
        desc_label = tk.Label(
            self, 
            text="ပၢင်သွၼ် Python GUI တႃႇတႅမ်ႈ Software တႆး", 
            font=("NamKhone", 14),
            fg="#1a1a1a",
            bg="#ffffff"
        )
        desc_label.pack(pady=10)

        # 3. တႅမ်ႈလိၵ်ႈတႆး ၸႂ်ႉ Font Standard Windows (Tai Le)
        footer_label = tk.Label(
            self, 
            text="တႅမ်ႈလူၺ်ႈ: ၸၢႆးမၢဝ်း", 
            font=("Microsoft Tai Le", 12, "italic"),
            fg="gray",
            bg="#ffffff"
        )
        footer_label.pack(side="bottom", pady=20)

if __name__ == "__main__":
    app = ShanLabelApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`text="..."`**: သႂ်ႇလိၵ်ႈတႆး Unicode ၶဝ်ႈၵႂႃႇလႆႈၵမ်းလဵဝ်ၶႃႈ။
* **`font=("Name", Size, "Style")`**:
    * `Name`: ၸိုဝ်ႈ Font ဢၼ်မီးၼႂ်း Computer ႁဝ်း။
    * `Size`: တင်းယႂ်ႇလိၵ်ႈ (တူဝ်ယၢင်ႇ: 14, 20)။
    * `Style`: `"bold"` (တူဝ်ၼႃ), `"italic"` (တူဝ်ဢိူင်ႇ)။
* **`fg` (Foreground)**: သီလိၵ်ႈ (Text Color)။
* **`bg` (Background)**: သီပိုၼ်ႉလင် Label။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Shan Digital ID Card** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Label တင်းၼမ်ၶႃႈ။
* Label ၼိုင်ႈတူဝ် တႃႇ "ၸိုဝ်ႈ"
* Label ၼိုင်ႈတူဝ် တႃႇ "တီႈယူႇ"
* Label ၼိုင်ႈတူဝ် တႃႇ "ၶႅပ်းႁၢင်ႈ" (တေသွၼ်ၼႂ်း Lesson 6)

**Trick:** သင်ဝႃႈ လုၵ်ႈႁဵၼ်းၶဝ် တႅမ်ႈလိၵ်ႈတႆးယဝ်ႉ မၼ်းဢမ်ႇၼႄမၢၼ်ႇမႅၼ်ႈၼႆ ၵႂႃႇၵူတ်ႇထတ်းတူၺ်းဝႃႈ ၼႂ်း Computer ႁဝ်း သႂ်ႇဝႆႉ Font ၸိုဝ်ႈၼၼ်ႉယဝ်ႉႁႃႉ? ၼႆၶႃႈၼႃ။

---