## Lesson 6: Working with Images (Pillow Library)
**(လွၵ်းလၢႆးၸႂ်ႉ ၶႅပ်းႁၢင်ႈ လႄႈ ၵၢၼ်ၸႂ်ႉ Pillow)**

### 1. တေလႆႈသႂ်ႇ (Install) Pillow ၸိူင်ႉႁိုဝ်?
Tkinter ယူဝ်းယူဝ်းၼႆႉ မၼ်းဢမ်ႇပေႃးၶႅၼ်ႇ လွင်ႈၸတ်းၵၢၼ် ၶႅပ်းႁၢင်ႈ (Images) ၶႃႈ။ 
ၼင်ႇႁိုဝ်ႁဝ်းတေ မႄးတင်းယႂ်ႇ (resize) ၶႅပ်းႁၢင်ႈလႆႈ လႄႈ ပိုတ်ႇႁၢင်ႈ JPG, PNG လႆႈငၢႆႈငၢႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ဢၼ်ၸိုဝ်ႈဝႃႈ **Pillow** ယဝ်ႉ။

ႁႂ်ႈလုၵ်ႈႁဵၼ်းၶဝ် ပိုတ်ႇ Terminal ၼႂ်း PyCharm သေ တႅမ်ႈဝႃႈ:
```bash
pip install Pillow
```

---

### 2. လွၵ်းလၢႆးၸႂ်ႉ Pillow ၼႂ်း Tkinter
မိူဝ်ႈႁဝ်းတေၸႂ်ႉၼၼ်ႉ ႁဝ်းတေလႆႈ Import ဢဝ် `Image` လႄႈ `ImageTk` မႃးၶႃႈ။

1.  **Image.open():** ပိုတ်ႇ File ၶႅပ်းႁၢင်ႈ။
2.  **resize():** မႄးတင်းယႂ်ႇ (Size) ၶႅပ်းႁၢင်ႈ ႁႂ်ႈမၼ်းလႅပ်ႈၵၼ်တင်း Window ႁဝ်း။
3.  **ImageTk.PhotoImage():** ပိၼ်ႇႁၢင်ႈ Pillow ႁႂ်ႈပဵၼ်ႁၢင်ႈ ဢၼ် Tkinter ပွင်ႇၸႂ်။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code တီႈတႂ်ႈၼႆႉၶႃႈ။ (လူဝ်ႇမီး File ႁၢင်ႈ ၸိုဝ်ႈဝႃႈ `profile.jpg` ဝႆႉၼႂ်း Folder လဵဝ်ၵၼ်ၶႃႈၼႃ)

