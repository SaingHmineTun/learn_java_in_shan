# Lesson 24: "Relational Logic: Foreign Keys and Referential Integrity"

မိူဝ်ႈႁဝ်းမီး Table လၢႆလၢႆဢၼ် (မိူၼ်ၼင်ႇ `Students` လႄႈ `Classes`)... ႁဝ်းလူဝ်ႇမီးလၢႆး "ၵွင်ႉ" ၶဝ်ၸွမ်းၵၼ် ႁႂ်ႈမၼ်ႈၵိုမ်း လႄႈ ဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းယုင်ႈယၢင်ႈၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "မၢႆၶႅပ်းတိၼ်" တင်း "ၵူၼ်း" ၼိုင်ႈၵေႃႉၶႃႈ...
* **Primary Key (PK):** ပဵၼ်မၢႆၶႅပ်းတိၼ် ဢၼ်မီးၼႂ်း Table `Shoes`။
* **Foreign Key (FK):** ပဵၼ်မၢႆၶႅပ်းတိၼ် ဢၼ်ၵူၼ်းၵေႃႉၼိုင်ႈ ၼႂ်း Table `People` ဢဝ်မႃး "သႂ်ႇ" ဝႆႉ။
* **လွင်ႈၵွင်ႉၵၢႆႇ:** သင်မၢႆၶႅပ်းတိၼ်ၼၼ်ႉ ဢမ်ႇမီးဝႆႉတႄႉၼႂ်းသႅင်ႇ... ၵူၼ်းၵေႃႉၼၼ်ႉၵေႃႈ တေဢမ်ႇၸၢင်ႈသႂ်ႇလႆႈၶႃႈ။



### 2. Foreign Key (သေႃးပႅတ်ႈ/သေႃးၼွၵ်ႈ)
**Foreign Key** ပဵၼ် Column ၼႂ်း Table ၼိုင်ႈဢၼ် ဢၼ်သူင်ႇ (Reference) ၵႂႃႇၸူး Primary Key ၼႂ်းထႅင်ႈ Table ၼိုင်ႈဢၼ်ၶႃႈ။

**လၢႆးတႅမ်ႈ Code:**
```sql
CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(100) NOT NULL
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    class_id INT, -- Column ဢၼ်တေၸႂ်ႉၵွင်ႉ
    -- မၵ်းမၼ်ႈ Foreign Key
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);
```

### 3. Referential Integrity (လွင်ႈမၼ်ႈၵိုမ်း ၵၢၼ်ၵွင်ႉၵၢႆႇ)
ၼႆႉပဵၼ် "ပၵ်းၵၢၼ်" ဢၼ် Database တေၸႅတ်ႈပၼ် ႁႂ်ႈၶေႃႈမုၼ်းမၢၼ်ႇမႅၼ်ႈယူႇတႃႇသေႇၶႃႈ...
1.  **Orphan Records:** ႁဝ်းဢမ်ႇၸၢင်ႈသႂ်ႇ `class_id = 99` ၼႂ်း Table `students` လႆႈ သင်ၼႂ်း Table `classes` ဢမ်ႇမီးမၢႆ 99 ဝႆႉတႄႉၶႃႈ။
2.  **Locked Deletion:** ႁဝ်းဢမ်ႇၸၢင်ႈ "Delete" ႁွင်ႈႁဵၼ်း (Class) ၼိုင်ႈႁွင်ႈပႅတ်ႈလႆႈ သင်ဝႃႈ ယင်းမီးလုၵ်ႈႁဵၼ်း ၵွင်ႉၵၢႆႇဝႆႉၸွမ်းႁွင်ႈၼၼ်ႉယူႇၶႃႈ။



### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ Foreign Key?
* **Data Consistency:** ၸွႆႈႁႂ်ႈၶေႃႈမုၼ်းဢမ်ႇၽိတ်း။ (တူဝ်ယင်ႇ: ဢမ်ႇမီးလုၵ်ႈႁဵၼ်း ဢၼ်ယူႇၼႂ်းႁွင်ႈႁဵၼ်း ဢၼ်ဢမ်ႇမီးယူႇတႄႉ)။
* **Relationship Mapping:** ၸွႆႈႁႂ်ႈ Database ႁူႉဝႃႈ Table လႂ်ၵွင်ႉတင်း Table လႂ်၊ မၼ်းတေႁဵတ်းႁႂ်ႈၵၢၼ် `JOIN` (ၵၢၼ်ႁူမ်ႈ Table) ဝႆးလိူဝ်ပိူၼ်ႈၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Foreign Keys
* **Data Type Match:** Column ဢၼ်ပဵၼ် FK တေလႆႈမီး Data Type **မိူၼ်ၵၼ်တႅတ်ႈတႅတ်ႈ** တင်း PK ဢၼ်မၼ်းၵႂႃႇၵွင်ႉၸူးၼၼ်ႉၶႃႈ (မိူၼ်ၼင်ႇ `INT` တင်း `INT`)။
* **Parent Before Child:** ႁဝ်းတေလႆႈသၢင်ႈ Table ဢၼ်ပဵၼ် **Parent** (ၽၢႆႇမီး PK) ဢွၼ်တၢင်း ၸင်ႇတေၸၢင်ႈသၢင်ႈ Table ဢၼ်ပဵၼ် **Child** (ၽၢႆႇမီး FK) ၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Foreign Key (FK):** Column ဢၼ်မီးဝႆႉ PK ၶွင် Table ပိူၼ်ႈ။
* **Referential Integrity:** ပၵ်းၵၢၼ်မၵ်းမၼ်ႈ လွင်ႈမၢၼ်ႇမႅၼ်ႈ ၼႂ်းၵၢၼ်ၵွင်ႉ Table။
* **Parent Table:** Table ဢၼ်သူင်ႇ Primary Key ပၼ်ပိူၼ်ႈ။
* **Child Table:** Table ဢၼ်ႁပ်ႉ Foreign Key မႃးဝႆႉၼႂ်းတူဝ်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ Table **`categories`** (မီး `cat_id`, `cat_name`) လႄႈ Table **`products`** (မီး `prod_id`, `prod_name`, `cat_id`) ႁႂ်ႈၵွင်ႉၵၢႆႇၵၼ်မၢၼ်ႇမႅၼ်ႈၶႃႈ။
2.  သင်ႁဝ်းသၢင်ႈ Table `products` ဢွၼ်တၢင်း `categories` ၼႆ... Database တေဝႃႈႁိုဝ်ၶႃႈ?
3.  ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇမီး Foreign Key? (လၢတ်ႈၼႄ ၽွၼ်းလီ 1 ပိူင်ၶႃႈ)။

---