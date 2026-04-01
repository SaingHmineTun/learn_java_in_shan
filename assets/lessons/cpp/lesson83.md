# Lesson 83: Standard Exceptions and Best Practices

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++ မီး Library ဢၼ်ႁွင်ႉဝႃႈ `<stdexcept>` ဢၼ်မီး Class တွၼ်ႈတႃႇၸတ်းၵၢၼ် Error လၢႆလၢႆမဵဝ်းဝႆႉပၼ်ယဝ်ႉ။ 
ၵၢၼ်ၸႂ်ႉ Standard Exceptions ၼႆႉ ၸွႆႈႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း "လူငၢႆႈ" တႃႇ Programmer တၢင်ႇၵေႃႉ 
ၵွပ်ႈမၼ်းပဵၼ် လၵ်းၸဵင် ဢၼ်ၵူၼ်းၵူႈၵေႃႉႁူႉၵၼ်ၶႃႈ။

---

### 1. Standard Exception Hierarchy
Exceptions တင်းမူတ်းၼႂ်း C++ သိုပ်ႇၸိူဝ်ႉ (Inherit) မႃးတီႈ Base Class ဢၼ်ၸိုဝ်ႈဝႃႈ **`std::exception`** ၶႃႈ။



**Exceptions ဢၼ်ၵႆႉၸႂ်ႉ:**
* **`std::runtime_error`**: ပၼ်ႁႃဢၼ်ပဵၼ်မိူဝ်ႈ Program တိုၵ်ႉ Run ယူႇ (မိူၼ်ၼင်ႇ ၼပ်ႉသွၼ်ႇၽိတ်း)။
* **`std::out_of_range`**: မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Index ၶွင် Vector ဢမ်ႇၼၼ် String ဢၼ်ဢမ်ႇမီး။
* **`std::invalid_argument`**: မိူဝ်ႈသူင်ႇ Argument ဢၼ်ဢမ်ႇထုၵ်ႇမႅၼ်ႈ ၶဝ်ႈၵႂႃႇၼႂ်း Function။
* **`std::bad_alloc`**: မိူဝ်ႈ Memory (RAM) တဵမ် သေ `new` ႁဵတ်းၵၢၼ်ဢမ်ႇလႆႈ။

---

### 2. ၵၢၼ်ၸႂ်ႉ `what()` Method
Standard Exception ၵူႈတူဝ် မီး Method ဢၼ်ၸိုဝ်ႈဝႃႈ **`.what()`** ဢၼ်တေသူင်ႇလိၵ်ႈ (String) ဢွၵ်ႇမႃးၶႃႈ။

```cpp
#include <iostream>
#include <vector>
#include <stdexcept> // လူဝ်ႇပႃး Library ၼႆႉ

int main() {
    std::vector<int> numbers = {1, 2, 3};

    try {
        // ႁွင်ႉၸႂ်ႉ Index ဢၼ်ဢမ်ႇမီး (Error!)
        std::cout << numbers.at(10) << std::endl; 
    } 
    catch (const std::out_of_range& e) {
        std::cerr << "Exception caught: " << e.what() << std::endl;
    }
    catch (const std::exception& e) {
        // ႁပ်ႉ Error တၢင်ႇမဵဝ်း ဢၼ်သိုပ်ႇၸိူဝ်ႉမႃးတီႈ std::exception
        std::cerr << "General exception: " << e.what() << std::endl;
    }

    return 0;
}
```

---

### 3. Best Practices (ပၵ်းယၢမ်ႇလီ)
တႃႇတေၸႂ်ႉ Exception ႁႂ်ႈမီးၽွၼ်းလီ (Efficiency) သုတ်းၼၼ်ႉ လူဝ်ႇဝႆႉသတိၸိူင်ႉၼႆၶႃႈ:

1.  **Catch by Const Reference**: ၸႂ်ႉ `const std::exception& e` တႃႇႁႄႉၵင်ႈၵၢၼ် Copy Object ဢၼ်ဢမ်ႇလူဝ်ႇ လႄႈ ႁႄႉၵင်ႈ Object Slicing။
2.  **Specific to General**: ဝႆႉ `catch` ဢၼ်တႅတ်ႈတေႃး (Specific) ဝႆႉၽၢႆႇၼိူဝ်၊ သေဝႆႉ `catch` ဢၼ်ၵႂၢင်ႈ (General) မိူၼ်ၼင်ႇ `std::exception` ဝႆႉၽၢႆႇတႂ်ႈသုတ်း။
3.  **Don't use for Control Flow**: ယႃႇၸႂ်ႉ Try-Catch တႃႇတႅၼ်း `if-else` (မိူၼ်ၼင်ႇ ၵူတ်ႇထတ်းဝႃႈ User သႂ်ႇမၢႆၼပ်ႉမႅၼ်ႈႁႃႉ) ၵွပ်ႈမၼ်းႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ "ဢိူၼ်" (Slow) လိူဝ်ၵဝ်ႇ။
4.  **Exceptional Cases Only**: ၸႂ်ႉ Exceptions တႃႇပၼ်ႁႃဢၼ် "ဢမ်ႇမၢႆထိုင်" (Unexpected) တႄႉတႄႉၵူၺ်းၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Standard Exceptions**: မီးဝႆႉၼႂ်း `<stdexcept>` သေ သိုပ်ႇၸိူဝ်ႉမႃးတီႈ `std::exception`။
* **Hierarchy**: ၵၢၼ်ဝႆႉတွၼ်ႈ `catch` လမ်ႇလွင်ႈတႄႉတႄႉ တႃႇႁပ်ႉ Error ႁႂ်ႈမႅၼ်ႈတူဝ်။

---