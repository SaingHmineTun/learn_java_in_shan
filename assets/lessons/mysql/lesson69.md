# Lesson 69: "Maintenance: ANALYZE and Slow Query Logs"

မိူဝ်ႈႁဝ်းၸႂ်ႉ Database ႁိုင်ယဝ်ႉၼႆ ၶေႃႈမုၼ်းတေၼမ်လိူဝ် လႄႈ သဵၼ်ႈမၢႆ (Index) ၵေႃႈၸၢင်ႈယုင်ႈယၢင်ႈၵႂႃႇၶႃႈ။ 
သင်ၼႆ ႁဝ်းလူဝ်ႇမီးလၢႆးႁႃတူၺ်းဝႃႈ "Query ဢၼ်လႂ် ဢၼ်တိုၵ်ႉႁဵတ်းႁႂ်ႈပိူၼ်ႈပႂ်ႉႁိုင်?" ၶႃႈ။

### 1. ANALYZE TABLE (ၵၢၼ်မႄးသဵၼ်ႈမၢႆ)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇ INSERT/DELETE ၶေႃႈမုၼ်းၼမ်ၼမ်ၼၼ်ႉ **Statistics** (ၶေႃႈမုၼ်းၼပ်ႉသွၼ်ႇ) ဢၼ် MySQL Optimizer ၸႂ်ႉတႃႇဝၢင်းၽႅၼ် EXPLAIN ၼၼ်ႉ ၸၢင်ႈ "ၵဝ်ႇ" (Outdated) ၵႂႃႇၶႃႈ။
* **Command:** `ANALYZE TABLE students;`
* **Why:** မၼ်းတေၵႂႃႇ Update "Cardinality" (တၢင်းပႅၵ်ႇပိူင်ႈၶေႃႈမုၼ်း) ၼႂ်း Index ၶိုၼ်း။ ၼၼ်ႉတေၸွႆႈႁႂ်ႈ MySQL လိူၵ်ႈၸႂ်ႉ Index ဢၼ်မၢၼ်ႇမႅၼ်ႈလိူဝ်ၵဝ်ႇၶႃႈ။

### 2. OPTIMIZE TABLE (ၵၢၼ်ၸတ်းလႅၼ်ႇ Memory)
မိူဝ်ႈယႃႉ (DELETE) ၶေႃႈမုၼ်းယဝ်ႉၼၼ်ႉ MySQL ဢမ်ႇလႆႈဢဝ် "တီႈယူႇ" (Disk Space) ၼၼ်ႉ ပၼ်ၶိုၼ်း OS ၵမ်းလဵဝ်။ မၼ်းတေပဵၼ် "ႁူးပဝ်ႇ" (Fragmentation) ဝႆႉၼႂ်း File ၶႃႈ။
* **Command:** `OPTIMIZE TABLE students;`
* **Why:** မၼ်းတေ "တႅမ်ႈ Table မႂ်ႇ" ႁႂ်ႈသႅၼ်ႈသႂ် သေယွမ်းတၢင်းယႂ်ႇ File ၶႃႈ။ (မိူၼ်ၵၢၼ် Defragment ၼႂ်း Windows ၶႃႈ)။

### 3. Slow Query Log (သဵၼ်ႈမၢႆ Query ဢၼ်ထိူင်း)
ၼႆႉပဵၼ် "ၵူၼ်းလၵ်ႉမၢႆ" ၼႂ်း MySQL ဢၼ်တေတႅမ်ႈမၢႆဝႆႉဝႃႈ "Query ဢၼ်လႂ် ဢၼ်ႁဵတ်းၵၢၼ်ႁိုင်လိူဝ် X ၸတ်ႇၵႅၼ်ႉ (Seconds)?" ၶႃႈ။



* **How to enable:**
  ```sql
  SET GLOBAL slow_query_log = 'ON';
  SET GLOBAL long_query_time = 2; -- မၢႆဝႆႉ Query ဢၼ်ႁိုင်လိူဝ် 2 Seconds
  ```
