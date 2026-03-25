## Lesson 26: Advanced Image Handling with Pillow
**(လွၵ်းလၢႆးၸတ်းၵၢၼ်ႁၢင်ႈ: ပိၼ်ႇႁၢင်ႈ၊ ႁဵတ်း Thumbnail လႄႈ မႄး Filter)**

### 1. Pillow (PIL) ပဵၼ်သင်?
**Pillow** ပဵၼ် Library ဢၼ်ၵျႃႉလိူဝ်ပိူၼ်ႈ တႃႇၸတ်းၵၢၼ်ႁၢင်ႈၼႂ်း Python ၶႃႈ။ မၼ်းၸၢင်ႈၸွႆႈႁဝ်း:
* **Rotate:** ပိၼ်ႇႁၢင်ႈ 90, 180, 270 တီႇၵရီႇ (Degrees)။
* **Thumbnail:** ႁဵတ်းႁၢင်ႈဢွၼ်ႇ တႃႇၼႄၼႂ်း Gallery ႁႂ်ႈမၼ်းဢမ်ႇၵိၼ် Memory ၼမ်။
* **Flip:** ပိၼ်ႇႁၢင်ႈ ၽၢႆႇသၢႆႉ-ၽၢႆႇၶႂႃ (Mirror effect)။



---

### 2. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Button တႃႇပိၼ်ႇႁၢင်ႈ (Rotate) ၶႃႈ။

```python
import tkinter as tk
from PIL import Image, ImageTk

class AdvancedImageApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Advanced Image Handling")
        self.geometry("500x600")
        
        # သိမ်းၵႃႈ Rotation ဝႆႉ
        self.current_angle = 0
        self.raw_image = Image.open("student.jpg") # လူဝ်ႇမီး File ႁၢင်ႈၼႂ်း Folder ၶႃႈၼႃ

        self.setup_ui()

    def setup_ui(self):
        # 1. လွၵ်းၼႄႁၢင်ႈ
        self.img_label = tk.Label(self, bg="gray")
        self.img_label.pack(pady=20, expand=True)

        # 2. Button Frame
        btn_frame = tk.Frame(self)
        btn_frame.pack(pady=20)

        # Button တႃႇပိၼ်ႇႁၢင်ႈ 90 တီႇၵရီႇ
        tk.Button(btn_frame, text="Rotate 90°", command=self.rotate_image).pack(side="left", padx=10)
        
        # Button တႃႇႁဵတ်း Thumbnail (ႁၢင်ႈဢွၼ်ႇ)
        tk.Button(btn_frame, text="Make Thumbnail", command=self.make_thumbnail).pack(side="left", padx=10)

        # ၼႄႁၢင်ႈတႄႇႁူဝ်
        self.update_display(self.raw_image)

    def rotate_image(self):
        # 1. မႄးၵႃႈ Angle
        self.current_angle = (self.current_angle + 90) % 360
        
        # 2. ၸႂ်ႉ Pillow ပိၼ်ႇႁၢင်ႈ (expand=True ႁႂ်ႈမၼ်းဢမ်ႇထုၵ်ႇတတ်းပႅတ်ႈ)
        rotated_img = self.raw_image.rotate(self.current_angle, expand=True)
        self.update_display(rotated_img)

    def make_thumbnail(self):
        # ၸႂ်ႉ .thumbnail() တႃႇမႄးသၢႆးႁၢင်ႈႁႂ်ႈလဵၵ်း (In-place operation)
        temp_img = self.raw_image.copy()
        temp_img.thumbnail((100, 100)) # မႄးႁၢင်ႈႁႂ်ႈယူႇၼႂ်းလွၵ်း 100x100
        self.update_display(temp_img)

    def update_display(self, pil_img):
        # ဢဝ် PIL Image ပိၼ်ႇပဵၼ် ImageTk သေၼႄၼႂ်း Label
        # လူဝ်ႇ Resize ႁႂ်ႈသၢင်ႇထုၵ်ႇတင်း Window ၵွၼ်ႇ
        pil_img = pil_img.resize((300, 300))
        self.tk_img = ImageTk.PhotoImage(pil_img)
        self.img_label.config(image=self.tk_img)

if __name__ == "__main__":
    app = AdvancedImageApp()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`.rotate(angle, expand=True)`**: သင်ႁဝ်းဢမ်ႇသႂ်ႇ `expand=True` ၼႆ မိူဝ်ႈႁဝ်းပိၼ်ႇႁၢင်ႈၼၼ်ႉ တူဝ်ႁၢင်ႈၸၢင်ႈထုၵ်ႇတတ်း (Cropped) ပႅတ်ႈၶႃႈ။ ၵၢၼ်သႂ်ႇ `True` တေႁဵတ်းႁႂ်ႈလွၵ်းႁၢင်ႈ ယႂ်ႇၸွမ်းတူဝ်ႁၢင်ႈ ဢၼ်ပိၼ်ႇၵႂႃႇၼၼ်ႉၶႃႈယဝ်ႉ။
* **`.thumbnail((width, height))`**: ဢၼ်ၼႆႉၵျႃႉလိူဝ် `.resize()` ယွၼ်ႉမၼ်းတေ **"ၵုမ်းထိင်း Ratio"** (Aspect Ratio) ၶွင်ႁၢင်ႈဝႆႉတႃႇသေႇ ဢမ်ႇႁႂ်ႈႁၢင်ႈႁဝ်း "ယိုတ်း" (Stretched) ၶႃႈၼႃ။
* **`.copy()`**: ၵၢၼ်ၸႂ်ႉ `.thumbnail()` မၼ်းတေမႄးတူဝ် Image လူင်မၼ်းၵမ်းလဵဝ် (In-place)။ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇ `.copy()` ဝႆႉ ၼင်ႇႁိုဝ်ႁၢင်ႈလူင်ႁဝ်းပေႃးတေဢမ်ႇလုၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Thumbnail** တႃႇၼႄႁၢင်ႈဢွၼ်ႇလၢႆလၢႆဢၼ်ၼႂ်း Sidebar။
2.  ႁဝ်းတေၸႂ်ႉ **Rotate** တႃႇပၼ် User မႄးႁၢင်ႈၶဝ် ႁႂ်ႈတင်ႈမၢၼ်ႇမႅၼ်ႈၶႃႈယဝ်ႉ။

---