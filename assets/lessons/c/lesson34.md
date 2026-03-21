## Lesson 34: Typedef & Enums: Creating Custom Data Types

### 1. `typedef` – ၵၢၼ်တင်ႈၸိုဝ်ႈလႅၼ်း (Type Definition)
`typedef` ၼႆႉ ပဵၼ် Keyword ဢၼ်ၸႂ်ႉတႃႇ "တင်ႈၸိုဝ်ႈမႂ်ႇ" ပၼ် Data Type ဢၼ်မီးဝႆႉယူႇယဝ်ႉ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ယၢဝ်းယၢဝ်း တႃႇသေႇၶႃႈ။

* **ၸႂ်ႉတင်း Struct:** တႅၼ်းၵၢၼ်ဢၼ်တေတႅမ်ႈ `struct Student` ၵူႈပွၵ်ႈ၊ ႁဝ်းၸႂ်ႉ `Student` တူဝ်လဵဝ်ၵူၺ်းလႆႈၶႃႈ။

```c
typedef struct {
    char name[50];
    int id;
} Student;

// ယဝ်ႉၸင်ႇၸႂ်ႉလႆႈငၢႆႈငၢႆႈၼင်ႇၼႆ:
Student s1, s2; 
```



### 2. `enum` – ၵၢၼ်မၢႆဝႆႉသဵၼ်ႈမၢႆ (Enumeration)
**Enum** ၼႆႉ ပဵၼ် Data Type ဢၼ်ႁဝ်းသၢင်ႈၶိုၼ်း တွၼ်ႈတႃႇၵဵပ်း "ၸိုဝ်ႈ" ဢၼ်တႅၼ်းတူဝ်ၼပ်ႉတဵမ် (`int`) ၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈလိူဝ်ၵၢၼ်ၸႂ်ႉတူဝ်ၼပ်ႉ 0, 1, 2 ယူဝ်းယူဝ်းၶႃႈဢေႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
enum Days { MON, TUE, WED, THU, FRI, SAT, SUN };
// MON = 0, TUE = 1, WED = 2 ... ၸွမ်းၼင်ႇလႅၼ်းမၼ်းၶႃႈ

enum Days today = MON;
if (today == SUN) {
    printf("It's Holiday!");
}
```



### 3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ?
1. **Readability:** Code တေလူငၢႆႈလိူဝ်ၵဝ်ႇ (မိူၼ်ၼင်ႇ `if(status == ACTIVE)` တေလီလိူဝ် `if(status == 1)`)။
2. **Maintenance:** သင်ၶႂ်ႈလႅၵ်ႈလၢႆႈ Data Type တီႈၼိုင်ႈ၊ `typedef` တေၸွႆႈႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈပၼ်တင်း System ၶႃႈ။
3. **Safety:** ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈသႂ်ႇတူဝ်ၼပ်ႉၽိတ်းပိူင်ႈ ၼႂ်း Logic ဢၼ်မီးသဵၼ်ႈမၢႆတႅတ်ႈတေႃးၶႃႈ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager**၊ ႁဝ်းၸၢင်ႈၸႂ်ႉတွၼ်ႈၼႆႉတေႉတေႉၶႃႈ:
* **Typedef:** ၸႂ်ႉ `typedef Student` တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း ႁႂ်ႈ Code သႅၼ်ႈသႂ် (Clean Code)။
* **Enum:** ၸႂ်ႉ `enum Grade { FAIL, PASS, CREDIT, DISTINCTION }` တႃႇမၢႆဝႆႉၸၼ်ႉၶႅတ်းလုၵ်ႈႁဵၼ်း ၼႂ်း System ၸဝ်ႈၵဝ်ႇၶႃႈဢေႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၸၢမ်းတႅမ်ႈ `typedef` တွၼ်ႈတႃႇ `unsigned long` ႁႂ်ႈပဵၼ်ၸိုဝ်ႈ `ulonk` သေ ၸႂ်ႉမၼ်းပိုၼ်ၽၢဝ်ႇ Variable တူဝ်ၼိုင်ႈ။
2. တႅမ်ႈ `enum Level { LOW, MEDIUM, HIGH };` သေ ၸႂ်ႉ `Switch Case` တႃႇၼႄၶေႃႈၵႂၢမ်းပႅၵ်ႇပိူင်ႈၵၼ် ၸွမ်းၼင်ႇ Level ဢၼ်လိူၵ်ႈဝႆႉ။
3. သင်ႁဝ်းတႅမ်ႈ `enum Color { RED=5, BLUE, GREEN };` ၼႆ၊ `BLUE` တေမီးတူဝ်ၼပ်ႉပဵၼ်လၢႆၶႃႈၼႄႇ? (ၸၢမ်းတႅမ်ႈ Code ၵူတ်ႇထတ်းတူၺ်းၶႃႈ)။

---