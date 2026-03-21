## Lesson 50: Dynamic Memory in Functions: Using malloc with Tools

### 1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ `malloc` ၼႂ်း Function?
မိူဝ်ႈႁဝ်းသၢင်ႈ Array ၼႂ်း Function ယူဝ်းယူဝ်း (မိူၼ်ၼင်ႇ `int arr[10];`)၊ မၼ်းတေယူႇၼႂ်း **Stack**။ မိူဝ်ႈ Function ယဝ်ႉတူဝ်ႈ၊ Array ၼၼ်ႉတေႁၢႆၵႂႃႇၵမ်းလဵဝ်။
ၵူၺ်းၵႃႈ သင်ႁဝ်းၸႂ်ႉ **`malloc`**၊ ၶေႃႈမုၼ်းတေၵႂႃႇယူႇၼႂ်း **Heap** သေ တေဢမ်ႇႁၢႆၵႂႃႇ တေႃႇပေႃးႁဝ်းသင်ႇ `free()` ၶႃႈ။



### 2. ၵၢၼ်သၢင်ႈ Array ၼႂ်း Function သေ Return ၶိုၼ်းမိူဝ်း
ၼႆႉပဵၼ်လၢႆးဢၼ် Professional ၶဝ်ၸႂ်ႉတေႉၶႃႈ။ ႁဝ်းႁဵတ်း Function တွၼ်ႈတႃႇ "သၢင်ႈသဵၼ်ႈမၢႆ" သေ သူင်ႇ Address မၼ်းၶိုၼ်းမႃးၸူး `main()` ၶႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
#include <stdio.h>
#include <stdlib.h>

int* createIntArray(int size) {
    // ၶေႃ Memory ၼႂ်း Heap
    int *ptr = (int*) malloc(size * sizeof(int));
    
    // ၵူတ်ႇထတ်းဝႃႈ RAM တဵမ်ႁိုဝ်ဢမ်ႇတဵမ်
    if (ptr == NULL) {
        printf("Memory Allocation Failed!\n");
        return NULL;
    }
    
    return ptr; // သူင်ႇ Address ၶိုၼ်းမိူဝ်းၸူး main()
}

int main() {
    int n = 5;
    int *myList = createIntArray(n);
    
    if (myList != NULL) {
        myList[0] = 100;
        printf("First Element: %d\n", myList[0]);
        
        free(myList); // ယႃႇလိုမ်းၶိုၼ်းပၼ် RAM မိူဝ်ႈယဝ်ႉတူဝ်ႈ
    }
    
    return 0;
}
```

### 3. ၵၢၼ်သူင်ႇ Pointer ၵႂႃႇၸူး Function တႃႇ Allocation
မၢင်ပွၵ်ႈ ႁဝ်းသူင်ႇ **Double Pointer (`**`)** ၵႂႃႇၸူး Function တႃႇႁႂ်ႈမၼ်း "ၸတ်းၵၢၼ် Memory" ပၼ် Variable ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈၶႃႈ။

```c
void allocateSpace(int **p, int size) {
    *p = (int*) malloc(size * sizeof(int));
}
```



### 4. Safety First: The Owner Rule
မိူဝ်ႈၸဝ်ႈၵဝ်ႇၸႂ်ႉ `malloc` ၼႂ်း Function:
* **The Rule:** ၵေႃႉဢၼ် "ႁွင်ႉၸႂ်ႉ" (Caller) တေလႆႈပဵၼ်ၵေႃႉဢၼ် "ၶိုၼ်းပၼ်" (`free`) Memory ၼၼ်ႉၶႃႈ။
* သင်ၸဝ်ႈၵဝ်ႇ `malloc` လၢႆလၢႆၵမ်း ၵူၺ်းၵႃႈဢမ်ႇ `free` ၼႂ်း `main()` ၼႆ မၼ်းတေပဵၼ် **Memory Leak** ၶႃႈယဝ်ႉ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `Student* loadStudents(int count)`။
* ၼႂ်းမၼ်း တေၸႂ်ႉ `malloc` တႃႇၶေႃ Memory တႅတ်ႈတေႃးၸွမ်းၼင်ႇႁူဝ်ၼပ်ႉလုၵ်ႈႁဵၼ်း။
* ၼႆႉႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ "ယืดႇယုၼ်ႇ" (Dynamic) တေႉတေႉ ၵွပ်ႈမၼ်းတေၸႂ်ႉ RAM ၵူၺ်းတီႈဢၼ်မၼ်းလူဝ်ႇတေႉတေႉၼၼ်ႉၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Function `float* createFloatArray(int n)` ဢၼ်တေၶေႃ Memory တႃႇတူဝ်ၼပ်ႉ `float` သေ `return` Address မၼ်းၶိုၼ်းမိူဝ်း။
2. တႅမ်ႈ Function ဢၼ်ႁပ်ႉ `int *ptr` သေ ၸႂ်ႉ `realloc` တွၼ်ႈတႃႇ "ယႂ်ႇတုၺ်း" သႅၼ်း Memory ၼၼ်ႉပဵၼ်သွင်ပၼ်ႇ။
3. သင်ႁဝ်းၸႂ်ႉ `malloc` ၼႂ်း Function သေ `return` Address မၼ်း ၵူၺ်းၵႃႈၼႂ်း `main()` သမ်ႉဢမ်ႇမီး Variable မႃးႁပ်ႉဝႆႉၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေပဵၼ် **Memory Leak** ၵမ်းလဵဝ် ၵွပ်ႈႁဝ်းဢမ်ႇႁူႉမၢႆလိၵ်ႈ Address မၼ်းယဝ်ႉသေ ဢမ်ႇ `free` လႆႈထႅင်ႈၶႃႈ)။

---