# Lesson 10: "Many-to-Many (M:N): Understanding Junction Tables"

ၼႂ်းလူၵ်ႈၶူင်းၵၢင်ႁဝ်းၼႆႉ ၵႆႉမီးလွင်ႈၵွင်ႉၵၢႆႇဢၼ်ပဵၼ် **Many-to-Many (M:N)** ၶႃႈ။ 
မၼ်းမၵ်းထိုင်ဝႃႈ ၶေႃႈမုၼ်းၽၢႆႇ A ၵွင်ႉလႆႈတင်း ၽၢႆႇ B တင်းၼမ်သေ ၽၢႆႇ B ၵေႃႈ ၶိုၼ်းၵွင်ႉလႆႈတင်း ၽၢႆႇ A တင်းၼမ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "လုၵ်ႈႁဵၼ်း" တင်း "ၽႃႇသႃႇပၢႆးလိၵ်ႈ" (Subjects) ၼႂ်းၵၢၼ်ႁဵၼ်းၶႃႈ...
* **လုၵ်ႈႁဵၼ်း 1 ၵေႃႉ:** ၸၢင်ႈႁဵၼ်းလႆႈ "လၢႆလၢႆၽႃႇသႃႇ" (Math, English, SQL)။
* **ၽႃႇသႃႇ 1 ဢၼ်:** ၵေႃႈသမ်ႉမီး "လုၵ်ႈႁဵၼ်းလၢႆလၢႆၵေႃႉ" ၸိူဝ်းဢၼ်မႃးၶဝ်ႈ ႁဵၼ်းၸွမ်းၵၼ်။
* **လွင်ႈၵွင်ႉၵၢႆႇ:** ၼႆႉႁွင်ႉဝႃႈ Many-to-Many (M:N) ၶႃႈ။



### 2. Junction Table (Table တူဝ်ၵၢင်)
ၼႂ်း Database တႄႉတႄႉၼၼ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် Table A တင်း B ၵွင်ႉၵၼ်ၵမ်းလဵဝ်လႆႈၶႃႈ။ 
ႁဝ်းလူဝ်ႇသၢင်ႈ Table မႂ်ႇထႅင်ႈဢၼ်ၼိုင်ႈ မႃးဝႆႉ "တီႈၵၢင်" တႃႇၵွင်ႉ ID ၶဝ်သွင်ၽၢႆႇၶႃႈ။
* **Junction Table:** ၵႆႉႁွင်ႉဝႃႈ Bridge Table ဢမ်ႇၼၼ် Associative Table ၶႃႈ။
* **How it works:** Table ၼႆႉ တေသိမ်း **Foreign Keys** ဢၼ်မႃးတီႈ Table A လႄႈ Table B ၶႃႈ။
* **Example:** ႁဝ်းမီး Table `Enrollments` တႃႇၵွင်ႉ `student_id` လႄႈ `course_id` ၶဝ်ႈၸွမ်းၵၼ်။



### 3. တူဝ်ယင်ႇ ၼႂ်းၵၢၼ်တႅမ်ႈ App
ဝူၼ်ႉတူၺ်း System **"Learn Shan"** Flutter App ၶႃႈ...
* **Users:** ၵူၼ်းၸႂ်ႉ App တင်းၼမ်။
* **Lessons:** မီးတွၼ်ႈသွၼ်လၢႆလၢႆဢၼ် (Alphabet, Greeting, Numbers)။
* **M:N:** User ၵေႃႉၼိုင်ႈ လူလႆႈလၢႆ Lesson၊ သေ Lesson ၼိုင်ႈဢၼ်ၵေႃႈ မီး User လူလႆႈတင်းၼမ်။
* **Junction Table:** ႁဝ်းလူဝ်ႇ Table `User_Progress` တႃႇမၢႆတွင်းဝႃႈ "ၽႂ်လူတွၼ်ႈလႂ်ယဝ်ႉ" ၶႃႈ။

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ M:N Relationship
* **Relationship Breaking:** ႁဝ်းၸႂ်ႉ Junction Table တႃႇ "ၸႅၵ်ႇ" M:N ႁႂ်ႈပဵၼ် **One-to-Many (1:N)** သွင်ဢၼ်ၶႃႈ။
* **Extra Data:** ႁဝ်းယင်းၸၢင်ႈထႅမ် Column ၼႂ်း Junction Table လႆႈထႅင်ႈ၊ မိူၼ်ၼင်ႇ `enroll_date` ဢမ်ႇၼၼ် `grade` ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **M:N (Many-to-Many):** ၵၢၼ်ၵွင်ႉၶေႃႈမုၼ်းလၢႆလၢႆဢၼ် ၸူးလၢႆလၢႆဢၼ်။
* **Junction Table:** Table ဢၼ်ယူႇၵၢင် တႃႇၵွင်ႉ Primary Keys ၶွင် Table တင်းသွင်ၽၢႆႇ။
* **Associative Entity:** ၸိုဝ်ႈႁွင်ႉ Junction Table မိူဝ်ႈမၼ်းမီး Attribute ထႅင်ႈၼႂ်းတူဝ်မၼ်း။
* **Composite Primary Key:** ၼႂ်း Junction Table ႁဝ်းၵႆႉဢဝ် FK သွင်ဢၼ်ၼၼ်ႉ ႁူမ်ႈၵၼ်ႁဵတ်းပဵၼ် PK ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်း System **`Movie Platform`** (မိူၼ်ၼင်ႇ Netflix) ၶႃႈ...
1.  ၼႂ်းၵႄႈ Table **`Movies`** (လိၵ်ႈငဝ်းတူင်ႉ) လႄႈ **`Actors`** (ၵူၼ်းႁဵတ်းၸၢတ်ႈ)... ႁဵတ်းသင်မၼ်းပဵၼ် **Many-to-Many**? လၢတ်ႈၼႄလွင်ႈတၢင်းမၼ်းၶႃႈ။
2.  ၸဝ်ႈၵဝ်ႇ ထုၵ်ႇလီသၢင်ႈ **Junction Table** ဢၼ်ၸိုဝ်ႈဝႃႈသင်?
3.  ၼႂ်း Junction Table ၼၼ်ႉ သမ်ႉထုၵ်ႇလီမီး **Columns** သင်လၢႆလၢႆဢၼ်?

---