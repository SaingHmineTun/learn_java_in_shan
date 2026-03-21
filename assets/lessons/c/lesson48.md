## Lesson 48: Call by Reference: Giving Functions 'Real' Power

### 1. Call by Reference ပဵၼ်သင်?
ၼႆႉပဵၼ်ၵၢၼ်သူင်ႇ **Memory Address** ၶွင် Variable ၼၼ်ႉၵႂႃႇၸူး Function လူၺ်ႈၸႂ်ႉ **Pointer**။ မၼ်းၸွႆႈႁႂ်ႈ Function ၼၼ်ႉ "မႄး" (Modify) Variable တူဝ်တေႉ ဢၼ်ယူႇၼႂ်း `main()` လႆႈၵမ်းလဵဝ်ၶႃႈ။



### 2. ပိူင်တႅမ်ႈ (Syntax)
* **Function Definition:** တေလႆႈႁပ်ႉဢဝ်လူၺ်ႈ **Pointer (`*`)**။
* **Function Call:** တေလႆႈသူင်ႇ **Address (`&`)** ၵႂႃႇ။

**တူဝ်ယၢင်ႇ:** ၵၢၼ်ထႅမ်မၢႆၶႅတ်း (Bonus Marks) ၸူးလုၵ်ႈႁဵၼ်း
```c
#include <stdio.h>

// Function ၼႆႉႁပ်ႉဢဝ် 'Address' ၶွင် mark
void giveBonus(int *markPtr) { 
    *markPtr = *markPtr + 5; // မႄးလႅၵ်ႈလၢႆႈ Value တီႈ Address ၼၼ်ႉၵမ်းလဵဝ်
}

int main() {
    int studentMark = 35;
    
    // သူင်ႇ Address (&) ၵႂႃႇ
    giveBonus(&studentMark); 
    
    printf("Mark after bonus: %d", studentMark); 
    // Output: 40 (လႅၵ်ႈလၢႆႈယဝ်ႉ! ၵွပ်ႈမၼ်းသူင်ႇ Address တူဝ်တေႉၵႂႃႇ)
    
    return 0;
}
```

### 3. တူဝ်ယၢင်ႇ Classic: The Swap Function
ၵၢၼ် "လႅၵ်ႈမၢႆ" Variable သွင်တူဝ် (Swap) ၼႆႉ သင်ဢမ်ႇၸႂ်ႉ Pointer မၼ်းတေႁဵတ်းဢမ်ႇလႆႈၶႃႈ။

```c
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
```



### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ?
1. **Efficiency (ၽႂ်းလႅတ်း):** မိူဝ်ႈသူင်ႇၶေႃႈမုၼ်းဢၼ်ယႂ်ႇယႂ်ႇ (မိူၼ်ၼင်ႇ **Struct** ၶွင်လုၵ်ႈႁဵၼ်း)၊ ၵၢၼ်သူင်ႇ Pointer (4-8 Bytes) တေၽႂ်းသေ ၵၢၼ်ၵေႃႇပီႇၶေႃႈမုၼ်းတင်းသဵင်ႈ ၼၼ်ႉၶႃႈ။
2. **Multiple Returns:** Function ၼိုင်ႈဢၼ် `return` လႆႈၵူၺ်း 1 Value။ ၵူၺ်းၵႃႈ သင်ႁဝ်းသူင်ႇ Pointer ၵႂႃႇ 3 တူဝ်၊ ႁဝ်းၸၢင်ႈႁႂ်ႈ Function ၼၼ်ႉ "မႄး" ပၼ်ၶေႃႈမုၼ်း 3 တူဝ် ၼႂ်းၵမ်းလဵဝ်ၵၼ်လႆႈၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* မိူဝ်ႈ User ၶႂ်ႈမႄး "ၸိုဝ်ႈ" ဢမ်ႇၼၼ် "မၢႆၶႅတ်း" လုၵ်ႈႁဵၼ်း၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ **Call by Reference** ၶႃႈ။
* ၸဝ်ႈၵဝ်ႇသူင်ႇ Address ၶွင်လုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉ ၵႂႃႇၼႂ်း Function `updateStudent()` သေ ႁႂ်ႈမၼ်းမႄးပၼ်ၵမ်းလဵဝ်။ ၼႆႉတေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ ၸႂ်ႉ Memory လႆႈၵႅၼ်ႇၶႅင်သုတ်းၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Function `squareIt(int *n)` ဢၼ်တေဢဝ်တူဝ်ၼပ်ႉၼၼ်ႉ မႃး "ပုၼ်းတူဝ်မၼ်းၶိုၼ်း" (n * n) သေ လႅၵ်ႈလၢႆႈ Variable တူဝ်တေႉ။
2. တႅမ်ႈ Function `resetMark(int *m)` ဢၼ်တေလႅၵ်ႈလၢႆႈမၢႆၶႅတ်း ႁႂ်ႈပဵၼ် `0` တႃႇသေႇ။
3. သင်ႁဝ်းသူင်ႇ `&studentMark` ၵႂႃႇ ၵူၺ်းၵႃႈ Function သမ်ႉႁပ်ႉလူၺ်ႈ `int mark` (ဢမ်ႇသႂ်ႇ `*`) ၼႆ Compiler တေဝႃႈၸိူင်ႉႁိုဝ်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေ Error ၶႃႈ၊ ၵွပ်ႈမၼ်းဢမ်ႇပွင်ႇၸႂ်ဝႃႈ တေဢဝ် Address ၵႂႃႇသႂ်ႇၼႂ်း Variable ယူဝ်းယူဝ်း ၸိူင်ႉႁိူဝ်ၶႃႈ)။

---