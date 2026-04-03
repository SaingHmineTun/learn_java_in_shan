# Lesson 30: "The SELECT Clause: Expressions, Aliasing, and Literals"

မိူဝ်ႈႁဝ်းၶႂ်ႈဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉၼႂ်း Table ဢွၵ်ႇမႃးၼႄၼၼ်ႉ... ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ တေဢဝ် Column လႂ်၊ 
တေပၼ်ၸိုဝ်ႈမႂ်ႇၸိူင်ႉႁိုဝ် လႄႈ တေၼပ်ႉသွၼ်ႇၵမ်းလဵဝ်ၸိူင်ႉႁိုဝ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်လိူၵ်ႈၵုၼ်ႇၼႂ်းသႅင်ႇ" ၶႃႈ...
* **Literals:** မိူၼ်ၼင်ႇ ႁဝ်းတႅမ်ႈမၢႆတွင်းသႂ်ႇၸွမ်း (Fixed value)။
* **Expressions:** မိူၼ်ၼင်ႇ ႁဝ်းၼပ်ႉသွၼ်ႇၵႃႈၶၼ်ၵမ်းလဵဝ် (Math)။
* **Aliasing:** မိူၼ်ၼင်ႇ ႁဝ်းပၼ် "ၸိုဝ်ႈလပ်ႉ" (Nickname) တႃႇ Column ႁႂ်ႈလူငၢႆႈၶႃႈ။

### 2. Literals (ၵႃႈၶၼ်တႅတ်ႈတေႃး)
ႁဝ်းၸၢင်ႈ `SELECT` ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇမီးၼႂ်း Table ၵေႃႈလႆႈၶႃႈ။ မၼ်းတေဢွၵ်ႇမႃးပဵၼ် Column မႂ်ႇ တႃႇၵူႈထႅဝ်ၶႃႈ။

```sql
SELECT first_name, 'Student' AS role
FROM students;
-- 'Student' ပဵၼ် Literal ဢၼ်တေဢွၵ်ႇမႃးၸွမ်းၵူႈထႅဝ်ၶႃႈ။
```

### 3. Expressions (ၵၢၼ်ၼပ်ႉသွၼ်ႇ)
ႁဝ်းၸၢင်ႈဢဝ် Column မႃး "ႁူမ်ႈ" (Combine) ၵၼ် ဢမ်ႇၼၼ် ၼပ်ႉသွၼ်ႇၵၼ်လႆႈၶႃႈ။

```sql
SELECT 
    product_name, 
    unit_price, 
    unit_price * 1.05 AS price_with_tax -- ၼပ်ႉသွၼ်ႇၵႃႈၶၼ်ပႃးဢၶွၼ်ႇ 5%
FROM products;
```


### 4. Aliasing (ၵၢၼ်ပၼ်ၸိုဝ်ႈမႂ်ႇ - AS)
ၵႆႉမီး Column ဢၼ်ၸိုဝ်ႈယၢပ်ႇ (မိူၼ်ၼင်ႇ `std_fn_name`)... ႁဝ်းၸၢင်ႈပၼ်ၸိုဝ်ႈမႂ်ႇ ႁႂ်ႈ App ႁဝ်းလူငၢႆႈ လႄႈ ႁႂ်ႈႁၢင်ႈလီၶႃႈ။

```sql
SELECT 
    first_name AS 'Name', 
    last_name AS 'Surname'
FROM students;
```
* **Note:** ၸဝ်ႈၵဝ်ႇတေဢမ်ႇၸႂ်ႉ `AS` ၵေႃႈလႆႈ (မိူၼ်ၼင်ႇ `first_name Name`) ၵူၺ်းၵႃႈ ၵၢၼ်သႂ်ႇ `AS` တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈလိူဝ်ၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ SELECT Clause
* **Select Specific Columns:** ႁၢမ်ႈၸႂ်ႉ `SELECT *` တႃႇသေႇၼႂ်း App တႄႉတႄႉ ၵွပ်ႈမၼ်းတေသူင်ႇၶေႃႈမုၼ်းၼမ်လိူဝ်ဢၼ်လူဝ်ႇ (Slow)။ လိူၵ်ႈဢဝ် Column ဢၼ်လူဝ်ႇၸႂ်ႉၵူၺ်းၶႃႈၼႃ။
* **Order of Execution:** တွၼ်ႈတႃႇ Database... မၼ်းတေၵႂႃႇတူၺ်းတီႈ `FROM` (Table လႂ်) ဢွၼ်တၢင်း ၸင်ႇတေမႃးတူၺ်း `SELECT` (ဢဝ် Column လႂ်) ၶႃႈၼႃႈ။
* **Math Logic:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `+`, `-`, `*`, `/` ၼႂ်း SELECT လႆႈၵူႈတီႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **SELECT Clause:** တွၼ်ႈတႅမ်ႈမၵ်းမၼ်ႈ ၶေႃႈမုၼ်းဢၼ်တေဢွၵ်ႇမႃးၼႄ (Output)။
* **Alias (AS):** ၸိုဝ်ႈတႅၼ်း တွၼ်ႈတႃႇ Column ဢမ်ႇၼၼ် Table။
* **Literal:** ၵႃႈၶၼ်ဢၼ်မၵ်းမၼ်ႈဝႆႉတႅတ်ႈတေႃး (String, Number, NULL)။
* **Arithmetic Operators:** ၶိူင်ႈမၢႆၼပ်ႉသွၼ်ႇ (+, -, *, /)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇလိူၵ်ႈ **`product_name`** လႄႈ **`stock_quantity`** လုၵ်ႉၼႂ်း Table `products` သေပၼ်ၸိုဝ်ႈ (Alias) ဝႃႈ **'Item'** လႄႈ **'In Stock'** ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇမီး Column **`salary`**... ၸၢမ်းတႅမ်ႈ Code တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇ `salary * 12` သေပၼ်ၸိုဝ်ႈဝႃႈ **'Annual_Salary'** ၶႃႈ။
3.  ႁဵတ်းသင်လႄႈ ၵၢၼ်ၸႂ်ႉ **`AS`** (Aliasing) ၸွႆႈပၼ်လွင်ႈငၢႆႈၸႂ် မိူဝ်ႈႁဝ်းတႅမ်ႈ App ၼႂ်း Flutter ဢမ်ႇၼၼ် Website ၶႃႈ?

---