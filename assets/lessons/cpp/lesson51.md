# Lesson 51: The Address-of Operator (&): Finding where data lives

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++၊ Variable ၵူႈတူဝ် ဢၼ်ႁဝ်းသၢင်ႈမႃးၼၼ်ႉ မၼ်းလူဝ်ႇမီး "တီႈယူႇ" ၼႂ်း Computer Memory (RAM) ၶႃႈ။ 
မိူၼ်ၼင်ႇ ႁိူၼ်းၵူၼ်းႁဝ်း မီး "မၢႆႁိူၼ်း" (Address) ၼၼ်ႉယဝ်ႉ။ 
တႃႇတေႁႃဝႃႈ Variable တူဝ်ၼိုင်ႈ ယူႇဝႆႉတီႈလႂ် ၼႂ်း Memory တႄႉတႄႉၼၼ်ႉ ႁဝ်းၸႂ်ႉတူဝ် **`&`** ဢၼ်ႁွင်ႉဝႃႈ **Address-of Operator** ၶႃႈ။

---

### 1. Memory Address ပဵၼ်သင်?
မိူဝ်ႈႁဝ်းပိုၼ်ၽၢဝ်ႇ (Declare) Variable တူဝ်ၼိုင်ႈ:
```cpp
int age = 25;
```
1.  **Name**: `age` (ၸိုဝ်ႈဢၼ်ႁဝ်းႁွင်ႉ)
2.  **Value**: `25` (ၶေႃႈမုၼ်းဢၼ်သိမ်းဝႆႉ)
3.  **Address**: တီႈယူႇတႄႉတႄႉၼႂ်း RAM (မိူၼ်ၼင်ႇ `0x7ffd53`)



---

### 2. ၵၢၼ်ၸႂ်ႉတူဝ် `&` (Address-of Operator)
မိူဝ်ႈႁဝ်းဝႆႉတူဝ် **`&`** ၽၢႆႇၼႃႈၸိုဝ်ႈ Variable၊ C++ တေဢမ်ႇသူင်ႇ "ၵႃႈၶၼ်" (Value) မၼ်းမႃးပၼ်၊ မၼ်းတေသူင်ႇ **"မၢႆတီႈယူႇ"** (Hexadecimal address) ၶွင်မၼ်းမႃးပၼ်ၶႃႈ။

```cpp
#include <iostream>

int main() {
    int score = 100;
    double price = 19.99;

    std::cout << "Value: " << score << std::endl;
    std::cout << "Memory Address: " << &score << std::endl; // ၼေမၢႆတီႈယူႇ

    std::cout << "Price Address: " << &price << std::endl;

    return 0;
}
```
**ၽွၼ်းဢွၵ်ႇ (Example Output):**
`Memory Address: 0x61ff0c`
*(မၢႆၼႆႉ တေလႅၵ်ႈလၢႆႈၵႂႃႇ ၵူႈပွၵ်ႈဢၼ်ပိုတ်ႇ Program ၵွပ်ႈ RAM တေလိူၵ်ႈတီႈယူႇပဝ်ႇပၼ် ႁင်းၵူၺ်းၶႃႈ)*

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈႁူႉ Address?
1.  **Efficiency**: ၽိူဝ်တေ "ၵေႃႇပီႇ" ၶေႃႈမုၼ်းယႂ်ႇယႂ်ႇ၊ ႁဝ်းသူင်ႇ "မၢႆတီႈယူႇ" (Address) မၼ်းၵႂႃႇ ႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇဝႆး။
2.  **Hardware Interaction**: တႃႇၵုမ်းထိင်း Sensors ဢမ်ႇၼၼ် Hardware တၢင်ႇၸိူဝ်း ဢၼ်ယူႇတီႈ Memory Address။
3.  **Pointers**: ၼႆႉပဵၼ် ပိုၼ်ႉထၢၼ်ဢွၼ်တၢင်းသုတ်း တႃႇတေႁဵၼ်းလွင်ႈ **Pointers** ၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* Variable ၵူႈတူဝ် မီးတီႈယူႇၼႂ်း RAM ဢၼ်ႁွင်ႉဝႃႈ **Memory Address**။
* **`&` (Address-of)**: ၸႂ်ႉတႃႇႁႃ "မၢႆတီႈယူႇ" ၶွင် Variable။
* Address ပဵၼ်တူဝ်ၼပ်ႉ **Hexadecimal** (မိူၼ်ၼင်ႇ 0x...) ဢၼ် CPU ၸႂ်ႉတႃႇႁႃၶေႃႈမုၼ်းၶႃႈ။

---