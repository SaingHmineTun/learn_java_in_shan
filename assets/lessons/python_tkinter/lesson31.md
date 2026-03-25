## Lesson 31: Optimizing Image Memory
**(လွၵ်းလၢႆးၵုမ်းထိင်း Memory ဢမ်ႇႁႂ်ႈႁၢင်ႈႁၢႆ လႄႈ ဢမ်ႇႁႂ်ႈ Software ၼၵ်း)**

### 1. Garbage Collection ပဵၼ်သင်?
ၼႂ်း Python မၼ်းမီးပိူင်ဢၼ်ႁွင်ႉဝႃႈ **Garbage Collector (GC)** ၶႃႈ။ မၼ်းတေၸွႆႈ "ယႃႉပႅတ်ႈ" Data ဢၼ်မၼ်းထၢင်ႇဝႃႈ ႁဝ်းဢမ်ႇၸႂ်ႉယဝ်ႉၼၼ်ႉ ၼင်ႇႁိုဝ် Memory ပေႃးတေၼမ်တိူဝ်းမႃးၶႃႈ။

ၵူၺ်းၵႃႈ ၼႂ်း Tkinter ၼၼ်ႉ မၼ်းမီးပၼ်ႁႃ **"The Image Bug"**:
* သင်ႁဝ်းပိုတ်ႇႁၢင်ႈၼႂ်း Function ၼိုင်ႈဢၼ်သေ ဢမ်ႇသိမ်းမၼ်းဝႆႉၼႂ်း **`self`** (Class Instance) ၼႆ...
* ပေႃး Function ၼၼ်ႉႁဵတ်းၵၢၼ်ယဝ်ႉၵမ်းလဵဝ် Python တေယႃႉႁၢင်ႈၼၼ်ႉပႅတ်ႈ ၵမ်းလဵဝ်ၶႃႈ။
* ၽွၼ်းလႆႈမၼ်းပဵၼ်: Label ႁဝ်းတေၼႄပဵၼ်လွၵ်းပဝ်ႇ (Empty) ၶႃႈယဝ်ႉ။



---

### 2. လွၵ်းလၢႆးၵႄႈလႅတ်ႈ (Optimization Techniques)
1.  **Keep a Reference:** သိမ်း `ImageTk.PhotoImage` ဝႆႉၼႂ်း `self.variable` တႃႇသေႇ။
2.  **Clear Old Memory:** မိူဝ်ႈပိုတ်ႇႁၢင်ႈမႂ်ႇ ႁဝ်းလူဝ်ႇယႃႉ (Delete) ႁၢင်ႈၵဝ်ႇဢွၵ်ႇၼႂ်း Memory ၵွၼ်ႇ။
3.  **Resizing Early:** ၵၢၼ် Resize ႁၢင်ႈႁႂ်ႈလဵၵ်း (Thumbnail) တေၸွႆႈယွမ်း Memory လႆႈ 10-20 ပုၼ်ႈ (Times) ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸၢမ်းပိုတ်ႇႁၢင်ႈတင်းၼမ် လူၺ်ႈဢမ်ႇႁႂ်ႈ Software ၼၵ်းၶႃႈၼႃ။

```python
import tkinter as tk
from PIL import Image, ImageTk
import gc # Garbage Collector Module

class MemoryOptApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Image Memory Optimizer")
        self.geometry("500x400")
        
        # သိမ်းႁၢင်ႈဝႆႉၼႂ်း List တႃႇႁၢမ်ႈ GC
        self.image_references = [] 

        self.setup_ui()

    def setup_ui(self):
        self.display_frame = tk.Frame(self)
        self.display_frame.pack(pady=20, fill="both", expand=True)

        tk.Button(self, text="လူတ်ႇႁၢင်ႈလၢႆလၢႆၶႅပ်း (Load Images)", 
                  command=self.load_many_images).pack(pady=10)
        
        tk.Button(self, text="လၢင်ႉ Memory (Clear Memory)", 
                  command=self.clear_all).pack(pady=5)

    def load_many_images(self):
        # ၵၢၼ်လၢင်ႉ Memory ၵဝ်ႇၵွၼ်ႇတေတႄႇ
        self.clear_all()
        
        try:
            for i in range(5):
                img = Image.open("student.jpg")
                img.thumbnail((100, 100)) # Optimize ႁၢင်ႈၵမ်းလဵဝ်
                
                photo = ImageTk.PhotoImage(img)
                
                # IMPORTANT: သိမ်း Reference ဝႆႉ၊ သင်ဢမ်ႇၼၼ် ႁၢင်ႈတေႁၢႆ
                self.image_references.append(photo)
                
                lbl = tk.Label(self.display_frame, image=photo)
                lbl.pack(side="left", padx=5)
        except:
            print("Error loading images")

    def clear_all(self):
        # 1. ယႃႉ Widgets ဢွၵ်ႇၼႂ်း Frame
        for widget in self.display_frame.winfo_children():
            widget.destroy()
            
        # 2. လၢင်ႉ List ၶွင် Reference (ႁႂ်ႈ Python GC ႁဵတ်းၵၢၼ်)
        self.image_references.clear()
        
        # 3. သင်ႇႁႂ်ႈ Python လၢင်ႉ Garbage ၵမ်းလဵဝ် (Manual GC)
        gc.collect()
        print("Memory Cleared!")

if __name__ == "__main__":
    app = MemoryOptApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`self.image_references.append(photo)`**: ဢၼ်ၼႆႉပဵၼ် "Insurance" (ၵၢၼ်ႁႄႉၵၢင်ႈ) ၶႃႈ။ တိုၼ်းလူဝ်ႇမီး Reference ဝႆႉ ၼင်ႇႁိုဝ် Python ပေႃးတေႁူႉဝႃႈ ႁၢင်ႈၼႆႉႁဝ်းတိုၵ်ႉၸႂ်ႉယူႇၶႃႈ။
* **`gc.collect()`**: ၵႆႉၸႂ်ႉမိူဝ်ႈႁဝ်းပိုတ်ႇႁၢင်ႈယႂ်ႇယႂ်ႇ (High Resolution) ၶႃႈ။ မၼ်းတေၸွႆႈထွၼ်ဢဝ် Memory ဢၼ်ဢမ်ႇၸႂ်ႉယဝ်ႉၼၼ်ႉ ပၼ်ၶိုၼ်း OS ၵမ်းလဵဝ်ၶႃႈ။
* **Thumbnail First**: ႁဝ်းမႄးလႅၵ်ႈႁၢင်ႈ ႁႂ်ႈလဵၵ်းဢွၼ်တင်း မိူဝ်ႈပႆႇပိၼ်ႇပဵၼ် `ImageTk` ၼၼ်ႉ ပဵၼ်လွၵ်းလၢႆး Optimization ဢၼ်လီလိူဝ်ပိူၼ်ႈၶႃႈယဝ်ႉ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  မိူဝ်ႈ User ပိၼ်ႇႁၢင်ႈ (Next/Prev) ႁဝ်းလူဝ်ႇ **Overwrite** ႁၢင်ႈၵဝ်ႇပႅတ်ႈ ၼင်ႇႁိုဝ် Memory ပေႃးတေဢမ်ႇတဵမ်ၶႃႈ။
2.  ၸႂ်ႉ Thumbnail တႃႇၼႄၼႂ်း Sidebar Sidebar ၼင်ႇႁိုဝ် Software ပေႃးတေၶၼ်လႆႈၽႂ်း (Fast Response) ၶႃႈယဝ်ႉ။

---