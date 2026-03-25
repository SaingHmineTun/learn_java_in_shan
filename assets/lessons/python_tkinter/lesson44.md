## Lesson 44: Using Treeview
**(လွၵ်းလၢႆးၼႄၶေႃႈမုၼ်း Database ႁႂ်ႈပဵၼ် Table)**

### 1. Treeview ပဵၼ်သင်?
**Treeview** ပဵၼ် Widget ၼႂ်း Module `ttk` (Themed Tkinter)။ 
မၼ်းၸွႆႈႁႂ်ႈႁဝ်း ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း ႁႂ်ႈမီး Column လႄႈ Row မိူၼ်ၼင်ႇၼႂ်း Excel ၶႃႈယဝ်ႉ။ 
မၼ်းပႅၵ်ႇပိူင်ႈတင်း Listbox (Lesson 29) တီႈဢၼ်မၼ်းၼႄလႆႈ "ၶေႃႈမုၼ်းလၢႆမဵဝ်း" (Multiple Columns) ၼႂ်းထႅဝ်လဵဝ်ၵၼ်ၶႃႈ။



---

### 2. ပိူင်ဝၢင်း Treeview Setup
တႃႇတေၼႄ Data လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ 3 ၸၼ်ႉၼႆႉၶႃႈ:
1.  **Columns Definition:** မၵ်းမၼ်ႈဝႃႈတေမီးၵႃႈႁိုင် Column (ID, Name, Age...)။
2.  **Heading:** တႅမ်ႈၸိုဝ်ႈႁူဝ်ၶေႃႈ တီႈၼိူဝ်သုတ်း။
3.  **Insert Data:** ဢဝ် Data တီႈ Database မႃး "ထႅမ်" ၶဝ်ႈၵႂႃႇ။

---

### 3. တူဝ်ယၢင်ႇ Code (Treeview + Database)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ (လူဝ်ႇၸႂ်ႉ `Database` Class တီႈ Lesson 43 ၸွမ်းၶႃႈၼႃ)

```python
import tkinter as tk
from tkinter import ttk # Treeview ယူႇၼႂ်း ttk ၶႃႈ
from database import Database

class StudentListApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.db = Database("tmk_records.db")
        self.title("TMK Student Records - Table View")
        self.geometry("600x400")

        self.setup_ui()
        self.load_data() # ပိုတ်ႇ App မႃးႁႂ်ႈၼႄ Data ၵမ်းလဵဝ်

    def setup_ui(self):
        # 1. သၢင်ႈ Treeview Widget
        cols = ("ID", "Name", "Age", "Grade")
        self.tree = ttk.Treeview(self, columns=cols, show="headings")
        
        # 2. မၵ်းမၼ်ႈ ႁူဝ်ၶေႃႈ (Headings)
        for col in cols:
            self.tree.heading(col, text=col)
            self.tree.column(col, width=100, anchor="center") # ၸတ်းႁႂ်ႈယူႇၵၢင်
        
        self.tree.pack(fill="both", expand=True, padx=10, pady=10)

        # Button တႃႇ Refresh Data
        tk.Button(self, text="Refresh Data", command=self.load_data).pack(pady=5)

    def load_data(self):
        # 1. လၢင်ႉ Data ၵဝ်ႇဢွၵ်ႇၼႂ်း Table ၵွၼ်ႇ
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        # 2. ဢဝ် Data တီႈ Database မႃးထႅမ်ၶဝ်ႈ
        students = self.db.fetch_students()
        for s in students:
            # s တေပဵၼ် Tuple ၸိူင်ႉၼင်ႇ (1, 'Sai Mao', 25, 'Lecturer')
            self.tree.insert("", tk.END, values=s)

if __name__ == "__main__":
    app = StudentListApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`show="headings"`**: သင်ႁဝ်းဢမ်ႇသႂ်ႇဢၼ်ၼႆႉ မၼ်းတေမီး Column ပဝ်ႇဢွၼ်ႇၼိုင်ႈ ၽၢႆႇၼႃႈသုတ်း (တႃႇႁဵတ်း Tree/Folder)၊ ၵူၺ်းၵႃႈ တႃႇ Table ႁဝ်းဢမ်ႇလူဝ်ႇမၼ်းၶႃႈ။
* **`self.tree.get_children()`**: မၼ်းတေပၼ် List ၶွင် Row တင်းသဵင်ႈ ဢၼ်မီးၼႂ်း Table။ ႁဝ်းလူဝ်ႇယႃႉ (Delete) မၼ်းဢွၵ်ႇဢွၼ်တၢင်းၶႃႈ။ သင်ၼၼ် မိူဝ်ႈႁဵတ်း "Refresh" ၼၼ်ႉ Data တေဢမ်ႇသုၵ်ႉၵၼ် (Duplicate) ၶႃႈယဝ်ႉ။
* **`insert("", tk.END, values=s)`**: ဢၼ်ၼႆႉပဵၼ်ၵၢၼ် "ထႅမ်ထႅဝ်မႂ်ႇ" ဝႆႉတီႈလင်သုတ်းၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  **Treeview** တေပဵၼ် "ၼႃႈတႃလူင်" ၶွင် Software ႁဝ်း တႃႇၼႄသဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းတင်းသဵင်ႈ။
2.  ႁဝ်းၸၢင်ႈၼဵၵ်း (Select) တီႈ Row ၼႂ်း Treeview သေ သင်ႇ **Delete** ဢမ်ႇၼၼ် **Update** ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉလႆႈၶႃႈယဝ်ႉ။

---
