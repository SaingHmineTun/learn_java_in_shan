# Lesson 7: "Introduction to ORM & JPA" (ပိုၼ်ႉထၢၼ် ORM လႄႈ JPA)

ၼႂ်းၵၢၼ်တႅမ်ႈ App **TaiGlish** ၼၼ်ႉ ႁဝ်းမီး Object ၼႂ်း Java (မိူၼ်ၼင်ႇ Class `Word`)။ 
ၵူၺ်းၵႃႈ ၼႂ်း Database သမ်ႉ မၼ်းသိမ်းၶေႃႈမုၼ်းပဵၼ် "ထႅဝ်" (Rows) လႄႈ "သဝ်" (Columns) ၶႃႈ။ 
တွၼ်ႈတႃႇတေၵွင်ႉ သွင်လွင်ႈၼႆႉၸူးၵၼ် ႁဝ်းလူဝ်ႇၸႂ်ႉ **ORM** ၶႃႈ။

### 1. ORM (Object-Relational Mapping) ၼႆႉ ပဵၼ်သင်?
ORM မိူၼ်ၼင်ႇ "လၢမ်ႈပိၼ်ႇၵႂၢမ်း" ၶႃႈ။ မၼ်းတေပိၼ်ႇ:
* **Java Class** => ႁႂ်ႈပဵၼ် **Database Table**
* **Java Field (Variable)** => ႁႂ်ႈပဵၼ် **Table Column**
* **Java Object (Instance)** => ႁႂ်ႈပဵၼ် **Table Row (Record)**



### 2. JPA တင်း Hibernate ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်?
လုၵ်ႈႁဵၼ်းၵေႃႉလႂ်ၵေႃႈ တေလႆႈငိၼ်းၸိုဝ်ႈသွင်ဢၼ်ၼႆႉယူႇၵူႈၶၢဝ်းၶႃႈ။
* **JPA (Java Persistence API):** ပဵၼ် "ပိူင်မၢႆ" (Specification/Standard) ၵူၺ်းၶႃႈ။ မၼ်းမၵ်းမၼ်ႈဝႃႈ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Annotation တူဝ်လႂ် (မိူၼ်ၼင်ႇ `@Entity`)။
* **Hibernate:** ပဵၼ် "တူဝ်ႁဵတ်းၵၢၼ်တႄႉ" (Implementation) ဢၼ်ယူႇၽၢႆႇတႂ်ႈ JPA သေ ပဵၼ်ၵေႃႉပိၼ်ႇ Java Code ႁဝ်းႁႂ်ႈပဵၼ် SQL Query ၶႃႈ။

---

### 3. ၽွၼ်းလီၶွင်ၵၢၼ်ၸႂ်ႉ JPA ၼႂ်း TaiGlish
* **Database Independent:** ႁဝ်းတႅမ်ႈ Code Java ယဝ်ႉ ႁဝ်းတေၵွင်ႉၸူး MySQL, PostgreSQL ဢမ်ႇၼၼ် H2 ၵေႃႈလႆႈ၊ ဢမ်ႇလူဝ်ႇမႄး Code Java ႁဝ်းၶႃႈ။
* **No More Manual SQL:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `SELECT * FROM words...` ႁင်းၵူၺ်းၼမ်ၼႃႇယဝ်ႉ။
* **Type Safety:** Spring Boot တေၸွႆး Check ပၼ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်ႁဝ်းသႂ်ႇၼၼ်ႉ ထုၵ်ႇမၢၼ်ႇၸွမ်း Type မၼ်းယူႇႁႃႉ။

### 4. ၵၢၼ်မၢႆတွင်း Class ႁႂ်ႈပဵၼ် Table (The Entity)
မိူဝ်ႈႁဝ်းၸႂ်ႉ JPA ၼၼ်ႉ ႁဝ်းတေႁွင်ႉ Class ဢၼ်ၵွင်ႉၸူး Database ဝႃႈ **Entity** ၶႃႈ။
ႁဝ်းလူဝ်ႇၸႂ်ႉ Annotation `@Entity` ဝႆႉၼိူဝ် Class ၼၼ်ႉ တွၼ်ႈတႃႇပၼ်သိတ်ႇၼႄႇ (Signal) ၸူး Spring Boot ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **ORM (Object-Relational Mapping):** ပိူင်ၵၢၼ်ၵွင်ႉ Java Object ၸူး Database Table။
* **JPA:** ပိူင်မၢႆ (Standard) ၶွင် Java တွၼ်ႈတႃႇၵဵပ်းသိမ်းၶေႃႈမုၼ်း (Persistence)။
* **Hibernate:** Framework ဢၼ်ၸွႆးႁဵတ်းၵၢၼ်ၸွမ်းၼင်ႇ JPA မၵ်းမၼ်ႈဝႆႉ။
* **Persistence:** ၵၢၼ်သိမ်းၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းမီးယူႇတႃႇသေႇ (ဢမ်ႇႁၢႆၵႂႃႇ မိူဝ်ႈပိၵ်ႉ App)။
* **Entity:** Class ဢၼ်မၢႆတွင်းဝႆႉဝႃႈ မၼ်းပဵၼ်တႅၼ်းတၢင် Table ၼႂ်း Database။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်းပိူင် ORM ၼၼ်ႉ **Java Class** ၼိုင်ႈဢၼ် တေလႆႈပဵၼ်သင်ၼႂ်း Database? (ပဵၼ် Column ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ် Table?)
2. ၼႂ်းၵႄႈ **JPA** လႄႈ **Hibernate** ၼၼ်ႉ တူဝ်လႂ်ဢၼ်ပဵၼ် "တူဝ်ႁဵတ်းၵၢၼ်တႄႉ" (Implementation)?
