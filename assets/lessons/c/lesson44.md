## Lesson 44: Function Pointers: Code as Data

### 1. Function Pointer ၼႆႉ ပဵၼ်သင်?
ယူဝ်းယူဝ်း Pointer ၸี้ၵႂႃႇၸူး **Data** (int, char)၊ ၵူၺ်းၵႃႈ **Function Pointer** သမ်ႉၸี้ၵႂႃႇၸူး **Code** (Executable instructions) ဢၼ်ယူႇၼႂ်း Memory ၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းၵဵပ်း Function ဝႆႉၼႂ်း Variable သေ "ႁွင်ႉၸႂ်ႉ" (Call) မၼ်းမိူဝ်ႈလႂ်ၵေႃႈလႆႈၶႃႈ။



### 2. ပိူင်တႅမ်ႈ (Syntax)
ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Function Pointer တေလႆႈမီး **Return Type** လႄႈ **Parameters** မိူၼ်တင်း Function တူဝ်တေႉမၼ်းၶႃႈ။

**Syntax:** `return_type (*pointer_name)(parameter_types);`

```c
int add(int a, int b) { return a + b; }

int main() {
    // ပိုၼ်ၽၢဝ်ႇ Pointer ဢၼ်ႁပ်ႉ int 2 တူဝ် သေ return int
    int (*ptr)(int, int); 

    ptr = &add; // ဢဝ် Address ၶွင် Function 'add' မႃးသႂ်ႇ (ဢမ်ႇသႂ်ႇ & ၵေႃႈလႆႈ)

    int result = ptr(10, 20); // ႁွင်ႉၸႂ်ႉ Function လူၺ်ႈ Pointer
    printf("Result: %d", result);
}
```

### 3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ? (The Power of Callbacks)
ၼႆႉပဵၼ်လွင်ႈဢၼ် "ၶိုၵ်ႉ" သုတ်းၶႃႈ။ ႁဝ်းၸၢင်ႈသူင်ႇ Function ၼိုင်ႈဢၼ် ၵႂႃႇပဵၼ် **Parameter** ၼႂ်းထႅင်ႈ Function ၼိုင်ႈဢၼ်လႆႈ (ႁွင်ႉဝႃႈ **Callback**)။

* **Example:** ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function တႃႇ "ၸႅၵ်ႇသဵၼ်ႈမၢႆ" (Sort)။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈပၼ် User လိူၵ်ႈလၢႆးၸႅၵ်ႇ (Ascending ဢမ်ႇၼၼ် Descending) လူၺ်ႈၵၢၼ်သူင်ႇ Function Pointer ၵႂႃႇပဵၼ် Parameter ၶႃႈဢေႃႈ။



### 4. ၵၢၼ်ၸႂ်ႉ `typedef` ႁႂ်ႈလူငၢႆႈ
ၵွပ်ႈ Syntax မၼ်းလူတေႃႉယၢပ်ႇ ႁဝ်းၸႂ်ႉ `typedef` (Lesson 34) မႃးၸွႆႈလႆႈၶႃႈ။

```c
typedef int (*MathFunc)(int, int);

MathFunc op = add; // လူငၢႆႈလိူဝ်ၼမ်ၶႃႈ
```

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager**၊ မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ "Menu System":
* တႅၼ်းၵၢၼ်ဢၼ်တေၸႂ်ႉ `switch-case` ယၢဝ်းယၢဝ်း တွၼ်ႈတႃႇလိူၵ်ႈ Menu၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ **Array of Function Pointers** ၶႃႈ။
* မိူဝ်ႈ User တဵၵ်းမၢႆ `1` (Add Student)၊ ပူဝ်ႇၵရႅမ်ႇတေၵႂႃႇႁွင်ႉ `menu_functions[1]()` ၵမ်းလဵဝ်။
* ၼႆႉႁဵတ်းႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ "လႅတ်း" (Dynamic) လႄႈ မႄးငၢႆႈလိူဝ်ၵဝ်ႇၼမ်ၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Function `sayHello()` လႄႈ `sayGoodbye()`။ ယဝ်ႉသၢင်ႈ Function Pointer သေ ၸၢမ်းႁွင်ႉၸႂ်ႉတင်းသွင်ဢၼ်တူၺ်းၶႃႈ။
2. တႅမ်ႈ Function `wrapper(void (*ptr)())` ဢၼ်ႁပ်ႉ Function တၢင်ႇဢၼ်မႃး "ႁွင်ႉၸႂ်ႉ" ၼႂ်းတူဝ်မၼ်း။
3. သင်ႁဝ်းထွၼ် "ဝူင်းလဵပ်ႈ" ဢွၵ်ႇပဵၼ် `int *ptr(int, int);` ၼႆ မၼ်းတေပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ၼၼ်ႉတေပဵၼ် Function ဢၼ် `return` ပၼ် `int pointer` တႅၼ်းၶႃႈဢေႃႈ)။

---