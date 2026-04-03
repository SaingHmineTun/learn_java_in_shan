# Lesson 23: "Primary Keys: Single vs. Composite Key Implementation"

မိူဝ်ႈႁဝ်းသၢင်ႈ Table ၼၼ်ႉ **Primary Key (PK)** ပဵၼ်ဢၼ်လွင်ႈယႂ်ႇသုတ်း ၵွပ်ႈမၼ်းၸွႆႈမၵ်းမၼ်ႈ Identity ၶေႃႈမုၼ်း ဢမ်ႇႁႂ်ႈသွၼ်ႉၵၼ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း ၼင်ႇၼႆၶႃႈ...
* **Single Primary Key:** မိူၼ်ၼင်ႇ "မၢႆလုၵ်ႈႁဵၼ်း" (Student ID) - ၸႂ်ႉမၢႆလဵဝ်ၵေႃႈ ႁူႉယဝ်ႉဝႃႈပဵၼ်ၽႂ်။
* **Composite Primary Key:** မိူၼ်ၼင်ႇ "မၢႆႁွင်ႈ + မၢႆတင်ႇ" (Room No + Seat No) - လူဝ်ႇမီးတင်းသွင်မၢႆ ၸင်ႇတေမၵ်းမၼ်ႈလႆႈ တီႈယူႇၵေႃႉၼိုင်ႈ ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈၶႃႈ။



### 2. Single Primary Key (သေႃးတူဝ်လဵဝ်)
ၼႆႉပဵၼ်လၢႆးဢၼ်ႁဝ်းၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈၶႃႈ။ ႁဝ်းလိူၵ်ႈ Column ၼိုင်ႈဢၼ် (ၵႆႉပဵၼ် ID) မႃးႁဵတ်းပဵၼ် PK ၶႃႈ။

```sql
-- လၢႆးတႅမ်ႈသႂ်ႇၸွမ်း Column
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);
```

### 3. Composite Primary Key (သေႃးႁူမ်ႈ)
ၸႂ်ႉမိူဝ်ႈ Column ၼိုင်ႈဢၼ် ဢမ်ႇၵုမ်ႇထူၼ်ႈတႃႇၸႅၵ်ႇ Row ႁႂ်ႈပႅၵ်ႇပိူၼ်ႈၶႃႈ။ ၵႆႉလႆႈၸႂ်ႉၼႂ်း **Junction Table** (Table တူဝ်ၵၢင်) ၶႃႈ။

* **Syntax:** ႁဝ်းတေလႆႈတႅမ်ႈဝႆႉ တီႈသုတ်း (Table level) ၶႃႈ။

```sql
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    enroll_date DATE,
    -- ဢဝ် student_id လႄႈ course_id မႃးႁူမ်ႈၵၼ်ပဵၼ် PK
    PRIMARY KEY (student_id, course_id)
);
```
*မိူဝ်ႈႁဝ်းႁဵတ်းၼႆ... လုၵ်ႈႁဵၼ်းၵေႃႉၼိုင်ႈ (student_id: 1) တေဢမ်ႇၸၢင်ႈ "သွၼ်ႉ" ၶဝ်ႈႁဵၼ်း ၶိူင်ႈလိၵ်ႈဢၼ်လဵဝ်ၵၼ် (course_id: 101) လႆႈသွင်ပွၵ်ႈၶႃႈ။*

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇလိူၵ်ႈ PK ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ?
* **Indexing:** MySQL တေသၢင်ႈ Index ႁႂ်ႈ PK တႃႇသေႇ၊ မၼ်းႁဵတ်းႁႂ်ႈၵၢၼ်သွၵ်ႈႁႃ (Search) ဝႆးလိူဝ်ပိူၼ်ႈၶႃႈ။
* **Clustered Index:** ၼႂ်း MySQL (InnoDB)... ၶေႃႈမုၼ်းတေၶပ်ႉ (Sort) ၸွမ်းၼင်ႇ Primary Key ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉၼၼ်ႉၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Primary Key Implementation
* **Minimal:** PK ထုၵ်ႇလီမီး Column ဢၼ်ဢေႇသုတ်း (သင်ၸႂ်ႉ Single Key လႆႈ တေလီလိူဝ်ၶႃႈ)။
* **Stability:** ႁၢမ်ႈလိူၵ်ႈ Column ဢၼ်ၸၢင်ႈ "လႅၵ်ႈလၢႆႈ" (မိူၼ်ၼင်ႇ Phone Number ဢမ်ႇၼၼ် Email) မႃးႁဵတ်း PK ၶႃႈ။ ၵွပ်ႈလွင်ႈလႅၵ်ႈလၢႆႈၼႆႉ တေၸၢင်ႈတိူဝ်ႉၺႃး သဵၼ်ႈၵွင်ႉ (Foreign Keys) လႄႈ တေႁဵတ်းႁႂ်ႈ ၶေႃးမုၼ်းၼႆႉ ယုင်ႈၶႃႈ။
* **Surrogate Key Preference:** ၵမ်ႈၼမ် Developer ၵႆႉၸႂ်ႉ `id INT AUTO_INCREMENT` ပဵၼ် PK တႃႇသေႇ ၵွပ်ႈမၼ်းငၢႆႈ လႄႈ ဝႆးလိူဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Single Key:** Primary Key ဢၼ်မီး Column ဢၼ်လဵဝ်။
* **Composite Key:** Primary Key ဢၼ်ဢဝ် Column 2 ဢၼ် မႃးႁူမ်ႈၵၼ်။
* **Table-level Constraint:** ၵၢၼ်တႅမ်ႈမၵ်းမၼ်ႈ PK ဝႆႉတီႈတႂ်ႈသုတ်း (လူဝ်ႇၸႂ်ႉတႃႇ Composite Key)။
* **Clustered Index:** ၵၢၼ်ၸတ်းလႅၼ်ႇ ၶေႃႈမုၼ်းတႄႉတႄႉ ၼႂ်း Hard Disk ၸွမ်းၼင်ႇ PK။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ Table **`classroom_seats`** ဢၼ်မီး **Composite PK** ႁူမ်ႈၵၼ်ၼႂ်းၵႄႈ `room_number` လႄႈ `seat_number` ၶႃႈ။
2.  သင်ႁဝ်းမီး Table **`users`**... ႁဝ်းထုၵ်ႇလီၸႂ်ႉ **`username`** (Natural Key) ပဵၼ် PK ႁႃႉ? ဢမ်ႇၼၼ် ၸႂ်ႉ **`user_id`** (Surrogate Key) ပဵၼ် PK တေလီလိူဝ်? လၢတ်ႈၼႄလွင်ႈတၢင်းမၼ်းၶႃႈ။
3.  ၼႂ်း Composite Key `(student_id, course_id)`... သင်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်း `(1, 101)` သေ သိုပ်ႇသႂ်ႇထႅင်ႈ `(1, 102)` ၼႆ... Database တေပၼ်သိမ်းႁႃႉ?

---
