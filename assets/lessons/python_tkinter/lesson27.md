## Lesson 27: Dynamic Image Loading from File Paths
**(လွၵ်းလၢႆးပိုတ်ႇႁၢင်ႈ လူၺ်ႈၵၢၼ်လိူၵ်ႈ File တီႈၼႂ်း Folder)**

### 1. File Dialog ပဵၼ်သင်? (What is a File Dialog?)
**File Dialog** ၼႆႉ ပဵၼ် Window ဢွၼ်ႇ ဢၼ် Popup ဢွၵ်ႇမႃး ႁႂ်ႈႁဝ်းလိူၵ်ႈ File (Open/Save) မိူၼ်ၼင်ႇ ၼႂ်း Windows Explorer ဢမ်ႇၼၼ် macOS Finder ၼၼ်ႉယဝ်ႉၶႃႈ။

ၼႂ်း Tkinter ႁဝ်းၸႂ်ႉ Module ဢၼ်ၸိုဝ်ႈဝႃႈ **`filedialog`** ၶႃႈယဝ်ႉ။



---

### 2. လွၵ်းလၢႆးႁဵတ်းၵၢၼ် (The Workflow)
1.  **Ask:** ႁႂ်ႈ User လိူၵ်ႈ File ႁၢင်ႈ။
2.  **Path:** ဢဝ် "တီႈယူႇ File" (File Path) ၼၼ်ႉမႃးသိမ်းဝႆႉ။
3.  **Open:** ၸႂ်ႉ **Pillow** ပိုတ်ႇႁၢင်ႈၸွမ်းၼင်ႇ Path ၼၼ်ႉသေ ၼႄၼႂ်း Label ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေႁဵတ်း Button တႃႇပိုတ်ႇႁၢင်ႈ ဢၼ်လႂ်ၵေႃႈလႆႈၶႃႈၼႃ။

```python
import tkinter as tk
from tkinter import filedialog # လူဝ်ႇ Import ဢၼ်ၼႆႉၸွမ်းၶႃႈ
from PIL import Image, ImageTk

class DynamicLoaderApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Dynamic Image Loader")
        self.geometry("500x550")
        
        self.setup_ui()

    def setup_ui(self):
        # 1. လွၵ်းၼႄႁၢင်ႈ (Default ပဵၼ်လွၵ်းလမ်ဝႆႉ)
        self.img_label = tk.Label(self, text="ဢမ်ႇပႆႇမီးႁၢင်ႈ", bg="#eeeeee", width=50, height=15)
        self.img_label.pack(pady=20)

        # 2. Button တႃႇလိူၵ်ႈႁၢင်ႈ (Browse)
        tk.Button(self, text="လိူၵ်ႈပိုတ်ႇႁၢင်ႈ (Open Image)", 
                  font=("NamKhone", 12), command=self.open_file_logic).pack(pady=10)

        # 3. Label ၼႄ File Path (တီႈယူႇႁၢင်ႈ)
        self.path_lbl = tk.Label(self, text="File Path: ---", font=("Arial", 9), fg="gray")
        self.path_lbl.pack(pady=10)

    def open_file_logic(self):
        # ဢဝ် Window လိူၵ်ႈ File ဢွၵ်ႇမႃး
        file_path = filedialog.askopenfilename(
            title="လိူၵ်ႈႁၢင်ႈၸဝ်ႈၵဝ်ႇ",
            filetypes=[("Image Files", "*.jpg *.png *.jpeg *.gif"), ("All Files", "*.*")]
        )

        # သင် User လိူၵ်ႈ File တႄႉ (ဢမ်ႇပိၵ်ႉ Window ပႅတ်ႈ)
        if file_path:
            try:
                # 1. ပိုတ်ႇႁၢင်ႈလူၺ်ႈ Path ဢၼ်လႆႈမႃး
                raw_img = Image.open(file_path)
                
                # 2. Resize ႁႂ်ႈသၢင်ႇထုၵ်ႇ
                raw_img.thumbnail((400, 300))
                
                self.tk_img = ImageTk.PhotoImage(raw_img)
                
                # 3. ၼႄႁၢင်ႈၼႂ်း Label
                self.img_label.config(image=self.tk_img, text="")
                self.path_lbl.config(text=f"File Path: {file_path}")
                
            except Exception as e:
                print(f"Error: ဢမ်ႇၸၢင်ႈပိုတ်ႇႁၢင်ႈလႆႈၶႃႈ! ({e})")

if __name__ == "__main__":
    app = DynamicLoaderApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`filedialog.askopenfilename()`**: မၼ်းတေတုမ်ႉတွပ်ႇမႃးပဵၼ် **String** ဢၼ်ပဵၼ် "Full Path" (တူဝ်ယၢင်ႇ: `C:/Users/SaiMao/Pictures/shan.jpg`) ၶႃႈယဝ်ႉ။
* **`filetypes`**: ၸွႆႈၵူတ်ႇထတ်း (Filter) ႁႂ်ႈ User ႁၼ်လႆႈ File ၶႅပ်းႁၢင်ႈၵူၺ်း ၼင်ႇႁိုဝ်ၶဝ်ပေႃးတေဢမ်ႇပိုတ်ႇ File ၽိတ်း (မိူၼ်ၼင်ႇ .pdf ဢမ်ႇၼၼ် .exe)။
* **Memory Reference**: မိူၼ်ၼင်ႇပွၵ်ႈၵွၼ်ႇ၊ ႁဝ်းလူဝ်ႇသိမ်း `self.tk_img` ဝႆႉ ၼင်ႇႁိုဝ် Python Garbage Collector ပေႃးတေဢမ်ႇယႃႉႁၢင်ႈႁဝ်းပႅတ်ႈ မိူဝ်ႈ Function ယဝ်ႉတူဝ်ႈၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **File Dialog** တႃႇႁႂ်ႈ User လိူၵ်ႈ Logo ဢမ်ႇၼၼ် ႁၢင်ႈလုၵ်ႈႁဵၼ်းၶဝ် ႁင်းမၼ်းၶႃႈ။
2.  ၵၢၼ်ၸႂ်ႉ **Dynamic Path** တေႁဵတ်းႁႂ်ႈ Software ႁဝ်းၸႂ်ႉလႆႈၵူႈတီႈ ဢမ်ႇလူဝ်ႇမီး File ဝႆႉၼႂ်း Folder လဵဝ်ၵၼ်ၵေႃႈလႆႈၶႃႈယဝ်ႉ။

---