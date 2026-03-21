## Lesson 54: Recursion: The Function That Calls Itself

### 1. Recursion ပဵၼ်သင်?
ႁႂ်ႈဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး "ၵွၵ်းမႅတ်ႉသျႃႇ" (Matryoshka doll) ဢၼ်မီးတူဝ်ဢွၼ်ႇဝႆႉၼႂ်းတူဝ်ယႂ်ႇၼၼ်ႉၶႃႈ။ ၵၢၼ်ပိုတ်ႇၵွၵ်းၼိုင်ႈဢၼ် ၵေႃႈမိူၼ်တင်းၵၢၼ်ႁွင်ႉ Function ၼိုင်ႈၵမ်း၊ သေပိုတ်ႇၵႂႃႇတိၵ်းတိၵ်း တေႃႇပေႃးထိုင်တူဝ်ဢွၼ်ႇသုတ်းမၼ်းၶႃႈယဝ်ႉ။



### 2. မၢႆမီႈလမ်ႇလွင်ႈ 2 ဢၼ်
တွၼ်ႈတႃႇတေတႅမ်ႈ Recursive Function လႆႈ၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇမီး:
1.  **Base Case (တီႈၵိုတ်း):** တွၼ်ႈဢၼ်သင်ႇႁႂ်ႈ Function ၵိုတ်းၵၢၼ်ႁွင်ႉတူဝ်မၼ်းၶိုၼ်း (သင်ဢမ်ႇမီး မၼ်းတေပၼ်ႇတေႃႇၸူဝ်ႈ သေႁဵတ်းႁႂ်ႈ Stack Overflow ၶႃႈ)။
2.  **Recursive Case (တွၼ်ႈသိုပ်ႇ):** တွၼ်ႈဢၼ် Function ႁွင်ႉတူဝ်မၼ်းၶိုၼ်း လူၺ်ႈၵၢၼ်လူတ်းယွမ်းပၼ်ႁႃ ႁႂ်ႈဢွၼ်ႇလူင်းတိၵ်းတိၵ်း။

### 3. တူဝ်ယၢင်ႇ: Calculating Factorial ($n!$)
Factorial ၶွင် $5$ ($5!$) ၵေႃႈပဵၼ် $5 \times 4 \times 3 \times 2 \times 1$ ၶႃႈ။
ႁဝ်းၸၢင်ႈတႅမ်ႈလႆႈဝႃႈ: $Fact(n) = n \times Fact(n-1)$

```c
#include <stdio.h>

int factorial(int n) {
    // 1. Base Case: သင် n ပဵၼ် 1 ႁႂ်ႈၵိုတ်းသေ return 1
    if (n <= 1) {
        return 1;
    }
    // 2. Recursive Case: ႁွင်ႉတူဝ်မၼ်းၶိုၼ်း
    return n * factorial(n - 1);
}

int main() {
    int num = 5;
    printf("Factorial of %d is %d", num, factorial(num));
    return 0;
}
```



### 4. Recursion vs. Iteration (Loop)
* **Loop (`for`, `while`):** ႁဵတ်းၵၢၼ်ၽႂ်းလိူဝ် လႄႈ သဵင်ႈ Memory ဢွၼ်ႇလိူဝ်။
* **Recursion:** တႅမ်ႈ Code ငၢႆႈလိူဝ် လႄႈ လူငၢႆႈလိူဝ် (တွၼ်ႈတႃႇပၼ်ႁႃ မိူၼ်ၼင်ႇ Trees, Graphs ဢမ်ႇၼၼ် Sorting ၸၼ်ႉသုင်)။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈ "ႁႃၸိုဝ်ႈလုၵ်ႈႁဵၼ်း" ၼႂ်းသဵၼ်ႈမၢႆဢၼ်ယႂ်ႇတေႉတေႉ လူၺ်ႈလၢႆး **Binary Search**၊ ၵၢၼ်ၸႂ်ႉ **Recursion** တေႁဵတ်းႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ "လႅတ်း" သေ တႅမ်ႈငၢႆႈလိူဝ်ၵၢၼ်ၸႂ်ႉ Loop ယၢဝ်းယၢဝ်းၶႃႈယဝ်ႉ။
* မၼ်းမိူၼ်တင်းၵၢၼ်ၸႅၵ်ႇပၼ်ႁႃယႂ်ႇယႂ်ႇ ႁႂ်ႈပဵၼ်ပွတ်းဢွၼ်ႇသေ ၵႄႈၵႂႃႇၼိုင်ႈတွၼ်ႈယဝ်ႉ ၼိုင်ႈတွၼ်ႈၶႃႈဢေႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Recursive Function တွၼ်ႈတႃႇၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉတႄႇဢဝ် $1$ တေႃႇပေႃးထိုင် $n$ (မိူၼ်ၼင်ႇ $sum(5) = 5+4+3+2+1$)။
2.  ၸၢမ်းတႅမ်ႈ Function `void countdown(int n)` ဢၼ်တေၼႄမၢႆ $5, 4, 3, 2, 1$ သေ ၼႄၶေႃႈၵႂၢမ်း "Blast Off!" လူၺ်ႈၸႂ်ႉ Recursion။
3.  သင်ႁဝ်းလိုမ်းတႅမ်ႈ **Base Case** ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေပဵၼ် **Infinite Recursion** သေ ႁဵတ်းႁႂ်ႈ Memory ၼႂ်း Stack တဵမ်၊ ယဝ်ႉပူဝ်ႇၵရႅမ်ႇတေ Crash လူၺ်ႈ Error ဢၼ်ႁွင်ႉဝႃႈ **Stack Overflow** ၼၼ်ႉၶႃႈဢေႃႈ)။

---