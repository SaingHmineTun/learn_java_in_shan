# Lesson 67: "Query Refactoring: Optimizing for Performance"

**Query Refactoring** မၢႆထိုင် ၵၢၼ်လႅၵ်ႈလၢႆႈ လၢႆးတႅမ်ႈ Code SQL ႁႂ်ႈလႆႈၽွၼ်းလႆႈမိူၼ်ၵဝ်ႇ 
ၵူၺ်းၵႃႈ "ဝႆးလိူဝ်" လႄႈ "ၸႂ်ႉ Resource ဢေႇလိူဝ်" ၶႃႈ။

### 1. Avoid SELECT * (ယႃႇၸႂ်ႉ SELECT *)
ၼႆႉပဵၼ်လွင်ႈဢၼ် ၵႆႉၽိတ်းလိူဝ်ပိူၼ်ႈၶႃႈ။ ၵၢၼ်ၸႂ်ႉ `*` တေႁဵတ်းႁႂ်ႈ MySQL လႆႈလူၶေႃႈမုၼ်းၼႂ်း Disk ၼမ်လူၼ်ႉၵႂႃႇ။
* **Refactor:** လိူၵ်ႈဢဝ် Column ဢၼ်လူဝ်ႇၸႂ်ႉၵူၺ်းၶႃႈလႄႈ။
* **Why:** ၸွႆႈႁႂ်ႈၸႂ်ႉ Memory ဢေႇ လႄႈ ပၼ်သုၼ်ႇႁႂ်ႈ MySQL ၸႂ်ႉ **Covering Index** လႆႈၶႃႈ။

### 2. SARGABLE Queries (Search Argument-able)
**SARGABLE** မၢႆထိုင် Query ဢၼ် MySQL ၸၢင်ႈၸႂ်ႉ Index တႃႇသွၵ်ႈႁႃလႆႈၶႃႈ။ သင်ၸဝ်ႈၵဝ်ႇဢဝ် Column ၵႂႃႇဝႆႉၼႂ်း Function ၼႆ Index တေတၢႆ (Broken) ၵမ်းလဵဝ်ၶႃႈ။



* **Bad (Non-SARGABLE):** `WHERE YEAR(order_date) = 2026`
    * (MySQL လႆႈၼပ်ႉ YEAR ၵူႈထႅဝ် ၸင်ႇတႅၵ်ႈလႄႈ ၸၢင်ႈႁဵတ်းႁႂ်ႈ Index ဢမ်ႇႁဵတ်းၵၢၼ်)
* **Good (SARGABLE):** `WHERE order_date >= '2026-01-01' AND order_date <= '2026-12-31'`
    * (MySQL ၸၢင်ႈၸႂ်ႉ Index တူၺ်း Range ၶၢဝ်းယၢမ်းလႆႈဝႆးဝႆးၶႃႈ)

### 3. Replace Subqueries with JOINs
ၵမ်ႈၼမ် (ဢမ်ႇၸႂ်ႈၵူႈပွၵ်ႈ) `JOIN` တေႁဵတ်းၵၢၼ်ဝႆးလိူဝ် `Subquery` ၵွပ်ႈ MySQL Optimizer ၸၢင်ႈဝၢင်းၽႅၼ်လႆႈ လီလိူဝ်ၶႃႈ။

* **Refactor:** လႅၵ်ႈ `WHERE id IN (SELECT id FROM ...)` ႁႂ်ႈပဵၼ် `INNER JOIN` ၶႃႈ။

### 4. Use EXISTS instead of IN
မိူဝ်ႈၸဝ်ႈၵဝ်ႇ လူဝ်ႇၸႅတ်ႈတူၺ်းဝႃႈ "မီးၶေႃႈမုၼ်းႁႃႉ?" (Existence check)... ၵၢၼ်ၸႂ်ႉ **`EXISTS`** တေဝႆးလိူဝ် **`IN`** တွၼ်ႈတႃႇ Table ဢၼ်ယႂ်ႇၶႃႈ။
* **Why:** `EXISTS` တေၵိုတ်းၵၢၼ်သွၵ်ႈႁႃၵမ်းလဵဝ် မိူဝ်ႈမၼ်းႁၼ် "ထႅဝ်ဢွၼ်တၢင်းသုတ်း" (First match) ၶႃႈ။

### 5. OR vs UNION ALL
ၵၢၼ်ၸႂ်ႉ `OR` ၼႂ်း WHERE clause ၵႆႉႁဵတ်းႁႂ်ႈ MySQL ဢမ်ႇၸႂ်ႉ Index ၶႃႈ။
* **Refactor:** ၸႅၵ်ႇ Query ပဵၼ်သွင်တွၼ်ႈ သေဢဝ်မႃးႁူမ်ႈၵၼ်လူၺ်ႈ **`UNION ALL`** ၸၢင်ႈႁဵတ်းႁႂ်ႈဝႆးလိူဝ်ၶႃႈ (သင် Column တင်းသွင်ၽၢႆႇမီး Index ႁင်းမၼ်း)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Refactoring:** ၵၢၼ်မႄးပိူင်သၢင်ႈ Code ႁႂ်ႈလီလိူဝ်ၵဝ်ႇ လူၺ်ႈဢမ်ႇလႅၵ်ႈလၢႆႈၽွၼ်းလႆႈ။
* **SARGABLE:** Query ဢၼ်ၸၢင်ႈၸႂ်ႉ Index လႆႈတဵမ်ထူၼ်ႈ။
* **Function on Column:** ၵၢၼ်ၸႂ်ႉ Function ၵုမ်ႇဝႆႉၼိူဝ် Column ဢၼ်ႁဵတ်းႁႂ်ႈ Index ၸႂ်ႉဢမ်ႇလႆႈ။
* **Short-circuiting:** ၵိုတ်းလွင်ႈသိုပ်ႇႁဵတ်းၵၢၼ် မိူဝ်ႈလႆႈၶေႃႈတွပ်ႇယဝ်ႉ (မိူၼ်ၼင်ႇ EXISTS)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  မႄး Query ၼႆႉႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇ (Refactor): `SELECT * FROM sales WHERE DAY(sale_date) = 1;`
2.  ႁဵတ်းသင်လႄႈ **`EXISTS`** ၵႆႉဝႆးလိူဝ် **`IN`** မိူဝ်ႈၸႅတ်ႈတူၺ်းၶေႃႈမုၼ်းၼႂ်း Table ဢၼ်ယႂ်ႇ?
3.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `SELECT name, age FROM users` တႅၼ်း `SELECT *` ... မၼ်းတေၸွႆႈပၼ်ၽွၼ်းလီသင်ၶႃႈ?

---