```python
import tkinter as tk
from PIL import Image, ImageTk  # ႁွင်ႉၸႂ်ႉ Pillow

class ImageApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Lesson 6: Image")
        self.geometry("400x500")

        self.setup_ui()

    def setup_ui(self):
        # 1. ပိုတ်ႇႁၢင်ႈ လႄႈ မႄးတင်းယႂ်ႇ (Resize)
        raw_image = Image.open("profile.jpg")
        resized_image = raw_image.resize((200, 200)) # တင်းၵႂၢင်ႈ x တင်းသုင်
            
            # 2. ပိၼ်ႇႁၢင်ႈ ႁႂ်ႈၸႂ်ႉၼႂ်း Tkinter လႆႈ
            # လူဝ်ႇသႂ်ႇ self. ဝႆႉ ၼင်ႇႁိုဝ်ႁၢင်ႈပေႃးတေဢမ်ႇႁၢႆ
        self.photo = ImageTk.PhotoImage(resized_image)

        # 3. ဢဝ်ႁၢင်ႈသႂ်ႇၼႂ်း Label
        # (Label ၼႆႉ ၼႄလႆႈတင်း လိၵ်ႈ လႄႈ ၶႅပ်းႁၢင်ႈ ၶႃႈၼႃ)
        image_label = tk.Label(self, image=self.photo)
        image_label.pack(pady=20)

        # 4. ထႅမ်လိၵ်ႈတႆး သႂ်ႇတႂ်ႈႁၢင်ႈ
        name_label = tk.Label(self, text="ၸိုဝ်ႈ: ၸၢႆးမၢဝ်း", font=("Panglong", 16))
        name_label.pack(anchor="center", expand=True)

if __name__ == "__main__":
    app = ImageApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`Image.open("...")`**: ၸႂ်ႉတႃႇပိုတ်ႇႁၢင်ႈ (PNG, JPG လႆႈၵူႈမဵဝ်းၶႃႈ)။
* **`resize((width, height))`**: ဢၼ်ၼႆႉ ပဵၼ်လွင်ႈယႂ်ႇၶႃႈ။ သင်ႁၢင်ႈယႂ်ႇၼႅၼ်ႇ မၼ်းတေတဵမ်ၼႃႈၸေႃးၵႂႃႇ။ ႁဝ်းမႄးႁႂ်ႈမၼ်းသၢင်ႇထုၵ်ႇလႆႈၶႃႈ။
* **`self.photo`**: ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ `self.`? သင်ႁဝ်းဢမ်ႇသိမ်းႁၢင်ႈဝႆႉၼႂ်း Variable ဢၼ်မီး `self` ၼႆ Python တေယႃႉႁၢင်ႈႁဝ်းပႅတ်ႈသေ ႁၢင်ႈတေဢမ်ႇဢွၵ်ႇ (Blank) ၶႃႈၼႃ။
* **`expand=True`**: ႁဵတ်းႁႂ်ႈ Widget ႁဝ်း လႆႈပိုၼ်ႉတီႈ (Space) တဵမ်ၼႃႈၸေႃး။
* **`anchor="center`**: ၸၼ်ဢဝ် Widget ႁဝ်း ၵႂႃႇဝၢင်းဝႆႉတီႈ "ၵၢင်သုတ်း" ၶွင်ပိုၼ်ႉတီႈၼၼ်ႉ။ သင်ႁဝ်းဢမ်ႇသႂ်ႇ anchor ၼႆ Tkinter တေဢဝ်မၼ်းဝႆႉတီႈၵၢင်ယူႇ (Default)၊ ၵူၺ်းၵႃႈ တႅမ်ႈသႂ်ႇဝႆႉၼႆ မၼ်းတေၸႅင်ႈလႅင်း လႄႈ ၵုမ်းထိင်းလႆႈငၢႆႈၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
တႃႇတေႁဵတ်း **Shan Digital ID Card** ၼၼ်ႉ ႁဝ်းတေလႆႈ resize ႁၢင်ႈလုၵ်ႈႁဵၼ်း ႁႂ်ႈမၼ်းတူၼ်းၵၼ်ၵူႈၵေႃႉၶႃႈ။

**Trick:** သင်ၶႂ်ႈႁႂ်ႈႁၢင်ႈဢွၵ်ႇမႃး ႁၢင်ႈလီလိူဝ်ၵဝ်ႇ ၸႂ်ႉ `Image.Resampling.LANCZOS` ထႅမ်သႂ်ႇၼႂ်း resize လႆႈၶႃႈ။
(တူဝ်ယၢင်ႇ: `raw_image.resize((200, 200), Image.Resampling.LANCZOS)`)

---

တႃႇ Lesson 6 ၼႆႉ ၸၢႆးမၢဝ်း ပွင်ႇၸႂ်ယဝ်ႉႁႃႉၶႃႈ? သင်ဝႃႈ ၸႂ်ယဝ်ႉ ႁဝ်းတေသိုပ်ႇၵႂႃႇမႄးသီ (Color) လႄႈ တီႈလႅတ်း (Padding) ႁႂ်ႈမၼ်းၵျႃႉၼႂ်း **Lesson 7: Styling Basics** ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Lesson 7
2. သွၼ်လွင်ႈသႂ်ႇႁၢင်ႈ Background (Full Window)
3. ပၼ် Exercise ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code ပိုတ်ႇႁၢင်ႈ 3 ၶႅပ်း ဝၢင်းၸွမ်းၵၼ် (Gallery)