# Lesson 26: "Schema Evolution: The ALTER TABLE Command in Detail"

မိူဝ်ႈႁဝ်းသၢင်ႈ Table ယဝ်ႉတူဝ်ႈ... ၵူၺ်းၵႃႈ သမ်ႉၶႂ်ႈ "ထႅမ် Column"၊ "လႅၵ်ႈ Data Type" ဢမ်ႇၼၼ် "ယႃႉ Column ပႅတ်ႈ" ၼၼ်ႉ... ႁဝ်းဢမ်ႇလူဝ်ႇ `DROP` (ယႃႉ) Table တင်းမူတ်းပႅတ်ႈၶႃႈ။ 
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`ALTER TABLE`** တႃႇမႄးမၼ်းၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်မႄးႁိူၼ်း" (Renovation) ၶႃႈ...
* **ADD:** ၵေႃႇႁွင်ႈထႅမ်မႂ်ႇ။
* **MODIFY:** လႅၵ်ႈၽၵ်းတူမႆႉ ႁႂ်ႈပဵၼ်ၽၵ်းတူလဵၵ်း (Change Type)။
* **CHANGE:** ပိၼ်ႇၸိုဝ်ႈႁွင်ႈ (Rename)။
* **DROP:** ယႃႉႁူဝ်ႉၵဝ်ႇပႅတ်ႈ။



### 2. ၵၢၼ်ထႅမ် Column မႂ်ႇ (ADD)
သင်ႁဝ်းလူဝ်ႇသိမ်းၶေႃႈမုၼ်းထႅမ်...

```sql
-- ထႅမ် Column 'phone' သႂ်ႇၼႂ်း Table 'students'
ALTER TABLE students 
ADD COLUMN phone VARCHAR(20) NOT NULL;

-- ထႅမ်ဝႆႉၽၢႆႇလင် Column ဢၼ်ႁဝ်းလိူၵ်ႈ
ALTER TABLE students 
ADD COLUMN email VARCHAR(100) AFTER name;
```

### 3. ၵၢၼ်မႄး Data Type (MODIFY)
ၸႂ်ႉမိူဝ်ႈ VARCHAR(50) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉ ဢေႇႁႅင်းၼႃႇ ဢမ်ႇၼၼ် ၶႂ်ႈလႅၵ်ႈပဵၼ် TEXT ၶႃႈ။

```sql
-- လႅၵ်ႈတၢင်းယၢဝ်း VARCHAR ႁႂ်ႈၼမ်လိူဝ်ၵဝ်ႇ
ALTER TABLE students 
MODIFY COLUMN phone VARCHAR(30);
```

### 4. ၵၢၼ်ပိၼ်ႇၸိုဝ်ႈ Column (CHANGE / RENAME)
သင်ႁဝ်းတႅမ်ႈၸိုဝ်ႈ Column ၽိတ်း ဢမ်ႇၼၼ် ၶႂ်ႈလႅၵ်ႈၸိုဝ်ႈမႂ်ႇ...

```sql
-- လၢႆးၵဝ်ႇ (MySQL ၵႆႉၸႂ်ႉ): CHANGE [ၸိုဝ်ႈၵဝ်ႇ] [ၸိုဝ်ႈမႂ်ႇ] [Type]
ALTER TABLE students 
CHANGE COLUMN phone mobile_number VARCHAR(30);

-- လၢႆးမႂ်ႇ (MySQL 8.0+): RENAME COLUMN
ALTER TABLE students 
RENAME COLUMN first_name TO f_name;
```

### 5. ၵၢၼ်ယႃႉ Column ပႅတ်ႈ (DROP)
တွၼ်ႈၼႆႉ **ၾၢင်ႉတႄႉတႄႉ** ၶႃႈ! ၵွပ်ႈသင်ယႃႉယဝ်ႉ... ၶေႃႈမုၼ်းၼႂ်း Column ၼၼ်ႉ တေႁၢႆၵႂႃႇ တင်းမူတ်းၶႃႈ။

```sql
ALTER TABLE students 
DROP COLUMN old_address;
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Schema Evolution:** ၵၢၼ်လႅၵ်ႈလၢႆႈ ပိူင်သၢင်ႈ Database ၸွမ်းၼင်ႇၶၢဝ်းယၢမ်း။
* **Data Truncation:** မိူဝ်ႈႁဝ်း `MODIFY` Data Type ႁႂ်ႈလဵၵ်ႉၵႂႃႇ (မိူၼ်ၼင်ႇ VARCHAR 100 လႅၵ်ႈပဵၼ် 10) ၼႆ ၶေႃႈမုၼ်းဢၼ်ယၢဝ်းလိူဝ်ၼၼ်ႉ တေထုၵ်ႇတတ်းပႅတ်ႈၶႃႈ။
* **After / First:** ၶေႃႈၵႂၢမ်းၸႂ်ႉမၵ်းမၼ်ႈ တီႈယူႇ Column ဢၼ်ႁဝ်း `ADD` မႂ်ႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇထႅမ် Column **`status`** (DEFAULT 'active') သႂ်ႇၼႂ်း Table **`users`** ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇမီး Column **`price`** ဢၼ်ပဵၼ် `INT` ... သေၶႂ်ႈလႅၵ်ႈႁႂ်ႈမၼ်းသိမ်းလႆႈ တူဝ်ၸုတ်ႇလႆႈ (မိူၼ်ၼင်ႇ `DECIMAL(10,2)`) ... ၸဝ်ႈၵဝ်ႇတေတႅမ်ႈ Code ၸိူင်ႉႁိုဝ်ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ ၵၢၼ်ၸႂ်ႉ **`DROP COLUMN`** ထုၵ်ႇလီၾၢင်ႉလိူဝ်ပိူၼ်ႈ?

---