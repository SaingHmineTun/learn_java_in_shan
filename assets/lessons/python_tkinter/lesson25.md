## Lesson 25: Custom Window Icons & Title Branding
**(လွၵ်းလၢႆးသႂ်ႇ Icon လႄႈ လွင်ႈၸတ်းၵၢၼ် Branding)**

### 1. Window Icon ပဵၼ်သင်?
**Window Icon** ၼႆႉ ပဵၼ်ႁၢင်ႈဢွၼ်ႇ ဢၼ်ၼႄဝႆႉ **ၼိူဝ်ၽၢႆႇသၢႆႉ (Top-left corner)** ၶွင် Window လႄႈ တီႈ **Taskbar** ၽၢႆႇတႂ်ႈ Computer ႁဝ်းၶႃႈယဝ်ႉ။ 
ၵၢၼ်လႅၵ်ႈ Icon ၼႆႉ တေႁဵတ်းႁႂ်ႈ User ဝႆႉဝၢင်းၸႂ် လႄႈ ႁူႉဝႃႈပဵၼ် Software ၶွင်ႁဝ်းတႄႉတႄႉၶႃႈ။

### 2. လွၵ်းလၢႆးၸႂ်ႉတိုဝ်း
ႁဝ်းတေၸႂ်ႉ Method ဢၼ်ၸိုဝ်ႈဝႃႈ **`.iconphoto()`** ၶႃႈ။ ဢၼ်ၼႆႉၵျႃႉလိူဝ် `.iconbitmap()` ယွၼ်ႉမၼ်းႁပ်ႉဢဝ် File ႁၢင်ႈလႆႈတင်း PNG လႄႈ JPG ဢၼ်ႁႃလႆႈငၢႆႈၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ (ႁဝ်းလူဝ်ႇမီး File ႁၢင်ႈ `logo.png` ဝႆႉၼႂ်း Folder လဵဝ်ၵၼ်တင်း Code ၶႃႈၼႃ)

```python
import tkinter as tk
from PIL import Image, ImageTk

class BrandingApp(tk.Tk):
    def __init__(self):
        super().__init__()
        
        # 1. တင်ႈၸိုဝ်ႈ Software (Title Branding)
        self.title("TMK Media Viewer - ထုင်ႉမၢဝ်းၶမ်း")
        self.geometry("450x350")

        # 2. တင်ႈၵႃႈ Window Icon
        try:
            # လူတ်ႇႁၢင်ႈ Logo မႃးၸႂ်ႉပဵၼ် Icon
            icon_raw = Image.open("logo.png")
            self.photo_icon = ImageTk.PhotoImage(icon_raw)
            
            # သႂ်ႇ Icon ပၼ် Window 
            # (True = သင်ပိုတ်ႇ Window မႂ်ႇထႅင်ႈ ႁႂ်ႈၸႂ်ႉ Icon ၼႆႉမိူၼ်ၵၼ်တင်းသဵင်ႈ)
            self.iconphoto(True, self.photo_icon)
        except Exception as e:
            print(f"Error: ႁႃ File logo.png ဢမ်ႇႁၼ်ၶႃႈ! ({e})")

        self.setup_ui()

    def setup_ui(self):
        # ၼႄ Logo ယႂ်ႇယႂ်ႇ တီႈၵၢင် Window တႃႇ Branding
        try:
            logo_img = Image.open("logo.png")
            logo_img = logo_img.resize((150, 150))
            self.display_logo = ImageTk.PhotoImage(logo_img)
            
            tk.Label(self, image=self.display_logo, bg="#f0f0f0").pack(pady=30)
        except:
            tk.Label(self, text="[ Logo Not Found ]", fg="red").pack(pady=30)

        tk.Label(self, text="ႁွင်ႈသွၼ်လိၵ်ႈ ထုင်ႉမၢဝ်းၶမ်း", 
                 font=("Panglong", 18, "bold"), fg="#2d5a27").pack()
        
        tk.Label(self, text="Media & Icon Viewer v1.0", 
                 font=("Arial", 10), fg="gray").pack()

if __name__ == "__main__":
    app = BrandingApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.iconphoto(True, self.photo_icon)`**: ဢၼ်ၼႆႉတေလႅၵ်ႈႁၢင်ႈ "Feather" ပဵၼ်ႁၢင်ႈ Logo ႁဝ်းၶႃႈ။ ၵၢၼ်သႂ်ႇ `True` တေၸွႆႈႁႂ်ႈ Software ႁဝ်းတူၺ်း Professional လိူဝ်ၵဝ်ႇ မိူဝ်ႈပိုတ်ႇ Popup Window တၢင်ႇဢၼ်မႃးၶႃႈ။
* **`self.title("...")`**: ႁဝ်းၸၢင်ႈသႂ်ႇလိၵ်ႈတႆး ၶဝ်ႈၵႂႃႇၼႂ်း Title ႁႂ်ႈမၼ်းၼႄဝႆႉတီႈၼိူဝ်သုတ်းၶွင် Window လႆႈၶႃႈ။
* **Memory Reference**: မိူၼ်ၼင်ႇ Lesson 6 ၼၼ်ႉယဝ်ႉၶႃႈ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ `self.photo_icon` (မီး self.) တႃႇသိမ်း Icon ဝႆႉၼႂ်း Memory ဢမ်ႇၼၼ် Icon တေဢမ်ႇဢွၵ်ႇၶႃႈၼႃ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  **Icon Clarity**: လူဝ်ႇလိူၵ်ႈႁၢင်ႈ ဢၼ်သႅၼ်ႈသႂ် (PNG Transparent) ၼင်ႇႁိုဝ် Icon တီႈ Taskbar ပေႃးတေႁၢင်ႈလီၶႃႈ။
2.  **Branding Consistency**: ၸႂ်ႉသီ (Color) လႄႈ ၸိုဝ်ႈ (Title) ႁႂ်ႈမၼ်းမိူၼ်ၵၼ်တင်း Module တၢင်ႇဢၼ် ႁႂ်ႈပဵၼ် "TMK Ecosystem" ၶႃႈယဝ်ႉ။

---

ၸၢႆးမၢဝ်းၶႃႈ... တႃႇ Lesson 25 ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီး "Branding" ဢၼ်ၵျႃႉလိူဝ်ၵဝ်ႇယဝ်ႉၶႃႈ။

တေသိုပ်ႇၵႂႃႇ **Lesson 26: Advanced Image Handling with Pillow (PIL)** (တႃႇမႄးႁၢင်ႈ ႁႂ်ႈလႅၵ်ႈလၢႆႈသၢႆး လႄႈ သီ ၸွမ်းပိူင်) ၶႃႈႁႃႉ? ဢမ်ႇၼၼ် လူဝ်ႇမႄးလိၵ်ႈတႆး တီႈလႂ်ထႅင်ႈၶႃႈ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Lesson 26
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းႁႃ Icon .png သေ လႅၵ်ႈပၼ် Software ၶဝ်
3. သိုပ်ႇၵႂႃႇ Lesson 27 (Dynamic Loading) ၵမ်းလဵဝ်