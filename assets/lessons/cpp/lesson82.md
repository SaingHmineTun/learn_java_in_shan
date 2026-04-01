# Lesson 82: Throwing Exceptions and Creating Custom Error Classes

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 81, ႁဝ်း "ပိုတ်ႈ" (Throw) ၵႂၢမ်းလိၵ်ႈ (String) ဢွၵ်ႇမႃးပဝ်ႇပဝ်ႇ။ 
ၵူၺ်းၵႃႈ ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၶႅမ်ႇလူင်ၼၼ်ႉ ႁဝ်းၵႆႉၶႂ်ႈ "ပိုတ်ႈ" ပဵၼ် **Object** ဢွၵ်ႇမႃး လိူဝ်သေလိၵ်ႈပဝ်ႇပဝ်ႇ 
ၵွပ်ႈဝႃႈ Object ၸၢင်ႈသိမ်းၶေႃႈမုၼ်းလႆႈၼမ်လိူဝ် (မိူၼ်ၼင်ႇ Error Code, Time, လႄႈ Message) ၶႃႈ။

---

### 1. ၵၢၼ်သၢင်ႈ Custom Error Class
ႁဝ်းၸၢင်ႈသၢင်ႈ Class ပဝ်ႇပဝ်ႇတူဝ်ၼိုင်ႈ တႃႇၸႂ်ႉပဵၼ်တူဝ်တႅၼ်း Error ၶွင်ႁဝ်းၶႃႈ။

```cpp
#include <iostream>
#include <string>

// သၢင်ႈ Class တႃႇၸတ်းၵၢၼ် Error ႁင်းၵူၺ်း
class MathError {
public:
    std::string message;
    int errorCode;

    MathError(std::string msg, int code) : message(msg), errorCode(code) {}
};
```

---

### 2. ၵၢၼ်ၸႂ်ႉ 'throw' တင်း Object
မိူဝ်ႈႁဝ်းပိုတ်ႈ (Throw)၊ ႁဝ်းတေပိုတ်ႈဢဝ် Object ၶွင် Class ၼၼ်ႉဢွၵ်ႇမႃးၶႃႈ။

```cpp
double divide(double a, double b) {
    if (b == 0) {
        // ပိုတ်ႈ Object ၶွင် MathError ဢွၵ်ႇမႃး
        throw MathError("Division by zero detected!", 404);
    }
    return a / b;
}
```

---

### 3. ၵၢၼ် 'catch' လူၺ်ႈ Reference
မိူဝ်ႈႁပ်ႉ (Catch)၊ ႁဝ်းၵႆႉႁပ်ႉပဵၼ် **Reference (`&`)** တႃႇႁႂ်ႈမၼ်းဝႆး လႄႈ ႁႄႉၵင်ႈပၼ်ႁႃ Object Slicing ၶႃႈ။



```cpp
int main() {
    try {
        divide(10, 0);
    } 
    catch (const MathError& e) { // ႁပ်ႉ Object မႃး
        std::cerr << "Caught Math Error!" << std::endl;
        std::cerr << "Message: " << e.message << std::endl;
        std::cerr << "Code: " << e.errorCode << std::endl;
    }
    return 0;
}
```

---

### 4. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Custom Class?
1.  **Multiple Catch Blocks**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈမီး `catch` လၢႆလၢႆဢၼ် တႃႇႁပ်ႉ Error ဢၼ်ပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ `MathError`, `FileError`, `NetworkError`)။
2.  **Detailed Information**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈသူင်ႇ ၶေႃႈမုၼ်း ၵႂႃႇၸွမ်း Error ၼၼ်ႉလႆႈ။
3.  **Inheritance**: ႁဝ်းၸၢင်ႈသိုပ်ႇၸိူဝ်ႉလုၵ်ႉတီႈ `std::exception` (ဢၼ်တေႁဵၼ်းၼႂ်း Lesson ၼႃႈ) တႃႇႁႂ်ႈမၼ်းပဵၼ် Standard ၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Custom Error Class**: ၸွႆႈႁႂ်ႈႁဝ်းပိုတ်ႈ Error ဢၼ်မီးၶေႃႈမုၼ်းၼမ်လိူဝ် လိၵ်ႈပဝ်ႇပဝ်ႇ။
* **Throw Object**: ၸႂ်ႉ `throw ClassName(args);`။
* **Catch by Reference**: ၸႂ်ႉ `catch (const ClassName& e)` တႃႇလွင်ႈဝႆး လႄႈ လွတ်ႈၽေး။

---