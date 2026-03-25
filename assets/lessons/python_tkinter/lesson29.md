## Lesson 29: Displaying Lists with Scrollbars
**(လွၵ်းလၢႆးၼႄသဵၼ်ႈၸိုဝ်ႈႁၢင်ႈ လၢႆလၢႆဢၼ် လႄႈ လွင်ႈၸႂ်ႉ သဵၼ်ႈၸၼ်လူင်း)**

### 1. Listbox & Scrollbar ပဵၼ်သင်?
* **Listbox:** ပဵၼ် Widget ဢၼ်ၼႄသဵၼ်ႈၸိုဝ်ႈ (List) ၼမ်ၼမ်သေ ပၼ်ႁဝ်း "ၼဵၵ်းလိူၵ်ႈ" (Select) ဢဝ် ၵႃႈၶၼ်ႈၼႂ်းမၼ်းလႆႈၶႃႈ။
* **Scrollbar:** ပဵၼ်တုမ်ႇဢွၼ်ႇ ဢၼ်ယူႇၽၢႆႇၶႂႃ ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်းၸၼ်တူၺ်း Data ဢၼ်ယၢဝ်းပူၼ်ႉၼႃႈၸေႃးၶႃႈယဝ်ႉ။



---

### 2. လွၵ်းလၢႆးၵွင်ႉၵၼ် (The Connection)
ၼင်ႇႁိုဝ် Scrollbar တေၸွႆႈၸၼ် Listbox လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၵွင်ႉမၼ်းသွင်ဢၼ်ၶႃႈ:
1.  **Listbox** လူဝ်ႇမၵ်းမၼ်ႈ `yscrollcommand` ပၼ် Scrollbar။
2.  **Scrollbar** လူဝ်ႇမၵ်းမၼ်ႈ `command` ပၼ် Listbox ၶိုၼ်းၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code (Code Example)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေသၢင်ႈ Sidebar တႃႇလိူၵ်ႈႁၢင်ႈၶႃႈၼႃ။

```python
import tkinter as tk

class ListScrollApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK - Photo List Sidebar")
        self.geometry("450x300")
        
        # သၢင်ႈ Data တူဝ်ယၢင်ႇ (ၸိုဝ်ႈႁၢင်ႈ 20 ဢၼ်)
        self.photos = [f"Photo_Number_{i}.jpg" for i in range(1, 21)]

        self.setup_ui()

    def setup_ui(self):
        # 1. သၢင်ႈ Frame တႃႇသိမ်း List + Scrollbar
        list_frame = tk.Frame(self)
        list_frame.pack(pady=20, padx=20, fill="both", expand=True)

        # 2. သၢင်ႈ Scrollbar
        scrollbar = tk.Scrollbar(list_frame)
        scrollbar.pack(side="right", fill="y")

        # 3. သၢင်ႈ Listbox လႄႈ ၵွင်ႉၸွမ်း Scrollbar
        self.listbox = tk.Listbox(list_frame, font=("Arial", 11), 
                                  yscrollcommand=scrollbar.set)
        self.listbox.pack(side="left", fill="both", expand=True)

        # 4. ၵွင်ႉ Scrollbar ၶိုၼ်းၸွမ်း Listbox
        scrollbar.config(command=self.listbox.yview)

        # 5. ထႅမ်ၸိုဝ်ႈႁၢင်ႈၶဝ်ႈၼႂ်း Listbox
        for item in self.photos:
            self.listbox.insert(tk.END, item)

        # 6. Bind Event: မိူဝ်ႈ User ၼႅၵ်းလိူၵ်ႈ (Double Click)
        self.listbox.bind("<<ListboxSelect>>", self.on_select_logic)

        self.info_lbl = tk.Label(self, text="လိူၵ်ႈၸိုဝ်ႈႁၢင်ႈ တီႈၼိူဝ်ၶႃႈ", font=("Panglong", 12))
        self.info_lbl.pack(pady=10)

    def on_select_logic(self, event):
        # ဢဝ် Index ဢၼ် User ၼႅၵ်းလိူၵ်ႈဝႆႉၼၼ်ႉမႃး
        try:
            selection = self.listbox.curselection()
            if selection:
                idx = selection[0]
                selected_photo = self.listbox.get(idx)
                self.info_lbl.config(text=f"ၸဝ်ႈၵဝ်ႇလိူၵ်ႈဝႆႉ: {selected_photo}", fg="blue")
        except:
            pass

if __name__ == "__main__":
    app = ListScrollApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`yscrollcommand=scrollbar.set`**: သင်ႇႁႂ်ႈ Listbox သူင်ႇၶေႃႈမုၼ်းလွင်ႈ "Position" (တီႈယူႇ) ၵႂႃႇပၼ် Scrollbar ၶႃႈ။
* **`scrollbar.config(command=self.listbox.yview)`**: သင်ႇႁႂ်ႈ Scrollbar ၵႂႃႇ "ၸၼ်" (View) ၼႃႈလိၵ်ႈၼႂ်း Listbox ၶႃႈယဝ်ႉ။
* **`<<ListboxSelect>>`**: ဢၼ်ၼႆႉပဵၼ် Virtual Event ၶႃႈ။ မၼ်းတေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈ User ၼဵၵ်းလိူၵ်ႈဢၼ်လႂ်ဢၼ်ၼၼ်ႉ ၼႂ်း List ၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Photo & Icon Viewer** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Listbox** ဝႆႉၽၢႆႇသၢႆႉ (Sidebar) တႃႇၼႄၸိုဝ်ႈႁၢင်ႈတင်းသဵင်ႈ။
2.  မိူဝ်ႈ User ၼႅၵ်းလိူၵ်ႈၸိုဝ်ႈၼႂ်း Sidebar ႁဝ်းတေၸႂ်ႉ **Dynamic Loading (Lesson 27)** တႃႇပိုတ်ႇႁၢင်ႈၼႄၼႂ်းလွၵ်းလူင်ၶႃႈယဝ်ႉ။

---
