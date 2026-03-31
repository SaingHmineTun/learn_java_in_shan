# Lesson 44: Return Types and the Purpose of Void

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
Function ၼႆႉ မိူၼ်ၼင်ႇ "ၶိူင်ႈၸၢၵ်ႈဢွၼ်ႇ" တူဝ်ၼိုင်ႈၶႃႈ။ 
မၢင်ပွၵ်ႈလႂ် ႁဝ်းသူင်ႇၶေႃႈမုၼ်းသႂ်ႇၼႂ်းမၼ်း သေႁဝ်းၶႂ်ႈလႆႈ "ၽွၼ်းဢွၵ်ႇ" (Result) မၼ်းၶိုၼ်း။ 
ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈသမ်ႉ ႁဝ်းၵူၺ်းၶႂ်ႈႁႂ်ႈမၼ်း "ႁဵတ်းၵၢၼ်" သေမဵဝ်းမဵဝ်း (မိူၼ်ၼင်ႇ ၼေလိၵ်ႈ) သေ ဢမ်ႇလူဝ်ႇသူင်ႇၵႃႈၶၼ်သင်ၶိုၼ်းၶႃႈ။ 
ၼႆႉပဵၼ်တီႈဢၼ် **Return Types** လႄႈ **Void** မႃးမီးၼႃႈၵၢၼ်ယဝ်ႉ။

---

### 1. Return Types (ၵၢၼ်သူင်ႇၵႃႈၶၼ်ၶိုၼ်း)
မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ဢၼ်ၼပ်ႉသွၼ်ႇသင်သေမဵဝ်းမဵဝ်း၊ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Keyword **`return`** တႃႇသူင်ႇၵႃႈၶၼ်ၼၼ်ႉ ဢွၵ်ႇမႃးတီႈ `main()` ၶႃႈ။

* **Example Types**: `int`, `double`, `string`, `bool`.

```cpp
int getLuckyNumber() {
    return 7; // သူင်ႇ 7 ဢွၵ်ႇၵႂႃႇပၼ် တူဝ်ဢၼ်ႁွင်ႉၸႂ်ႉ
}

int main() {
    int myNum = getLuckyNumber(); // 7 တေမႃးယူႇၼႂ်း myNum
    return 0;
}
```

---

### 2. The Purpose of `void` (မိူဝ်ႈဢမ်ႇလူဝ်ႇသူင်ႇသင်ၶိုၼ်း)
**`void`** ပွင်ႇၸႂ်ဝႃႈ "ပဝ်ႇ" (Empty) ၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Function ၼၼ်ႉ **"ႁဵတ်းၵၢၼ်ၵူၺ်း"** သေ ဢမ်ႇလူဝ်ႇသူင်ႇၵႃႈၶၼ် (Value) သင်ပၼ်ၶိုၼ်းတီႈ `main()` ၶႃႈ။

* **ၵၢၼ်ၸႂ်ႉတိုဝ်း**: ၸႂ်ႉတႃႇ Print ႁၢင်ႈ၊ ၼေလိၵ်ႈ၊ ဢမ်ႇၼၼ် Update ၶေႃႈမုၼ်း။
* **မၢႆတွင်း**: ၼႂ်း `void` function ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `return;` ၵေႃႈလႆႈ (ဢမ်ႇၼၼ် တႅမ်ႈ `return;` ပဝ်ႇပဝ်ႇ တႃႇႁႂ်ႈမၼ်းၵိုတ်းၵၢၼ်ႁဵတ်းၵမ်းလဵဝ်ၵေႃႈလႆႈ)။



---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

// Function ဢၼ်သူင်ႇၵႃႈၶၼ် (int)
int calculateArea(int length, int width) {
    return length * width;
}

// Function ဢၼ်ဢမ်ႇသူင်ႇၵႃႈၶၼ် (void)
void printReport(int area) {
    std::cout << "----------------------" << std::endl;
    std::cout << "The calculated area is: " << area << std::endl;
    std::cout << "----------------------" << std::endl;
}

int main() {
    int a = 10, b = 5;
    
    // 1. ႁွင်ႉၸႂ်ႉ int function သေသိုပ်ႇဢဝ်ၵႃႈၶၼ်မၼ်း
    int result = calculateArea(a, b);
    
    // 2. ႁွင်ႉၸႂ်ႉ void function တႃႇၼေလိၵ်ႈ
    printReport(result);
    
    return 0;
}
```

---

### 4. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း)

| Feature | Return-type Function | Void Function                    |
| :--- | :--- |:---------------------------------|
| **Output** | သူင်ႇ Value (7, "Hi", true) | ဢမ်ႇသူင်ႇ Value                  |
| **Keyword** | တေလႆႈပႃး `return ...;` | ဢမ်ႇလူဝ်ႇ `return` (သႂ်ႇၵေႃႈလႆႈ) |
| **Usage** | ၸႂ်ႉၼႂ်း Math, Logic | ၸႂ်ႉၼႂ်း UI, Printing, Updates   |
| **Example** | `int`, `double`, `string` | `void`                           |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Return Type**: လၢတ်ႈၼေဝႃႈ ၵႃႈၶၼ်မဵဝ်းလႂ် တေသူင်ႇဢွၵ်ႇမႃး။
* **`return`**: ပဵၼ်တူဝ် "သူင်ႇၶွင်" ဢွၵ်ႇတီႈ Function။
* **`void`**: ၸႂ်ႉမိူဝ်ႈႁဝ်းၵူၺ်းၶႂ်ႈႁႂ်ႈမၼ်း "ႁဵတ်းၵၢၼ်" သေမဵဝ်းမဵဝ်း ၵူၺ်းၶႃႈ။

---