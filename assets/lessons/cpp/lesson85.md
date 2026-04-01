# Lesson 85: Project: The Safe Math Tool

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ႁဝ်းတေသၢင်ႈ **Template Class** ဢၼ်ၸိုဝ်ႈဝႃႈ `SafeMath`။ မၼ်းတေၸၢင်ႈၼပ်ႉသွၼ်ႇလႆႈတင်း `int`, `float`, လႄႈ `double`။ 
ဢၼ်လမ်ႇလွင်ႈသုတ်းပဵၼ် မၼ်းတေၵူတ်ႇထတ်း Error မိူဝ်ႈ "ၸႅၵ်ႇလူၺ်ႈသုၼ်" (Division by zero) သေ "ပိုတ်ႈ" (Throw) Exception ဢွၵ်ႇမႃး ႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်းဢမ်ႇ Crash ၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **Template Class**: ၸႂ်ႉ `template <typename T>` တႃႇႁပ်ႉလႆႈၵူႈတူဝ်ၼပ်ႉ။
2.  **Exception Handling**: သင်တူဝ်ၸႅၵ်ႇ (Denominator) ပဵၼ် `0`၊ ႁႂ်ႈပိုတ်ႈ `std::runtime_error`။
3.  **Methods**: မီး Function `add()`, `subtract()`, `multiply()`, လႄႈ `divide()`။
4.  **Main Function**: ၸႂ်ႉ `try-catch` block တႃႇၸၢမ်းၸႂ်ႉ ၵၢၼ်ၸႅၵ်ႇလူၺ်ႈသုၼ်။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>
#include <stdexcept> // တႃႇၸႂ်ႉ runtime_error

template <typename T>
class SafeMath {
public:
    static T add(T a, T b) { return a + b; }
    static T subtract(T a, T b) { return a - b; }
    static T multiply(T a, T b) { return a * b; }

    static T divide(T a, T b) {
        if (b == 0) {
            // ပိုတ်ႈ Standard Exception ဢွၵ်ႇမႃး
            throw std::runtime_error("Math Error: Attempted to divide by zero!");
        }
        return a / b;
    }
};

int main() {
    // ၸၢမ်းၸႂ်ႉတင်း double
    double x = 10.5, y = 0;

    try {
        std::cout << "Adding: " << SafeMath<double>::add(x, 5.5) << std::endl;
        std::cout << "Subtracting: " << SafeMath<double>::subtract(x, 2.5) << std::endl;
        
        std::cout << "Attempting to divide by zero..." << std::endl;
        std::cout << "Result: " << SafeMath<double>::divide(x, y) << std::endl;
    } 
    catch (const std::runtime_error& e) {
        // ႁပ်ႉ Error မႃးၼေပၼ် User ႁႂ်ႈပွင်ႇၸႂ်ငၢႆႈ
        std::cerr << "[CRITICAL ERROR] " << e.what() << std::endl;
    }

    // ၸၢမ်းၸႂ်ႉတင်း int
    try {
        int a = 20, b = 4;
        std::cout << "\nInteger Division (20/4): " << SafeMath<int>::divide(a, b) << std::endl;
    } 
    catch (const std::exception& e) {
        std::cerr << e.what() << std::endl;
    }

    std::cout << "\n[System] Program finished safely." << std::endl;
    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Generic Power**: ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Logic ၵၢၼ်ၼပ်ႉသွၼ်ႇၵမ်းလဵဝ်ၵူၺ်း၊ ၵူၺ်းၵႃႈ ၸႂ်ႉလႆႈတင်း `int` လႄႈ `double` (လူၺ်ႈ **Templates** )။
* **Safety First**: ပရူဝ်ႇၶႅမ်ႇတေဢမ်ႇ Crash ယွၼ်ႉၵၢၼ်ၸႅၵ်ႇလူၺ်ႈသုၼ် (လူၺ်ႈ **Exceptions** )။
* **Standard Compliance**: ၵၢၼ်ၸႂ်ႉ `std::runtime_error` ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမီးပၵ်းယၢမ်ႇၸိူင်ႉၼင်ႇ Programmer ၵူႈမိူင်းၸႂ်ႉတိုဝ်းၵၼ်ၶႃႈ။

---