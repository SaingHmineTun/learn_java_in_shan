# Lesson 49: "Subqueries I: Scalar and Column Nested SELECTs"

**Subquery** မၢႆထိုင် Query ဢၼ်တႅမ်ႈဝႆႉၼႂ်း ၶွပ်ႇ `( )` သေယူႇၼႂ်း Query ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေတူၺ်း 2 ပိူင် ဢၼ်ၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈၶႃႈ။

### 1. Scalar Subqueries (ဢွၵ်ႇပၼ် ၵႃႈၶၼ် 1 ဢၼ်)
Scalar Subquery ပဵၼ် Query ဢၼ်သူင်ႇၽွၼ်းလႆႈမႃး **"1 ထႅဝ် လႄႈ 1 Column"** (ၵႃႈၶၼ်လဵဝ်တႅတ်ႈတေႃး)။ 
ႁဝ်းၵႆႉၸႂ်ႉမၼ်းၼႂ်း `WHERE` Clause တွၼ်ႈတႃႇတႅၵ်ႈတူၺ်းၶႃႈ။


**တူဝ်ယင်ႇ:** ႁႃၵုၼ်ႇ ဢၼ်မီးၵႃႈၶၼ် "ယႂ်ႇလိူဝ် ၵႃႈၶၼ်ၵႄႈၵၢင် (Average)" တင်းမူတ်း။
```sql
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);
-- Subquery ၼႂ်းၶွပ်ႇ တေႁႃ AVG မႃးပၼ်ဢွၼ်တၢင်း (မိူၼ်ၼင်ႇ 500)
-- သေ Query လူင် ၸင်ႇတေႁႃ price > 500 ၶႃႈ။
```

### 2. Column Subqueries (ၼႄၼႂ်း SELECT)
ႁဝ်းၸၢင်ႈၸႂ်ႉ Subquery တွၼ်ႈတႃႇသၢင်ႈ Column မႂ်ႇ ဢၼ်လူဝ်ႇၵႂႃႇၼပ်ႉသွၼ်ႇတီႈ Table တၢင်ႇဢၼ်ၶႃႈ။

**တူဝ်ယင်ႇ:** ၼႄၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ႁူမ်ႈတင်း "တၢင်းၼမ်ပၢႆးလိၵ်ႈ" ဢၼ်ၶဝ်ဢဝ်ဝႆႉ။
```sql
SELECT 
    name,
    (SELECT COUNT(*) FROM grades WHERE student_id = s.student_id) AS total_grades
FROM students s;
```

### 3. ပၵ်းၵၢၼ်တႅမ်ႈ Subqueries
* **Parentheses:** တေလႆႈသႂ်ႇၶွပ်ႇ `( )` လွမ်ႉဝႆႉတႃႇသေႇ။
* **Order of Execution:** Database တေႁဵတ်းၵၢၼ် "Inner Query" (ၼႂ်းၶွပ်ႇ) ႁႂ်ႈယဝ်ႉဢွၼ်တၢင်းသေ ၸင်ႇဢဝ်ၽွၼ်းလႆႈမၼ်း သူင်ႇပၼ် "Outer Query" (ၼွၵ်ႈၶွပ်ႇ) ၶႃႈ။
* **Single Value Rule:** သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `>`, `<`, `=` ... Subquery တေလႆႈသူင်ႇၵႃႈၶၼ်မႃး "ဢၼ်လဵဝ်" ၵူၺ်း။ သင်မၼ်းသူင်ႇမႃး 10 ဢၼ်... Query တေပဵၼ် Error ၶႃႈၼႃႈ။

### 4. Subquery vs JOIN
လုၵ်ႈႁဵၼ်းၵႆႉထၢမ်ဝႃႈ "ၸႂ်ႉ JOIN ဢမ်ႇလီလိူဝ်ႁႃႉ?"
* **JOIN:** ဝႆးလိူဝ် (Performance လီလိူဝ်)။
* **Subquery:** လူငၢႆႈလိူဝ် (Readability လီလိူဝ်)။


### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Subqueries
* **Performance:** တွင်းဝႆႉဝႃႈ သင် Table ယႂ်ႇၼမ်ႁႅင်းၼႆ... Subquery ၸၢင်ႈႁဵတ်းႁႂ်ႈ Database ထိူင်းလိူဝ် JOIN ၶႃႈ။
* **Alias:** မိူဝ်ႈၸႂ်ႉ Subquery ၼႂ်း SELECT... တေလႆႈပၼ်ၸိုဝ်ႈ AS (Alias) **တႃႇသေႇ** ႁႂ်ႈ App ႁဝ်းႁူႉၸိုဝ်ႈ Column ၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Scalar Subquery:** Query ဢၼ်သူင်ႇၽွၼ်းလႆႈမႃးၵႃႈၶၼ်လဵဝ် (Single value)။
* **Nested Query:** ၸိုင်ႈထႅင်ႈဢၼ်ၼိုင်ႈ တႃႇ Subquery။
* **Inner Query:** Query ဢၼ်ယူႇၼႂ်းၶွပ်ႇ။
* **Outer Query:** Query လူင် ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇႁႃလုၵ်ႈႁဵၼ်း ဢၼ်မီး **`age`** မိူၼ်ၵၼ်တင်း ၵေႃႉဢၼ်ဢႃႇယု "ယႂ်ႇသုတ်း" (**MAX age**) ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `WHERE price = (SELECT price FROM products)` သေၼႂ်း Table မီးၵုၼ်ႇ 100 ဢၼ်... တေပဵၼ်သင်ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ ႁဝ်းတေလႆႈၸႂ်ႉ ၶွပ်ႇ `( )` လွမ်ႉဝႆႉ Subquery တႃႇသေႇၶႃႈ?

---