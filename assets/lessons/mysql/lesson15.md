# Lesson 15: "Engineering: Forward and Reverse Schema Generation"

မိူဝ်ႈႁဝ်းတႅမ်ႈႁၢင်ႈ **EER Diagram** ယဝ်ႉတူဝ်ႈၼၼ်ႉ... ႁဝ်းလူဝ်ႇဢဝ်ပိူင်သၢင်ႈၼၼ်ႉ ၵႂႃႇသၢင်ႈပဵၼ် Database တႄႉတႄႉၼႂ်း Server ၶႃႈ။ 
လွင်ႈၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ **Engineering** ၼႆၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်ပိၼ်ႇလိၵ်ႈ" (Translation) ၶႃႈ...
* **Forward Engineering:** ပဵၼ်ၵၢၼ်ဢဝ် "ႁၢင်ႈတႅမ်ႈ" (Diagram) လႅၵ်ႈပဵၼ် "Code SQL" သေသူင်ႇၵႂႃႇသၢင်ႈ Table ၼႂ်း Server ႁင်းမၼ်းၶႃႈ။
* **Reverse Engineering:** ပဵၼ်ၵၢၼ်ဢဝ် "Database ဢၼ်မီးယူႇယဝ်ႉ" ၼႂ်း Server မႃး "ထွၼ်" ပဵၼ် "ႁၢင်ႈ Diagram" ႁႂ်ႈႁဝ်းလူငၢႆႈၶႃႈ။



### 2. Forward Engineering (ၵၢၼ်သၢင်ႈၸွမ်းႁၢင်ႈ)
ၼႆႉပဵၼ်လၢႆးႁဵတ်းၵၢၼ် ဢၼ် Developer ၵႆႉၸႂ်ႉလိူဝ်ပိူၼ်ႈၶႃႈ။
* **How to do:** ၼႂ်း Workbench ၶဝ်ႈၵႂႃႇတီႈ **Database -> Forward Engineer** ၶႃႈ။
* **What happens:** Workbench တေတူၺ်းႁၢင်ႈ Diagram ႁဝ်း၊ သေမၼ်းတေတႅမ်ႈ Code `CREATE SCHEMA`, `CREATE TABLE`, `FOREIGN KEY` ၸိူဝ်းၼႆႉပၼ်ႁင်းမၼ်း (Automated SQL Script) ၶႃႈ။
* **Advantage:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ယၢဝ်းယၢဝ်း၊ သေမၼ်းတေဢမ်ႇၽိတ်း (No Syntax Error) ၵွပ်ႈ Software ပဵၼ်တူဝ်တႅမ်ႈပၼ်ၶႃႈ။

### 3. Reverse Engineering (ၵၢၼ်ထွၼ်ႁၢင်ႈၸွမ်း Database)
လၢႆးၼႆႉသမ်ႉ ၸႂ်ႉမိူဝ်ႈႁဝ်းမီးဝႆႉ ပရူဝ်ႇၵျႅၵ်ႉ (Project) ၵဝ်ႇ ဢၼ်မီး Table ယဝ်ႉတင်းၼမ် သေႁဝ်းဢမ်ႇပွင်ႇၸႂ်ပိူင်သၢင်ႈမၼ်းၶႃႈ။
* **How to do:** ၶဝ်ႈၵႂႃႇတီႈ **Database -> Reverse Engineer** ၶႃႈ။
* **What happens:** Workbench တေၵႂႃႇလူ (Read) ၶေႃႈမုၼ်းၼႂ်း Server သေ တႅမ်ႈပဵၼ်ႁၢင်ႈ Diagram မႃးၼႄပၼ်ႁဝ်း ႁႂ်ႈႁၼ်သဵၼ်ႈၵွင်ႉ (Relationships) ၸႅင်ႈလႅင်းၶႃႈ။
* **Advantage:** ၸွႆႈႁႂ်ႈႁဝ်း "ပွင်ႇၸႂ်" (Understand) Database ဢၼ်ယုင်ႈယၢင်ႈ လႆႈဝႆးလိူဝ်ၶႃႈ။



### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Engineering
* **Check before Finish:** မိူဝ်ႈႁဵတ်း Forward Engineering... Workbench တေၼႄ Code SQL မႃးပၼ်ဢွၼ်တၢင်း။ ႁဝ်းလူဝ်ႇလူတူၺ်း ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈယဝ်ႉ ၸင်ႇတဵၵ်း **Next** ၶႃႈၼႃႈ။
* **Backup:** တွင်းဝႆႉဝႃႈ ၵၢၼ်ႁဵတ်း Forward Engineering ၸၢင်ႈ "တႅမ်ႈတႅၼ်း" (Overwrite) Table ၵဝ်ႇပႅတ်ႈ လႄႈ ၶေႃႈမုၼ်းၸၢင်ႈႁၢႆ (သင်ႁဝ်းလိူၵ်ႈ DROP TABLE)။ ၵွပ်ႈၼၼ် လူဝ်ႇၾၢင်ႉတႄႉတႄႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Forward Engineering:** ၵၢၼ်လႅၵ်ႈ Diagram ပဵၼ် Database တႄႉတႄႉ။
* **Reverse Engineering:** ၵၢၼ်လႅၵ်ႈ Database ၵဝ်ႇ ပဵၼ်ႁၢင်ႈ Diagram။
* **SQL Script:** သဵၼ်ႈမၢႆ Code SQL ဢၼ် Software တႅမ်ႈပၼ် တွၼ်ႈတႃႇသၢင်ႈ DB။
* **Synchronization:** ၵၢၼ်ႁဵတ်းႁႂ်ႈ Diagram လႄႈ Database တႄႉတႄႉ ႁႂ်ႈမိူၼ်ၵၼ်ယူႇတႃႇသေႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၸၢမ်းပိုတ်ႇ EER Model ဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈဝႆႉၼႂ်း Lesson 14 ၼၼ်ႉၶႃႈ။
2. ၸၢမ်းၸႂ်ႉ **Forward Engineering** တႃႇသူင်ႇ Table ၼၼ်ႉ ၵႂႃႇသၢင်ႈၼႂ်း MySQL Server တႄႉတႄႉၶႃႈ။
3. မိူဝ်ႈယဝ်ႉယဝ်ႉ... ၵႂႃႇတူၺ်းၼႂ်း **Schemas** ၼႂ်း Workbench သေ တူၺ်းဝႃႈ Table ၼၼ်ႉ ၽႅဝ်မႃးယဝ်ႉႁႃႉ?

---