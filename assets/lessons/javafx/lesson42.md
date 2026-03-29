## Lesson 42: Creating the Table Schema (DDL Basics)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေၸႂ်ႉလိၵ်ႈ **DDL (Data Definition Language)** တွၼ်ႈတႃႇ "သၢင်ႈ" (Create) Table ၼႂ်း MySQL ၶႃႈ။



### 1. Database & Table Design
ႁဝ်းလူဝ်ႇမီး Column ဢၼ်မႅၼ်ႈၸွမ်း Form ဢၼ်ႁဝ်းဝၢင်းဝႆႉၼႂ်း Scene Builder ၼၼ်ႉၶႃႈ:

| Column Name | Data Type | Description                            |
| :--- | :--- |:---------------------------------------|
| **id** | `INT` | မၢႆၼပ်ႉ (Primary Key + Auto Increment) |
| **description** | `VARCHAR(255)` | ၸိုဝ်ႈၶွင်ဢၼ်ၸၢႆႇ (e.g., "Lunch")      |
| **amount** | `DECIMAL(10,2)` | ၵႃႈၶၼ်ငိုၼ်း (e.g., 5500.00)           |
| **category** | `VARCHAR(100)` | မဵဝ်းမၼ်း (e.g., "Food")               |
| **expense_date** | `DATE` | ဝၼ်းထီႉဢၼ်ၸၢႆႇ                         |

---

### 2. The SQL Script
ႁႂ်ႈလုၵ်ႈႁဵၼ်းပိုတ်ႇ **MySQL Workbench** သေ တႅမ်ႈ SQL Code ၼႆႉ Execute ႁဵတ်းတူၺ်းၶႃႈ:

```sql
-- 1. ၶူင်သၢင်ႈ Database/Schema ၸိုဝ်ႈႁွင်ႉ tmk_expense_db
CREATE schema tmk_expense_db;

-- 2. တႄႇၸႂ်ႉ Database ႁဝ်း
USE tmk_expense_db;

-- 2. သၢင်ႈ Table တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်းငိၼ်းၸၢႆႇ
CREATE TABLE expenses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100),
    expense_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```



---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Data Types)

* **`DECIMAL(10, 2)`**: **ၼႆႉလွင်ႈယႂ်ႇၶႃႈ!** တွၼ်ႈတႃႇငိုၼ်းၸၢႆႇ ႁဝ်းတေဢမ်ႇၸႂ်ႉ `FLOAT` ဢမ်ႇၼၼ် `DOUBLE` ၶႃႈ၊ ယွၼ်ႉမၼ်းၸၢင်ႈမီးပၼ်ႁႃလွင်ႈ Precision ဢေႃႈ။ `DECIMAL` တေႁဵတ်းႁႂ်ႈမၢႆၼပ်ႉငိုၼ်း မႅၼ်ႈသုတ်းၶႃႈ။
* **`AUTO_INCREMENT`**: ႁႂ်ႈ MySQL သႂ်ႇမၢႆ ID ပၼ်ႁင်းၵူၺ်းမၼ်း (1, 2, 3...) ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇၵေႃႈလႆႈၶႃႈ။
* **`VARCHAR(255)`**: ပဵၼ်တူဝ်လိၵ်ႈ (String) ဢၼ်မီးလွင်ႈယၢဝ်းလႆႈ 255 တူဝ်။
* **`NOT NULL`**: လၢတ်ႈဝႃႈ "လူဝ်ႇသႂ်ႇတႃႇသေ"၊ သင် User ဢမ်ႇသႂ်ႇၶေႃႈမုၼ်း... MySQL တေဢမ်ႇႁပ်ႉသိမ်းပၼ်ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **DDL**: ပဵၼ်လိၵ်ႈ SQL ဢၼ်ၸႂ်ႉ "သၢင်ႈ" ပိူင် (Structure) Database။
* **Primary Key**: ပဵၼ် ID ဢၼ်ဢမ်ႇမိူၼ်ၵၼ်လႆႈ ၸႂ်ႉဢဝ်ၶေႃႈမုၼ်း ထႅဝ်လႂ်ထႅဝ်ၼၼ်ႉၶႃႈ။
* **Data Integrity**: ၵၢၼ်လိူၵ်ႈ Data Type ဢၼ်မႅၼ်ႈ (မိူၼ်ၼင်ႇ DECIMAL တႃႇငိုၼ်း)။