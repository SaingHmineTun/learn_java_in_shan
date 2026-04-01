# Lesson 81: Understanding Exceptions: Why We Need Try and Catch

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၶႅမ်ႇ၊ မၼ်းတေမီး Error မဵဝ်း ဢၼ်ပဵၼ်မိူဝ်ႈ Run ယူႇ (Runtime Errors) မိူၼ်ၼင်ႇ:
* ၵၢၼ်ဢဝ်တူဝ်ၼပ်ႉ **ၸႅၵ်ႇလူၺ်ႈသုၼ်ႇ (Division by zero)**။
* ၵၢၼ်ႁႃ File ဢၼ်ဢမ်ႇမီးယူႇတႄႉ။
* Memory တဵမ် (Out of memory)။
  သင်ႁဝ်းဢမ်ႇၸတ်းၵၢၼ်ပၼ်ႁႃၸိူဝ်းၼႆႉ၊ ပရူဝ်ႇၶႅမ်ႇႁဝ်းတေ **Crash (ၵိုတ်းၵမ်းလဵဝ်)** သေၼေ Error ဢၼ် User ဢမ်ႇပွင်ႇၸႂ်ၶႃႈ။ တီႈၼႆႈ **Exception Handling** ၸင်ႇမႃးၸွႆႈၶႃႈယဝ်ႉ။

---

### 1. Exception Handling ပဵၼ်သင်?
**Exception Handling** ပဵၼ်ၵၢၼ် ဢၼ်ၸွႆႈႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း "ၵႄႈၶႆ" (Handle) မိူဝ်ႈထူပ်းပၼ်ႁႃ သေယဝ်ႉ သိုပ်ႇႁဵတ်းၵၢၼ်လႆႈလူၺ်ႈ ဢမ်ႇလူဝ်ႇပိၵ်ႉပရူဝ်ႇၶႅမ်ႇပႅတ်ႈၶႃႈ။

ႁဝ်းၸႂ်ႉ Keyword ပိူင်လူင် 3 တူဝ်:
1.  **`try`**: မၢႆတွၼ်ႈ Block ၶွင်ၶူတ်ႉဢၼ်ႁဝ်းဝူၼ်ႉဝႃႈ "ၸၢင်ႈမီးပၼ်ႁႃ"။
2.  **`throw`**: မိူဝ်ႈထူပ်းပၼ်ႁႃ၊ ႁဝ်းတေ "ပိုတ်ႈ" (Throw) Error ၼၼ်ႉဢွၵ်ႇမႃး။
3.  **`catch`**: ပဵၼ်တွၼ်ႈဢၼ် "ႁပ်ႉ" (Catch) Error ၼၼ်ႉမႃးသေ ၵႄႈလိတ်ႈပၼ်ႁႃၶႃႈ။



---

### 2. ၵၢၼ်တႅမ်ႈ Code (Syntax)

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႅၵ်ႇတူဝ်ၼပ်ႉ (Division) ဢၼ်ႁႄႉၵင်ႈ ၵၢၼ်ၸႅၵ်ႇလူၺ်ႈသုၼ်ၶႃႈ:

```cpp
#include <iostream>

int main() {
    double numerator, denominator, result;

    std::cout << "Enter numerator: ";
    std::cin >> numerator;
    std::cout << "Enter denominator: ";
    std::cin >> denominator;

    try {
        // 1. ၵူတ်ႇထတ်းပၼ်ႁႃ
        if (denominator == 0) {
            throw "Error: Division by zero is not allowed!"; // ပိုတ်ႈ Error ဢွၵ်ႇမႃး
        }
        
        result = numerator / denominator;
        std::cout << "Result: " << result << std::endl;
    } 
    catch (const char* msg) {
        // 2. ႁပ်ႉ Error မႃးၸတ်းၵၢၼ်
        std::cerr << msg << std::endl;
        std::cout << "Please try again with a non-zero number." << std::endl;
    }

    std::cout << "Program continues to run..." << std::endl;
    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Why use it?)
1.  **Separation of Logic**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႅၵ်ႇ "ၶူတ်ႉႁဵတ်းၵၢၼ်တႄႉတႄႉ" လႄႈ "ၶူတ်ႉၸတ်းၵၢၼ် Error" ဢွၵ်ႇၼွၵ်ႈၵၼ် ႁႂ်ႈလူငၢႆႈ။
2.  **Robustness**: ႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇမီး "လွင်ႈမၼ်ႈၵိုမ်း"၊ ဢမ်ႇလူႉ (Crash) ငၢႆႈငၢႆႈ မိူဝ်ႈ User သႂ်ႇၶေႃႈမုၼ်းၽိတ်း။
3.  **Error Propagation**: သင်ပၼ်ႁႃၵိူတ်ႇၼႂ်း Function ဢွၼ်ႇဢၼ်ၼိုင်ႈ၊ ႁဝ်းၸၢင်ႈသူင်ႇ (Throw) ပၼ်ႁႃၼၼ်ႉ ၶိုၼ်ႈမႃးၸူး Function ဢၼ်လူင် (မိူၼ်ၼင်ႇ `main`) တႃႇၵႄႈပၼ်ႁႃၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`try`**: "ၸမ်းႁဵတ်းတူၺ်း" ၶူတ်ႉဢၼ်ၸၢင်ႈမီး Error။
* **`throw`**: "ပိုတ်ႈ" ပၼ်ႁႃဢွၵ်ႇမႃး။
* **`catch`**: "ႁပ်ႉ" ပၼ်ႁႃသေ ၵႄႈလိတ်ႈပၼ် ႁႂ်ႈပရူဝ်ႇၶႅမ်ႇသိုပ်ႇၵႂႃႇလႆႈ။
* မၼ်းၸွႆႈႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း "ၵႅၼ်ႇ" လႄႈ "လွတ်ႈၽေး" လိူဝ်ၵဝ်ႇၶႃႈ။

---
