
# Lesson 13: Constants and the constexpr Keyword

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းလူဝ်ႇသိမ်းၶေႃႈမုၼ်း ဢၼ်တေလႆႈ "ၼိမ်" ဝႆႉယူႇသေႇသေႇ မိူၼ်ၼင်ႇ ၵႃႈၶၼ် Pi (3.14) ဢမ်ႇၼၼ် ၶေႃႈမုၼ်းဢၼ်မၼ်ႈၵိုမ်း (Fixed values)။ 
ပေႃးႁဝ်းၸႂ်ႉ Variable ပိုၼ်ႉထၢၼ်၊ ႁဝ်းၸၢင်ႈၵႂႃႇလႅၵ်ႈလၢႆႈမၼ်းလူၺ်ႈ ဢမ်ႇတၢင်ႈၸႂ် (By mistake) ၶႃႈ။ 
တႃႇတေႁႄႉၵင်ႈလွင်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **Constants** ၶႃႈ။

---

### 1. ၵၢၼ်ၸႂ်ႉတိုဝ်း `const`
`const` (Constant) ၼႆႉ ပဵၼ် Keyword ဢၼ်ႁဝ်းသႂ်ႇၼႃႈ Variable တႃႇလၢတ်ႈၼေ Compiler ဝႃႈ "Variable ၼႆႉ သိမ်းယဝ်ႉ တေဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈ (Read-only) ယဝ်ႉၼႃ"။

* **Syntax**: `const data_type name = value;`

```cpp
const double PI = 3.14159;
const int DAYS_IN_WEEK = 7;

// PI = 3.14; // ERROR: မၼ်းတေဢမ်ႇပၼ်လႅၵ်ႈလၢႆႈၶႃႈ
```
**မၢႆတွင်း:** ၵမ်ႈၼမ် Programmer ၶဝ်တႅမ်ႈၸိုဝ်ႈ Constant လူၺ်ႈ **UPPERCASE** (လိၵ်ႈတူဝ်ယႂ်ႇ) တႃႇႁႂ်ႈႁူႉၸၵ်းငၢႆႈၶႃႈ။

---

### 2. Modern C++: `constexpr`
`constexpr` (Constant Expression) ၼႆႉ ပဵၼ် Keyword ဢၼ်မႃးၼႂ်း C++11။ မၼ်းမီးဢဵၼ်ႁႅင်းလိူဝ် `const` ၶႃႈ။
* **လွင်ႈပႅၵ်ႇပိူင်ႈ**: `constexpr` တေၼပ်ႉသွၼ်ႇၵႃႈၶၼ်မၼ်း မိူဝ်ႈ **Compile-time** (မိူဝ်ႈတိုၵ်ႉပိၼ်ႇၶူတ်ႉ)။
* မၼ်းႁဵတ်းႁႂ်ႈ ပရူဝ်ႇၶႅမ်ႇႁဝ်း **ဝႆးလိူဝ်ၵဝ်ႇ** ၵွပ်ႈ CPU ဢမ်ႇလႆႈၼပ်ႉသွၼ်ႇ ၼႂ်းၶိင်ႇႁဵတ်းၵၢၼ် (Runtime) ၶႃႈ။

```cpp
constexpr int secondsInHour = 60 * 60; // ၼပ်ႉသွၼ်ႇယဝ်ႉတူဝ်ႈ မိူဝ်ႈ Compile
```



---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Constants?
1.  **Safety (လွင်ႈလွတ်ႈၽေး)**: ႁႄႉၵင်ႈလွင်ႈလႅၵ်ႈလၢႆႈ ၶေႃႈမုၼ်းဢၼ်မႅၼ်ႈယဝ်ႉ။
2.  **Readability (လူငၢႆႈ)**: ၸႂ်ႉၸိုဝ်ႈ `PI` ၼႆႉ မၼ်းလူငၢႆႈလိူဝ် တူဝ်ၼပ်ႉ `3.14159` ဢၼ်ယူႇလၢႆလၢႆၶႃႈ။
3.  **Optimization**: ၸွႆႈႁႂ်ႈ Compiler ႁဵတ်းၵၢၼ်လႆႈ ၶႅၼ်ႇလိူဝ်ၵဝ်ႇ။

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    const double TAX_RATE = 0.05; // 5% Tax
    double price = 100.0;
    
    double total = price + (price * TAX_RATE);
    
    std::cout << "Total Price: " << total << std::endl;
    
    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`const`**: Variable ဢၼ်လူလႆႈၵူၺ်း (Read-only)။
* **`constexpr`**: Constant ဢၼ်ၼပ်ႉသွၼ်ႇယဝ်ႉတူဝ်ႈ မိူဝ်ႈ Compile-time (ဝႆးလိူဝ်)။
* ၸႂ်ႉလိၵ်ႈတူဝ်ယႂ်ႇ (UPPERCASE) တႃႇပၼ်ၸိုဝ်ႈ Constants။

---
