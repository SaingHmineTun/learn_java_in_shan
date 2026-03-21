## Lesson 53: Function Prototypes & Header Files

### 1. Function Prototype ပဵၼ်သင်?
ၼႂ်းလိၵ်ႈ C၊ Compiler တေၼပ်ႉဢၢၼ်ႇ Code တႄႇၼိူဝ်လူင်းတႂ်ႈ။ သင်ၸဝ်ႈၵဝ်ႇႁွင်ႉၸႂ်ႉ Function ဢၼ်တႅမ်ႈဝႆႉ "ၽၢႆႇတႂ်ႈ" `main()` ၼႆ၊ Compiler တေဢမ်ႇႁူႉၸိုဝ်ႈမၼ်းသေ ပၼ် Error ၶႃႈ။

**Function Prototype** ပဵၼ်ၵၢၼ် "ပိုၼ်ၽၢဝ်ႇၸိုဝ်ႈ" (Declaration) ဝႆႉၽၢႆႇၼိူဝ် `main()` တွၼ်ႈတႃႇမုၵ်ႉၸွႆႈပၼ် Compiler ဝႃႈ "ယႃႇပေတူၵ်းၸႂ်၊ Function ၼႆႉမီးဝႆႉယူႇ ဢွၼ်တၢင်းတေၸႂ်ႉမၼ်း" ၼၼ်ႉၶႃႈဢေႃႈ။



**တူဝ်ယၢင်ႇ:**
```c
#include <stdio.h>

// 1. Prototype (Declaration) - ပိုၼ်ၽၢဝ်ႇဝႆႉဢွၼ်တၢင်း
void sayHello(char name[]);

int main() {
    sayHello("Sai Mao"); // ႁွင်ႉၸႂ်ႉလႆႈယဝ်ႉ
    return 0;
}

// 2. Definition (Implementation) - တႅမ်ႈ Code တေႉမၼ်းဝႆႉၽၢႆႇတႂ်ႈ
void sayHello(char name[]) {
    printf("Hello, %s!\n", name);
}
```

### 2. Header Files (`.h`)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇမီး Function ၼမ်ၼမ် (မိူၼ်ၼင်ႇ 100 ဢၼ်)၊ ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီၸႅၵ်ႇမၼ်းဝႆႉၼႂ်း File တၢင်ႇဢၼ်ၶႃႈ။
* **`.h` File:** ၵဵပ်းဝႆႉၵူၺ်း "Prototypes" (ၸိုဝ်ႈမၼ်း) လႄႈ "Structs"။
* **`.c` File:** ၵဵပ်းဝႆႉ Code တေႉတေႉမၼ်း။



### 3. ၵၢၼ်သၢင်ႈ Header File ႁင်းၵူၺ်း (Custom Header)
မႃးႁဝ်းမႃးၸႅၵ်ႇ Code တွၼ်ႈတႃႇ **TMK Student Manager** ၸဝ်ႈၵဝ်ႇၶႃႈ။

**File: `student.h`** (Header)
```c
#ifndef STUDENT_H // Header Guard (တႃႇၵႅတ်ႇၵႄလွင်ႈပိုၼ်ၽၢဝ်ႇသွၼ်ႉၵၼ်)
#define STUDENT_H

struct Student {
    char name[50];
    int age;
};

void printStudent(struct Student s); // Prototype

#endif
```

**File: `main.c`**
```c
#include <stdio.h>
#include "student.h" // ၸႂ်ႉ "" တႅၼ်း <> တွၼ်ႈတႃႇ File ဢၼ်ႁဝ်းသၢင်ႈႁင်းၵူၺ်း

int main() {
    struct Student s1 = {"Sai Mao", 25};
    printStudent(s1);
    return 0;
}

void printStudent(struct Student s) {
    printf("Name: %s, Age: %d\n", s.name, s.age);
}
```

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႅၵ်ႇ File?
1.  **Readability:** `main.c` တေၸိုၼ်ႈသႅၼ်ႈ (Clean) သေ လူငၢႆႈ။
2.  **Teamwork:** ၵူၼ်းၼိုင်ႈၵေႃႉတႅမ်ႈလွင်ႈ "Database"၊ ထႅင်ႈၵေႃႉၼိုင်ႈတႅမ်ႈလွင်ႈ "UI" ၼႂ်း File ပႅၵ်ႇၵၼ်လႆႈ။
3.  **Reusability:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈဢဝ် `student.h` ၵႂႃႇၸႂ်ႉၼႂ်း Project တၢင်ႇဢၼ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီမီး `tmk_logic.h` တႃႇၵဵပ်းလွင်ႈၼပ်ႉ Grade။
* မီး `tmk_ui.h` တႃႇၵဵပ်းလွင်ႈၼႄ Menu။
* မီး `tmk_db.h` တႃႇၵဵပ်းလွင်ႈ Save File။
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ ပဵၼ် Software ၸၼ်ႉသုင် ဢၼ်မႄးငၢႆႈ (Maintainable) တေႃႇၸူဝ်ႈၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ၸၢမ်းတႅမ်ႈ Function `int add(int a, int b)` ဝႆႉၽၢႆႇတႂ်ႈ `main()` သေ ၸႂ်ႉ **Prototype** ၽၢႆႇၼိူဝ် တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈ။
2.  သၢင်ႈ Header File ဢၼ်ၸိုဝ်ႈဝႃႈ `mymath.h` သေ သႂ်ႇ Prototype ၶွင်ၵၢၼ် "ပုၼ်းသွင်" (Square) ဝႆႉၼႂ်းမၼ်း။
3.  ၵွပ်ႈသင်ႁဝ်းသမ်ႉၸႂ်ႉ `#ifndef` ၼႂ်း Header File ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: တွၼ်ႈတႃႇၵႅတ်ႇၵႄ (Prevent) ဢမ်ႇႁႂ်ႈ Compiler ပိုၼ်ၽၢဝ်ႇ Variable ဢမ်ႇၼၼ် Function သွၼ်ႉၵၼ် (Redefinition Error) မိူဝ်ႈႁဝ်း `#include` လၢႆလၢႆၵမ်းၶႃႈဢေႃႈ)။

---