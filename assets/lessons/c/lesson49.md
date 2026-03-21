## Lesson 49: Returning Values & Pointers: Getting Results Back

### 1. The `return` Keyword
မိူဝ်ႈ Function ၼိုင်ႈဢၼ်ႁဵတ်းၵၢၼ်ယဝ်ႉ၊ မၼ်းၸၢင်ႈသူင်ႇ Value ၼိုင်ႈဢၼ်ၶိုၼ်းမႃးပၼ် `main()`။ ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ **Return Type** တီႈၼႃႈၸိုဝ်ႈ Function ၼၼ်ႉၶႃႈ။



**တူဝ်ယၢင်ႇ:** Function တွၼ်ႈတႃႇၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉ
```c
int add(int a, int b) {
    int sum = a + b;
    return sum; // သူင်ႇၽွၼ်းလႆႈၶိုၼ်းမိူဝ်း
}

int main() {
    int result = add(10, 20); // 'result' တေၵဵပ်းမၢႆ 30 ဝႆႉ
    printf("Sum is: %d", result);
    return 0;
}
```

### 2. Returning a Pointer (ၵၢၼ်သူင်ႇ Address ၶိုၼ်းမိူဝ်း)
မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇသူင်ႇ **Address** ၶွင် Memory ၶိုၼ်းမိူဝ်းၸူး `main()`။ ၼႆႉၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၵၢၼ်ၶေႃႈမုၼ်းဢၼ်ယူႇၼႂ်း Heap Memory လႆႈငၢႆႈငၢႆႈၶႃႈ။

**သတိ (Rule of Safety):** ၸဝ်ႈၵဝ်ႇ **ဢမ်ႇထုၵ်ႇလီ** `return` Address ၶွင် **Local Variable** (Variable ဢၼ်သၢင်ႈဝႆႉၼႂ်း Function ယူဝ်းယူဝ်း) ၵွပ်ႈဝႃႈမိူဝ်ႈ Function ယဝ်ႉတူဝ်ႈ၊ Variable ၼၼ်ႉတေထုၵ်ႇယႃႉပႅတ်ႈ (Destroyed) သေ ပဵၼ် "Dangling Pointer" ၵႂႃႇၶႃႈ။



**တူဝ်ယၢင်ႇ ဢၼ်ထုၵ်ႇလီ (ၸႂ်ႉ Heap):**
```c
int* createArray(int n) {
    // ၶေႃ Memory ၼႂ်း Heap (မၼ်းတေဢမ်ႇႁၢႆၵႂႃႇ ၼႂ်း Memory)
    int *arr = (int*) malloc(n * sizeof(int)); 
    return arr; // သူင်ႇ Address ၶွင် Array ၼႆႉၶိုၼ်းမိူဝ်း
}
```

### 3. Multiple Returns?
ၼႂ်းလိၵ်ႈ C၊ Function ၼိုင်ႈဢၼ် `return` လႆႈၵူၺ်း **1 Value** တႃႇသေႇ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈၽွၼ်းလႆႈလၢႆလၢႆဢၼ်:
* ၸႂ်ႉ **Call by Reference** (Lesson 48)။
* ဢမ်ႇၼၼ် ၸႂ်ႉ **Struct** (Lesson 32) သေ `return` တူဝ် Struct တင်းသဵင်ႈၶိုၼ်းမိူဝ်းၶႃႈ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `float getAverage(int *marks, int count)`။
* မၼ်းတေၼပ်ႉဢၢၼ်ႇ "မၢႆၶႅတ်းၵၢင်" သေ `return` ပဵၼ်တူဝ်ၼပ်ႉ `float` ၶိုၼ်းမႃးပၼ်ၸဝ်ႈၵဝ်ႇ တႃႇၼႄၼိူဝ် Screen ၶႃႈယဝ်ႉ။
* ၵၢၼ်ၸႂ်ႉ **Return** တေႁဵတ်းႁႂ်ႈ Function ၸဝ်ႈၵဝ်ႇ "သႅၼ်ႈသႂ်" ၵွပ်ႈမၼ်းႁဵတ်းၵၢၼ်ၼပ်ႉဢၢၼ်ႇၵူၺ်း၊ သေဢမ်ႇၵဝ်းလွင်ႈ `printf` ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Function `int getMax(int a, int b)` ဢၼ်တေတႅၵ်ႈၼိူင်းတူဝ်ၼပ်ႉသွင်တူဝ် သေ `return` တူဝ်ဢၼ်ယႂ်ႇသုတ်းၶိုၼ်းမိူဝ်း။
2. ၸၢမ်းတႅမ်ႈ Function `int* getMemory()` ဢၼ်ၸႂ်ႉ `malloc` သေ `return` Address တူဝ်ၼပ်ႉတူဝ်ၼိုင်ႈ ၶိုၼ်းမိူဝ်းၸူး `main()`။
3. သင်ႁဝ်းတႅမ်ႈ `void myFunction()` ၵူၺ်းၵႃႈသမ်ႉတႅမ်ႈ `return 10;` ၼႂ်းမၼ်းၼႆ Compiler တေဝႃႈၸိူင်ႉႁိုဝ်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေ Error ၶႃႈ၊ ၵွပ်ႈ `void` ပွင်ႇဝႃႈ ဢမ်ႇပၼ်သူင်ႇသင်ၶိုၼ်းၶႃႈဢေႃႈ)။

---

တွၼ်ႈၵၼ် 49 ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ။ တေၵႂႃႇၸူး **Lesson 50: Dynamic Memory in Functions: Using malloc with Tools** ဢၼ်တေသွၼ်လွင်ႈၵၢၼ် "ၶေႃ RAM" ၼႂ်း Function ႁႂ်ႈမီးဢဵၼ်ႁႅင်း ၼၼ်ႉၶႃႈႁိုဝ်?

1. Start Lesson 50
2. Explain "Variable Scope" (Local vs Global) clearly
3. Show how to return a Struct from a function