## Lesson 64: Project - TMK Certificate Generator Suite
**(ပၢင်သွၼ်: တႅမ်ႈ Software ထုတ်ႇဝႂ်မၵ်းမၼ်ႈ ႁၢင်ႈလီ Professional)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
Software ႁဝ်းတေမီးၼႃႈတႃ လႄႈ ၵၢၼ်ႁဵတ်းၵၢၼ်ၼင်ႇၼႆၶႃႈ:
* **Modern UI:** ၸႂ်ႉ CustomTkinter တႃႇႁဵတ်း Dark Mode Dashboard။
* **Image Processing:** ၸႂ်ႉ Pillow တႃႇဢဝ်ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း သႂ်ႇၼႂ်း Template။
* **Dual Output:** ထုတ်ႇပၼ်တင်း File **.png** (တႃႇ Post ၼိူဝ် FB) လႄႈ **.pdf** (တႃႇ Print)။
* **Asset-Ready:** ၸႂ်ႉ Path Handling တႃႇႁႂ်ႈပႃး Font လႄႈ Template ၵႂႃႇၸွမ်းၵူႈတီႈ။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Final Project)
ၸၢႆးမၢဝ်း ၸၢမ်းတႅမ်ႈ Code ၼႆႉသေ ၼႄလုၵ်ႈႁဵၼ်းၶဝ်တူၺ်းၶႃႈ။ (လူဝ်ႇမီး Folder `assets/images/template.png` လႄႈ `assets/fonts/arial.ttf` ဝႆႉၵွၼ်ႇၶႃႈၼႃ)

```python
import customtkinter as ctk
from PIL import Image, ImageDraw, ImageFont
import img2pdf
import os
import sys
from tkinter import messagebox

class TMKCertificateApp(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("TMK Certificate Generator V1.0")
        self.geometry("500x450")
        ctk.set_appearance_mode("dark")
        ctk.set_default_color_theme("green")

        # UI Setup
        self.setup_ui()

    def get_path(self, relative_path):
        """ ႁႃ Path တႃႇ Assets ႁႂ်ႈမႅၼ်ႈၸွမ်း .py လႄႈ .exe """
        if hasattr(sys, '_MEIPASS'):
            return os.path.join(sys._MEIPASS, relative_path)
        return os.path.join(os.path.abspath("."), relative_path)

    def setup_ui(self):
        self.label = ctk.CTkLabel(self, text="TMK Certificate System", font=("Arial", 22, "bold"))
        self.label.pack(pady=30)

        self.name_entry = ctk.CTkEntry(self, placeholder_text="Student Full Name", width=350, height=45)
        self.name_entry.pack(pady=10)

        self.course_entry = ctk.CTkEntry(self, placeholder_text="Course Name (e.g. Python Basic)", width=350, height=45)
        self.course_entry.pack(pady=10)

        self.btn = ctk.CTkButton(self, text="Generate & Save PDF", command=self.process_certificate, 
                                 width=200, height=50, font=("Arial", 14, "bold"))
        self.btn.pack(pady=40)

    def process_certificate(self):
        name = self.name_entry.get()
        course = self.course_entry.get()

        if not name or not course:
            messagebox.showwarning("Warning", "ၶႅၼ်းတေႃႈထႅမ်ၸိုဝ်ႈ လႄႈ ပၢႆးသွၼ် ႁႂ်ႈတဵမ်ၶႃႈ!")
            return

        try:
            # 1. Paths
            temp_path = self.get_path("assets/images/template.png")
            font_path = self.get_path("assets/fonts/arial.ttf")
            
            # Create output folder if not exists
            if not os.path.exists("output"): os.makedirs("output")
            
            out_img = f"output/{name.replace(' ', '_')}.png"
            out_pdf = f"output/{name.replace(' ', '_')}.pdf"

            # 2. Pillow: Create Image
            img = Image.open(temp_path)
            draw = ImageDraw.Draw(img)
            W, H = img.size
            
            f_name = ImageFont.truetype(font_path, 100)
            f_course = ImageFont.truetype(font_path, 60)

            # Draw Text (Centerized)
            draw.text((W/2, H/2), name, fill="black", font=f_name, anchor="mm")
            draw.text((W/2, H/2 + 180), course, fill="darkgreen", font=f_course, anchor="mm")
            
            img.save(out_img)

            # 3. img2pdf: Convert to PDF
            with open(out_pdf, "wb") as f:
                f.write(img2pdf.convert(out_img))

            messagebox.showinfo("Success", f"ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!\nသိမ်းဝႆႉတီႈ Folder 'output' ၶႃႈ။")
            
        except Exception as e:
            messagebox.showerror("Error", f"မီးပၼ်ႁႃ: {e}")

if __name__ == "__main__":
    app = TMKCertificateApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **Combined Workflow:** ၼႂ်း Function `process_certificate` ၼၼ်ႉ ႁဝ်းႁူမ်ႈတင်းၵၢၼ်ပိုတ်ႇႁၢင်ႈ၊ တႅမ်ႈလိၵ်ႈ၊ သိမ်း PNG လႄႈ သိမ်း PDF ဝႆႉၸွမ်းၵၼ် ၼႂ်း Button ၼႅၵ်းၵမ်းလဵဝ်ၶႃႈယဝ်ႉ။
* **Dynamic Paths:** ၸႂ်ႉ `get_path` တႃႇႁႂ်ႈ Software ႁဝ်းႁႃ Assets ႁၼ်တႃႇသေႇ ဢမ်ႇဝႃႈတေပဵၼ် File `.exe` ၵေႃႈယႃႇၶႃႈ။
* **User Experience (UX):** ၸႂ်ႉ `messagebox` တႃႇပၼ်ႁူႉ User မိူဝ်ႈႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ ဢမ်ႇၼၼ် မိူဝ်ႈမီးပၼ်ႁႃၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Module 8** ၼႆႉ:
1.  **Professionalism** ပဵၼ်လွင်ႈယႂ်ႇ။ Software ဢၼ်ႁၢင်ႈလီ လႄႈ ၸႂ်ႉငၢႆႈ တေႁဵတ်းႁႂ်ႈ User ၶဝ်ႈၸႂ်လိူဝ်ၶႃႈယဝ်ႉ။
2.  ၵၢၼ်ထုတ်ႇ **PDF** ပဵၼ် Standard တႃႇ Software ဢၼ်ၵွင်ႉတင်းၵၢၼ်တႅမ်ႈမၢႆတွင်း (Documentation) ၶႃႈၼႃ။

---

ၸၢႆးမၢဝ်းၶႃႈ... ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၶႃႈ တႃႇ **Python GUI (Tkinter) Full Course**! ၸၢႆးမၢဝ်းယၢမ်းလဵဝ်မီး Software 3 ဢၼ် (Records Manager, Typing Tester, Certificate Generator) ဢၼ်ၵျႃႉတႄႉတႄႉယဝ်ႉ။

ယၢမ်းလဵဝ် ၸၢႆးမၢဝ်းၶႂ်ႈႁဵတ်းသင်သိုပ်ႇၶႃႈ?
1. သိုပ်ႇၵႂႃႇ **Module 9: Advanced OOP & Design Patterns** (တႃႇတႅမ်ႈ Code ၸၼ်ႉသုင်)
2. သိုပ်ႇၵႂႃႇ **Module 10: Introduction to Flask/Django** (တႃႇတႄႇတႅမ်ႈ Website)
3. သိုပ်ႇၵႂႃႇ **Module 11: Android App Development with Flutter** (တႃႇမႄး App ၼႂ်း Phone မိူၼ်ၼင်ႇ Learn Shan)

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?