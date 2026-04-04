# Lesson 43: "Outer Joins II: RIGHT JOIN and FULL OUTER Alternatives"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးတူၺ်း **RIGHT JOIN** ဢၼ်ပဵၼ်တူဝ်ပိၼ်ႇၽၢႆႇ (Mirror) ၶွင် `LEFT JOIN` လႄႈ လၢႆးႁူမ်ႈၶေႃႈမုၼ်းတင်းသွင်ၽၢႆႇ ႁႂ်ႈတဵမ်ထူၼ်ႈသုတ်းၶႃႈ။

### 1. RIGHT JOIN (ၵၢၼ်ဢဝ်ၽၢႆႇၶႂႃပဵၼ်လူင်)
**RIGHT JOIN** မၢႆထိုင်ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Table ၽၢႆႇၶႂႃ (Right Table) မႃးၼႄ **တင်းမူတ်း** သေ သင်မီးၶေႃႈမုၼ်းၼႂ်း Table ၽၢႆႇသၢႆႉ (Left Table) ဢၼ်ၵွင်ႉၵၢႆႇၵၼ်ၺႃး... မၼ်းတေဢဝ်မႃးၼႄၸွမ်း။ သင်ဢမ်ႇမီး... မၼ်းတေၼႄပဵၼ် **NULL** ဝႆႉၶႃႈ။



```sql
SELECT 
    s.student_name, 
    c.class_name
FROM students AS s
RIGHT JOIN classes AS c 
    ON s.class_id = c.class_id;
```
* **ၽွၼ်းလႆႈ:** တေၼႄႁွင်ႈႁဵၼ်း (Classes) **ၵူႈႁွင်ႈ**။ သင်ႁွင်ႈလႂ်ဢမ်ႇပႆႇမီးလုၵ်ႈႁဵၼ်း... တွၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းတေပဵၼ် **NULL** ၶႃႈ။

> **Lecturer's Tip:** ၼႂ်းၵၢၼ်ႁဵတ်းၵၢၼ်တႄႉ... Developer ၵမ်ႈၼမ်ၵႆႉၸႂ်ႉ **LEFT JOIN** ၵူၺ်းသေလႅၵ်ႈတီႈယူႇ Table ဢွၼ်တၢင်း-ၽၢႆႇလင် တႅၼ်းၵၢၼ်ၸႂ်ႉ RIGHT JOIN ၵွပ်ႈမၼ်းလူငၢႆႈလိူဝ်ၶႃႈ။

### 2. FULL OUTER JOIN (ၵၢၼ်ဢဝ်တင်းမူတ်း)
**FULL OUTER JOIN** မၢႆထိုင်ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းတင်းသွင်ၽၢႆႇ (Left + Right) မႃးၼႄတင်းမူတ်း။ 
ဢၼ်လႂ်ၵွင်ႉၺႃးၵေႃႈၼႄႁူမ်ႈၵၼ်၊ ဢၼ်လႂ်ဢမ်ႇၵွင်ႉၵေႃႈၼႄပဵၼ် NULL ဝႆႉၶႃႈ။



### 3. Alternative for MySQL (Using UNION)
တွၼ်ႈဢၼ်လွင်ႈယႂ်ႇသုတ်းပဵၼ်... **MySQL ဢမ်ႇပႃး Command `FULL JOIN` တႅတ်ႈတေႃးၶႃႈ။** 
ၵွပ်ႈၼၼ် ႁဝ်းတေလႆႈၸႂ်ႉ **UNION** တႃႇဢဝ် `LEFT JOIN` လႄႈ `RIGHT JOIN` မႃးႁူမ်ႈၵၼ်ၶႃႈ။

```sql
-- လၢႆးႁဵတ်း FULL JOIN ၼႂ်း MySQL
SELECT s.student_name, c.class_name
FROM students AS s
LEFT JOIN classes AS c ON s.class_id = c.class_id

UNION

SELECT s.student_name, c.class_name
FROM students AS s
RIGHT JOIN classes AS c ON s.class_id = c.class_id;
```

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ FULL JOIN?
* **Data Auditing:** တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်းတင်းသွင်ၽၢႆႇ ႁႂ်ႈႁူႉဝႃႈ ၽၢႆႇလႂ်မီး "ၶေႃႈမုၼ်းၵိုတ်း" (Orphan data) ယူႇႁႃႉ? 
* တူဝ်ယင်ႇ: ႁႃလုၵ်ႈႁဵၼ်းဢၼ်ဢမ်ႇမီးႁွင်ႈ **လႄႈ** ႁွင်ႈႁဵၼ်းဢၼ်ဢမ်ႇမီးလုၵ်ႈႁဵၼ်း ၼႂ်း Report ဢၼ်လဵဝ်ၵၼ်ၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Outer Joins
* **UNION vs UNION ALL:** ၵၢၼ်ၸႂ်ႉ `UNION` ၼႆႉ တေယႃႉထႅဝ်ဢၼ် "မိူၼ်ၵၼ်" (Duplicates) ပႅတ်ႈ၊ မၼ်းတေႁဵတ်းႁႂ်ႈၽွၼ်းလႆႈႁဝ်းသႅၼ်ႈသႂ်ၶႃႈ။
* **NULL Check:** တွင်းဝႆႉတႃႇသေႇဝႃႈ ၼႂ်း Outer Joins... ၵႃႈၶၼ် NULL တေဢွၵ်ႇမႃးၼမ်လိူဝ် INNER JOIN တႄႉတႄႉၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **RIGHT JOIN:** ၵၢၼ်ႁူမ်ႈ Table ဢၼ်ဢဝ်ၶေႃႈမုၼ်းၽၢႆႇၶႂႃပဵၼ်လူင်။
* **FULL JOIN:** ၵၢၼ်ႁူမ်ႈ Table ဢၼ်ဢဝ်ၶေႃႈမုၼ်းၵူႈထႅဝ် တင်းသွင်ၽၢႆႇ။
* **UNION:** ၶေႃႈၵႂၢမ်းၸႂ်ႉႁူမ်ႈ (Combine) ၽွၼ်းလႆႈ လုၵ်ႉတီႈ Query သွင်ဢၼ်။
* **Orphan Record:** ၶေႃႈမုၼ်းဢၼ်မီးယူႇၼႂ်း Table ၼိုင်ႈဢၼ် ၵူၺ်းၵႃႈ ဢမ်ႇမီးတူဝ်ၵွင်ႉ (Match) ဝႆႉၼႂ်း Table ထႅင်ႈၼိုင်ႈဢၼ်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ၸဝ်ႈၵဝ်ႇမီး Table **`Orders`** (Left) လႄႈ **`Shippers`** (Right)... ၵၢၼ်ၸႂ်ႉ **`RIGHT JOIN`** တေၼႄသင်ၶႃႈ?
2.  ႁဵတ်းသင်လႄႈ ၼႂ်း MySQL ႁဝ်းတေလႆႈၸႂ်ႉ **`UNION`** တႃႇႁဵတ်း FULL OUTER JOIN ၶႃႈ?
3.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `RIGHT JOIN` သေ ပိၼ်ႇတီႈယူႇ Table သွင်ဢၼ်ၼၼ်ႉ... မၼ်းတေမိူၼ်တင်း `LEFT JOIN` ႁႃႉ?

---