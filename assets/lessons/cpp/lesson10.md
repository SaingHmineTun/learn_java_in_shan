# Lesson 10: Floating-Point Types: float, double, and long double

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းလူဝ်ႇသိမ်း တူဝ်ၼပ်ႉဢၼ်မီး မၢႆၸုတ်ႇ (Decimal points) မိူၼ်ၼင်ႇ ၵႃႈၶၼ် Pi (3.14159) ဢမ်ႇၼၼ် ၵႃႈၶၼ်ငိုၼ်း (Price) ၼၼ်ႉ 
ႁဝ်းတေၸႂ်ႉ `int` ဢမ်ႇလႆႈယဝ်ႉၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Floating-Point Types** ဢၼ်ၸၢင်ႈသိမ်းလႆႈ တူဝ်ၼပ်ႉဢၼ်မီး ၸုတ်ႇ ၼၼ်ႉယဝ်ႉ။

---

### 1. မဵဝ်းတူဝ်ၼပ်ႉတူဝ်ၼႅတ်း (Floating-Point Types)
ၼႂ်း C++ မီးယူႇ 3 မဵဝ်းလူင် ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်တီႈ **Memory Size** လႄႈ **Precision** (လွင်ႈမႅၼ်ႈ) ၶႃႈ:

| Data Type | Memory Size | Precision (မႅၼ်ႈလီထိုင်လၢႆတူဝ်) |
| :--- | :--- |:--------------------------------|
| **`float`** | 4 Bytes | ~7 တူဝ်                         |
| **`double`** | 8 Bytes | ~15 တူဝ်                        |
| **`long double`** | 12-16 Bytes | မႅၼ်ႈလိူဝ် `double`             |



---

### 2. လွင်ႈပႅၵ်ႇပိူင်ႈ (Precision Difference)
* **`float`**: ၸႂ်ႉတႃႇတူဝ်ၼပ်ႉဢွၼ်ႇ ဢၼ်ဢမ်ႇလူဝ်ႇမႅၼ်ႈႁႅင်း (မိူၼ်ၼင်ႇ ၵဵမ်း)။ မိူဝ်ႈတႅမ်ႈ `float` တေလႆႈသႂ်ႇတူဝ် `f` တီႈသုတ်းမၼ်း: `float price = 10.5f;`
* **`double`**: ပဵၼ် **Default** ၼႂ်း C++။ မၼ်းမႅၼ်ႈလိူဝ် `float` ၼိုင်ႈပုၼ်ႈ။ ၵမ်ႈၼမ်ႁဝ်းတေၸႂ်ႉ `double` ပဵၼ်ပိုၼ်ႉထၢၼ်ၶႃႈ။
* **`long double`**: ၸႂ်ႉၼႂ်းၵၢၼ် ပၢႆးသၢႆႈ (Science) ဢမ်ႇၼၼ် ၵၢၼ်ၼပ်ႉသွၼ်ႇ ဢၼ်တေလႆႈမႅၼ်ႈ (တေဢမ်ႇလႆႈၽိတ်းသေဢိတ်း) ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)
ၸၢမ်းတႅမ်ႈတူၺ်း တွၼ်ႈတႃႇတူၺ်း လွင်ႈပႅၵ်ႇပိူင်ႈ Precision မၼ်းၶႃႈ:

```cpp
#include <iostream>
#include <iomanip> // တႃႇၸႂ်ႉ setprecision

int main() {
    float myFloat = 1.123456789f;
    double myDouble = 1.1234567890123456789;

    // ၼေလိၵ်ႈဢွၵ်ႇ ႁႂ်ႈၼေတူဝ်ၼႅတ်း 20 တူဝ်
    std::cout << std::setprecision(20); 
    
    std::cout << "Float value:  " << myFloat << std::endl;
    std::cout << "Double value: " << myDouble << std::endl;

    return 0;
}
```
*မၢႆတွင်း:* ၸဝ်ႈၵဝ်ႇတေလႆႈႁၼ်ဝႃႈ `float` မၼ်းတေတႅတ်ႈ (Cut off) ၶေႃႈမုၼ်းဝႆးလိူဝ် `double` ၶႃႈ။

---

### 4. ပၢႆးသၢႆႈ (Scientific Notation)
ႁဝ်းယင်းၸၢင်ႈၸႂ်ႉတူဝ် `e` တႃႇၼေ တူဝ်ၼပ်ႉဢၼ်ယႂ်ႇတႄႉတႄႉ ဢမ်ႇၼၼ် လဵၵ်ႉတႄႉတႄႉ ၶႃႈ:
```cpp
double distance = 3.0e8; // 3.0 x 10^8
double small = 1.5e-4;   // 0.00015
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* လိူၵ်ႈၸႂ်ႉ **`double`** ပဵၼ်ပိုၼ်ႉထၢၼ် တႃႇတူဝ်ၼပ်ႉဢၼ်မီး တူဝ်ၸုတ်ႇ။
* လိူၵ်ႈၸႂ်ႉ **`float`** ပေႃးလူဝ်ႇသိမ်း Memory (ၵူၺ်းၵႃႈ လွင်ႈမႅၼ်ႈတေယွမ်း)။
* သႂ်ႇတူဝ် `f` တီႈသုတ်းတူဝ်ၼပ်ႉ `float` သေႇသေႇ။

---