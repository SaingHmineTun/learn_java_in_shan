# Lesson 9: "One-to-Many (1:N): The Backbone of Relational Design"

မိူဝ်ႈႁဝ်းၸႅၵ်ႇ Entity ပဵၼ် Table လၢႆလၢႆဢၼ်ယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇမီးလၢႆးၵွင်ႉမၼ်းၶိုၼ်းၶႃႈ။ 
**One-to-Many (1:N)** မၢႆထိုင်ဝႃႈ ၶေႃႈမုၼ်းၼႂ်း Table ဢၼ်ၼိုင်ႈ ၸၢင်ႈၵွင်ႉၵၢႆႇတင်း ၶေႃႈမုၼ်းၼႂ်း Table တင်းၼမ်ၼႆၶႃႈ။ 

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၶူးသွၼ်" တင်း "လုၵ်ႈႁဵၼ်း" ၼႂ်းႁွင်ႈႁဵၼ်းၼိုင်ႈႁွင်ႈၶႃႈ...
* **One (1):** ၶူးသွၼ် 1 ၵေႃႉ။
* **Many (N):** သွၼ်ပၼ်လုၵ်ႈႁဵၼ်းလႆႈ တင်းၼမ် (Many students)။
* **လွင်ႈၵွင်ႉၵၢႆႇ:** ၶူးသွၼ် 1 ၵေႃႉ ၵွင်ႉၸူး လုၵ်ႈႁဵၼ်းလၢႆလၢႆၵေႃႉ။



### 2. Foreign Key (သေႃးပႅတ်ႈ/သေႃးၼွၵ်ႈ)
တႃႇတေၵွင်ႉ Table သွင်ဢၼ်ၸွမ်းၵၼ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Foreign Key (FK)** ၶႃႈ။
* **Parent Table (One):** ပဵၼ် Table ဢၼ်မီး Primary Key (ID)။
* **Child Table (Many):** ပဵၼ် Table ဢၼ်ဢဝ် Primary Key ၶွင် Parent မႃးသိမ်းဝႆႉ (ႁွင်ႉဝႃႈ Foreign Key)။
* **Example:** ၼႂ်း Table **`Students`** ႁဝ်းတေမီး Column `teacher_id` တွၼ်ႈတႃႇမၢႆတွင်းဝႃႈ လုၵ်ႈႁဵၼ်းၵေႃႉၼႆႉ ႁဵၼ်းၸွမ်းၶူးၵေႃႉလႂ်ၶႃႈ။

### 3. တူဝ်ယင်ႇ ၼႂ်းၵၢၼ်တႅမ်ႈ App
ဝူၼ်ႉတူၺ်း System **"Mao App Gallery"** ၶႃႈ...
* **Category (1):** "Games" (ပဵၼ် 1 Category)။
* **Apps (N):** ၼႂ်း Category "Games" ၼၼ်ႉ မီး App လႆႈတင်းၼမ် (မိူၼ်ၼင်ႇ Chess, Racing, Puzzle)။
* **Database Design:** Table `Apps` တေမီး Column `category_id` တႃႇၵွင်ႉၸူး Table `Categories` ၶႃႈ။



### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ 1:N Relationship
* **Where to put FK?** Foreign Key တေလႆႈယူႇတီႈၽၢႆႇ **"Many"** (Child Table) တႃႇသေႇၶႃႈ။
* **Data Integrity:** သင်ႁဝ်းၸႂ်ႉ Foreign Key မၢၼ်ႇမႅၼ်ႈ... ႁဝ်းတေဢမ်ႇၸၢင်ႈသႂ်ႇ `teacher_id` ဢၼ်ဢမ်ႇမီးၼႂ်း Table `Teachers` ၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **1:N (One-to-Many):** ၵၢၼ်ၵွင်ႉၶေႃႈမုၼ်း 1 ဢၼ် ၸူးလၢႆလၢႆဢၼ်။
* **Parent Table:** Table ဢၼ်ပဵၼ် "တူဝ်တင်ႈ" (ၽၢႆႇ One)။
* **Child Table:** Table ဢၼ်ပဵၼ် "တူဝ်ၵွင်ႉ" (ၽၢႆႇ Many)။
* **Foreign Key (FK):** Column ၼႂ်း Child Table ဢၼ်ၸႂ်ႉမၢႆတွင်း Primary Key ၶွင် Parent Table။
* **Referential Integrity:** လွင်ႈမၢၼ်ႇမႅၼ်ႈ ၼႂ်းၵၢၼ် ၵွင်ႉၵၢႆႇၶေႃႈမုၼ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်း System **`Online Shop`** ၼိုင်ႈဢၼ်ၶႃႈ...
1.  ၼႂ်းၵႄႈ Table **`Customers`** (လုၵ်ႈၵႃႉ) လႄႈ **`Orders`** (ၵၢၼ်သင်ႇသိုဝ်ႉ)... ဢၼ်လႂ်ပဵၼ်ၽၢႆႇ **One (1)** သေ ဢၼ်လႂ်ပဵၼ်ၽၢႆႇ **Many (N)**?
2.  ၸဝ်ႈၵဝ်ႇ ထုၵ်ႇလီဢဝ် Foreign Key ၵႂႃႇဝႆႉၼႂ်း Table လႂ်? (လၢတ်ႈၼႄၸိုဝ်ႈ Column ဢၼ်ထုၵ်ႇလီပဵၼ် FK ၸွမ်းၶႃႈ)။
3.  သင်လုၵ်ႈၵႃႉၵေႃႉၼိုင်ႈ သင်ႇသိုဝ်ႉၵုၼ်ႇ 10 ပွၵ်ႈ... ၼႂ်း Table `Orders` ၼၼ်ႉ တေမီး `customer_id` သမ်ႉၵၼ် 10 ထႅဝ် (Rows) ႁႃႉ?

---