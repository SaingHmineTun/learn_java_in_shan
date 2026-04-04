# Lesson 54: "Logic & Control: Variables, IF-ELSE, and CASE"

ၼႂ်း SQL ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ IF-ELSE လႆႈ၊ ၵူၺ်းၵႃႈ ၼႂ်း **Stored Procedure** ၼၼ်ႉ ႁဝ်းၸၢင်ႈတႅမ်ႈ Code ႁႂ်ႈမၼ်းဝူၼ်ႉလႆႈမိူၼ်ၼင်ႇ Programming Language (Dart/Java) ၶႃႈ။

### 1. Variables (တူဝ်လႅၵ်ႈလၢႆႈ)
မိူဝ်ႈႁဝ်းလူဝ်ႇ "သိမ်းၵႃႈၶၼ်" ၸူဝ်ႈၶၢဝ်း ၼႂ်း Procedure ႁဝ်းၸႂ်ႉ Keyword **`DECLARE`** ၶႃႈ။

```sql
DECLARE total_amount DECIMAL(10,2) DEFAULT 0.0;
SET total_amount = 500.50;
```
* **DECLARE:** ပဵၼ်ၵၢၼ်မၵ်းမၼ်ႈတူဝ်လႅၵ်ႈလၢႆႈ။
* **SET:** ပဵၼ်ၵၢၼ်သႂ်ႇၵႃႈၶၼ်ပၼ်မၼ်း။

### 2. IF-ELSE Statement (ၵၢၼ်လိူၵ်ႈတႅတ်ႈတတ်း)
ၸႂ်ႉတွၼ်ႈတႃႇႁႂ်ႈ Database ၸႅတ်ႈတူၺ်း "ငဝ်းလၢႆး" (Condition) သေႁဵတ်းၵၢၼ်ပႅၵ်ႇၵၼ်ၶႃႈ။

**တူဝ်ယင်ႇ:** ၵူတ်ႇထတ်းငိုၼ်းၼႂ်းပပ်ႉ ဢွၼ်တၢင်း တေတတ်းငိုၼ်း (ATM Logic)။
```sql
IF balance >= withdraw_amount THEN
    UPDATE accounts SET balance = balance - withdraw_amount;
ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ငိုၼ်းၼႂ်းပပ်ႉဢမ်ႇတဵမ်ၶႃႈ';
END IF;
```

### 3. CASE Statement (ၵၢၼ်လိူၵ်ႈလၢႆပိူင်)
သင်ၸဝ်ႈၵဝ်ႇမီးတၢင်းလိူၵ်ႈၼမ်ၼမ် (မိူၼ်ၼင်ႇ ၸႅၵ်ႇ Grade A, B, C, D) ... ၵၢၼ်ၸႂ်ႉ **`CASE`** တေလူငၢႆႈလိူဝ် IF-ELSE ၶႃႈ။

```sql
CASE 
    WHEN score >= 80 THEN SET grade = 'A';
    WHEN score >= 70 THEN SET grade = 'B';
    ELSE SET grade = 'F';
END CASE;
```

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ Logic ၼႂ်း Database?
1.  **Data Integrity:** တွၼ်ႈတႃႇႁၢမ်ႈ ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းဢၼ်ၽိတ်း (မိူၼ်ၼင်ႇ ထွၼ် Stock ဢွၵ်ႇ မိူဝ်ႈမၼ်းပဵၼ် 0)။
2.  **Automation:** ႁႂ်ႈ Database ၸတ်းၵၢၼ်လႅၵ်ႈလၢႆႈ Status ႁင်းမၼ်း (မိူၼ်ၼင်ႇ သင်သိုဝ်ႉယဝ်ႉ ႁႂ်ႈလႅၵ်ႈပဵၼ် 'Paid')။
3.  **Reduced App Logic:** ႁႂ်ႈ App (Flutter) ၸဝ်ႈၵဝ်ႇ ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ယုင်ႈယၢင်ႈ၊ ၵူၺ်းသူင်ႇၶေႃႈမုၼ်းမႃး သေႁႂ်ႈ DB ၸတ်းၵၢၼ်ပၼ်ၵမ်းလဵဝ်ၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Logic & Control
* **Scope:** `DECLARE` တေလႆႈဝႆႉတီႈၼိူဝ်သုတ်း ဝၢႆးသေ `BEGIN` တႃႇသေႇၶႃႈ။
* **Semicolon:** တွၼ်ႈ `END IF;` လႄႈ `END CASE;` တေလႆႈပႃး `;` တႃႇသေႇၶႃႈ။
* **Error Handling:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `SIGNAL` တႃႇသူင်ႇ Error Message ဢၼ်ပဵၼ်လိၵ်ႈတႆး ၶိုၼ်းၵႂႃႇပၼ် App ၸဝ်ႈၵဝ်ႇလႆႈၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Variable:** တူဝ်သိမ်းၵႃႈၶၼ် ၸူဝ်ႈၶၢဝ်း။
* **Conditional Logic:** ၵၢၼ်တႅပ်းတတ်း ၸွမ်းၼင်ႇငဝ်းလၢႆး ဢၼ်မီးဝႆႉ။
* **Flow Control:** ၵၢၼ်ၸတ်းၵၢၼ်သဵၼ်ႈတၢင်း လွင်ႈႁဵတ်းၵၢၼ် Code။
* **Boolean Expression:** ၶေႃႈၵႂၢမ်းဢၼ်သူင်ႇၽွၼ်းလႆႈပဵၼ် True ဢမ်ႇၼၼ် False။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL (ၼႂ်း Procedure) တႃႇမၵ်းမၼ်ႈတူဝ်လႅၵ်ႈလၢႆႈ **`discount`** သေ သင် `total_price > 1000` ႁႂ်ႈပၼ် `discount = 100` ၶႃႈ။
2.  လၢတ်ႈၼႄ လွင်ႈပႅၵ်ႇပိူင်ႈ ၼႂ်းၵႄႈ **`IF-ELSE`** လႄႈ **`CASE`** ၶႃႈ။
3.  ႁဵတ်းသင်လႄႈ ႁဝ်းထုၵ်ႇလီၸႅတ်ႈ Logic (မိူၼ်ၼင်ႇ ၵူတ်ႇထတ်း Stock) ၼႂ်း Database လိူဝ်ၵၢၼ်ၸႅတ်ႈၼႂ်း App ၶႃႈ?

---