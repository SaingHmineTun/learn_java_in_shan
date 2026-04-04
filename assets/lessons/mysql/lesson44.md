# Lesson 44: "The Self-Join: Hierarchical Data and Row Comparison"

**Self-Join** ဢမ်ႇၸႂ်ႈ Keyword မႂ်ႇၼႂ်း SQL ၶႃႈ၊ မၼ်းၵူၺ်းပဵၼ် ၵၢၼ်ၸႂ်ႉ `INNER JOIN` ဢမ်ႇၼၼ် `LEFT JOIN` သေ Join Table ဢၼ်လဵဝ် သွင်ပွၵ်ႈ လူၺ်ႈၵၢၼ်ပၼ် **Alias (ၸိုဝ်ႈတႅၼ်း)** ဢၼ်ပႅၵ်ႇၵၼ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ပပ်ႉသဵၼ်ႈမၢႆၵူၼ်းႁဵတ်းၵၢၼ်" ၶႃႈ...
* ၼႂ်း Table **`Employees`**... ၵူႈၵေႃႉမီး `employee_id`။
* သမ်ႉမီး Column `manager_id` ဢၼ်မၢႆဝႆႉဝႃႈ "ႁူဝ်ၼႃႈၵေႃႉၼႆႉ ပဵၼ်ၽႂ်?"။
* ယွၼ်ႉဝႃႈ "ႁူဝ်ၼႃႈ" ၵေႃႈပဵၼ် "ၵူၼ်းႁဵတ်းၵၢၼ်" ၵေႃႉၼိုင်ႈမိူၼ်ၵၼ်... မၼ်းၵေႃႈတေမီးၸိုဝ်ႈယူႇၼႂ်း Table `Employees` ၼႆႉၵူၺ်းၶႃႈ။



### 2. Syntax ၵၢၼ်တႅမ်ႈ Self-Join
တွၼ်ႈဢၼ်လွင်ႈယႂ်ႇသုတ်း ပဵၼ်ၵၢၼ်ပၼ်ၸိုဝ်ႈ Alias ႁႂ်ႈပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ `e` တႃႇ Employee လႄႈ `m` တႃႇ Manager) ၶႃႈ။

```sql
SELECT 
    e.name AS Employee, 
    m.name AS Manager
FROM employees AS e
LEFT JOIN employees AS m 
    ON e.manager_id = m.employee_id;
```
* **LEFT JOIN:** ႁဝ်းၸႂ်ႉ LEFT JOIN ၵွပ်ႈဝႃႈ ႁူဝ်ၼႃႈလူင်သုတ်း (CEO) တေဢမ်ႇမီး `manager_id` (NULL)။ သင်ၸႂ်ႉ `INNER JOIN` ... ၸိုဝ်ႈ CEO တေႁၢႆပႅတ်ႈၼႂ်း Report ၶႃႈၼႃႈ။

### 3. Hierarchical Data (ၶေႃႈမုၼ်းပဵၼ်ၸၼ်ႉ)
Self-Join ၸွႆႈႁႂ်ႈႁဝ်းႁၼ် "ၸၼ်ႉၵၢၼ်ဢုပ်ႉပိူင်ႇ" (Hierarchy) လႆႈလီတႄႉတႄႉၶႃႈ။
* **Staff -> Supervisor -> Manager -> CEO**
* ႁဝ်းၸၢင်ႈ Join တူဝ်မၼ်းၶိုၼ်းလၢႆလၢႆၸၼ်ႉၵေႃႈလႆႈၶႃႈ။

### 4. Row Comparison (ၵၢၼ်တႅၵ်ႈထႅဝ်)
လိူဝ်သေၼႆႉဢမ်ႇၵႃး... ႁဝ်းယင်းၸၢင်ႈၸႂ်ႉ Self-Join တႃႇတႅၵ်ႈၶေႃႈမုၼ်းၼႂ်း Table ဢၼ်လဵဝ်ၵၼ်။
* **တူဝ်ယင်ႇ:** ႁႃလုၵ်ႈႁဵၼ်း ဢၼ်ယူႇ "ဝဵင်းလဵဝ်ၵၼ်" ၵူၺ်းၵႃႈ ဢမ်ႇၸႂ်ႈၵေႃႉလဵဝ်ၵၼ်။

```sql
SELECT a.name, b.name, a.city
FROM students a, students b
WHERE a.student_id <> b.student_id
AND a.city = b.city;
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Self-Join
* **Aliases are Mandatory:** ၸဝ်ႈၵဝ်ႇ **တေလႆႈ** ပၼ်ၸိုဝ်ႈ Alias ၶႃႈ၊ သင်ဢမ်ႇၼၼ် Database တေယုင်ႈယၢင်ႈ ၵွပ်ႈမၼ်းဢမ်ႇႁူႉဝႃႈ ၸဝ်ႈၵဝ်ႇလၢတ်ႈၼႄ Table ဢၼ်လႂ်ၶႃႈ။
* **Join Condition:** တွၼ်ႈ `ON` တေလႆႈၵွင်ႉၸူး Column ဢၼ်မၢၼ်ႇမႅၼ်ႈ (မိူၼ်ၼင်ႇ FK ၵွင်ႉၸူး PK ၼႂ်း Table တူဝ်မၼ်းၶိုၼ်း) ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Self-Join:** ၵၢၼ် Join Table ဢၼ်လဵဝ်ၵၼ် သွင်ပွၵ်ႈ (ၼင်ႇႁႂ်ႈပဵၼ် Table သွင်ဢၼ်ၸူဝ်ႈၶၢဝ်း)။
* **Hierarchy:** ပိူင်သၢင်ႈၶေႃႈမုၼ်း ဢၼ်မီးၸၼ်ႉၼိူဝ် ၸၼ်ႉတႂ်ႈ (မိူၼ်ၼင်ႇ ၵိင်ႇမႆႉ)။
* **Recursive Relationship:** သဵၼ်ႈၵွင်ႉ ဢၼ်ပတ်ႉၶိုၼ်းမႃးၸူးတူဝ်မၼ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ၸဝ်ႈၵဝ်ႇမီး Table **`Categories`** ဢၼ်မီး `category_id` လႄႈ `parent_id` (တႃႇၸႅၵ်ႇ Sub-category) ... ၸဝ်ႈၵဝ်ႇတေတႅမ်ႈ **Self-Join** ၸိူင်ႉႁိုဝ် တႃႇၼႄၸိုဝ်ႈ Category ႁူမ်ႈတင်းၸိုဝ်ႈ Parent မၼ်းၶႃႈ?
2.  ႁဵတ်းသင်လႄႈ ၵၢၼ်ၸႂ်ႉ **`LEFT JOIN`** ၼႂ်း Self-Join လွင်ႈႁူဝ်ၼႃႈ-လုၵ်ႈၼွင်ႉ ၼၼ်ႉ လီလိူဝ် `INNER JOIN` ၶႃႈ?
3.  ၼႂ်းၵၢၼ်တႅၵ်ႈထႅဝ် (Row Comparison) ... ႁဵတ်းသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ `a.id <> b.id` ၶႃႈ?

---