* **Why:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၵႂႃႇပိုတ်ႇလူ File ၼႆႉသေ ႁူႉလႆႈၵမ်းလဵဝ်ဝႃႈ "Query တူဝ်လႂ် ဢၼ်လူဝ်ႇမႄး (Refactor)" ၶႃႈ။

### 4. SHOW PROCESSLIST (တူၺ်းၵူၼ်းတိုၵ်ႉၸႂ်ႉ)
သင် Database ၸဝ်ႈၵဝ်ႇ "ၶႅင်" (Hang) ၵႂႃႇၵမ်းလဵဝ်ၸိုင် ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁူႉဝႃႈ "ၽႂ်တိုၵ်ႉႁဵတ်းသင်ယူႇ?" ၶႃႈ။
* **Command:** `SHOW PROCESSLIST;`
* **Why:** မၼ်းတေၼႄ Query တင်းမူတ်း ဢၼ်တိုၵ်ႉ Running ဝႆႉယူႇ။ သင်ႁၼ် Query ဢၼ်ယုင်ႈယၢင်ႈသေ ႁဵတ်းႁႂ်ႈ Server ၼၵ်းၼႆ ၸဝ်ႈၵဝ်ႇၸၢင်ႈ `KILL process_id;` တႃႇၵိုတ်းမၼ်းပႅတ်ႈလႆႈၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Maintenance
* **Maintenance Window:** ၵၢၼ်ၸႂ်ႉ `OPTIMIZE TABLE` ၸၢင်ႈႁဵတ်းႁႂ်ႈ Table ထုၵ်ႇ "Lock" ဝႆႉ။ ၵွပ်ႈၼၼ် ထုၵ်ႇလီႁဵတ်းမိူဝ်ႈ "ၶၢဝ်းယၢမ်းၵူၼ်းၸႂ်ႉဢေႇ" (မိူၼ်ၼင်ႇ ၵၢင်ၶမ်ႈ/ၵၢင်ၶိုၼ်း) ၶႃႈ။
* **Log Rotation:** Slow Query Log ၸၢင်ႈယႂ်ႇလူၼ်ႉႁႅင်းလႄႈ ၸဝ်ႈၵဝ်ႇ လူဝ်ႇၵႆႉၵႆႉလၢင်ႉပၼ်ၶႃႈ။
* **Check Regularly:** ယႃႇပႂ်ႉတေႃႇပေႃး Database လူႉ ၸင်ႇတူၺ်း Logs ၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Statistics:** ၶေႃႈမုၼ်းၼပ်ႉသွၼ်ႇ ဢၼ် MySQL ၸႂ်ႉတႃႇဝၢင်းၽႅၼ် Query။
* **Fragmentation:** ႁူးပဝ်ႇၼႂ်း Disk ဢၼ်ပဵၼ် ဝၢႆးသေ DELETE ၶေႃႈမုၼ်းၼမ်ၼမ်။
* **Slow Query Log:** File သိမ်းပိုၼ်း Query ဢၼ်ႁဵတ်းၵၢၼ်ထိူင်း။
* **Processlist:** သဵၼ်ႈမၢႆ ၵၢၼ်ႁဵတ်းၵၢၼ်တင်းမူတ်း ဢၼ်တိုၵ်ႉႁဵတ်းယူႇၼႂ်း Server။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  **`ANALYZE TABLE`** ၸွႆႈပၼ်ၽွၼ်းလီသင် တွၼ်ႈတႃႇ MySQL Optimizer ၶႃႈ?
2.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ **`DELETE FROM users`** သေယႃႉၶေႃႈမုၼ်း 1 လၢၼ်ႉထႅဝ်... ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီၸႂ်ႉ Command လႂ် တႃႇဢဝ် Disk Space ၶိုၼ်းၶႃႈ?
3.  သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁႃတူၺ်းဝႃႈ "ၽႂ်တိုၵ်ႉႁဵတ်းႁႂ်ႈ Server ၼၵ်းယူႇၵမ်းၼႆႉ?" ... ၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ Command လႂ်ၶႃႈ?

---