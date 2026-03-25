## Lesson 42: SQL Basics (CRUD)
**(လွၵ်းလၢႆး ထႅမ်၊ လူ၊ မႄး၊ လႄႈ ယႃႉ ၶေႃႈမုၼ်း)**

### 1. CRUD ပဵၼ်သင်?
* **C**reate (**INSERT**): ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ။
* **R**ead (**SELECT**): ၵၢၼ်လူတူၺ်းၶေႃႈမုၼ်း။
* **U**pdate (**UPDATE**): ၵၢၼ်မႄးၶေႃႈမုၼ်းၵဝ်ႇ။
* **D**elete (**DELETE**): ၵၢၼ်ယႃႉၶေႃႈမုၼ်း။



---

### 2. တူဝ်ယၢင်ႇ SQL Commands
ႁဝ်းတေၸႂ်ႉလိၵ်ႈ SQL (Structured Query Language) တႃႇလၢတ်ႈတေႃႇ Database ၶႃႈ။

| Operation | SQL Command (တူဝ်ယၢင်ႇ) | ၶေႃႈပိုတ်ႇၸႅင်ႈ |
| :--- | :--- | :--- |
| **Create** | `INSERT INTO students (name, age) VALUES ('Sai La', 18)` | ထႅမ်ၸၢႆးလႃႉ ၶဝ်ႈၼႂ်းသဵၼ်ႈၸိုဝ်ႈ |
| **Read** | `SELECT * FROM students` | ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း တင်းသဵင်ႈမႃးၼႄ |
| **Update** | `UPDATE students SET age = 19 WHERE name = 'Sai La'` | မႄးဢႃႇယု ၸၢႆးလႃႉ ႁႂ်ႈပဵၼ် 19 |
| **Delete** | `DELETE FROM students WHERE id = 1` | လူတ်းပႅတ်ႈလုၵ်ႈႁဵၼ်း မၢႆ 1 |

---

### 3. တူဝ်ယၢင်ႇ Code (Python + SQL)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ၼႆႉၶႃႈ။ ႁဝ်းတေၸမ်းထႅမ်ၸိုဝ်ႈသေ လူတူၺ်းၶိုၼ်းၶႃႈၼႃ။

```python
import sqlite3

# 1. Connect
conn = sqlite3.connect("tmk_records.db")
cursor = conn.cursor()

# 2. INSERT (Create) - ထႅမ်ၶေႃႈမုၼ်း
cursor.execute("INSERT INTO students (name, age, grade) VALUES (?, ?, ?)", 
               ("Sai Mao", 25, "Lecturer"))

# 3. SELECT (Read) - လူတူၺ်းၶေႃႈမုၼ်း
cursor.execute("SELECT * FROM students")
rows = cursor.fetchall() # ဢဝ် Data တင်းသဵင်ႈမႃးဝႆႉၼႂ်း List

print("--- သဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ---")
for row in rows:
    print(f"ID: {row[0]}, Name: {row[1]}, Age: {row[2]}, Grade: {row[3]}")

# 4. Save & Close
conn.commit()
conn.close()
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **The Question Mark `?`**: ႁဝ်းၸႂ်ႉ `?` တႅၼ်းၵႃႈၶၼ်တႄႉတႄႉ ၼင်ႇႁိုဝ်ပေႃးတေႁႄႉၵၢင်ႈလႆႈ **SQL Injection** (ၵၢၼ်လၵ်ႉ Hack Database) ၶႃႈယဝ်ႉ။ ဢၼ်ၼႆႉပဵၼ်လွၵ်းလၢႆး Security ဢၼ်လီလိူဝ်ပိူၼ်ႈၶႃႈ။
* **`fetchall()`**: မၼ်းတေပိၼ်ႇၶေႃႈမုၼ်းတီႈ Database မႃးပဵၼ် **List of Tuples** ၼင်ႇႁိုဝ် Python ပေႃးတေၸၢင်ႈၸႂ်ႉ `for loop` သေၼႄလႆႈငၢႆႈငၢႆႈၶႃႈ။
* **`WHERE` Clause**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ! သင်ၸဝ်ႈၵဝ်ႇသင်ႇ `DELETE FROM students` လူၺ်ႈဢမ်ႇပႃး `WHERE` ၼႆ ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း **တင်းသဵင်ႈ** တေႁၢႆၵႂႃႇၵမ်းလဵဝ်ၶႃႈၼႃ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **INSERT** မိူဝ်ႈ User ၼဵၵ်း Button "Add Student"။
2.  ႁဝ်းတေၸႂ်ႉ **SELECT** တႃႇဢဝ်ၶေႃႈမုၼ်းမႃးၼႄၼႂ်း Table (Treeview) ၶႃႈယဝ်ႉ။

---