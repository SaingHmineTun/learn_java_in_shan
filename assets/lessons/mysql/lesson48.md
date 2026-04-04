# Lesson 48: "Advanced Grouping: The HAVING Clause vs. WHERE"

တူဝ်သွင်ဢၼ်ၼႆႉ ၸႂ်ႉတႃႇၸႅတ်ႈ (Filter) ၶေႃႈမုၼ်းမိူၼ်ၵၼ်သေတႃႉ ၶၢဝ်းယၢမ်းႁဵတ်းၵၢၼ်ၶဝ် ပႅၵ်ႇၵၼ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်လိူၵ်ႈလုၵ်ႈႁဵၼ်းၶဝ်ႈၸုမ်း" ၶႃႈ...
* **WHERE:** လိူၵ်ႈၵူၼ်း "ဢွၼ်တၢင်း" ပႆႇၸႅၵ်ႇၸုမ်း (မိူၼ်ၼင်ႇ: လိူၵ်ႈဢဝ် ၵူၼ်းဢၼ်ၼုင်ႈသိူဝ်ႈ သီၶဵဝ်ဢွၼ်တၢင်း)။
* **HAVING:** လိူၵ်ႈ "ၸုမ်း" ဝၢႆးသေၼပ်ႉသွၼ်ႇယဝ်ႉ (မိူၼ်ၼင်ႇ: လိူၵ်ႈဢဝ် ၸုမ်းဢၼ်မီးၵူၼ်း ၼမ်လိူဝ် 5 ၵေႃႉ)။



### 2. WHERE Clause (Pre-filter)
ၸႂ်ႉတႃႇတတ်းထႅဝ် (Rows) ဢွၼ်တၢင်းတေဢဝ်ၵႂႃႇၼပ်ႉသွၼ်ႇ။ ႁဝ်း **ဢမ်ႇၸၢင်ႈ** ၸႂ်ႉ Aggregate Functions (SUM, COUNT, etc.) ၼႂ်း WHERE လႆႈၶႃႈ။

```sql
-- လိူၵ်ႈၵုၼ်ႇ ဢၼ်ၵႃႈၶၼ် ၼမ်ႇလိူဝ် (>) 500 သေၸင်ႇမႃးၸႅၵ်ႇၸုမ်း
SELECT category_id, COUNT(*)
FROM products
WHERE price > 500  -- တတ်းဢွၼ်တၢင်း (Row-level)
GROUP BY category_id;
```

### 3. HAVING Clause (Post-filter)
ၸႂ်ႉတွၼ်ႈတႃႇတတ်း "ၸုမ်း" (Groups) ဝၢႆးသေၸႅၵ်ႇၸုမ်းယဝ်ႉ။ ၼႆႉပဵၼ်တီႈလဵဝ် ဢၼ်ႁဝ်းၸၢင်ႈၸႂ်ႉ Aggregate Functions တႃႇ Filter လႆႈၶႃႈ။

```sql
-- ၸႅၵ်ႇၸုမ်းဝဵင်းသေ လိူၵ်ႈဢဝ် ဝဵင်းဢၼ်မီးလုၵ်ႈႁဵၼ်း "ၼမ်လိူဝ် 10 ၵေႃႉ"
SELECT city, COUNT(*) AS total
FROM students
GROUP BY city
HAVING COUNT(*) > 10; -- တတ်းဝၢႆး (Group-level)
```

### 4. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၵၼ် (Combining Both)
ၼႂ်း Query ၼိုင်ႈဢၼ် ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈတင်းသွင်ပိူင် တွၼ်ႈတႃႇႁဵတ်း Report ၶႃႈ။

```sql
SELECT city, AVG(age) AS avg_age
FROM students
WHERE gender = 'Female'      -- 1. လိူၵ်ႈၵူၺ်းၼၢင်းယိင်းဢွၼ်တၢင်း
GROUP BY city                 -- 2. ၸႅၵ်ႇၸုမ်းၸွမ်းဝဵင်း
HAVING AVG(age) > 20;        -- 3. လိူၵ်ႈၵူၺ်းဝဵင်းဢၼ်ဢႃႇယုၵႄႈၵၢင် > 20
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ HAVING vs WHERE
* **WHERE:** ႁဵတ်းၵၢၼ်ၸွမ်း **Individual Rows** (ထႅဝ်ၽႂ်ထႅဝ်မၼ်း)။
* **HAVING:** ႁဵတ်းၵၢၼ်ၸွမ်း **Aggregated Data** (ၶေႃႈမုၼ်းဢၼ်ၼပ်ႉႁူမ်ႈယဝ်ႉ)။
* **Performance:** သင်တတ်းၶေႃႈမုၼ်းလႆႈၼႂ်း `WHERE` ၼႆ ႁဵတ်းၼႂ်း WHERE တေလီလိူဝ်၊ ၵွပ်ႈမၼ်းတေယွမ်း ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ၵႂႃႇၼပ်ႉသွၼ်ႇၼႂ်း GROUP BY ၶႃႈ။
* **Alias:** ၼႂ်း MySQL... ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ Alias ၸိုဝ်ႈတႅၼ်း (မိူၼ်ၼင်ႇ `HAVING avg_age > 20`) ၼႂ်း HAVING လႆႈၶႃႈ၊ ၵူၺ်းၵႃႈ ၼႂ်း WHERE ၼၼ်ႉၸႂ်ႉဢမ်ႇလႆႈၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Pre-filtering:** ၵၢၼ်တတ်းၶေႃႈမုၼ်း ဢွၼ်တၢင်းၵၢၼ်ၼပ်ႉသွၼ်ႇ (WHERE)။
* **Post-filtering:** ၵၢၼ်တတ်းၶေႃႈမုၼ်း ဝၢႆးလင် ၵၢၼ်ၼပ်ႉသွၼ်ႇ (HAVING)။
* **Predicate:** ငဝ်းလၢႆး ဢၼ်ၸႂ်ႉ Filter (မိူၼ်ၼင်ႇ > 10)။
* **Logical Order of Operations:** လၢႆးဢၼ် Database ၼပ်ႉသွၼ်ႇ (FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇႁႃ **`category_id`** ဢၼ်မီးၵုၼ်ႇ **ၼမ်လိူဝ် 5 ဢၼ်** ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `WHERE COUNT(*) > 5`... Database တေဝႃႈႁိုဝ်ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `HAVING` တႃႇတတ်းထႅဝ် ธรรมဒါ (မိူၼ်ၼင်ႇ `city = 'Muse'`) လႆႈၶႃႈ? (လၢတ်ႈၸွမ်းပၵ်းၵၢၼ် Performance ၶႃႈ)။

---