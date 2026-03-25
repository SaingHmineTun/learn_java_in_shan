## Lesson 30: Image Formats (PNG vs JPG)
**(လွၵ်းလၢႆးၸတ်းၵၢၼ် ႁၢင်ႈဢၼ်မီးပိုၼ်ႉလင်သႂ် လႄႈ ႁၢင်ႈဢၼ်ယဵတ်ႇသႂ်ႇဝႆႉ)**

### 1. တူဝ်ပႅၵ်ႇပိူင်ႈၵၼ် (The Differences)
* **JPG (Joint Photographic Experts Group):**
    * ၵျႃႉတႃႇႁၢင်ႈ (Photos) ဢၼ်မီးသီၼမ်ၼမ်။
    * မၼ်းယဵတ်ႇသႂ်ႇဝႆႉ (Compression) ႁႂ်ႈ File လဵၵ်း၊ ၵူၺ်းၵႃႈ လွင်ႈၸႅင်ႈလႅင်းၸၢင်ႈလူတ်းလူင်း။
    * **ဢမ်ႇမီး** ပိုၼ်ႉလင်သႂ် (No Transparency)။
* **PNG (Portable Network Graphics):**
    * ၵျႃႉတႃႇ Logo, Icons လႄႈ လိၵ်ႈ။
    * မၼ်းသိမ်းလွင်ႈၸႅင်ႈလႅင်းဝႆႉတဵမ်ထူၼ်ႈ (Lossless)။
    * **မီး** ပိုၼ်ႉလင်သႂ် (Supports Transparency/Alpha Channel)။



---

### 2. လွၵ်းလၢႆးၸႂ်ႉတိုဝ်းၼႂ်း Pillow
မိူဝ်ႈႁဝ်းပိုတ်ႇႁၢင်ႈ PNG ဢၼ်မီးပိုၼ်ႉလင်သႂ်ၼၼ်ႉ Pillow တေၸႂ်ႉ **RGBA** mode (Red, Green, Blue, Alpha)၊ သင်ပဵၼ် JPG မၼ်းတေပဵၼ် **RGB** ယူဝ်းယူဝ်းၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸမ်းပိုတ်ႇႁၢင်ႈသွင်မဵဝ်းသေ တူၺ်းလွင်ႈပႅၵ်ႇပိူင်ႈမၼ်းၶႃႈၼႃ။

```python
import tkinter as tk
from PIL import Image, ImageTk

class FormatApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Image Formats: PNG vs JPG")
        self.geometry("600x400")
        self.configure(bg="#2d5a27") # သႂ်ႇပိုၼ်ႉလင်သီၶဵဝ် တႃႇတူၺ်းလွင်ႈသႂ် (Transparency)

        self.setup_ui()

    def setup_ui(self):
        # 1. ပိုတ်ႇႁၢင်ႈ JPG (ဢမ်ႇမီးပိုၼ်ႉလင်သႂ် - တေႁၼ်ပဵၼ်လွၵ်းၶၢဝ်)
        try:
            jpg_raw = Image.open("photo.jpg")
            jpg_raw.thumbnail((200, 200))
            self.tk_jpg = ImageTk.PhotoImage(jpg_raw)
            
            tk.Label(self, text="JPG (No Transparency)", bg="#2d5a27", fg="white").grid(row=0, column=0, padx=20, pady=10)
            tk.Label(self, image=self.tk_jpg).grid(row=1, column=0, padx=20)
        except:
            tk.Label(self, text="JPG Not Found").grid(row=1, column=0)

        # 2. ပိုတ်ႇႁၢင်ႈ PNG (မီးပိုၼ်ႉလင်သႂ် - တေႁၼ်သီၶဵဝ်ဢွၵ်ႇမႃး)
        try:
            png_raw = Image.open("logo.png")
            png_raw.thumbnail((200, 200))
            self.tk_png = ImageTk.PhotoImage(png_raw)
            
            tk.Label(self, text="PNG (Transparent)", bg="#2d5a27", fg="white").grid(row=0, column=1, padx=20, pady=10)
            # လူဝ်ႇသႂ်ႇ bg မိူၼ်ပိုၼ်ႉလင် တႃႇႁႂ်ႈမၼ်းႁၼ်ၸႅင်ႈ
            tk.Label(self, image=self.tk_png, bg="#2d5a27").grid(row=1, column=1, padx=20)
        except:
            tk.Label(self, text="PNG Not Found").grid(row=1, column=1)

if __name__ == "__main__":
    app = FormatApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **Transparency Check:** ၼႂ်း Code ၼႆႉ ႁဝ်းမၵ်းမၼ်ႈ ႁၢင်ႈပိုၼ်ႉလင်ပဵၼ် `bg="#2d5a27"` (သီၶဵဝ်) ဝႆႉ။ သင်ပဵၼ် PNG ဢၼ်မီးလႆႈ သီသႂ်တႄႉ ႁဝ်းတေႁၼ်သီၶဵဝ်ၼၼ်ႉၸွမ်းၶွပ်ႇ Logo ၶႃႈ။ သင်ပဵၼ် JPG မၼ်းတေၼႄပဵၼ်လွၵ်းသီၶၢဝ် (White box) ၵႂႃႇၶႃႈယဝ်ႉ။
* **`Image.open()`**: Pillow တေႁူႉႁင်းမၼ်း (Auto-detect) ဝႃႈပဵၼ် Format သင်၊ ႁဝ်းဢမ်ႇလူဝ်ႇမၵ်းမၼ်ႈပၼ်ၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  **Icons:** ၸႂ်ႉ **PNG** တႃႇသေႇ ၼင်ႇႁိုဝ် Button ႁဝ်းပေႃးတေႁၢင်ႈလီ (ဢမ်ႇမီးလွၵ်းၶၢဝ်)။
2.  **Photos:** ၸႂ်ႉ **JPG** တႃႇၼႄႁၢင်ႈ Gallery ယႂ်ႇယႂ်ႇ ၼင်ႇႁိုဝ် Software ႁဝ်းပေႃးတေဢမ်ႇၼၵ်း (Fast Loading)။

---