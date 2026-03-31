# Lesson 7.54: Pointer Arithmetic: Navigating Memory Blocks

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
Pointer ၼႆႉ မၼ်းဢမ်ႇၸႂ်ႈ Variable ဢၼ်သိမ်းတူဝ်ၼပ်ႉၶႃႈ၊ မၼ်းသိမ်း Address ပၼ်ၵူၺ်းၶႃႈ။ 
ၵွပ်ႈၼၼ် မိူဝ်ႈႁဝ်းဢဝ်တူဝ်ၼပ်ႉမႃး "လေႃး" (`+`) ဢမ်ႇၼၼ် "ထွၼ်" (`-`) ၸွမ်း Pointer ၼၼ်ႉ၊ 
မၼ်းတေဢမ်ႇလေႃးၵႃႈၶၼ် (Value) ၶႃႈ၊ မၼ်းတေ **"ယၢင်ႈ" (Jump)** ၵႂႃႇၸူး Address ထႅင်ႈဢၼ်ၼိုင်ႈ ၸွမ်းၼင်ႇသႅၼ်း (Size) ၶွင် Data Type ၼၼ်ႉၶႃႈယဝ်ႉ။

---

### 1. Pointer Arithmetic ပဵၼ်သင်?
မိူဝ်ႈႁဝ်းၸႂ်ႉ `++`, `--`, `+`, `-` ၸွမ်း Pointer:
* **`p + 1`**: မၼ်းဢမ်ႇၸႂ်ႈဝႃႈ လေႃး 1 Byte ၶႃႈ။ မၼ်းတေယၢင်ႈၵႂႃႇၸူး **"ႁွင်ႈထႅင်ႈဢၼ်ၼိုင်ႈ"** ၼႂ်း Memory။
* **တူဝ်ယၢင်ႇ**: ပေႃးပဵၼ် `int` (4 Bytes)၊ ၵၢၼ်ႁဵတ်း `p + 1` တေယၢင်ႈၵႂႃႇ 4 Bytes ၵမ်းလဵဝ်ၶႃႈ။



---

### 2. Pointer လႄႈ Array (The Special Connection)
ၼႂ်း C++၊ **ၸိုဝ်ႈ Array** တႄႉတႄႉမၼ်းပဵၼ် **Pointer** ဢၼ်ၸီႉဝႆႉတီႈ ႁွင်ႈဢွၼ်တၢင်းသုတ်း (`index 0`) ၼၼ်ႉၶႃႈယဝ်ႉ။ 
ၵွပ်ႈၼၼ် ႁဝ်းၸၢင်ႈၸႂ်ႉ Pointer Arithmetic တႃႇလူၶေႃႈမုၼ်းၼႂ်း Array လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    int arr[3] = {10, 20, 30};
    int* ptr = arr; // ptr ၸီႉဝႆႉတီႈ arr[0]

    std::cout << "First element: " << *ptr << std::endl;      // 10

    ptr++; // ယၢင်ႈၵႂႃႇထႅင်ႈ 1 ႁွင်ႈ (4 Bytes ၼႂ်း memory)
    std::cout << "Second element: " << *ptr << std::endl;     // 20

    ptr += 1; // ယၢင်ႈၵႂႃႇထႅင်ႈ 1 ႁွင်ႈ
    std::cout << "Third element: " << *ptr << std::endl;      // 30

    // ၵၢၼ်ယွမ်း (Moving back)
    ptr -= 2; 
    std::cout << "Back to first: " << *ptr << std::endl;      // 10

    return 0;
}
```

---

### 4. လွင်ႈလၢၵ်ႇလၢႆး ဢၼ်တေလႆႈတွၼ်ႈမၢႆ
* **Subtraction (`p2 - p1`)**: ပေႃးႁဝ်းဢဝ် Pointer သွင်ဢၼ် ဢၼ်ၸီႉဝႆႉၼႂ်း Array လဵဝ်ၵၼ် မႃးယွမ်းၵၼ်၊ မၼ်းတေသူင်ႇ "တူဝ်ၼပ်ႉႁွင်ႈ" (Number of elements) ဢၼ်ယူႇဝူင်ႇၵၢင်မၼ်းၼၼ်ႉ မႃးပၼ်ၶႃႈ။
* **Illegal Operations**: ႁဝ်း **ဢမ်ႇၸၢင်ႈ** ဢဝ် Pointer သွင်ဢၼ်မႃး "လေႃး" (`+`) ၵၼ်၊ ဢမ်ႇၼၼ် ဢဝ်မႃး "ၵုၼ်း" (`*`) ၵၼ်လႆႈၶႃႈ (မၼ်းဢမ်ႇမီးတီႈပွင်ႇၼႂ်း memory)။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* Pointer Arithmetic ၸွႆႈႁႂ်ႈႁဝ်း **"ယၢင်ႈ"** ၵႂႃႇၼႂ်း Memory Block။
* ၸိုဝ်ႈ Array ပဵၼ် Constant Pointer ဢၼ်ၸီႉဝႆႉတီႈ Address ဢွၼ်တၢင်းသုတ်း။

---