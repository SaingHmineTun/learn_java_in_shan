## Lesson 56: Variable Arguments: Creating Your Own printf

### 1. Variadic Function ပဵၼ်သင်?
ယူဝ်းယူဝ်း သင်ႁဝ်းတႅမ်ႈ Function ႁပ်ႉ `int a, int b` ၼႆ ႁဝ်းသူင်ႇလႆႈၵူၺ်း 2 တူဝ်။ ၵူၺ်းၵႃႈ **Variadic Function** သမ်ႉ ၸၢင်ႈႁပ်ႉလႆႈ 1 တူဝ်၊ 10 တူဝ်၊ ဢမ်ႇၼၼ် 100 တူဝ်ၵေႃႈလႆႈ ၼႂ်း Function လဵဝ်ၵၼ်ၶႃႈ။

ႁဝ်းၸႂ်ႉတူဝ်မၢႆ **`...` (Ellipsis)** တွၼ်ႈတႃႇပိုၼ်ၽၢဝ်ႇၶႃႈယဝ်ႉ။



### 2. ၶိူင်ႈမိုဝ်း ဢၼ်လူဝ်ႇၸႂ်ႉ (`<stdarg.h>`)
တွၼ်ႈတႃႇတေၸတ်းၵၢၼ် Parameter ဢၼ်ၼမ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Macros 4 ဢၼ် ၵႃႈတီႈ Library `stdarg.h` ၶႃႈ:
1.  **`va_list`:** ပဵၼ် Pointer ဢၼ်တေၵႂႃႇၵဵပ်းသဵၼ်ႈမၢႆ Arguments တင်းသဵင်ႈ။
2.  **`va_start`:** ၵၢၼ်တႄႇပၼ်ႇ (Initialize) သဵၼ်ႈမၢႆ Arguments။
3.  **`va_arg`:** ၵၢၼ် "ထွၼ်ဢဝ်" Value ၼိုင်ႈတူဝ်ယဝ်ႉ ၼိုင်ႈတူဝ် (လူဝ်ႇမၵ်းမၼ်ႈ Type မၼ်းၸွမ်း)။
4.  **`va_end`:** ၵၢၼ်ပိတ်း (Clean up) သဵၼ်ႈမၢႆ Arguments။

### 3. တူဝ်ယၢင်ႇ: ၶိူင်ႈၼပ်ႉႁူမ်ႈ (Summing Machine)
မႃးႁဝ်းမႃးသၢင်ႈ Function ဢၼ်ၸၢင်ႈၼပ်ႉႁူမ်ႈတူဝ်ၼပ်ႉ လၢႆတူဝ်ၵေႃႈလႆႈၶႃႈ။

```c
#include <stdio.h>
#include <stdarg.h> // လူဝ်ႇသႂ်ႇ Header ၼႆႉတႃႇသေႇ

int sumAll(int count, ...) { // 'count' ပဵၼ်တူဝ်မၵ်းမၼ်ႈဝႃႈတေသူင်ႇမႃးလၢႆတူဝ်
    va_list args;
    int sum = 0;

    va_start(args, count); // တႄႇပၼ်ႇတီႈ 'count'

    for (int i = 0; i < count; i++) {
        sum += va_arg(args, int); // ထွၼ်ဢဝ် int ၼိုင်ႈတူဝ်
    }

    va_end(args); // ပိတ်းၵၢၼ်ၸႂ်ႉ Arguments
    return sum;
}

int main() {
    printf("Sum of 3 numbers: %d\n", sumAll(3, 10, 20, 30));
    printf("Sum of 5 numbers: %d\n", sumAll(5, 1, 2, 3, 4, 5));
    return 0;
}
```



### 4. လၢႆးသၢင်ႈ `printf` ႁင်းၵူၺ်း (Custom Printf)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ `printf("%d %s", 10, "Mao")`၊ မၼ်းတေတူၺ်း **Format String** (`"%d %s"`) တႃႇႁူႉဝႃႈ တေလႆႈထွၼ်ဢဝ် `int` သေယဝ်ႉ ၸင်ႇထွၼ်ဢဝ် `string` ၶႃႈယဝ်ႉ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `void logActivity(char *format, ...)`။
* ၼႆႉတေၸွႆႈႁႂ်ႈၸဝ်ႈၵဝ်ႇ တႅမ်ႈ "Log" (လွင်ႈႁဵတ်းသၢင်ႈ) ၶဝ်ႈၼႂ်း File ဢမ်ႇၼၼ် Screen လႆႈငၢႆႈငၢႆႈ မိူၼ်ၼင်ႇ:
  `logActivity("Added student %s with ID %d", name, id);`
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ "Professional" သုင်သုတ်း ၵွပ်ႈမၼ်းမီးဢဵၼ်ႁႅင်း တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလၢႆလၢႆမဵဝ်း ၼႂ်း Function လဵဝ်ၵၼ်ၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Function `double averageAll(int count, ...)` ဢၼ်တေၼပ်ႉဢၢၼ်ႇ "မၢႆၵၢင်" (Average) ၶွင်တူဝ်ၼပ်ႉဢၼ်သူင်ႇၵႂႃႇ။
2.  သၢင်ႈ Function `void printAllStrings(int count, ...)` ဢၼ်တေၼပ်ႉဢၢၼ်ႇ လႄႈ ၼႄ "ၸိုဝ်ႈ" (String) လၢႆလၢႆဢၼ်ဢွၵ်ႇမႃး။
3.  သင်ႁဝ်းသူင်ႇ Parameter ဢွၼ်ႇလိူဝ် (ဢမ်ႇၼၼ် ၼမ်လိူဝ်) တူဝ်ၼပ်ႉ `count` ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေႁဵတ်းႁႂ်ႈ ပူဝ်ႇၵရႅမ်ႇၼပ်ႉဢၢၼ်ႇ Memory ၽိတ်းသေ ၼႄ "Garbage Value" ဢွၵ်ႇမႃး ဢမ်ႇၼၼ် Crash လႆႈၶႃႈဢေႃႈ)။

---