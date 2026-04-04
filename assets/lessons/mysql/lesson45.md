## Lesson 45: "Multi-Table Joins: Connecting 3+ Tables Safely"

ၵၢၼ် Join လၢႆလၢႆ Table ၼၼ်ႉ ဢမ်ႇၸႂ်ႈလွင်ႈယၢပ်ႇၶႃႈ။ ႁဝ်းၵူၺ်းလူဝ်ႇ "သိုပ်ႇၸပ်း" ၵၼ်ၵႂႃႇၸၼ်ႉၼိုင်ႈယဝ်ႉ ၸၼ်ႉၼိုင်ႈ ၼင်ႇၼႆၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "သၢႆၵွင်ႉ" (Chain) ၶႃႈ...
* **Table A** ၵွင်ႉၸူး **Table B**
* **Table B** ၵွင်ႉၸူး **Table C**
* သင်ႁဝ်းၶႂ်ႈလႆႈၶေႃႈမုၼ်းလုၵ်ႉတီႈ A လႄႈ C... ႁဝ်းတေလႆႈၸႂ်ႉ B ပဵၼ် "ၶူဝ်" (Bridge) တႃႇၶၢမ်ႈၵႂႃႇၶႃႈ။



### 2. Syntax ၵၢၼ်တႅမ်ႈ Multi-Table Join
ႁဝ်းတႅမ်ႈ Command `JOIN` သိုပ်ႇၵၼ်ၵႂႃႇလၢႆလၢႆထႅဝ်ၶႃႈ။

```sql
SELECT 
    s.name AS Student, 
    c.course_name AS Course, 
    e.grade AS Grade
FROM students AS s
JOIN enrollments AS e ON s.student_id = e.student_id  -- Join တူဝ်တီႈ 1
JOIN courses AS c ON e.course_id = c.course_id;      -- Join တူဝ်တီႈ 2
```

### 3. လၢႆးၵွင်ႉ ႁႂ်ႈလွတ်ႈၽေး (Safe Connection)
မိူဝ်ႈ Join ၼမ်ၼမ်... ၸဝ်ႈၵဝ်ႇတေလႆႈၾၢင်ႉ 2 ပိူင်ၼႆႉၶႃႈ:
* **The "Bridge" Table:** တေလႆႈမၼ်ႈၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇ Join ၸွမ်း Column ဢၼ်မၢၼ်ႇမႅၼ်ႈ။ တူဝ်ယင်ႇ: သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈၵွင်ႉ `Students` ၸူး `Courses`... ၸဝ်ႈၵဝ်ႇတေလႆႈၵွင်ႉ "ၵႄႈၵၢင်" မၼ်း (Junction Table) ဢွၼ်တၢင်းၶႃႈ။
* **Mixing Joins:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `INNER JOIN` ႁူမ်ႈတင်း `LEFT JOIN` ၼႂ်း Query လဵဝ်ၵၼ်လႆႈ။ ၵူၺ်းၵႃႈ လူဝ်ႇဝူၼ်ႉလီလီဝႃႈ ၶေႃႈမုၼ်းၽၢႆႇလႂ် ဢၼ်ၸဝ်ႈၵဝ်ႇဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်း "ႁၢႆ" ပႅတ်ႈ (Preserve) ၶႃႈ။

### 4. တူဝ်ယင်ႇ: App Gallery Logic
ဝူၼ်ႉတူၺ်း App Gallery ၸဝ်ႈၵဝ်ႇၶႃႈ...
* `Apps` (Table 1)
* `Categories` (Table 2)
* `Developers` (Table 3)

```sql
SELECT a.app_name, c.category_name, d.dev_name
FROM apps a
JOIN categories c ON a.category_id = c.category_id
JOIN developers d ON a.dev_id = d.dev_id;
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Multi-Table Joins
* **Table Order:** တႅမ်ႈသိုပ်ႇၵၼ်ၵႂႃႇၸၼ်ႉၸၼ်ႉ။ ဢဝ် Table ဢၼ်ပဵၼ် "ၵႅၼ်" (Main) ဝႆႉၽၢႆႇၼႃႈသုတ်း။
* **Performance:** ၵၢၼ် Join ၼမ် (မိူၼ်ၼင်ႇ 5-10 Tables) တေႁဵတ်းႁႂ်ႈ Query **ထိူင်းလိူဝ်ၵဝ်ႇ**။ လူဝ်ႇမၼ်ႈၸႂ်ဝႃႈ Column ဢၼ်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `ON` ၼၼ်ႉ မီး **Index** ဝႆႉၶႃႈၼႃႈ။
* **Aliases:** မိူဝ်ႈမီးလၢႆ Table... ၵၢၼ်ၸႂ်ႉ `s`, `e`, `c` တေၸွႆႈႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ သႅၼ်ႈသႂ် လႄႈ လူငၢႆႈတႄႉတႄႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Junction Table:** Table ဢၼ်ယူႇၵႄႈၵၢင် တႃႇၵွင်ႉ Relationship ပိူင် Many-to-Many (M:N)။
* **Bridge Table:** ထႅင်ႈၸိုဝ်ႈၼိုင်ႈ ဢၼ်လၢတ်ႈၼႄ Table ဢၼ်ၸႂ်ႉၵွင်ႉ Table သွင်ဢၼ်။
* **Query Execution Plan:** လၢႆးဢၼ် Database ဝူၼ်ႉဝႃႈ မၼ်းတေ Join Table လႂ်ဢွၼ်တၢင်း ႁႂ်ႈဝႆးသုတ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ၸဝ်ႈၵဝ်ႇမီး 3 Tables: **`Authors`**, **`Books`**, လႄႈ **`Publishers`**... ၸဝ်ႈၵဝ်ႇတေလႆႈ Join ၵႃႈလၢႆပွၵ်ႈ တႃႇၼႄၶေႃႈမုၼ်းတင်းမူတ်းႁူမ်ႈၵၼ်ၶႃႈ?
2.  သင်ၸဝ်ႈၵဝ်ႇ Join `A -> B` (INNER) သေ Join `B -> C` (LEFT)... ထႅဝ် (Row) ဢၼ်မီးၼႂ်း B ၵူၺ်းၵႃႈဢမ်ႇမီးၼႂ်း A ၼၼ်ႉ တေဢွၵ်ႇမႃးၼႄႁႃႉ?
3.  ႁဵတ်းသင်လႄႈ ၵၢၼ် Join ၼမ်လူၼ်ႉၵႂႃႇ (မိူၼ်ၼင်ႇ 15 Tables) ဢမ်ႇလီတွၼ်ႈတႃႇ Database ၶႃႈ?

---