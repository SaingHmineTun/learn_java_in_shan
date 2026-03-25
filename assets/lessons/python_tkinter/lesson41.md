## Lesson 41: Introduction to SQLite
**(လွၵ်းလၢႆးတႄႇသၢင်ႈ တီႈသိမ်းၶေႃႈမုၼ်း Database တူဝ်ႁႅၵ်ႈ)**

### 1. SQLite ပဵၼ်သင်? (What is SQLite?)
**SQLite** ၼႆႉ ပဵၼ် Database ဢၼ်လဵၵ်း၊ ဝႆး၊ လႄႈ ၸႂ်ႉငၢႆႈလိူဝ်ပိူၼ်ႈၶႃႈ။ လွင်ႈၶိုၵ်ႉတွၼ်းမၼ်းပဵၼ်:
* **Serverless:** ဢမ်ႇလူဝ်ႇ Install Software Database လူင်လူင် (မိူၼ်ၼင်ႇ MySQL)။ မၼ်းပႃးမႃးၸွမ်း Python တႄႇႁူဝ်ၶႃႈယဝ်ႉ။
* **Single File:** ၶေႃႈမုၼ်းတင်းသဵင်ႈ တေသိမ်းဝႆႉၼႂ်း File ဢွၼ်ႇဢၼ်လဵဝ် (တူဝ်ယၢင်ႇ: `students.db`)။
* **Persistence:** ပေႃးႁဝ်းသိမ်း Data ယဝ်ႉ၊ ပိၵ်ႉ Computer သေ ပိုတ်ႇမႃးမႂ်ႇၵေႃႈ Data တိုၵ်ႉမီးယူႇမိူၼ်ၵဝ်ႇၶႃႈ။



---

### 2. ပိူင်ဝၢင်း Database (Tables, Rows, Columns)
ဝူၼ်ႉတူၺ်းဝႃႈ Database ၼႆႉ ပဵၼ်ၸေႃႈ Excel ဢၼ်ၼိုင်ႈ:
* **Table (သဵၼ်ႈမၢႆၸလၢင်း):** တီႈသိမ်းၶေႃႈမုၼ်းမဵဝ်းလဵဝ်ၵၼ် (တူဝ်ယၢင်ႇ: Table လုၵ်ႈႁဵၼ်း)။
* **Column (ထႅဝ်တင်ႈ):** ပဵၼ် "မဵဝ်း" Data (တူဝ်ယၢင်ႇ: ၸိုဝ်ႈ, ဢႃႇယု, ႁွင်ႈႁဵၼ်း)။
* **Row (ထႅဝ်ၼွၼ်း):** ပဵၼ် "ၶေႃႈမုၼ်းၵေႃႉၼိုင်ႈ" (တူဝ်ယၢင်ႇ: ၸၢႆးလႃႉ, 18 ၶူပ်း, Grade 10)။

---

### 3. တူဝ်ယၢင်ႇ Code (Connecting & Creating a Table)
ၸၢမ်းတႅမ်ႈတူၺ်း Code ဢွၼ်ႇၼႆႉၶႃႈ။ ႁဝ်းတေတႄႇသၢင်ႈ File Database တူဝ်ႁႅၵ်ႈၶႃႈၼႃ။

```python
import sqlite3 # 1. Import library ဢၼ်ပႃးမႃးၸွမ်း Python

# 2. ၵွင်ႉၸွမ်း Database (သင်ဢမ်ႇပႆႇမီး မၼ်းတေသၢင်ႈပၼ်မႂ်ႇၵမ်းလဵဝ်)
conn = sqlite3.connect("tmk_records.db")

# 3. သၢင်ႈ Cursor (ပဵၼ် "မိုဝ်းၸွႆႈ" တႃႇသူင်ႇၶေႃႈသင်ႇ)
cursor = conn.cursor()

# 4. တႅမ်ႈ SQL Command တႃႇသၢင်ႈ Table
# INTEGER PRIMARY KEY = ႁႂ်ႈမၼ်းပၼ်မၢႆ ID ႁင်းမၼ်း (1, 2, 3...)
cursor.execute('''
    CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        age INTEGER,
        grade TEXT
    )
''')

# 5. သိမ်း (Save) လႄႈ ပိၵ်ႉ Connection
conn.commit()
conn.close()

print("Database လႄႈ Table သၢင်ႈယဝ်ႉယဝ်ႉၶႃႈ!")
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`sqlite3.connect()`**: ပဵၼ်ၵၢၼ်ပိုတ်ႇ Database ႁဝ်းၶႃႈ။
* **`cursor.execute()`**: ပဵၼ်ၵၢၼ်သူင်ႇ "ၶေႃႈသင်ႇ" (SQL Query) ၵႂႃႇႁႂ်ႈ Database ႁဵတ်းၵၢၼ်ၶႃႈယဝ်ႉ။
* **`commit()`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၶႃႈ! သင်ဢမ်ႇသင်ႇ commit ၶေႃႈမုၼ်းတေဢမ်ႇထုၵ်ႇသိမ်း (Save) ဝႆႉၼႂ်း File တႄႉတႄႉၶႃႈ။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **SQLite** တႃႇသိမ်းသဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းတင်းသဵင်ႈ ၶႃႈ။
2.  လုၵ်ႈႁဵၼ်းၶဝ်တေလႆႈႁဵၼ်းလွင်ႈ **SQL Language** ဢိတ်းၼိုင်ႈ တႃႇသင်ႇၵၢၼ် Database ၶႃႈယဝ်ႉ။

---