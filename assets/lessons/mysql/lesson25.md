# Lesson 25: "Cascading Actions: ON DELETE and ON UPDATE Logic"

ၼႂ်း Lesson 24 ႁဝ်းႁူႉယဝ်ႉဝႃႈ Foreign Key (FK) ၸွႆႈၵွင်ႉ Table ဝႆႉ။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်း "ယႃႉ" (Delete) ၶေႃႈမုၼ်းၼႂ်း Parent Table ပႅတ်ႈ... ၶေႃႈမုၼ်းၼႂ်း Child Table ဢၼ်ၵွင်ႉဝႆႉၸွမ်းၼၼ်ႉ သမ်ႉတေႁဵတ်းႁိုဝ်? 
ၼႆႉပဵၼ်တီႈဢၼ် **Cascading** ၶဝ်ႈမႃးၸွႆႈၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ႁွင်ႈၵၢၼ်" (Department) တင်း "ၵူၼ်းႁဵတ်းၵၢၼ်" (Employees) ၶႃႈ...
* **RESTRICT (Default):** ႁၢမ်ႈယႃႉႁွင်ႈၵၢၼ် သင်ယင်းမီးၵူၼ်းႁဵတ်းၵၢၼ်ယူႇ။
* **CASCADE:** သင်ယႃႉႁွင်ႈၵၢၼ်ပႅတ်ႈ... ၵူၼ်းႁဵတ်းၵၢၼ်ၵူႈၵေႃႉ ၼႂ်းႁွင်ႈၼၼ်ႉၵေႃႈ ႁႂ်ႈႁၢႆၵႂႃႇၸွမ်းၵၼ်တင်းမူတ်း။
* **SET NULL:** သင်ယႃႉႁွင်ႈၵၢၼ်ပႅတ်ႈ... ၵူၼ်းႁဵတ်းၵၢၼ် ယင်းတေမီးယူႇ ၵူၺ်းၵႃႈ မၢႆႁွင်ႈၵၢၼ်ၶဝ် တေပဵၼ် "NULL" (ပဝ်ႇ) ၵႂႃႇၶႃႈ။



### 2. လၢႆးတႅမ်ႈ Code တွၼ်ႈတႃႇ Cascading
ႁဝ်းတေလႆႈမၵ်းမၼ်ႈဝႆႉ တီႈတႂ်ႈသုတ်း မိူဝ်ႈသၢင်ႈ Foreign Key ၼၼ်ႉၶႃႈ။

```sql
CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200),
    author_id INT,
    -- မၵ်းမၼ်ႈ Cascading Logic
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
    ON DELETE CASCADE  -- သင်ယႃႉ Author ... ပပ်ႉၵေႃႈႁၢႆၸွမ်း
    ON UPDATE CASCADE  -- သင်မႄး ID Author ... ၼႂ်း Table ပပ်ႉၵေႃႈမႄးပၼ်ႁင်းမၼ်း
);
```

### 3. ပိူင်ၸတ်းၵၢၼ် 4 မျဵဝ်း (Options)

