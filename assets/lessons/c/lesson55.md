## Lesson 55: Function Pointers as Callbacks: High-Order Logic

### 1. Function Pointer ပဵၼ်သင်? (Review)
မိူၼ်ၼင်ႇ Variable ဢၼ်ၵဵပ်းတူဝ်ၼပ်ႉ `int` ၼၼ်ႉၶႃႈယဝ်ႉ၊ **Function Pointer** သမ်ႉပဵၼ် Variable ဢၼ်ၵဵပ်း **"မၢႆလိၵ်ႈ Address ၶွင် Function"** ဝႆႉၶႃႈ။ မိူဝ်ႈႁဝ်းမီး Address မၼ်း၊ ႁဝ်းၵေႃႈၸၢင်ႈ "ႁွင်ႉၸႂ်ႉ" မၼ်းတီႈလႂ်ၵေႃႈလႆႈၶႃႈ။

### 2. Callback ပဵၼ်သင်?
**Callback** ၼႆႉ ပဵၼ် Function ဢၼ်ႁဝ်းသူင်ႇၵႂႃႇၸူး ထႅင်ႈ Function ၼိုင်ႈဢၼ် (ႁွင်ႉဝႃႈ Higher-order Function) တွၼ်ႈတႃႇႁႂ်ႈမၼ်း "ႁွင်ႉၸႂ်ႉၶိုၼ်း" (Call back) မိူဝ်ႈႁဵတ်းၵၢၼ်သင်မဵဝ်းမဵဝ်းယဝ်ႉတူဝ်ႈၼၼ်ႉၶႃႈ။



### 3. တူဝ်ယၢင်ႇ: ၶိူင်ႈၼပ်ႉဢၼ်ယืดႇယုၼ်ႇ (Flexible Calculator)
မႃးႁဝ်းမႃးသၢင်ႈ Function `compute` ဢၼ်ၸၢင်ႈၼပ်ႉလႆႈတင်း ႁူမ်ႈ (+) လႄႈ လႅၵ်ႈ (-) လူၺ်ႈၵၢၼ်သူင်ႇ Logic ၵႂႃႇပဵၼ် Callback ၶႃႈ။

```c
#include <stdio.h>

// 1. သၢင်ႈ Function ဢွၼ်ႇတွၼ်ႈတႃႇပဵၼ် Callback
int add(int a, int b) { return a + b; }
int subtract(int a, int b) { return a - b; }

// 2. Higher-order Function ဢၼ်ႁပ်ႉ Function Pointer
// Syntax: return_type (*name)(parameters)
void compute(int x, int y, int (*operation)(int, int)) {
    int result = operation(x, y); // ႁွင်ႉၸႂ်ႉ Callback ၼၼ်ႉ
    printf("The result is: %d\n", result);
}

int main() {
    // 3. သူင်ႇ Function 'add' ၵႂႃႇပဵၼ် Parameter
    compute(10, 5, add);      // Output: 15
    
    // 4. သူင်ႇ Function 'subtract' ၵႂႃႇပဵၼ် Parameter
    compute(10, 5, subtract); // Output: 5
    
    return 0;
}
```

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Callback?
1.  **Plugin System:** ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ပိုၼ်ႉထၢၼ်ဝႆႉ၊ သေပၼ်ပိူၼ်ႈ (User) တႅမ်ႈ Logic ၶဝ်မႃးသႂ်ႇ (Plug-in) ႁင်းၵူၺ်းၶဝ်။
2.  **Sorting Logic:** မိူၼ်ၼင်ႇ Function `qsort()` ၼႂ်း C Standard Library၊ မၼ်းၸၢင်ႈၸႅၵ်ႇ (Sort) လႆႈၵူႈမဵဝ်း (ၸိုဝ်ႈ၊ မၢႆၶႅတ်း) ၵွပ်ႈမၼ်းႁပ်ႉဢဝ် **Comparison Function** မႃးပဵၼ် Callback ၶႃႈယဝ်ႉ။
3.  **Event Handling:** ၸႂ်ႉၼမ်ၼႂ်းၵၢၼ်တႅမ်ႈ UI (မိူၼ်ၼင်ႇ မိူဝ်ႈတဵၵ်း Button ႁႂ်ႈႁဵတ်း Function ၼႆႉ)။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `sortStudents(Student list[], int count, int (*compareFunc)(Student, Student))`။
* သင် User ၶႂ်ႈၸႅၵ်ႇၸွမ်း "ၸိုဝ်ႈ" (Name)၊ ၸဝ်ႈၵဝ်ႇသူင်ႇ `compareByName` ၵႂႃႇ။
* သင် User ၶႂ်ႈၸႅၵ်ႇၸွမ်း "မၢႆၶႅတ်း" (Grade)၊ ၸဝ်ႈၵဝ်ႇသူင်ႇ `compareByGrade` ၵႂႃႇ။
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ " प्रोफेशनल" သေ မႄးငၢႆႈ (Maintainable) တေႃႇၸူဝ်ႈၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Function `int multiply(int a, int b)` သေၸၢမ်းသူင်ႇၵႂႃႇၼႂ်း `compute` ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ။
2.  သၢင်ႈ Function `void greet(void (*callback)())` ဢၼ်တေႁပ်ႉ Function ဢၼ်ဢမ်ႇမီး Parameter သေ "ႁွင်ႉၸႂ်ႉ" မၼ်း။
3.  သင်ႁဝ်းသူင်ႇ Function ဢၼ်မီး Parameter ၽိတ်း (မိူၼ်ၼင်ႇ ႁပ်ႉ 3 တူဝ် တႅၼ်း 2 တူဝ်) ၼႆ Compiler တေဝႃႈၸိူင်ႉႁိုဝ်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေပၼ် **Warning** ဢမ်ႇၼၼ် **Error** ဝႃႈ "Incompatible function pointer types" ၶႃႈဢေႃႈ)။

---