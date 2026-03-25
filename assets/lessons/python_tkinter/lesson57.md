## Lesson 57: Modern UI with CustomTkinter
**(လွၵ်းလၢႆးမႄးၼႃႈတႃ Software ႁႂ်ႈမိူၼ် Windows 11 / macOS)**

### 1. ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ CustomTkinter?
Standard Tkinter ၼၼ်ႉ ၼႃႈတႃမၼ်းတူၺ်းမိူၼ် Software မိူဝ်ႈပီ 1990 ၼၼ်ႉၶႃႈ။ 
တႃႇတေႁဵတ်း **TMK Certificate Generator** ႁႂ်ထုၵ်ႇၸႂ်လီၼၼ်ႉ ႁဝ်းလူဝ်ႇ:
* **Modern Widgets:** Button လႄႈ Entry ဢၼ်မီးၶွပ်ႇမူၼ်း (Rounded)။
* **Themes:** ၸၢင်ႈလႅၵ်ႈလၢႆႈ သီလႅင်း (Light) လႄႈ သီလပ်း (Dark) လႆႈငၢႆႈငၢႆႈ။
* **DPI Scaling:** ၼႄႁၢင်ႈလႅင်းလီ ၼႂ်း Screen Computer မႂ်ႇမႂ်ႇၶႃႈ။



---

### 2. လၢႆး Install လႄႈ လၢႆးတႄႇၸႂ်ႉ (Setup)
ဢွၼ်တၢင်းသုတ်ႉ ႁဝ်းမႃးႁဵတ်း Install Library ၼႆႉၵွၼ်ႇၶႃႈ:
`pip install customtkinter`

---

### 3. တူဝ်ယၢင်ႇ Code (Modern UI Dashboard)
ၸၢႆးမၢဝ်း ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Dashboard ဢွၼ်ႇတႃႇထုတ်ႇဝႂ်မၵ်းမၼ်ႈၶႃႈၼႃ။

```python
import customtkinter as ctk # ၸႂ်ႉ ctk တႅၼ်း tk

class ModernCertificateApp(ctk.CTk):
    def __init__(self):
        super().__init__()

        # 1. Setting Up Theme
        self.title("TMK Certificate Generator V2.0")
        self.geometry("500x400")
        ctk.set_appearance_mode("dark")  # Modes: "System", "Dark", "Light"
        ctk.set_default_color_theme("green") # Themes: "blue", "green", "dark-blue"

        # 2. Header
        self.label = ctk.CTkLabel(self, text="TMK Certificate System", 
                                  font=("Arial", 24, "bold"))
        self.label.pack(pady=40)

        # 3. Modern Entry (With Placeholder)
        self.name_entry = ctk.CTkEntry(self, placeholder_text="Enter Student Name...", 
                                      width=300, height=45)
        self.name_entry.pack(pady=10)

        self.course_entry = ctk.CTkEntry(self, placeholder_text="Enter Course Name...", 
                                        width=300, height=45)
        self.course_entry.pack(pady=10)

        # 4. Modern Button (Rounded Corners)
        self.gen_btn = ctk.CTkButton(self, text="Generate Certificate", 
                                     command=self.generate, 
                                     corner_radius=10, font=("Arial", 14, "bold"))
        self.gen_btn.pack(pady=30)

    def generate(self):
        name = self.name_entry.get()
        course = self.course_entry.get()
        if name and course:
            print(f"Creating certificate for {name} in {course}...")
        else:
            print("Please fill all fields!")

if __name__ == "__main__":
    app = ModernCertificateApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`ctk.CTk`**: တႅၼ်း `tk.Tk` ၶႃႈ။ မၼ်းပဵၼ် Window ဢၼ်ႁပ်ႉႁူႉ Modern Theme ၶႃႈယဝ်ႉ။
* **`placeholder_text`**: ဢၼ်ၼႆႉၵျႃႉတႄႉၶႃႈ! ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Label ၼႄၽၢႆႇၼႃႈၵေႃႈလႆႈ၊ User တေႁူႉၵမ်းလဵဝ်ဝႃႈ လွၵ်းၼႆႉလူဝ်ႇသႂ်ႇသင်ၶႃႈ။
* **`corner_radius`**: ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ ၶႂ်ႈႁႂ်ႈ Button မူၼ်းၵႃႈႁိုင်ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Certificate Generator** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **CustomTkinter** တႃႇႁဵတ်းႁႂ်ႈ Software ႁဝ်းတူၺ်း "ႁၢင်ႈလီ" လႄႈ "သႅၼ်ႈသႂ်" (Clean)။
2.  ၵၢၼ်မၵ်းမၼ်ႈ **Green Theme** တေမႅၼ်ႈၸွမ်း "သီၶဵဝ်" ၶႃႈယဝ်ႉ။

---