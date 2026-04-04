# Lesson 50: "Subqueries II: Correlated Subqueries and EXISTS"

ၼႂ်း Lesson 49 ႁဝ်းႁၼ်ယဝ်ႉဝႃႈ Subquery ၼႆႉ တေႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ ႁင်းမၼ်းဢွၼ်တၢင်း (Independent)။ 
ၵူၺ်းၵႃႈ ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးတူၺ်း Subquery ဢၼ်လူဝ်ႇ "ပိုင်ႈဢိင်" ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Query လူင်ၽၢႆႇၼွၵ်ႈ ၸင်ႇတေႁဵတ်းၵၢၼ်လႆႈၶႃႈ။

### 1. Correlated Subquery (Subquery ဢၼ်ပိုင်ႈဢိင်ၵၼ်)
Correlated Subquery မၢႆထိုင် Query တွၼ်ႈၼႂ်း ဢၼ်ၸႂ်ႉၶေႃႈမုၼ်းတီႈ Query တွၼ်ႈၼွၵ်ႈ။ 
မၼ်းတေႁဵတ်းၵၢၼ် **"ထႅဝ်ယဝ်ႉထႅဝ်"** (Row by row) ၶႃႈ။



**တူဝ်ယင်ႇ:** ႁႃၵုၼ်ႇ ဢၼ်မီးၵႃႈၶၼ် "ယႂ်ႇလိူဝ် ၵႃႈၶၼ်ၵႄႈၵၢင် (Average)" **ၼႂ်း Category ႁင်းမၼ်းၵူၺ်း**။
```sql
SELECT p1.product_name, p1.price, p1.category_id
FROM products p1
WHERE p1.price > (
    SELECT AVG(p2.price) 
    FROM products p2 
    WHERE p2.category_id = p1.category_id  -- ၼႆႉယဝ်ႉ ပဵၼ်တွၼ်ႈၵွင်ႉၸူးၽၢႆႇၼွၵ်ႈ
);
```
* **လၢႆးႁဵတ်းၵၢၼ်:** Database တေတူၺ်းၵုၼ်ႇထႅဝ်ၼိုင်ႈသေ တေၵႂႃႇၼပ်ႉသွၼ်ႇ AVG ၼႂ်းၸုမ်း (Category) ၼၼ်ႉသေ ၸင်ႇဢဝ်မႃးတႅၵ်ႈၵၼ်ၶႃႈ။

### 2. EXISTS Operator (ၵၢၼ်ၸႅတ်ႈဝႃႈ "မီး" ႁႃႉ?)
`EXISTS` ၸႂ်ႉတႃႇၸႅတ်ႈတူၺ်းဝႃႈ Subquery ၼၼ်ႉ "သူင်ႇၽွၼ်းလႆႈ (Result) မႃးႁႃႉ?"။ 
မၼ်းဢမ်ႇတူၺ်းၵႃႈၶၼ် ၶေႃႈမုၼ်းၶႃႈ၊ မၼ်းတူၺ်းၵူၺ်းဝႃႈ **"မီးထႅဝ် (Row) ဢွၵ်ႇမႃးႁႃႉ?"** ၶႃႈ။

**တူဝ်ယင်ႇ:** ႁႃၸိုဝ်ႈလုၵ်ႈႁဵၼ်း တင်းမူတ်း ဢၼ် "မီး" (EXISTS) သဵၼ်ႈမၢႆၼႂ်း Table `grades`။
```sql
SELECT name FROM students s
WHERE EXISTS (
    SELECT 1 FROM grades g 
    WHERE g.student_id = s.student_id
);
```
* **လၢႆးႁဵတ်းၵၢၼ်:** သင်လုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉ မီးပၢႆးလိၵ်ႈသေထႅဝ်ၼိုင်ႈ... `EXISTS` တေပဵၼ် **True** သေ တေၼႄၸိုဝ်ႈမၼ်းဢွၵ်ႇမႃးၶႃႈ။

