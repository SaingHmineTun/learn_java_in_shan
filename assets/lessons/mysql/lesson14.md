# Lesson 14: "Visual Design: EER Modeling in MySQL Workbench"

မိူဝ်ႈႁဝ်းဝူၼ်ႉလွင်ႈ Normalization (1NF, 2NF, 3NF) ယဝ်ႉတူဝ်ႈၼၼ်ႉ... 
လွင်ႈဢၼ်တေႁဵတ်းႁႂ်ႈႁဝ်းႁၼ် ၶေႃႈမုၼ်းၸႅင်ႈလႅင်းလိူဝ်ပိူၼ်ႈၼႆႉ ပဵၼ်ၵၢၼ်တႅမ်ႈႁၢင်ႈ **EER Diagram (Enhanced Entity-Relationship Diagram)** ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ႁၢင်ႈၸုင်းႁိူၼ်း" (Blueprints) ၶႃႈ...
* ဢွၼ်တၢင်း တေၵေႃႇသၢင်ႈႁိူၼ်းတႄႉတႄႉ... လူဝ်ႇတႅမ်ႈႁၢင်ႈ ႁႂ်ႈႁၼ်ဝႃႈ ႁွင်ႈၼိုင်ႈတင်း ႁွင်ႈၼိုင်ႈ ၵွင်ႉၵၢႆႇၵၼ်ၸိူင်ႉႁိုဝ်။
* **EER Diagram:** ၵေႃႈမိူၼ်ၵၼ်ၶႃႈ... မၼ်းၼႄႁၢင်ႈ Table, Column လႄႈ "သဵၼ်ႈၵွင်ႉ" (Relationship) ၼႂ်းၵႄႈ Table ၶဝ်ၶႃႈ။



### 2. ၶိူင်ႈမိုဝ်းၼႂ်း EER Modeler
မိူဝ်ႈၸဝ်ႈၵဝ်ႇပိုတ်ႇ Workbench သေ ၶဝ်ႈၵႂႃႇတီႈ **File -> New Model** ယဝ်ႉၼၼ်ႉ တေႁၼ်မီးၶိူင်ႈမိုဝ်းၸိူဝ်းၼႆႉၶႃႈ...
1.  **Place a New Table:** ၸႂ်ႉတႃႇသၢင်ႈ Table မႂ်ႇ (မိူၼ်ၼင်ႇ `Users`)။
2.  **Add Columns:** တီႈၼႆႉ ႁဝ်းမၵ်းမၼ်ႈလႆႈတင်း PK (Primary Key), NN (Not Null), လႄႈ AI (Auto Increment) ၶႃႈ။
3.  **Relationship Tools:** မီးတုမ်ႇတႃႇၵွင်ႉ 1:1, 1:N, လႄႈ M:N ၶႃႈ။

### 3. လၢႆးတႅမ်ႈသဵၼ်ႈၵွင်ႉ (Mapping Relationships)
ၼႂ်း EER Diagram ၼၼ်ႉ သဵၼ်ႈၵွင်ႉမီးလၢႆလၢႆပိူင်ၶႃႈ...
* **Identifying Relationship (သဵၼ်ႈၵိုတ်း):** ၸႂ်ႉမိူဝ်ႈ Child Table လူဝ်ႇ Primary Key ၶွင် Parent Table တႃႇတေမၵ်းမၼ်ႈ Identity မၼ်း။
* **Non-Identifying Relationship (သဵၼ်ႈၶၢတ်ႇ):** ၸႂ်ႉမိူဝ်ႈ Foreign Key ၼၼ်ႉ ပဵၼ် ၶေႃႈမုၼ်းထႅမ် (Optional) ၵူၺ်းၶႃႈ။
* **Crow's Foot Notation:** ပဵၼ်ႁၢင်ႈ "တိၼ်ၵႃ" တီႈသုတ်းသဵၼ်ႈ... ႁၢင်ႈ 3 ၶႃ မၢႆထိုင်ဝႃႈ **Many (N)** ၶႃႈ။



### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ EER Modeling
* **Visual Check:** မိူဝ်ႈတႅမ်ႈႁၢင်ႈယဝ်ႉ... တူၺ်းဝႃႈ "သဵၼ်ႈၵွင်ႉ" ၼၼ်ႉ မၢၼ်ႇမႅၼ်ႈယူႇႁႃႉ? (မိူၼ်ၼင်ႇ ၶူးသွၼ် 1 ၵေႃႉ တေလႆႈၵွင်ႉၸူး လုၵ်ႈႁဵၼ်းလၢႆၵေႃႉ)။
* **Documentation:** ႁၢင်ႈ Diagram ၼႆႉ ၸႂ်ႉတႃႇၼႄပၼ် ၵူၼ်းၼႂ်း Team ႁဝ်း ႁႂ်ႈပွင်ႇၸႂ်ပိူင်သၢင်ႈ Database ဢၼ်လဵဝ်ၵၼ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **EER Diagram:** ႁၢင်ႈတူဝ်ယင်ႇ ဢၼ်ၼႄပိူင်သၢင်ႈ Database တင်းသဵင်ႈ။
* **Crow's Foot:** ပိူင်တႅမ်ႈသဵၼ်ႈၵွင်ႉ ဢၼ်ၸႂ်ႉႁၢင်ႈတိၼ်ၵႃ တႃႇၼႄ Many (N)။
* **Cardinality:** ၼပ်ႉတၢင်းၼမ် ၼႂ်းၵၢၼ်ၵွင်ႉၵၢႆႇ (1:1, 1:N, M:N)။
* **Forward Engineering:** ၵၢၼ်ဢဝ်ႁၢင်ႈ Diagram ႁဝ်း လႅၵ်ႈပဵၼ် Code SQL ႁင်းမၼ်း (တွၼ်ႈၼႆႉ ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson လိုၼ်းသုတ်ႉၶႃႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၸၢမ်းပိုတ်ႇ MySQL Workbench သေ ၶဝ်ႈၵႂႃႇတီႈ **"Create New EER Model"** ၶႃႈ။
2. သၢင်ႈ Table **`Categories`** လႄႈ **`Products`** သေ ၸၢမ်းၸႂ်ႉၶိူင်ႈမိုဝ်း **"1:N Relationship"** တႃႇၵွင်ႉၶဝ်ၸွမ်းၵၼ်ၶႃႈ။
3. တူၺ်းတီႈသဵၼ်ႈၵွင်ႉၼၼ်ႉ... ႁၢင်ႈ "တိၼ်ၵႃ" (3 ၶႃ) ၼၼ်ႉ ယူႇၽၢႆႇ Table လႂ်ၶႃႈ?။

---