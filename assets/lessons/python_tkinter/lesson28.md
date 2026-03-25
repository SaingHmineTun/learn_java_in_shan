## Lesson 28: Creating an Image Slider
**(လွၵ်းလၢႆးႁဵတ်း Button တႃႇပိၼ်ႇတူၺ်းႁၢင်ႈ ၼႃႈၼႃႈ-ၼႃႈလင်)**

### 1. Image Slider Logic ပဵၼ်သင်?
တႃႇတေႁဵတ်း Slider လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး 2 မဵဝ်းၶႃႈ:
1.  **A List of Images:** သိမ်းၸိုဝ်ႈ File ႁၢင်ႈတင်းသဵင်ႈဝႆႉၼႂ်း List ၼိုင်ႈဢၼ်။
2.  **Current Index:** သိမ်းမၢႆၼပ်ႉ (Number) ဝႆႉ တႃႇႁူႉဝႃႈ ယၢမ်းလဵဝ် ႁဝ်းတိုၵ်ႉတူၺ်းႁၢင်ႈမၢႆၵႃႈႁိုင်ယဝ်ႉ။



---

### 2. လွၵ်းလၢႆးပိၼ်ႇႁၢင်ႈ (The Logic)
* **Next:** ဢဝ် Index ပဵၼ် `+1`။ သင်ဝႃႈမၼ်းတဵမ်ႁၢင်ႈသုတ်းယဝ်ႉၼႆ ႁႂ်ႈမၼ်းဝႅၼ်ၶိုၼ်းမႃးႁၢင်ႈမၢႆ 0 (Loop)။
* **Previous:** ဢဝ် Index ပဵၼ် `-1`။ သင်ဝႃႈမၼ်းယူႇတီႈ 0 ယဝ်ႉၼႆ ႁႂ်ႈမၼ်းဝႅၼ်ၵႂႃႇႁၢင်ႈသုတ်း (End of list)။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ (လူဝ်ႇမီးႁၢင်ႈ `img1.jpg`, `img2.jpg`, `img3.jpg` ဝႆႉၼႂ်း Folder ၶႃႈၼႃ)

```python
import tkinter as tk
from PIL import Image, ImageTk

class ImageSliderApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Image Slider Gallery")
        self.geometry("500x550")

        # 1. သိမ်း List ၶွင်ႁၢင်ႈ လႄႈ မၢႆ Index
        self.image_list = ["img1.jpg", "img2.jpg", "img3.jpg"]
        self.current_idx = 0

        self.setup_ui()

    def setup_ui(self):
        # 2. လွၵ်းၼႄႁၢင်ႈ
        self.display_lbl = tk.Label(self, bg="white")
        self.display_lbl.pack(pady=20, expand=True, fill="both")

        # 3. Control Buttons Frame
        btn_frame = tk.Frame(self)
        btn_frame.pack(pady=20)

        self.prev_btn = tk.Button(btn_frame, text="<< ၵႂႃႇၽၢႆႇလင်", 
                                  command=lambda: self.move_image(-1))
        self.prev_btn.pack(side="left", padx=10)

        self.next_btn = tk.Button(btn_frame, text="ၵႂႃႇၽၢႆႇၼႃႈ >>", 
                                  command=lambda: self.move_image(1))
        self.next_btn.pack(side="left", padx=10)

        # ၼႄႁၢင်ႈတူဝ်ထူၼ်ႈၼိုင်ႈ
        self.load_image()

    def load_image(self):
        try:
            # ဢဝ်ၸိုဝ်ႈႁၢင်ႈၸွမ်း Index မႃးပိုတ်ႇ
            img_path = self.image_list[self.current_idx]
            raw_img = Image.open(img_path)
            raw_img.thumbnail((450, 400))
            
            self.tk_img = ImageTk.PhotoImage(raw_img)
            self.display_lbl.config(image=self.tk_img)
            self.title(f"Gallery - Image {self.current_idx + 1} of {len(self.image_list)}")
        except:
            self.display_lbl.config(text="ႁႃ File ႁၢင်ႈဢမ်ႇႁၼ်ၶႃႈ!")

    def move_image(self, direction):
        # 1. မႄး Index (+1 ဢမ်ႇၼၼ် -1)
        self.current_idx += direction

        # 2. Logic: Loop (သင်မၼ်းဝႅၼ်ဢွၵ်ႇပူၼ်ႉ List)
        if self.current_idx >= len(self.image_list):
            self.current_idx = 0 # ဝႅၼ်ၶိုၼ်းမႃးႁူဝ်မၼ်း
        elif self.current_idx < 0:
            self.current_idx = len(self.image_list) - 1 # ဝႅၼ်ၵႂႃႇႁၢင်ႈသုတ်း

        # 3. လူတ်ႇႁၢင်ႈမႂ်ႇ
        self.load_image()

if __name__ == "__main__":
    app = ImageSliderApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.image_list`**: ဢၼ်ၼႆႉပဵၼ် "တီႈသိမ်း Data" ၶွင်ႁဝ်းၶႃႈ။ ႁဝ်းၸၢင်ႈထႅမ်ၸိုဝ်ႈ File ႁၢင်ႈ ၶဝ်ႈၵႂႃႇလၢႆလၢႆဢၼ်လႆႈၶႃႈယဝ်ႉ။
* **`lambda: self.move_image(1)`**: ႁဝ်းၸႂ်ႉ Lambda (Lesson 12) တႃႇသူင်ႇ Data ဝႃႈ ႁဝ်းၶႂ်ႈၵႂႃႇၽၢႆႇၼႃႈ (1) ဢမ်ႇၼၼ် ၽၢႆႇလင် (-1) ၶႃႈၼႃ။
* **Index Loop**: ၵၢၼ်ၸႂ်ႉ `if-elif` တေၸွႆႈႁႂ်ႈ Software ႁဝ်း ဢမ်ႇ Error မိူဝ်ႈ Index မၼ်းပူၼ်ႉ Length ၶွင် List ၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Image Slider** တႃႇပဵၼ် Main Feature ၶွင် Software ႁဝ်းၶႃႈ။
2.  ႁဝ်းတေၸွႆႈႁႂ်ႈ User ပိၼ်ႇတူၺ်းႁၢင်ႈလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇ File မႂ်ႇတႃႇသေႇၶႃႈယဝ်ႉ။

---