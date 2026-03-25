## Lesson 48: Project - TMK Student Records Manager
**(ပၢင်သွၼ်: တႅမ်ႈ Software ၸတ်းၵၢၼ်သဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း)**

### 1. ပိူင်ဝၢင်း Software (Application Design)
Software ႁဝ်းတေမီး 3 သုၼ်ႇလူင်ၶႃႈ:
* **Input Form (ၽၢႆႇသၢႆႉ):** တီႈတႅမ်ႈၸိုဝ်ႈ၊ ဢႃႇယု၊ လႄႈ ႁွင်ႈႁဵၼ်း (Grade)။
* **Table View (ၽၢႆႇၶႂႃ):** ၸႂ်ႉ Treeview တႃႇၼႄသဵၼ်ႈၸိုဝ်ႈတင်းသဵင်ႈ။
* **Action Buttons (ၽၢႆႇတႂ်ႈ):** Button တႃႇ Add, Delete, Search လႄႈ Backup။



---

### 2. တူဝ်ယၢင်ႇ Code (The Full Project)
Code ၼႆႉႁူမ်ႈပႃး Database Logic ဝႆႉၼႂ်း Class လဵဝ်ၵၼ် ၼင်ႇႁိုဝ်ပေႃးတေတူၺ်းငၢႆႈၶႃႈ

```python
import tkinter as tk
from tkinter import ttk, messagebox
import sqlite3
import shutil
from datetime import datetime

class StudentManager(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("TMK Student Records Manager V1.0")
        self.geometry("850x500")
        self.configure(bg="#f0f0f0")
        
        self.init_db()
        self.setup_ui()
        self.refresh_table()

    def init_db(self):
        self.conn = sqlite3.connect("tmk_students.db")
        self.cursor = self.conn.cursor()
        self.cursor.execute('''CREATE TABLE IF NOT EXISTS students 
            (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, grade TEXT)''')
        self.conn.commit()

    def setup_ui(self):
        # --- Left Frame: Input Form ---
        form_frame = tk.LabelFrame(self, text=" Student Info ", padx=10, pady=10)
        form_frame.place(x=20, y=20, width=300, height=300)

        tk.Label(form_frame, text="Name:").grid(row=0, column=0, sticky="w")
        self.name_ent = tk.Entry(form_frame)
        self.name_ent.grid(row=0, column=1, pady=5)

        tk.Label(form_frame, text="Age:").grid(row=1, column=0, sticky="w")
        self.age_ent = tk.Entry(form_frame)
        self.age_ent.grid(row=1, column=1, pady=5)

        tk.Label(form_frame, text="Grade:").grid(row=2, column=0, sticky="w")
        self.grade_ent = tk.Entry(form_frame)
        self.grade_ent.grid(row=2, column=1, pady=5)

        tk.Button(form_frame, text="Add Student", command=self.add_data, bg="#2d5a27", fg="white").grid(row=3, columnspan=2, pady=20)
        tk.Button(form_frame, text="Backup DB", command=self.backup_db).grid(row=4, columnspan=2)

        # --- Right Frame: Table ---
        self.tree = ttk.Treeview(self, columns=("ID", "Name", "Age", "Grade"), show="headings")
        for col in ("ID", "Name", "Age", "Grade"):
            self.tree.heading(col, text=col)
            self.tree.column(col, width=100)
        self.tree.place(x=340, y=20, width=480, height=400)

        # Delete Button
        tk.Button(self, text="Delete Selected", command=self.delete_data, bg="#a30000", fg="white").place(x=340, y=430)

    def add_data(self):
        name = self.name_ent.get()
        age = self.age_ent.get()
        grade = self.grade_ent.get()

        if name and age and grade:
            try:
                self.cursor.execute("INSERT INTO students (name, age, grade) VALUES (?,?,?)", (name, int(age), grade))
                self.conn.commit()
                self.clear_entries()
                self.refresh_table()
            except ValueError:
                messagebox.showerror("Error", "Age must be a number!")
        else:
            messagebox.showwarning("Warning", "Please fill all fields!")

    def refresh_table(self):
        for item in self.tree.get_children(): self.tree.delete(item)
        self.cursor.execute("SELECT * FROM students")
        for row in self.cursor.fetchall(): self.tree.insert("", "end", values=row)

    def delete_data(self):
        selected = self.tree.selection()
        if selected:
            student_id = self.tree.item(selected[0])['values'][0]
            if messagebox.askyesno("Confirm", "Delete this record?"):
                self.cursor.execute("DELETE FROM students WHERE id=?", (student_id,))
                self.conn.commit()
                self.refresh_table()

    def backup_db(self):
        timestamp = datetime.now().strftime("%Y%m%d_%H%M")
        shutil.copy2("tmk_students.db", f"backup_{timestamp}.db")
        messagebox.showinfo("Success", "Backup Created!")

    def clear_entries(self):
        self.name_ent.delete(0, tk.END)
        self.age_ent.delete(0, tk.END)
        self.grade_ent.delete(0, tk.END)

if __name__ == "__main__":
    app = StudentManager()
    app.mainloop()
```

