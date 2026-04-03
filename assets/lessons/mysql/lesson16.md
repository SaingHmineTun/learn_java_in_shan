# Lesson 16: "DDL Basics: Creating and Managing Schemas and Tables"

**`DDL (Data Definition Language)`** ပဵၼ်ၸုမ်းၶေႃႈၵႂၢမ်း SQL ဢၼ်ႁဝ်းၸႂ်ႉတႃႇ "မၵ်းမၼ်ႈ" ပိူင်သၢင်ႈ (Structure) ၶေႃႈမုၼ်းၶႃႈ။ 
သင်ဝူၼ်ႉတူၺ်း ၵၢၼ်ႁဵတ်းသူၼ်... DDL ၵေႃႈမိူၼ်ၼင်ႇ ၵၢၼ်ၶုတ်းႁွင်ႈ၊ ၵၢၼ်ၵေႃႇႁူဝ်ႉ လႄႈ ၵၢၼ်ၸႅၵ်ႇလိၼ်ဝႆႉၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇမီး "ထူင်" (Database/Schema) တႃႇသိမ်း Tables ႁဝ်းဢွၼ်တၢင်းၶႃႈ။
* **CREATE SCHEMA/DATABASE:** ၸႂ်ႉတႃႇသၢင်ႈ "ထူင်" ၶေႃႈမုၼ်းမႂ်ႇ။
* **CREATE TABLE:** ၸႂ်ႉတႃႇသၢင်ႈ "ပႅၼ်ႈ" ၶေႃႈမုၼ်း ဢၼ်မီး Columns လႄႈ Data Types တႅတ်ႈတႅတ်ႈတေႃးတေႃးၶႃႈ။



### 2. ၵၢၼ်သၢင်ႈ Database (Creating Schemas)
မိူဝ်ႈႁဝ်းသၢင်ႈ Database ၼၼ်ႉ တွင်းဝႆႉတႃႇသေႇဝႃႈ လူဝ်ႇသႂ်ႇ **Character Set** တွၼ်ႈတႃႇလိၵ်ႈတႆးႁဝ်းၶႃႈ။

```sql
-- 1. သၢင်ႈ Database မႂ်ႇ
CREATE DATABASE IF NOT EXISTS tmk_student_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- 2. လိူၵ်ႈၸႂ်ႉ Database ၼၼ်ႉ
USE tmk_student_db;
```
* **IF NOT EXISTS:** ၸွႆႈႁၢမ်ႈဢမ်ႇႁႂ်ႈ Error သင်မၼ်းမီးဝႆႉယူႇယဝ်ႉၶႃႈ။

### 3. ၵၢၼ်သၢင်ႈ Table (Creating Tables)
ၼႆႉပဵၼ်ပိူင် (Syntax) ပိုၼ်ႉထၢၼ် ဢၼ်ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉၵူႈဝၼ်းၶႃႈ။

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    enrollment_date DATE
);
```

### 4. ၵၢၼ်ၸတ်းၵၢၼ် လႄႈ ၵၢၼ်ယႃႉပႅတ်ႈ (Management)
သင်ႁဝ်းၶႂ်ႈတူၺ်း ဢမ်ႇၼၼ် ၶႂ်ႈယႃႉပႅတ်ႈ ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်းၸိူဝ်းၼႆႉၶႃႈ...
* **SHOW DATABASES;** - တူၺ်းသဵၼ်ႈမၢႆ Database တင်းသဵင်ႈ။
* **DESCRIBE students;** - တူၺ်းပိူင်သၢင်ႈ Column ၼႂ်း Table (မၢႆတွင်း: ၸႂ်ႉ `DESC` ၵေႃႈလႆႈၶႃႈ)။
* **DROP DATABASE tmk_student_db;** - ယႃႉ Database ပႅတ်ႈတင်းသဵင်ႈ (ၾၢင်ႉတႄႉတႄႉၶႃႈ! ၶေႃႈမုၼ်းတေႁၢႆၵႂႃႇ တင်းမူတ်းၶႃႈၼႃႈ)။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ DDL Basics
* **Naming Convention:** ၸိုဝ်ႈ Table လႄႈ Column ထုၵ်ႇလီပဵၼ် တူဝ်လဵၵ်ႉ (Lowercase) သေၸႂ်ႉ `_` (Underscore) တႅၼ်းတီႈပဝ်ႇၶႃႈ (တူဝ်ယင်ႇ: `student_info`)။
* **USE Command:** တွင်းဝႆႉတႃႇသေႇဝႃႈ ဢွၼ်တၢင်းတေ Create Table... လူဝ်ႇ `USE` Database ဢၼ်မၢၼ်ႇမႅၼ်ႈဢွၼ်တၢင်းၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **DDL (Data Definition Language):** ၶေႃႈၵႂၢမ်း SQL တႃႇသၢင်ႈပိူင် (Create, Alter, Drop)။
* **Schema:** ၸိုဝ်ႈထႅင်ႈဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ Database ၼႂ်း MySQL။
* **Constraint:** ပၵ်းၵၢၼ်ဢၼ်ႁၢမ်ႈဝႆႉ (မိူၼ်ၼင်ႇ NOT NULL)။
* **IF NOT EXISTS:** ႁဵတ်းၵၢၼ် မိူဝ်ႈၽွင်း ဢမ်ႇမီးမၼ်းၼၼ်ႉၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၸၢမ်းတႅမ်ႈ Code SQL တႃႇသၢင်ႈ Database ဢၼ်ၸိုဝ်ႈဝႃႈ **`muse_library`** ၶႃႈ။
2. ၼႂ်း Database ၼၼ်ႉ... ၸၢမ်းသၢင်ႈ Table **`books`** ဢၼ်မီး Columns: `id`, `title`, `author`, လႄႈ `published_year` ၶႃႈ။
3. မိူဝ်ႈသၢင်ႈယဝ်ႉယဝ်ႉ... ၸၢမ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`DESCRIBE`** တႃႇတူၺ်းဝႃႈ မၼ်းဢွၵ်ႇမႃးမၢၼ်ႇမႅၼ်ႈယူႇႁႃႉ?

---