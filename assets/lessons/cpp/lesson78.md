# Lesson 78: Generic Programming: Introduction to Function Templates

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ဝူၼ်ႉတူၺ်းၶႃႈ၊ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသၢင်ႈ Function `myMax()` တႃႇႁႃတူဝ်ၼပ်ႉဢၼ်ယႂ်ႇသုတ်း။
* သင်ၸဝ်ႈၵဝ်ႇတေႁႃတႃႇ `int`, ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈ Function တူဝ်ၼိုင်ႈ။
* သင်ၸဝ်ႈၵဝ်ႇတေႁႃတႃႇ `double`, ၸဝ်ႈၵဝ်ႇၵေႃႈတေလႆႈတႅမ်ႈထႅင်ႈတူဝ်ၼိုင်ႈ (Function Overloading)။
  ၼႆႉႁဵတ်းႁႂ်ႈ Code ႁဝ်းၼမ်လိူဝ်ႁႅင်း။ **Templates** ၸင်ႇမႃးၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈ **"ပိူင်ငဝ်ႈ" (Pattern)** ဝႆႉၵမ်းလဵဝ် သေပၼ်ႁႂ်ႈ Compiler သၢင်ႈ Function တႄႉတႄႉပၼ်ႁင်းၵူၺ်း ၸွမ်းၼင်ႇ Data Type ဢၼ်ႁဝ်းသူင်ႇၵႂႃႇၶႃႈ။

---

### 1. Function Template ပဵၼ်သင်?
**Function Template** ပဵၼ် "Blueprint" တႃႇသၢင်ႈ Function။ 
မၼ်းၸႂ်ႉ **Placeholder** (တူဝ်တႅၼ်း) တႅၼ်းတီႈ Data Type တႄႉတႄႉၶႃႈ။

* **Keyword**: ႁဝ်းၸႂ်ႉ `template <typename T>` ဢမ်ႇၼၼ် `template <class T>`။
* **T**: ပဵၼ်ၸိုဝ်ႈ Placeholder ဢၼ်ႁဝ်းၵႆႉၸႂ်ႉ (ၸဝ်ႈၵဝ်ႇတေပၼ်ၸိုဝ်ႈသင်ၵေႃႈလႆႈ)။



---

### 2. ၵၢၼ်တႅမ်ႈ Code (Syntax)

```cpp
#include <iostream>
#include <string>

// 1. တႅမ်ႈ Template ဝႆႉၽၢႆႇၼႃႈ Function
template <typename T>
T myMax(T a, T b) {
    return (a > b) ? a : b;
}

int main() {
    // 2. ၸႂ်ႉတင်း int
    std::cout << "Max of 10, 20: " << myMax<int>(10, 20) << std::endl;

    // 3. ၸႂ်ႉတင်း double
    std::cout << "Max of 5.5, 2.2: " << myMax<double>(5.5, 2.2) << std::endl;

    // 4. ၸႂ်ႉတင်း string (C++ တေၼိူင်းၸွမ်း ASCII)
    std::cout << "Max of Apple, Orange: " << myMax<std::string>("Apple", "Orange") << std::endl;

    return 0;
}
```

---

### 3. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိူဝ်? (How it works)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇႁွင်ႉ `myMax<int>(10, 20)`, Compiler တေတူၺ်း Template ၸဝ်ႈၵဝ်ႇ သေယဝ်ႉ မၼ်းတေ "သၢင်ႈ" (Instantiate) Function တႄႉတႄႉ ဢၼ်လႅၵ်ႈ **T** ပဵၼ် **int** တင်းမူတ်းပၼ်ႁင်းၵူၺ်းၶႃႈ။ 
ၼႆႉႁွင်ႉဝႃႈ **Template Instantiation** ၶႃႈဢေႃႈ။



---

### 4. Template Deduction (ၵၢၼ်ႁႃ Type ႁင်းၵူၺ်း)
မၢင်ပွၵ်ႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ `<int>` ၵေႃႈလႆႈ။ Compiler တေတူၺ်း Arguments ဢၼ်ၸဝ်ႈၵဝ်ႇသူင်ႇၵႂႃႇ သေထတ်းသိၼ်ပၼ်ႁင်းၵူၺ်းၶႃႈ။
* `myMax(10, 20)` -> Compiler တေႁူႉဝႃႈပဵၼ် `int`။
* `myMax(3.14, 1.5)` -> Compiler တေႁူႉဝႃႈပဵၼ် `double`။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Generic Programming**: တႅမ်ႈ Code ဢၼ်ဢမ်ႇၸပ်းၸူး Data Type တူဝ်လႂ်တူဝ်ၼိုင်ႈ။
* **Templates**: ၸွႆႈယွမ်းၵၢၼ်တႅမ်ႈ Code သွၼ်ႉၵၼ် (Code Duplication)။
* **Flexibility**: Function တူဝ်လဵဝ် ၸႂ်ႉလႆႈတင်း `int`, `float`, `char`, `string` လႄႈ Objects ၸိူဝ်းဢၼ်မီး Operator `>` ၶႃႈ။

---