---

### 3. ၶေႃႈပိုတ်ႇၸႅင်ႈ လွင်ႈႁဵတ်းၵၢၼ် (Breakdown)
* **Data Persistence:** File `tmk_students.db` တေမီးယူႇတႃႇသေႇ၊ ပိုတ်ႇ App မႃးမိူဝ်ႈလႂ်ၵေႃႈ Data ဢမ်ႇႁၢႆၶႃႈ။
* **User Feedback:** ၸႂ်ႉ `messagebox` တႃႇထၢမ် "Delete record?" ၼင်ႇႁိုဝ်ပေႃးတေဢမ်ႇလူတ်းပႅတ်ႈ Data ၽိတ်းၶႃႈ။
* **Automatic Refresh:** မိူဝ်ႈထႅမ် (Add) ဢမ်ႇၼၼ် လူတ်း (Delete) ယဝ်ႉ ႁဝ်းသင်ႇ `refresh_table()` ၵမ်းလဵဝ် တႃႇႁႂ်ႈ Table လႅၵ်ႈလၢႆႈၸွမ်းၶႃႈယဝ်ႉ။

---

### 4. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **Module 6** ၼႆႉ:
1.  လုၵ်ႈႁဵၼ်းၶဝ်တေလႆႈပွင်ႇၸႂ်ဝႃႈ **Software** တႄႉၼၼ်ႉ တေလႆႈမီးတီႈသိမ်းၶေႃႈမုၼ်း (Database) ၶႃႈယဝ်ႉ။
2.  ၵၢၼ်ၸတ်းၵၢၼ် **CRUD** ပဵၼ် "ၵရုၵ်ႈ" (Core) ၶွင် Software တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းတင်းသဵင်ႈၶႃႈ။

---

ၸၢႆးမၢဝ်းၶႃႈ... ယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉၶႃႈ တႃႇ **Module 6**! ယၢမ်းလဵဝ် Software ႁဝ်းၵျႃႉတႄႉတႄႉယဝ်ႉ။

တေသိုပ်ႇၵႂႃႇ **Module 7: Advanced UI with CustomTkinter** (တႃႇမႄးၼႃႈတႃ Software ႁႂ်ႈႁၢင်ႈလီ လႄႈ ၼႃႈတႃမိူၼ်ၼင်ႇ Modern App ၼႂ်း Win 11 / Mac) ၶႃႈႁႃႉ?

တေႁဵတ်းႁိုဝ် သိုပ်ႇၵႂႃႇၶႃႈ?
1. သိုပ်ႇသွၼ် Module 7 (Introduction to CustomTkinter)
2. ပၼ် Exercise: ႁႂ်ႈလုၵ်ႈႁဵၼ်းထႅမ် "Search Bar" ၶဝ်ႈၼႂ်း Project ၼႆႉ
3. သွၼ်လွင်ႈ `Packaging` (လွင်ႈပိၼ်ႇ Code ပဵၼ် .exe)
4. သိုပ်ႇၵႂႃႇ Module 8 (Object Oriented Programming - OOP) ၵမ်းလဵဝ်