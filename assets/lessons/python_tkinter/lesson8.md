## Lesson 8: Project - Shan Digital ID Card Interface
**(ပၢင်သွၼ်: တႅမ်ႈ Software ၶႅပ်းမၢႆၽၢင်တႆး)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
ႁဝ်းတေၸႂ်ႉ **`.grid()`** သေ ဝၢင်းလွၵ်းမၼ်းၼင်ႇၼႆၶႃႈ:
* **Column 0:** ဝၢင်းၶႅပ်းႁၢင်ႈ (Profile Picture)။
* **Column 1:** ဝၢင်းလိၵ်ႈလွင်ႈတၢင်း (Name, ID, Course, School)။
* **Branding:** ၸႂ်ႉသီၶဵဝ် လႄႈ သီလိူင် ႁႂ်ႈမိူၼ်ၼင်ႇ သီၸွမ်ပိဝ်တႆး လႄႈ **ထုင်ႉမၢဝ်းၶမ်း** ၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
ႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် ၸမ်းတႅမ်ႈ Code ဢၼ်တေပဵၼ် Software တူဝ်တႄႉမၼ်းၼႆႉၶႃႈ။ (လူဝ်ႇမီး File ႁၢင်ႈ `student.jpg` ဝႆႉၼႂ်း Folder ၶႃႈၼႃ)

```python
import tkinter as tk
from PIL import Image, ImageTk

class ShanIDCard(tk.Tk):
    def __init__(self):
        super().__init__()
        
        # 1. တင်ႈၵႃႈ Window
        self.title("TMK - Digital ID Card v1.0")
        self.geometry("550x300")
        self.resizable(False, False)
        self.configure(bg="#ffffff") # ပိုၼ်ႉလင်ၶၢဝ်

        self.setup_ui()

    def setup_ui(self):
        # --- ၽၢႆႇသၢႆႉ: ၶႅပ်းႁၢင်ႈ (Column 0) ---
        try:
            raw_img = Image.open("student.jpg")
            resized_img = raw_img.resize((180, 200), Image.Resampling.LANCZOS)
            self.photo = ImageTk.PhotoImage(resized_img)
            
            img_label = tk.Label(self, image=self.photo, bg="#ffffff", bd=2, relief="groove")
            img_label.grid(row=0, column=0, padx=20, pady=20, rowspan=4)
        except:
            # သင်ဢမ်ႇမီးႁၢင်ႈ ႁႂ်ႈၼႄလွၵ်းဝၢင်ႇဝႆႉ
            error_img = tk.Label(self, text="No Image", width=20, height=10, bg="#eeeeee")
            error_img.grid(row=0, column=0, padx=20, pady=20, rowspan=4)

        # --- ၽၢႆႇၶႂႃ: လွင်ႈတၢင်း (Column 1) ---
        # ႁူဝ်ၶေႃႈ (Title)
        title = tk.Label(self, text="ႁူိၼ်းသွၼ်လိၵ်ႈ ထုင်ႉမၢဝ်းၶမ်း", 
                         font=("Panglong", 18, "bold"), fg="#2d5a27", bg="#ffffff")
        title.grid(row=0, column=1, sticky="w", pady=(20, 10))

        # ၸိုဝ်ႈ (Name)
        name = tk.Label(self, text="ၸိုဝ်ႈ: ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)", 
                        font=("NamKhone", 14), fg="#333333", bg="#ffffff")
        name.grid(row=1, column=1, sticky="w")

        # မၢႆၽၢင် (ID)
        std_id = tk.Label(self, text="မၢႆၽၢင်: TMK-2026-001", 
                          font=("NamKhone", 14), fg="#333333", bg="#ffffff")
        std_id.grid(row=2, column=1, sticky="w")

        # ၸၼ်ႉႁဵၼ်း (Course)
        course = tk.Label(self, text="ပၢင်သွၼ်: Python GUI (Tkinter)", 
                          font=("NamKhone", 14), fg="#333333", bg="#ffffff")
        course.grid(row=3, column=1, sticky="w", pady=(0, 20))

        # ၽၢႆႇတႂ်ႈ (Footer Bar)
        footer = tk.Label(self, text="www.itsaimao.vercel.app", 
                          font=("Arial", 10), fg="white", bg="#2d5a27")
        # ဝၢင်းၶၢမ်ႈ 2 Columns ႁႂ်ႈမၼ်းတဵမ်ၽၢႆႇတႂ်ႈ
        footer.grid(row=4, column=0, columnspan=2, sticky="we")

if __name__ == "__main__":
    app = ShanIDCard()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **`rowspan=4`**: ႁဝ်းသင်ႇႁႂ်ႈ ၶႅပ်းႁၢင်ႈ ဢဝ်တီႈယူႇတႃႇ 4 ထႅဝ် (Rows) တႃႇႁႂ်ႈမၼ်းယႂ်ႇသၢင်ႇထုၵ်ႇတင်း လိၵ်ႈဢၼ်ယူႇၽၢႆႇၶႂႃၶႃႈ။
* **`sticky="w"`**: ႁဵတ်းႁႂ်ႈလိၵ်ႈ (Label) တိတ်းၵႂႃႇၽၢႆႇသၢႆႉ (West) တႃႇသေႇ ၼင်ႇႁိုဝ်မၼ်းပေႃးတေ ၽဵင်ႇၵၼ်ႁၢင်ႈလီၶႃႈ။
* **`columnspan=2`**: ႁဵတ်းႁႂ်ႈ Footer (ပိုၼ်ႉတႂ်ႈ) ယႂ်ႇတဵမ်ၼႃႈၸေႃး တႄႇဢဝ် Column 0 တေႃႇ 1 ၶႃႈ။
* **`relief="groove"`**: ဢၼ်ၼႆႉ တေႁဵတ်းႁႂ်ႈ ၶႅပ်းႁၢင်ႈ မီးၶွပ်ႇ (Border) ဢွၼ်ႇ တူၺ်း Professional ၼႃႇၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႆႉပဵၼ် Software တူဝ်တႄႉ ဢၼ်လုၵ်ႈႁဵၼ်းၶဝ် တႅမ်ႈဢွၵ်ႇမႃးလႆႈယဝ်ႉၶႃႈ။
* မၼ်းမီး **Branding** (သီ လႄႈ လိၵ်ႈတႆး)။
* မၼ်းမီး **OOP Structure** (Class)။
* မၼ်းမီး **Assets Management** (Images & Fonts)။

---