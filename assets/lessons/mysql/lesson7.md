# Lesson 7: "Data Modeling: Entities, Attributes, and Primary Keys"

မိူဝ်ႈႁဝ်းတေႁဵတ်း Database ၼၼ်ႉ ႁဝ်းဢမ်ႇထုၵ်ႇလီၵႂႃႇတႅမ်ႈ Code ၵမ်းလဵဝ်ၶႃႈ။ 
ႁဝ်းလူဝ်ႇ "ဝူၼ်ႉ" (Model) ပိူင်သၢင်ႈမၼ်းဢွၼ်တၢင်း။ ၼႂ်းၵၢၼ်ဝူၼ်ႉၼၼ်ႉ မီးၶေႃႈၵႂၢမ်းလူင် 3 ပိူင် ဢၼ်လူဝ်ႇႁူႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "လုၵ်ႈႁဵၼ်း" (Student) ၵေႃႉၼိုင်ႈၶႃႈ...
* **Entity:** ပဵၼ် "တူဝ်ၶေႃႈမုၼ်း" (The Noun) - မိူၼ်ၼင်ႇ "လုၵ်ႈႁဵၼ်း"။
* **Attribute:** ပဵၼ် "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း" (The Adjectives) - မိူၼ်ၼင်ႇ ၸိုဝ်ႈ၊ ဢႃႇယု၊ တီႈယူႇ။
* **Primary Key:** ပဵၼ် "မၢႆတွင်းဢၼ်ဢမ်ႇမိူၼ်ပိူၼ်ႈ" (Unique ID) - မိူၼ်ၼင်ႇ မၢႆၾၢင်လုၵ်ႈႁဵၼ်း။



### 2. Entity (ၶူဝ်းၶွင်/တူဝ်ၶေႃႈမုၼ်း)
Entity ၼႆႉ ပဵၼ်ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းၶႂ်ႈသိမ်းယဝ်ႉၶႃႈ။ 
* **Real-world Objects:** လုၵ်ႈႁဵၼ်း (Student), ၶူးသွၼ် (Teacher), ၵုၼ်ႇ (Product)။
* **Abstract Concepts:** ၵၢၼ်သင်ႇသိုဝ်ႉ (Order), ၵၢၼ်ယိမ်ပပ်ႉ (Borrowing)။
* **In Database:** Entity ၼိုင်ႈဢၼ် တေပဵၼ် **Table** ၼိုင်ႈဢၼ်ၶႃႈ။

### 3. Attribute (ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း)
ၼႆႉပဵၼ် ၶေႃႈမုၼ်းဢၼ်လၢတ်ႈၼႄလွင်ႈ Entity ၼၼ်ႉၶႃႈ။
* **Example (Student):** Name, Email, Birthdate, Phone Number။
* **In Database:** Attribute ၼိုင်ႈဢၼ် တေပဵၼ် **Column** ၼိုင်ႈဢၼ်ၶႃႈ။

### 4. Primary Key (PK - သေႃးလူင်)
ၼႆႉပဵၼ် Attribute ဢၼ်လွင်ႈယႂ်ႇသုတ်းၶႃႈ။ မၼ်းမီးၼႃႈတီႈ ၸႅၵ်ႇ Row ၼိုင်ႈဢၼ် ႁႂ်ႈဢမ်ႇမိူၼ်ပိူၼ်ႈ (Unique) ၶႃႈ။
* **Rules of PK:**
    1.  **Unique:** တေဢမ်ႇလႆႈမိူၼ်ၵၼ် (No duplicates)။
    2.  **Not Null:** တေဢမ်ႇလႆႈဝႆႉပဝ်ႇ (Cannot be empty)။
    3.  **Static:** တေဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈ။
* **Example:** `student_id`, `product_code`, `passport_number`။



### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Data Modeling
* **Entity Relationship (ER):** ၵၢၼ်ဝူၼ်ႉဝႃႈ Entity ၼိုင်ႈဢၼ် ၵွင်ႉၵၢႆႇတင်း ထႅင်ႈဢၼ်ၼိုင်ႈ ၸိူင်ႉႁိုဝ်။
* **Identity:** Primary Key ပဵၼ်တူဝ်မၵ်းမၼ်ႈ Identity ၶေႃႈမုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Entity:** တူဝ်ၶေႃႈမုၼ်းလူင် (မိူၼ်ၼင်ႇ Table)။
* **Attribute:** ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Column)။
* **Primary Key (PK):** ၶေႃႈမုၼ်းဢၼ်ၸႂ်ႉတႃႇမၢႆတွင်း Row ႁႂ်ႈပႅၵ်ႇပိူၼ်ႈ။
* **Unique Constraint:** ၵၢၼ်ႁၢမ်ႈဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းသွၼ်ႉၵၼ်။
* **Data Modeling:** ၵၢၼ်တႅမ်ႈပိူင်သၢင်ႈၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေႁဵတ်း Database တႄႉတႄႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်း Entity **`Car`** (ၵႃး) ၼိုင်ႈလမ်းၶႃႈ...
1.  ၼႂ်း Entity **`Car`** ၼႆႉ မီး **Attributes** သင်လၢႆလၢႆဢၼ်? (တႅမ်ႈမႃး 5 ဢၼ်)။
2.  Attribute ဢၼ်လႂ် ဢၼ်ထုၵ်ႇလီပဵၼ် **Primary Key** လိူဝ်ပိူၼ်ႈ? (လၢတ်ႈၼႄလွင်ႈတၢင်းမၼ်းၶႃႈ)။
3.  သင်ႁဝ်းဢဝ် "ၸိုဝ်ႈၵူၼ်းႁေႃႈ" (Driver Name) ပဵၼ် Primary Key တေပဵၼ်သင်ၵႂႃႇ?

---