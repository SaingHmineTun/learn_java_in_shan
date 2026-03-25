## Lesson 43: The Database Wrapper
**(လွၵ်းလၢႆးႁူမ်ႈ Code Database ႁႂ်ႈၸႂ်ႉငၢႆႈၼႂ်း Tkinter)**

### 1. Database Wrapper ပဵၼ်သင်?
**Wrapper** မၢႆထိုင် ၵၢၼ်ဢဝ် Code SQL ဢၼ်ယုင်ႈယၢင်ႇၼၼ်ႉ ၵႂႃႇသိမ်းဝႆႉၼႂ်း **Class** ဢၼ်ၼိုင်ႈ။ 
ပေႃးႁဝ်းလူဝ်ႇၸႂ်ႉ တီႈၼႂ်း GUI ႁဝ်းၵေႃႈ ၵူၺ်းသင်ႇၸႂ်ႉ Function ၸိူင်ႉၼင်ႇ `db.add_student()` သေ ဢမ်ႇလူဝ်ႇတႅမ်ႈ SQL မႂ်ႇၶႃႈယဝ်ႉ။



---

### 2. တူဝ်ယၢင်ႇ Code (Database Class)
ႁဝ်းၸၢမ်းတႅမ်ႈ Code ၼႆႉဝႆႉၼႂ်း File ဢၼ်ၼိုင်ႈ (တူဝ်ယၢင်ႇ: `database.py`) ၶႃႈၼႃ။

```python
import sqlite3

class Database:
    def __init__(self, db_file):
        self.conn = sqlite3.connect(db_file)
        self.cursor = self.conn.cursor()
        self.create_table()

    def create_table(self):
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS students (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT,
                age INTEGER,
                grade TEXT
            )
        ''')
        self.conn.commit()

    def add_student(self, name, age, grade):
        self.cursor.execute("INSERT INTO students (name, age, grade) VALUES (?, ?, ?)", 
                           (name, age, grade))
        self.conn.commit()

    def fetch_students(self):
        self.cursor.execute("SELECT * FROM students")
        return self.cursor.fetchall()

    def delete_student(self, student_id):
        self.cursor.execute("DELETE FROM students WHERE id = ?", (student_id,))
        self.conn.commit()
```

---

### 3. ၵၢၼ်ၸႂ်ႉတိုဝ်းၼႂ်း Tkinter (GUI Integration)
ၵမ်းၼႆႉ ၼႂ်း File GUI ႁဝ်း (တူဝ်ယၢင်ႇ: `app.py`) ႁဝ်းတေၸႂ်ႉ Database Class ၼၼ်ႉငၢႆႈငၢႆႈၼင်ႇၼႆၶႃႈ:

```python
import tkinter as tk
from database import Database # Import Class ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ

class StudentApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.db = Database("tmk_records.db") # ၵွင်ႉ Database ၵမ်းလဵဝ်
        
        self.title("TMK Student Manager")
        self.geometry("300x200")
        
        # UI: Entry for Name
        tk.Label(self, text="ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း:").pack()
        self.name_entry = tk.Entry(self)
        self.name_entry.pack()
        
        # Button to Add
        tk.Button(self, text="ထႅမ်ၶေႃႈမုၼ်း", command=self.save_data).pack(pady=10)

    def save_data(self):
        name = self.name_entry.get()
        if name:
            self.db.add_student(name, 18, "Grade 10") # ၸႂ်ႉ Wrapper ငၢႆႈငၢႆႈ
            self.name_entry.delete(0, tk.END)
            print("သိမ်းယဝ်ႉယဝ်ႉၶႃႈ!")

if __name__ == "__main__":
    app = StudentApp()
    app.mainloop()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **Separation of Concerns:** GUI မီးၼႃႈတီႈၼႄ "ၼႃႈတႃ"၊ Database Class မီးၼႃႈတီႈၸတ်းၵၢၼ် "ၶေႃႈမုၼ်း"။ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ် (Clean Code) ၶႃႈယဝ်ႉ။
* **Reusability:** သင်ႁဝ်းၶႂ်ႈႁဵတ်း Software တၢင်ႇဢၼ် ဢၼ်လူဝ်ႇၸႂ်ႉ Database လုၵ်ႈႁဵၼ်းမိူၼ်ၵၼ်၊ ၸဝ်ႈၵဝ်ႇၵူၺ်းၵႂႃႇဢဝ် `database.py` ၼၼ်ႉၵႂႃႇၸႂ်ႉလႆႈၵမ်းလဵဝ်ၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Database Wrapper** တႃႇႁပ်ႉၶေႃႈမုၼ်းတင်းသဵင်ႈ တီႈ Entry Widgets။
2.  မၼ်းတေၸွႆႈႁႂ်ႈႁဝ်းမႄး (Debug) ပၼ်ႁႃလႆႈငၢႆႈ မိူဝ်ႈ Database မီးလွင်ႈၽိတ်းပိူင်ၶႃႈယဝ်ႉ။

---