1.  **CASCADE:** ၽွၼ်းယွၼ်ႈၸွမ်းၵၼ် (မိူၼ်ၼင်ႇ တူဝ်မႄႈတၢႆ တူဝ်လုၵ်ႈၵေႃႈတၢႆၸွမ်း)။
2.  **SET NULL:** ပၼ်ၶေႃႈမုၼ်းၽၢႆႇ Child ပဵၼ်လုၵ်းပဝ်ႇ (လူဝ်ႇမၵ်းမၼ်ႈ Column ၼၼ်ႉ ႁႂ်ႈပဵၼ် NULL လႆႈဢွၼ်တၢင်းၶႃႈ)။
3.  **RESTRICT / NO ACTION:** ႁၢမ်ႈယႃႉ (Error) သင်မီးၶေႃႈမုၼ်းၵွင်ႉဝႆႉယူႇ။ ၼႆႉပဵၼ် Standard ဢၼ် MySQL ၸႂ်ႉတႃႇသေႇ သင်ႁဝ်းဢမ်ႇတႅမ်ႈသင်ၶႃႈ။
4.  **SET DEFAULT:** ပၼ်ၶေႃႈမုၼ်းၽၢႆႇ Child ပဵၼ်ၵႃႈၶၼ် Default (MySQL ဢမ်ႇပေႃးၵႆႉၸႂ်ႉတူဝ်ၼႆႉၶႃႈ)။

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ ON UPDATE CASCADE?
ၵႆႉမီးလုၵ်ႈႁဵၼ်းထၢမ်ဝႃႈ "Primary Key မၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈယူႇယဝ်ႉ ႁဵတ်းသင်လူဝ်ႇ UPDATE?"
* **The Reason:** သင်ႁဝ်းၸႂ်ႉ Natural Key (မိူၼ်ၼင်ႇ Username ဢမ်ႇၼၼ် NRC ID) ပဵၼ် PK... မိူဝ်ႈၵူၼ်းၸႂ်ႉ App လႅၵ်ႈလၢႆႈ Username... ၶေႃႈမုၼ်းၼႂ်း Table တင်းမူတ်း ဢၼ်ၵွင်ႉဝႆႉၸွမ်းၼၼ်ႉ တေလႆႈလႅၵ်ႈၸွမ်းႁင်းမၼ်း ဢမ်ႇၼၼ် သဵၼ်ႈၵွင်ႉတေၶၢတ်ႇၵႂႃႇၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Cascading Logic
* **Be Careful with CASCADE:** ၾၢင်ႉတႄႉတႄႉၶႃႈ! ၵၢၼ်ၸႂ်ႉ `ON DELETE CASCADE` ၸၢင်ႈႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းႁၢႆၵႂႃႇ တင်းၼမ်လူၺ်ႈဢမ်ႇတင်ႈၸႂ်။
* **Set Null for Orphan data:** သင်ၶေႃႈမုၼ်းၽၢႆႇ Child ယင်းမီးၵႃႈၶၼ်ယူႇ (မိူၼ်ၼင်ႇ "ပိုၼ်းၵၢၼ်သိုဝ်ႉၶူဝ်း")... ထုၵ်ႇလီၸႂ်ႉ `SET NULL` တႅၼ်း `CASCADE` တႃႇႁႂ်ႈပိုၼ်းၼၼ်ႉ ယင်းတိုၼ်းမီးယူႇ ၼႂ်း System ႁဝ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Cascading:** ၵၢၼ်ႁဵတ်းႁႂ်ႈ ၽွၼ်းယွၼ်ႈ (Action) သူင်ႇတေႃႇၵၼ် ၸွမ်းသဵၼ်ႈၵွင်ႉ။
* **Referential Integrity Action:** ၸိုဝ်ႈႁွင်ႉပိူင်လူင် တွၼ်ႈတႃႇ CASCADE, SET NULL ၸိူဝ်းၼႆႉ။
* **Orphan Record:** ၶေႃႈမုၼ်းၼႂ်း Child Table ဢၼ်ဢမ်ႇမီး Parent ၵွင်ႉဝႆႉယဝ်ႉ (မၼ်းၸၢင်ႈပဵၼ် "NULL")။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ဝူၼ်ႉတူၺ်း System **`Social Media`** ၶႃႈ... သင်ႁဝ်း Delete **User** ၵေႃႉၼိုင်ႈပႅတ်ႈ... **Posts** (ၶေႃႈလိၵ်ႈ) ၶွင်မၼ်း ထုၵ်ႇလီပဵၼ် **CASCADE** ႁႃႉ? ဢမ်ႇၼၼ် **SET NULL**? လၢတ်ႈၼႄလွင်ႈတၢင်းမၼ်းၶႃႈ။
2.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ Table **`categories`** လႄႈ **`products`**... သေတင်ႈပၵ်းၵၢၼ်ဝႃႈ "သင်ယႃႉ Category ... ႁႂ်ႈ Product ၸိူဝ်းၼၼ်ႉ ပဵၼ် **NULL** ၵႂႃႇ" ၶႃႈ။
3.  သင်ႁဝ်းဢမ်ႇတႅမ်ႈ `ON DELETE CASCADE` ဝႆႉ... ႁဝ်းတေၸၢင်ႈ Delete Parent Table လႆႈႁႃႉ သင်ယင်းမီး Child ၵွင်ႉယူႇ?

---