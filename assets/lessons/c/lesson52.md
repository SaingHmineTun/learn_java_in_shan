## Lesson 52: Structs as Arguments: Processing Complex Data

### 1. Passing Struct by Value (သူင်ႇ "ၵေႃႇပီႇ")
မိူဝ်ႈႁဝ်းသူင်ႇ Struct ၵႂႃႇလူၺ်ႈလၢႆးၼႆႉ၊ C တေ "ၵေႃႇပီႇ" ၶေႃႈမုၼ်းတင်းသဵင်ႈ ဢၼ်ယူႇၼႂ်း Struct ၼၼ်ႉၵႂႃႇဝႆႉၼႂ်း Function ၶႃႈ။
* **ဢၼ်လီ:** လွတ်ႈၽေး (Safe) ၵွပ်ႈ Function မႄးလႅၵ်ႈလၢႆႈ Variable တူဝ်တေႉဢမ်ႇလႆႈ။
* **ဢၼ်ႁၢႆႉ:** သဵင်ႈ Memory လႄႈ ႁဵတ်းၵၢၼ်ဢืดႇ သင်ဝႃႈ Struct ၼၼ်ႉမီးၶေႃႈမုၼ်းၼမ် (မိူၼ်ၼင်ႇ Array ၼႂ်း Struct)။



### 2. Passing Struct by Reference (သူင်ႇ "Pointer")
ၼႆႉပဵၼ်လၢႆးဢၼ် Professional ၶဝ်ၸႂ်ႉတေႉၶႃႈ။ ႁဝ်းသူင်ႇၵူၺ်း **Address** ၶွင် Struct ၵႂႃႇ။
* **ဢၼ်လီ:** ၽႂ်းလႅတ်း (Efficient) လႄႈ ၸၢင်ႈမႄးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းတူဝ်တေႉလႆႈ။
* **Operator:** ႁဝ်းၸႂ်ႉ **`->` (Arrow Operator)** တႃႇၶဝ်ႈၸူး Member မၼ်း (Lesson 43)။



### 3. တူဝ်ယၢင်ႇတူဝ်တေႉ: Student Profile
မႃးႁဝ်းမႃးသၢင်ႈ Function တွၼ်ႈတႃႇၼႄ Profile လုၵ်ႈႁဵၼ်းၶႃႈ။

```c
#include <stdio.h>

struct Student {
    char name[50];
    int age;
    float gpa;
};

// ၸႂ်ႉ Pointer တွၼ်ႈတႃႇ Efficiency
void displayProfile(struct Student *s) {
    printf("\n--- Student Profile ---\n");
    printf("Name: %s\n", s->name);
    printf("Age : %d\n", s->age);
    printf("GPA : %.2f\n", s->gpa);
}

int main() {
    struct Student s1 = {"Sai Mao", 25, 3.85};
    
    // သူင်ႇ Address ၵႂႃႇ
    displayProfile(&s1); 
    
    return 0;
}
```

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ?
1. **Clean Code:** တႅၼ်းၵၢၼ်ဢၼ်တေသူင်ႇ `name`, `age`, `gpa` ၵႂႃႇ 3 Parameters၊ ႁဝ်းသူင်ႇၵူၺ်း **`struct Student`** တူဝ်လဵဝ်ၵေႃႈယဝ်ႉယဝ်ႉ။
2. **Data Integrity:** ၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇၵၼ် တေယူႇၸွမ်းၵၼ်တႃႇသေႇ၊ ဢမ်ႇလုၵ်ႉလၢၵ်ႉၶႃႈ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `void enrollStudent(struct Student *s)`။
* ၼႂ်း Function ၼႆႉ ၸဝ်ႈၵဝ်ႇႁပ်ႉဢဝ်ၶေႃႈမုၼ်းတႄႇဢဝ် `scanf` သေၵဵပ်းသႂ်ႇၼႂ်း Struct ၼၼ်ႉၵမ်းလဵဝ်။
* ၵၢၼ်သူင်ႇ Struct ၼႆႉ တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း 1,000 ၵေႃႉၵေႃႈ လႆႈငၢႆႈငၢႆႈ လႄႈ သႅၼ်ႈသႂ်ၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ `struct Rect` (Width, Height) သေ သၢင်ႈ Function `int calculateArea(struct Rect r)` ဢၼ်သူင်ႇလူၺ်ႈ **Value** သေ `return` ၽွၼ်းလႆႈမၼ်းမႃး။
2. တႅမ်ႈ Function `void updateGPA(struct Student *s, float newGPA)` ဢၼ်တေလႅၵ်ႈလၢႆႈ GPA လုၵ်ႈႁဵၼ်း တူဝ်တေႉ။
3. သင်ႁဝ်းသူင်ႇ Struct ဢၼ်ယႂ်ႇတေႉတေႉ (မိူၼ်ၼင်ႇမီး Array 10,000 တူဝ်ၼႂ်းမၼ်း) လူၺ်ႈ **Value** ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေႁဵတ်းႁႂ်ႈ **Stack Overflow** ၵွပ်ႈမၼ်းၵေႃႇပီႇၶေႃႈမုၼ်းယႂ်ႇပူၼ်ႉတီႈ ၶဝ်ႈၵႂႃႇၼႂ်း Stack Memory ၶႃႈဢေႃႈ)။

---