### 3. EXISTS vs IN
* **IN:** လီတွၼ်ႈတႃႇသဵၼ်ႈမၢႆဢၼ်တႅတ်ႈတေႃး (Static list)။
* **EXISTS:** ဝႆးလိူဝ် (Better Performance) မိူဝ်ႈလူဝ်ႇၸႅတ်ႈၶေႃႈမုၼ်းၼႂ်း Table ယႂ်ႇ ၵွပ်ႈဝႃႈ Database တေ "ၵိုတ်း" (Stop) လွင်ႈသွၵ်ႈႁႃ ၵမ်းလဵဝ် သင်မၼ်းႁၼ် ထႅဝ်ဢွၼ်တၢင်းသုတ်းယဝ်ႉၶႃႈ။

### 4. NOT EXISTS
ၸႂ်ႉတွၼ်ႈတႃႇႁႃ "ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇပႆႇမီးသဵၼ်ႈၵွင်ႉ" ၶႃႈ။

**တူဝ်ယင်ႇ:** ႁႃလုၵ်ႈႁဵၼ်း ဢၼ် "ဢမ်ႇပႆႇမီး" (NOT EXISTS) ၶႅၼ်းလိၵ်ႈသေတွၼ်ႈ။
```sql
SELECT name FROM students s
WHERE NOT EXISTS (
    SELECT 1 FROM grades g 
    WHERE g.student_id = s.student_id
);
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Advanced Subqueries
* **Optimization:** Correlated Subquery ၸၢင်ႈႁဵတ်းႁႂ်ႈ Database ထိူင်းလိူဝ်သေ JOIN ၵွပ်ႈမၼ်းလႆႈႁဵတ်းၵၢၼ် "ထႅဝ်ယဝ်ႉထႅဝ်" ၶႃႈ။
* **SELECT 1:** ၼႂ်း `EXISTS`... ႁဝ်းၵႆႉၸႂ်ႉ `SELECT 1` တႅၼ်း `SELECT *` ၵွပ်ႈဝႃႈ Database ဢမ်ႇလူဝ်ႇဢဝ်ၶေႃႈမုၼ်းသင်ဢွၵ်ႇမႃး ၵူၺ်းလူဝ်ႇႁူႉဝႃႈ "မီးထႅဝ်" ၵူၺ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Correlated Subquery:** Query တွၼ်ႈၼႂ်း ဢၼ်လူဝ်ႇပိုင်ႈဢိင်ၵႃႈၶၼ်တီႈ Query တွၼ်ႈၼွၵ်ႈ။
* **EXISTS:** Operator ၸႅတ်ႈတူၺ်းဝႃႈ မီးၶေႃႈမုၼ်းၼႂ်း Subquery ႁႃႉ?
* **NOT EXISTS:** Operator ၸႅတ်ႈတူၺ်းဝႃႈ ဢမ်ႇမီးၶေႃႈမုၼ်းၼႂ်း Subquery ႁႃႉ?
* **Row-by-Row Processing:** လၢႆးႁဵတ်းၵၢၼ် Database ထႅဝ်ၼိုင်ႈယဝ်ႉထႅဝ်ၼိုင်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇႁႃၸိုဝ်ႈ Category ဢၼ် "မီး" (EXISTS) ၵုၼ်ႇၼႂ်းမၼ်း ၼမ်လိူဝ် 0 ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ **`NOT EXISTS`** ... မၼ်းတေၸွႆႈပၼ်ၽွၼ်းလီသင် လိူဝ်ၵၢၼ်ၸႂ်ႉ `LEFT JOIN` ႁူမ်ႈတင်း `WHERE ... IS NULL` ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ Correlated Subquery ၸၢင်ႈႁဵတ်းႁႂ်ႈ Database ႁဝ်းထိူင်း (Slow) လႆႈၶႃႈ?

---