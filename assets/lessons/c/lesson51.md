## Lesson 51: Array Parameters: Functions Handling Data Lists

### 1. Array Decay (ၵၢၼ်လႅၵ်ႈပဵၼ် Pointer)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇသူင်ႇ Array ၵႂႃႇၸူး Function၊ C တေဢမ်ႇၵေႃႇပီႇ (Copy) ၶေႃႈမုၼ်းတင်းသဵင်ႈၶႃႈ။ မၼ်းတေသူင်ႇၵူၺ်း **Address ၶွင်တူဝ်ထီႉၼိုင်ႈ (`&arr[0]`)** ၵႂႃႇၶႃႈယဝ်ႉ။ ၼႆႉႁွင်ႉဝႃႈ **Array Decay** ၶႃႈဢေႃႈ။



### 2. ပိူင်တႅမ်ႈ (Syntax)
ႁဝ်းတႅမ်ႈလႆႈ 2 လၢႆး၊ ၵူၺ်းၵႃႈ တီႈပွင်ႇမၼ်းမိူၼ်ၵၼ် "ပဵၼ် Pointer" တင်းသွင်ဢၼ်ၶႃႈ:

* **လၢႆးထီႉ 1 (Array Style):** `void myFunc(int arr[])`
* **လၢႆးထီႉ 2 (Pointer Style):** `void myFunc(int *arr)`

**တူဝ်ယၢင်ႇ:** Function တႃႇၼႄၶေႃႈမုၼ်းၼႂ်း Array
```c
#include <stdio.h>

// ႁဝ်းလူဝ်ႇသူင်ႇ 'size' ၵႂႃႇၸွမ်း တႃႇသေႇ ၵွပ်ႈ Function ဢမ်ႇႁူႉဝႃႈ Array ယႂ်ႇၵႃႈႁိုဝ်
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]); // ၸႂ်ႉ [] လႆႈမိူၼ်ၵဝ်ႇ
    }
    printf("\n");
}

int main() {
    int myNumbers[] = {10, 20, 30, 40, 50};
    int n = 5;

    printArray(myNumbers, n); // သူင်ႇၸိုဝ်ႈ Array ၵႂႃႇၵူၺ်း
    return 0;
}
```

### 3. လွင်ႈလမ်ႇလွင်ႈ ဢၼ်လူဝ်ႇတွပ်ႇဝႆႉ
1.  **Always Pass Size:** ၼႂ်း Function ၼၼ်ႉ `sizeof(arr)` တေပဵၼ်ၵူၺ်းသႅၼ်းၶွင် Pointer (4 ႁိုဝ် 8 bytes)၊ မၼ်းဢမ်ႇၸႂ်ႇသႅၼ်း Array တင်းသဵင်ႈ။ ၵွပ်ႈၼၼ် ႁဝ်းတေလႆႈသူင်ႇ **`size`** ၵႂႃႇၸွမ်းတႃႇသေႇၶႃႈ။
2.  **It's Call by Reference:** ၵွပ်ႈႁဝ်းသူင်ႇ Address ၵႂႃႇ၊ သင်ၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၼႂ်း Array တီႈၼႂ်း Function ၼၼ်ႉ၊ Array တူဝ်တေႉၼႂ်း `main()` ກေတေ **လႅၵ်ႈလၢႆႈၸွမ်း** ၵမ်းလဵဝ်ၶႃႈ။



### 4. 2D Array Parameters
သင်ပဵၼ် Array 2 ၸၼ်ႉ၊ ၸဝ်ႈၵဝ်ႇတေလႆႈမၵ်းမၼ်ႈ **Column Size** ဝႆႉတႃႇသေႇ တွၼ်ႈတႃႇႁႂ်ႈ Compiler ၼပ်ႉဢၢၼ်ႇ Memory Address လႆႈမႅၼ်ႈၶႃႈ။

```c
void printMatrix(int arr[][3], int rows) { 
    // လူဝ်ႇသႂ်ႇမၢႆ '3' (Column) ဝႆႉတႃႇသေႇ
}
```

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `float findMaxMark(int marks[], int n)`။
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇသူင်ႇသဵၼ်ႈမၢႆမၢႆၶႅတ်းလုၵ်ႈႁဵၼ်းတင်းႁွင်ႉၶဝ်ႈၵႂႃႇ၊ Function ၼႆႉတေၵႂႃႇႁႃတူဝ်ဢၼ်သုင်သုတ်းသေ `return` ၽွၼ်းလႆႈမႃးပၼ်ၸဝ်ႈၵဝ်ႇၶႃႈယဝ်ႉ။
* ၼႆႉၸွႆႈႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ "ယืดႇယုၼ်ႇ" ၵွပ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈတင်း Array ဢၼ်မီး 10 ၵေႃႉ ဢမ်ႇၼၼ် 1,000 ၵေႃႉၵေႃႈလႆႈၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Function `int sumArray(int arr[], int n)` ဢၼ်တေၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉတင်းသဵင်ႈၼႂ်း Array သေ `return` ၽွၼ်းလႆႈမၼ်းမႃး။
2.  ၸၢမ်းတႅမ်ႈ Function `void doubleElements(int arr[], int n)` ဢၼ်တေဢဝ်ၵူႈတူဝ်ၼႂ်း Array မႃး "ပုၼ်းသွင်" (Multiply by 2) သေ ၵူတ်ႇထတ်းတူၺ်းၼႂ်း `main()` ဝႃႈ Array တူဝ်တေႉမၼ်းလႅၵ်ႈလၢႆႈၸွမ်းႁိုဝ်ဢမ်ႇၸွမ်း။
3.  ၵွပ်ႈသင်ႁဝ်းသမ်ႉဢမ်ႇလႆႈၸႂ်ႉ `&` မိူဝ်ႈသူင်ႇ Array ၵႂႃႇၸူး Function (မိူၼ်ၼင်ႇ `myFunc(arr)`) ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ၵွပ်ႈၸိုဝ်ႈ Array မၼ်းပဵၼ် **Address** ႁင်းၵူၺ်းမၼ်းယူႇယဝ်ႉ ၸွမ်းၼင်ႇလွင်ႈ **Array Decay** ၼၼ်ႉၶႃႈဢေႃႈ)။

---