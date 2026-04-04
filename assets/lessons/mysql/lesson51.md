# Lesson 51: "Set Operations: UNION and Common Table Expressions (CTEs)"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးတူၺ်း 2 တွၼ်ႈ ဢၼ်တေၸွႆႈႁႂ်ႈ Query ၸဝ်ႈၵဝ်ႇ မိူၼ် Professional တႄႉတႄႉၶႃႈ။

### 1. UNION Operator (ၵၢၼ်ႁူမ်ႈၽွၼ်းလႆႈ)
`UNION` ၸႂ်ႉတႃႇဢဝ်ၽွၼ်းလႆႈ (Result sets) လုၵ်ႉတီႈ `SELECT` သွင်ဢၼ် (ဢမ်ႇၼၼ် လၢႆဢၼ်) မႃးႁူမ်ႈၵၼ်ပဵၼ် "သဵၼ်ႈမၢႆဢၼ်လဵဝ်" ၶႃႈ။



* **UNION:** သင်ႁူမ်ႈၵၼ် ထႅဝ်ဢၼ် "မိူၼ်ၵၼ်" (Duplicates) ၼၼ်ႉ တေထုၵ်ႇယႃႉပႅတ်ႈသေ တေၵိုတ်းဝႆႉ ထႅဝ်လဵဝ်ၵူၺ်း။
* **UNION ALL:** ႁူမ်ႈၵၼ် တင်းမူတ်း (ပႃးတင်းထႅဝ်ဢၼ်မိူၼ်ၵၼ်)။ မၼ်းတေ "ဝႆး" လိူဝ် UNION ၶႃႈ။

**ပၵ်းၵၢၼ်:**
1. တၢင်းၼမ် Column တေလႆႈ "မိူၼ်ၵၼ်"။
2. Data Type ၼႂ်း Column ၸိူဝ်းၼၼ်ႉ တေလႆႈ "မိူၼ်ၵၼ်"။

```sql
-- ႁူမ်ႈၸိုဝ်ႈ "လုၵ်ႈႁဵၼ်း" လႄႈ "ၶူးသွၼ်" ဝႆႉၼႂ်းသဵၼ်ႈမၢႆဢၼ်လဵဝ်
SELECT name, 'Student' AS role FROM students
UNION
SELECT name, 'Teacher' AS role FROM teachers;
```

### 2. Common Table Expressions (CTEs)
**CTE** (ၸႂ်ႉၶေႃႈၵႂၢမ်း **`WITH`**) ပဵၼ်ၵၢၼ်သၢင်ႈ "Table ၸူဝ်ႈၶၢဝ်း" ဝႆႉၼႂ်း Query ၸဝ်ႈၵဝ်ႇ။ 
မၼ်းၸွႆႈႁႂ်ႈ Code ဢၼ်ယုင်ႈယၢင်ႈ (မိူၼ်ၼင်ႇ Subqueries ၼမ်ၼမ်) လူငၢႆႈလိူဝ်ၵဝ်ႇတႄႉတႄႉၶႃႈ။



**တူဝ်ယင်ႇ:**
```sql
WITH top_students AS (
    SELECT student_id, name 
    FROM students 
    WHERE grade_point > 3.5
)
SELECT * FROM top_students WHERE name LIKE 'S%';
-- ႁဝ်းသၢင်ႈ top_students ဝႆႉဢွၼ်တၢင်း သေၸင်ႇ SELECT ဢဝ်မၼ်းမႃးၸႂ်ႉၶႃႈ။
```

### 3. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ CTE?
* **Readability:** ၸွႆႈႁႂ်ႈ Code လူငၢႆႈ (Clean Code)။
* **Reusability:** ၸၢင်ႈဢဝ် Table ၸူဝ်ႈၶၢဝ်းၼၼ်ႉ မႃး JOIN လၢႆလၢႆပွၵ်ႈ ၼႂ်း Query လဵဝ်ၵၼ်။
* **Recursive:** ၸႂ်ႉတႃႇႁႃၶေႃႈမုၼ်းပဵၼ်ၸၼ်ႉ (Hierarchy) ဢၼ်ယုင်ႈယၢင်ႈၶႃႈ။

### 4. UNION vs JOIN
* **JOIN:** ႁူမ်ႈၶေႃႈမုၼ်း "ၽၢႆႇၶႂႃ-ၽၢႆႇသၢႆႉ" (Horizontal) တႃႇထႅမ် Column။
* **UNION:** ႁူမ်ႈၶေႃႈမုၼ်း "ၽၢႆႇၼိူဝ်-ၽၢႆႇတႂ်ႈ" (Vertical) တႃႇထႅမ်ထႅဝ် (Rows)။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ UNION & CTEs
* **UNION ALL Performance:** သင်ၸဝ်ႈၵဝ်ႇ ဢမ်ႇဝႆႉၸႂ် ၶေႃႈမုၼ်းသွၼ်ႉၵၼ်ၼႆ... ၸႂ်ႉ `UNION ALL` တေဝႆးလိူဝ် `UNION` ၶႃႈ။
* **CTE Scope:** CTE တေမီးသၢႆၸႂ်ယူႇၼႂ်း Query ဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈၼၼ်ႉၵူၺ်း၊ ဢမ်ႇၸၢင်ႈဢဝ်ၵႂႃႇၸႂ်ႉတၢင်ႇတီႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Set Operations:** ၵၢၼ်ႁူမ်ႈၽွၼ်းလႆႈ (UNION, INTERSECT, EXCEPT)။
* **CTE (Common Table Expression):** Table ၸူဝ်ႈၶၢဝ်း ဢၼ်သၢင်ႈလူၺ်ႈ Keyword `WITH`။
* **Readability:** ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈၵူၼ်းတၢင်ႇၵေႃႉလူပွင်ႇၸႂ်လႆႈငၢႆႈ။
* **Vertical Integration:** ၵၢၼ်ႁူမ်ႈၶေႃႈမုၼ်းၸွမ်းထႅဝ် (လုၵ်ႉတႂ်ႈၶိုၼ်ႈၼိူဝ်)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇႁူမ်ႈမၢႆၾူၼ်းလုၵ်ႉတီႈ Table **`customers`** လႄႈ **`suppliers`** ႁူမ်ႈၵၼ်ၶႃႈ။
2.  ႁဵတ်းသင်လႄႈ **`UNION ALL`** ဝႆးလိူဝ် **`UNION`** ၶႃႈ?
3.  သင်ၸဝ်ႈၵဝ်ႇမီး Subquery ၼမ်ၼမ်... ၵၢၼ်လႅၵ်ႈမႃးၸႂ်ႉ **`CTE`** တေၸွႆႈပၼ်ၽွၼ်းလီသင်ၶႃႈ?

---