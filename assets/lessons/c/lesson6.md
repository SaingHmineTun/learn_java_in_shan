## Lesson 6: Coding Standards: Writing Clean & Readable Code

### 1. ၵွပ်ႈသင် Coding Standards သမ်ႉလမ်ႇလွင်ႈ?
မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ၼမ်မႃး၊ ဢမ်ႇၼၼ် တႅမ်ႈႁူမ်ႈၵၼ်တင်းပိူၼ်ႈ (မိူၼ်ၼင်ႇ တႅမ်ႈလွင်ႈ **Shan Unicode Library** ၼၼ်ႉ)၊ သင် Code ၸဝ်ႈၵဝ်ႇ သုၵ်ႉယုင်ႈဝႆႉၼႆ တႃႇတေၵႄႈ Bug တေယၢပ်ႇတေႉတေႉၶႃႈ။
* **သႅၼ်ႈသႂ်:** ႁႃလွင်ႈၽိတ်းလႆႈၽႂ်း။
* **လူငၢႆႈ:** ၵူၼ်းတၢင်ႇၵေႃႉ ၸွႆႈမႄး Code ႁဝ်းလႆႈငၢႆႈ။

### 2. မၢႆမီႈၵၢၼ်တင်ႈၸိုဝ်ႈ (Naming Conventions)
ၵၢၼ်တင်ႈၸိုဝ်ႈ Variable ဢမ်ႇၼၼ် Function ၼၼ်ႉ လူဝ်ႇမီးတီႈပွင်ႇ (Meaningful Names) ၶႃႈ။
* **Don't:** `int x = 20;` (x ၼႆႉ ပဵၼ်သင်? ဢမ်ႇႁူႉၶႃႈ)
* **Do:** `int studentAge = 20;` (ၼႆႉၸင်ႇႁူႉဝႃႈ ပဵၼ်ဢႃႇယုလုၵ်ႈႁဵၼ်းၶႃႈ)

**Style ဢၼ်ၸႂ်ႉၼမ်:**
* **snake_case:** `student_age`, `total_score` (ၼႂ်း C ၸႂ်ႉၼမ်ၶႃႈ)
* **camelCase:** `studentAge`, `totalScore` (ၼႂ်း Java/Dart ၸႂ်ႉၼမ်ၶႃႈ)

### 3. ၵၢၼ်ယဵပ်ႇထႅဝ် (Indentation & White Space)
ၼႂ်းလိၵ်ႈ C ၼႆႉ ႁဝ်းၸႂ်ႉ `{ }` တႃႇမၢႆဝႆႉ "ၶွပ်ႇပိူင်" (Block)။ Code ဢၼ်မီးၼႂ်းမၼ်းၼၼ်ႉ လူဝ်ႇ "ယဵပ်ႇ" (Indent) ၶဝ်ႈၵႂႃႇ တွၼ်ႈတႃႇၼႄဝႃႈ မၼ်းပိုင်ႈဢိင်ဝႆႉၼႂ်း Function ၼၼ်ႉၶႃႈ။
* **Standard:** ၸႂ်ႉ 4 Spaces ဢမ်ႇၼၼ် 1 Tab တႃႇယဵပ်ႇၶဝ်ႈၼိုင်ႈၸၼ်ႉၶႃႈ။



### 4. ၵၢၼ်တႅမ်ႈမၢႆဝႆႉ (Writing Comments)
Comment ဢမ်ႇၸႂ်ႉတႃႇတႅမ်ႈလၢတ်ႈၼႄဝႃႈ "Code ၼႆႉ ႁဵတ်းသင်" (What the code does) ၵူၺ်း၊ မၼ်းၸႂ်ႉတွၼ်ႈတႃႇလၢတ်ႈဝႃႈ **"ၵွပ်ႈသင် ႁဝ်းတႅမ်ႈၸိူင်ႉၼႆ"** (Why we wrote it this way) ၶႃႈဢေႃႈ။
* **Single Line:** `// ၼႆႉပဵၼ်ၵၢၼ်ၼပ်ႉဢႃႇယု`
* **Multi-line:** `/* တွၼ်ႈၼႆႉ ၸႂ်ႉတႃႇၸတ်းၵၢၼ် Shan Character Encoding */`

### 5. မၢႆမီႈ ႁူဝ်ၶေႃႈ (Header Guards & Organization)
မိူဝ်ႈပူဝ်ႇၵရႅမ်ႇႁဝ်း ယႂ်ႇမႃး၊ ႁဝ်းလူဝ်ႇၸႅၵ်ႇ Code ႁဝ်းဝႆႉပဵၼ်လၢႆလၢႆ File။
* ဢဝ် `#include` တင်းသဵင်ႈဝႆႉတီႈ "ႁူဝ်" (Top) ၶွင် File တႃႇသေႇ။
* တႅမ်ႈ `main()` ဝႆႉတီႈၼိူဝ် ဢမ်ႇၼၼ် တီႈတႂ်ႈသုတ်း ႁႂ်ႈမၼ်းပဵၼ်ပိူင်လဵဝ်ၵၼ်ၵူႈ File ၶႃႈ။



---

## 💡 ၶေႃႈၵႂၢမ်းတွၼ်းမၢႆ (Programmer's Wisdom)
"Always code as if the person who ends up maintaining your code will be a violent psychopath who knows where you live." (တႅမ်ႈ Code ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈသႅၼ်ႈသႂ် တေႃႇပေႃးထိုင်ဝႃႈ ၵူၼ်းတေမႃးလူ Code ၸဝ်ႈၵဝ်ႇၼၼ်ႉ ပဵၼ်ၵူၼ်းၸႂ်ႁၢႆႉ ဢၼ်ႁူႉတီႈယူႇၸဝ်ႈၵဝ်ႇၼၼ်ႉၶႃႈလႃႆ!)

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
* ၶိုၼ်းပိုတ်ႇတူၺ်း Code `Hello World` ၸဝ်ႈၵဝ်ႇ။ ၸၢမ်းသႂ်ႇ Comment ဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈမၼ်း မိူဝ်ႈဝၼ်းထိၵေႃႉလႂ်?
* ၸၢမ်းလႅၵ်ႈလၢႆႈၸိုဝ်ႈ Variable ၼႂ်း Code ၵဝ်ႇၸဝ်ႈၵဝ်ႇ ႁႂ်ႈမၼ်းမီးတီႈပွင်ႇလီလီ (မိူၼ်ၼင်ႇ `int a` လႅၵ်ႈပဵၼ် `int student_count`)။

---