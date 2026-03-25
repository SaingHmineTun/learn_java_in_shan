## Lesson 32: Project - TMK Photo & Icon Viewer
**(ပၢင်သွၼ်: တႅမ်ႈ Software တူၺ်းႁၢင်ႈ လႄႈ ၸတ်းၵၢၼ် Icons တဵမ်ပိူင်)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
ႁဝ်းတေၸတ်းၼႃႈတႃ Software ႁဝ်းလူၺ်ႈ **Frames** ၼင်ႇၼႆၶႃႈ:
* **Sidebar (Left):** မီး **Listbox** လႄႈ **Scrollbar** တႃႇလိူၵ်ႈၸိုဝ်ႈႁၢင်ႈ။
* **Main Viewer (Center):** လွၵ်းၼႄႁၢင်ႈယႂ်ႇယႂ်ႇ ဢၼ်မီး Function **Rotate**။
* **Footer (Bottom):** မီး Button **Next / Previous** တႃႇပိၼ်ႇတူၺ်းႁၢင်ႈ။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
ၸၢမ်းတႅမ်ႈ Code ဢၼ်ပဵၼ် Project ယႂ်ႇၼႆႉ ၼႂ်း PyCharm ၶႃႈ။ (လူဝ်ႇမီးႁၢင်ႈ .jpg/.png ၼႂ်း Folder သေ 3-4 ၶႅပ်းၶႃႈၼႃ)

```python
import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
import os

class TMKPhotoViewer(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Photo & Icon Viewer v1.0")
        self.geometry("800x600")
        
        # 1. Data Setup
        self.folder_path = "." # တူၺ်းႁၢင်ႈၼႂ်း Folder ဢၼ် Code ယူႇဝႆႉ
        self.image_files = [f for f in os.listdir(self.folder_path) if f.lower().endswith(('.png', '.jpg', '.jpeg'))]
        self.current_idx = 0
        self.angle = 0

        if not self.image_files:
            messagebox.showwarning("Warning", "ႁႃ File ႁၢင်ႈၼႂ်း Folder ဢမ်ႇႁၼ်ၶႃႈ!")
        
        self.setup_ui()

    def setup_ui(self):
        # --- Sidebar (Left Frame) ---
        side_frame = tk.Frame(self, width=200, bg="#f0f0f0")
        side_frame.pack(side="left", fill="y")
        
        tk.Label(side_frame, text="Photo List", bg="#f0f0f0", font=("Arial", 10, "bold")).pack(pady=10)
        
        self.listbox = tk.Listbox(side_frame)
        self.listbox.pack(side="left", fill="both", expand=True, padx=(5,0))
        
        scrollbar = tk.Scrollbar(side_frame, command=self.listbox.yview)
        scrollbar.pack(side="right", fill="y")
        self.listbox.config(yscrollcommand=scrollbar.set)
        
        for f in self.image_files:
            self.listbox.insert(tk.END, f)
        self.listbox.bind("<<ListboxSelect>>", self.on_list_select)

        # --- Main Viewer (Center) ---
        self.view_frame = tk.Frame(self, bg="gray")
        self.view_frame.pack(side="top", fill="both", expand=True)
        
        self.img_label = tk.Label(self.view_frame, bg="gray")
        self.img_label.pack(expand=True)

        # --- Footer (Controls) ---
        ctrl_frame = tk.Frame(self, pady=10)
        ctrl_frame.pack(side="bottom", fill="x")
        
        tk.Button(ctrl_frame, text="<< Prev", command=lambda: self.move_img(-1)).pack(side="left", padx=20)
        tk.Button(ctrl_frame, text="Rotate 90°", command=self.rotate_img).pack(side="left", padx=10)
        tk.Button(ctrl_frame, text="Next >>", command=lambda: self.move_img(1)).pack(side="right", padx=20)

        if self.image_files:
            self.load_image()

    def load_image(self):
        try:
            filename = self.image_files[self.current_idx]
            path = os.path.join(self.folder_path, filename)
            
            # Advanced Pillow Handling
            raw_img = Image.open(path)
            raw_img = raw_img.rotate(self.angle, expand=True)
            raw_img.thumbnail((500, 500))
            
            # Memory Optimization (Reference)
            self.tk_img = ImageTk.PhotoImage(raw_img)
            self.img_label.config(image=self.tk_img)
            self.title(f"TMK Viewer - {filename}")
        except Exception as e:
            print(f"Error loading image: {e}")

    def on_list_select(self, event):
        selection = self.listbox.curselection()
        if selection:
            self.current_idx = selection[0]
            self.angle = 0 # Reset rotation
            self.load_image()

    def move_img(self, step):
        self.current_idx = (self.current_idx + step) % len(self.image_files)
        self.angle = 0
        self.load_image()

    def rotate_img(self):
        self.angle = (self.angle + 90) % 360
        self.load_image()

if __name__ == "__main__":
    app = TMKPhotoViewer()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **`os.listdir()`**: ၸွႆႈႁႂ်ႈ Software ႁဝ်း "Smart" လႄႈ ႁႃႁၢင်ႈၼႂ်း Folder လႆႈႁင်းမၼ်း (Automation) ၶႃႈယဝ်ႉ။
* **Sidebar Integration**: မိူဝ်ႈ User ၼႅၵ်းလိူၵ်ႈၸိုဝ်ႈၼႂ်း Listbox ႁၢင်ႈၼႂ်းလွၵ်းလူင်တေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ် (Event Binding)။
* **Memory Reference**: ႁဝ်းသိမ်းႁၢင်ႈဝႆႉၼႂ်း `self.tk_img` တႃႇႁႄႉၵၢင် ဢမ်ႇႁႂ်ႈ Garbage Collector ယႃႉႁၢင်ႈႁဝ်းပႅတ်ႈၶႃႈ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႆႉပဵၼ် Software ဢၼ်မီးလွင်ႈ **Dynamic Media Handling** ဢၼ်လီတႄႉၶႃႈယဝ်ႉ။
* မၼ်းပိုတ်ႇလႆႈတင်း **PNG** လႄႈ **JPG**။
* မၼ်းမီး **Branding** (Custom Title & Layout)။
* မၼ်းမီး **Logic** (Looping Index & Rotation)။

---

ၸၢႆးမၢဝ်းၶႃႈ... ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၶႃႈ တႃႇ **Module 4**! လုၵ်ႈႁဵၼ်းၶဝ် ပေႃးလူတ်းတႅမ်ႈ Software ဢၼ်ၸတ်းၵၢၼ် Media လႆႈၵျႃႉတႄႉတႄႉယဝ်ႉၶႃႈၼႃ။

တႃႇ Module သိုပ်ႇၵႂႃႇၼၼ်ႉ ႁဝ်းတေသိုပ်ႇသွၼ်လွင်ႈ **Web Data & API** (လွင်ႈဢဝ်ၶေႃႈမုၼ်းတူဝ်တႄႉ တီႈၼိူဝ် Internet မႃးၼႄၼႂ်း App) ၼႂ်း **Module 5: Web Data & API Integration** ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Module 5 (Weather API & Requests)
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းထႅမ် Button "Delete Photo" (လူၺ်ႈၸႂ်ႉ `os.remove`)
3. သွၼ်လွင်ႈ `Toplevel` (Window မႂ်ႇ) တႃႇၼႄႁၢင်ႈ "Full Screen"
4. သိုပ်ႇၵႂႃႇ Module 6 (Database) ၵမ်းလဵဝ် သင်ၶဝ်ၶႂ်ႈသွၼ်လွင်ႈသိမ်း Data ယႂ်ႇယႂ်ႇ