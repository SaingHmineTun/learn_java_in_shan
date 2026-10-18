## 50: Mastering SQL: Writing Basic CRUD Queries

ၼႂ်း Lesson 49 ႁဝ်းလႆႈႁူႉၸၵ်း Database လႄႈ လႆႈ Install ပရူဝ်ႇၵႅမ်ႇ **DB Browser for SQLite** ၵႂႃႇယဝ်ႉၶႃႈ။ 
တွၼ်ႈၼႆႉ ဢွၼ်တၢင်းႁဝ်း တေဢဝ် Java ၵႂႃႇသင်ႇ Database ၼၼ်ႉ၊ ႁဝ်းတေလႆႈမႃးႁဵၼ်း **"ၽႃႇသႃႇၵႂၢမ်း Database"** ဢၼ်ႁွင်ႉဝႃႈ SQL သေ ၸၢမ်းတႅမ်ႈ Code ၼႂ်း DB Browser ႁင်းၵူၺ်း ဢွၼ်တၢင်းၶႃႈ။

### 1. SQL လႄႈ လွင်ႈၶူင်သၢင်ႈ Table

**SQL (Structured Query Language)** ၼႆႉ ပဵၼ်ၽႃႇသႃႇၵႂၢမ်း ဢၼ်ႁဝ်းၸႂ်ႉ တွၼ်ႈတႃႇ သင်ႇၵၢၼ် Database ၵူႈမဵဝ်းမဵဝ်း ၼႂ်းလုမ်ႈၾႃႉၼႆႉၶႃႈ။
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇလႆႈ ၶူင်သၢင်ႈ လွၵ်းသဵၼ်ႈမၢႆ (Table) တွၼ်ႈတႃႇ သိမ်းၶေႃႈမုၼ်း လုၵ်ႉႁဵၼ်းႁဝ်းၶႃႈ။

ပိုတ်ႇ DB Browser > ၼဵၵ်း **Execute SQL** > တႅမ်ႈ Code ၼႆႉသေ ၼဵၵ်း Play (▶):

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    course TEXT NOT NULL,
    phone TEXT
);

```

* **`INTEGER PRIMARY KEY AUTOINCREMENT`**: မၵ်းမၼ်ႈႁႂ်ႈ `id` ပဵၼ်မၢႆလၢၵ်ႇလၢႆး လႄႈ သင်ႇႁႂ်ႈ Database ၼပ်ႉမၢႆ 1, 2, 3... ပၼ်ႁင်းၵူၺ်း (Auto-increment) ၶႃႈ။
* **`TEXT NOT NULL`**: မၵ်းမၼ်ႈဝႃႈ လွၵ်းၼႆႉ တေလႆႈပဵၼ် လိၵ်ႈ လႄႈ ဢမ်ႇပၼ်ပဝ်ႇလၢႆ (Not Null)။

---

### 2. CRUD Operations (ႁူဝ်ၸႂ် ၶွင် Database)

လွင်ႈၸတ်းၵၢၼ် ၶေႃႈမုၼ်း ၵူႈယိူင်ႈ ၼႂ်း Application ၵူႊလွင်ႈလွင်ႈၼၼ်ႉ မၼ်းမီးဝႆႉ 4 လွင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **CRUD** ၶႃႈ:

#### C - Create (လွင်ႈထႅမ်သႂ်ႇ ၶေႃႈမုၼ်းမႂ်ႇ)

ၸႂ်ႉ Command **`INSERT INTO`** တွၼ်ႈတႃႇ သႂ်ႇထႅဝ်မႂ်ႇ။ ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ `id` ၶႃႈ၊ Database တေၼပ်ႉပၼ်ႁင်းၵူၺ်း။

```sql
INSERT INTO students (name, course, phone) 
VALUES ('Sai Mao', 'Java Swing', '09-123456789');

INSERT INTO students (name, course, phone) 
VALUES ('Kham', 'Flutter', '09-987654321');

```

#### R - Read (လွင်ႈဢၢၼ်ႇ လႄႈ ၶူၼ်ႉႁႃ ၶေႃႈမုၼ်း)

ၸႂ်ႉ Command **`SELECT`** တွၼ်ႈတႃႇ ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃး ၼႄ။

```sql
-- 1. ဢၢၼ်ႇဢဝ် ၶေႃႈမုၼ်း တင်းသဵင်ႈ (*) ၼႂ်း Table
SELECT * FROM students;

-- 2. ဢၢၼ်ႇဢဝ် Column ဢၼ်ၶႂ်ႈလႆႈၵူၺ်း
SELECT name, phone FROM students;

-- 3. ၸႂ်ႉ WHERE တွၼ်ႈတႃႇ ၶူၼ်ႉႁႃ (Filter) ၶေႃႈမုၼ်း
SELECT * FROM students WHERE course = 'Java Swing';

```

#### U - Update (လွင်ႈမႄးလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်းၵဝ်ႇ)

ၸႂ်ႉ Command **`UPDATE`** တွၼ်ႈတႃႇ မႄးၶေႃႈမုၼ်း ဢၼ်မီးဝႆႉယဝ်ႉၼၼ်ႉ။

```sql
-- လၢႆႈ Course ႁႂ်ႈပဵၼ် 'Python' တွၼ်ႈတႃႇ လုၵ်ႈႁဵၼ်း ဢၼ်မီး id = 2
UPDATE students 
SET course = 'Python' 
WHERE id = 2;

```

#### D - Delete (လွင်ႈမွတ်ႇပႅတ်ႈ ၶေႃႈမုၼ်း)

ၸႂ်ႉ Command **`DELETE`** တွၼ်ႈတႃႇ မွတ်ႇထႅဝ်။

```sql
-- မွတ်ႇပႅတ်ႈ လုၵ်ႈႁဵၼ်း ဢၼ်မီး id = 1
DELETE FROM students 
WHERE id = 1;

```

---

### ⚠️ The Danger Rule of SQL (လွင်ႈၽေးၶဵၼ်လူင်)

မိူဝ်ႈသူၸဝ်ႈ သင်ႇ `UPDATE` ဢမ်ႇၼၼ် `DELETE` ၼၼ်ႉ၊ **"တေလႆႈသႂ်ႇ `WHERE` တႃႇသေႇ ယႃႇပေလိုမ်းလႃးလႃး!"**

ပေႃးသူၸဝ်ႈ သင်ႇ Code ၼင်ႇၼႆ:

```sql
-- ၽိတ်းလူင်လၢင်!! ဢမ်ႇမီး WHERE 
UPDATE students SET course = 'Java Swing';
DELETE FROM students;

```

Database တေ **မႄး / မွတ်ႇပႅတ်ႈ လုၵ်ႈႁဵၼ်း ၵူႈၵေႃႉ တင်းသဵင်ႈ ၼႂ်း Table ၼၼ်ႉ ၵမ်းလဵဝ်** လႄႈ ၶေႃႈမုၼ်းသူၸဝ်ႈ တေႁၢႆမူတ်း ဢဝ်ၶိုၼ်းဢမ်ႇလႆႈယဝ်ႉၶႃႈ! 
ၵွပ်ႈၼၼ် တေလႆႈၵူတ်ႇတူၺ်း `WHERE id = ...` ၵူႈၵမ်း ဢွၼ်တၢင်းတေ Run Code ၶႃႈ။