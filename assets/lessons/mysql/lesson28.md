# Lesson 28: "DML Syntax: Professional INSERT and INSERT IGNORE"

မိူဝ်ႈႁဝ်းမီး Table ဢၼ်ပဝ်ႇဝႆႉၼၼ်ႉ... လွင်ႈဢွၼ်တၢင်းသုတ်း ဢၼ်ႁဝ်းလူဝ်ႇလႆႈႁဵတ်းၵေႃႈ ပဵၼ်ၵၢၼ် "သႂ်ႇ" (Insert) ၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇၶႃႈ။ 
ၼႂ်း MySQL မီးလၢႆးသႂ်ႇလၢႆပိူင် ဢၼ်တေၸွႆႈႁႂ်ႈ App ႁဝ်း ဢမ်ႇပဵၼ် Error မိူဝ်ႈမီးၶေႃႈမုၼ်းသွၼ်ႉၵၼ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်သႂ်ႇၶူဝ်းၼႂ်းလွၵ်း" ၶႃႈ...
* **Standard INSERT:** သႂ်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇ ၸွမ်းၼင်ႇ Column ဢၼ်မၵ်းမၼ်ႈဝႆႉ။
* **Multi-row INSERT:** သႂ်ႇၶေႃႈမုၼ်းလၢႆလၢႆထႅဝ် (Rows) ၼႂ်း Command ပွၵ်ႈလဵဝ် (ဝႆးလိူဝ်)။
* **INSERT IGNORE:** သႂ်ႇၶေႃႈမုၼ်း၊ ၵူၺ်းၵႃႈ သင်မၼ်းသွၼ်ႉ (Duplicate) တင်း Primary Key ဢၼ်မီးဝႆႉယဝ်ႉ... ႁႂ်ႈမၼ်း "ၶၢမ်ႈ" (Ignore) ပႅတ်ႈ သေဢမ်ႇပၼ် Error ၶႃႈ။

### 2. Standard INSERT (လၢႆးသႂ်ႇပိုၼ်ႉထၢၼ်)
လၢႆးဢၼ်လီသုတ်း ပဵၼ်ၵၢၼ် "မၵ်းမၼ်ႈၸိုဝ်ႈ Column" တႃႇသေႇၶႃႈ၊ တွၼ်ႈတႃႇႁၢမ်ႈ Error မိူဝ်ႈ Table လႅၵ်ႈလၢႆႈၶႃႈ။

```sql
-- လၢႆးတႅမ်ႈ ဢၼ်မၢၼ်ႇမႅၼ်ႈ (Recommended)
INSERT INTO students (first_name, last_name, age)
VALUES ('ၸၢႆး', 'သႅင်', 20);

-- လၢႆးတႅမ်ႈလၢႆလၢႆထႅဝ် (Professional & Fast)
INSERT INTO students (first_name, last_name, age)
VALUES 
    ('ၼၢင်း', 'ၼုမ်ႇ', 19),
    ('ၸၢႆး', 'လူတ်း', 22),
    ('ၼၢင်း', 'မူၼ်း', 21);
```

### 3. INSERT IGNORE (ၵၢၼ်ၶၢမ်ႈ Error)
ၸႂ်ႉမိူဝ်ႈႁဝ်းသူင်ႇၶေႃႈမုၼ်းၸုမ်းလူင် (Bulk Data) ၶဝ်ႈၵႂႃႇ သေႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Script ႁဝ်း "ၵိုတ်း" (Stop) မိူဝ်ႈမၼ်းၵႂႃႇၺႃး ID ဢၼ်မီးဝႆႉယဝ်ႉၶႃႈ။

```sql
-- သင် student_id 101 မီးဝႆႉယဝ်ႉ... 
-- Command ၼႆႉ တေဢမ်ႇ Error၊ မၼ်းတေၶၢမ်ႈၵႂႃႇၵူၺ်းၶႃႈ။
INSERT IGNORE INTO students (student_id, first_name, last_name)
VALUES (101, 'ၸၢႆး', 'ၶမ်း');
```


### 4. INSERT INTO ... SELECT
ၼႆႉပဵၼ်လၢႆး Professional ဢၼ်ဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Table ဢၼ်ၼိုင်ႈ ၵႂႃႇသႂ်ႇထႅင်ႈၼႂ်း Table ဢၼ်ၼိုင်ႈၶႃႈ။

```sql
INSERT INTO student_archive (name, graduation_year)
SELECT name, 2026 FROM students
WHERE graduation_status = 'passed';
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Professional INSERT
* **Column Mapping:** တွင်းဝႆႉတႃႇသေႇဝႃႈ တၢင်းၼမ် Column လႄႈ တၢင်းၼမ် Value တေလႆႈ "မိူၼ်ၵၼ်" ၶႃႈ။
* **Data Types:** ၶေႃႈမုၼ်းဢၼ်သူင်ႇၵႂႃႇ တေလႆႈမၢၼ်ႇမႅၼ်ႈၸွမ်း Data Type (မိူၼ်ၼင်ႇ တူဝ်လိၵ်ႈ တေလႆႈသႂ်ႇ Quote `'...'`) ၶႃႈ။
* **Avoid SELECT * :** မိူဝ်ႈၸႂ်ႉ `INSERT INTO ... SELECT`... ယႃႇပေၸႂ်ႉ `*` ၶႃႈ၊ လူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Column ႁႂ်ႈၸႅင်ႈလႅင်း တႃႇႁၢမ်ႈပၼ်ႁႃ မိူဝ်ႈ Table structure ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **DML (Data Manipulation Language):** ၶေႃႈၵႂၢမ်း SQL တႃႇၸတ်းၵၢၼ် ၶေႃႈမုၼ်း (Insert, Update, Delete)။
* **Bulk Insert:** ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းလၢႆလၢႆထႅဝ် ၼႂ်း Command လဵဝ်။
* **Duplicate Key:** မိူဝ်ႈၶေႃႈမုၼ်းမႂ်ႇ သွၼ်ႉၵၼ်တင်း Primary Key ဢမ်ႇၼၼ် Unique Key ဢၼ်မီးဝႆႉယဝ်ႉ။
* **Ignore:** ၵၢၼ်ၶၢမ်ႈ Error သေ သိုပ်ႇႁဵတ်းၵၢၼ်ၵႂႃႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇသႂ်ႇၶေႃႈမုၼ်း 3 ထႅဝ် ၶဝ်ႈၼႂ်း Table **`books`** (ပႃး `title`, `author`, `price`) ၼႂ်း Command လဵဝ်ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ **`INSERT`** သေၺႃး ID ဢၼ်မီးဝႆႉယဝ်ႉ (Duplicate)... Database တေဝႃႈႁိုဝ်ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ ၵၢၼ်ၸႂ်ႉ **`INSERT IGNORE`** ၸွႆႈပၼ်လွင်ႈငၢႆႈၸႂ် မိူဝ်ႈႁဝ်းသူင်ႇၶေႃႈမုၼ်းၼမ်ၼမ်ၶႃႈ?

---