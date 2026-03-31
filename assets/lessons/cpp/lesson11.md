# Lesson 11: Characters and Booleans: char and bool

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ပရူဝ်ႇၶႅမ်ႇႁဝ်း ဢမ်ႇၸႂ်ႉတူဝ်ၼပ်ႉၵူၺ်းၶႃႈ။ 
ၵမ်ႈပႃႈၼမ် ႁဝ်းလူဝ်ႇသိမ်းတူဝ်လိၵ်ႈ (Characters) မိူၼ်ၼင်ႇ 'A', 'B' ဢမ်ႇၼၼ် လူဝ်ႇထတ်းသိၼ်ဝႃႈ လွင်ႈတၢင်းဢၼ်ၼိုင်ႈမၼ်း "မႅၼ်ႈ" (True) ႁႃႉ "ၽိတ်း" (False) ႁႃႉ ၼႆယဝ်ႉ။

---

### 1. တူဝ်လိၵ်ႈ (The `char` Type)
`char` ၸႂ်ႉတႃႇသိမ်း **တူဝ်လိၵ်ႈတူဝ်လဵဝ်** (Single character)။
* **Memory Size**: 1 Byte (8 bits).
* **Syntax**: တေလႆႈၸႂ်ႉ **Single quotes (' ')** သေႇသေႇ။

```cpp
char grade = 'A';
char symbol = '$';
```

**မၢႆတွင်း:** ၼႂ်းၶမ်ႇပိဝ်ႇတႃႇ `char` ၼႆႉ မၼ်းသိမ်းဝႆႉပဵၼ်တူဝ်ၼပ်ႉ (Integer) ဢၼ်ႁွင်ႉဝႃႈ **ASCII Code** ၶႃႈ။ တူဝ်ယၢင်ႇ - 'A' မီးၵႃႈၶၼ်ပဵၼ် 65။


---

### 2. ၸႂ်ႈ/ဢမ်ႇၸႂ်ႈ (The `bool` Type)
`bool` (Boolean) ၸႂ်ႉတႃႇသိမ်းၶေႃႈမုၼ်း ဢၼ်မီး 2 ပိူင်ၼႆႉၵူၺ်း။
* **Value**: `true` (မႅၼ်ႈ/ၸႂ်ႈ) ဢမ်ႇၼၼ် `false` (ၽိတ်း/ဢမ်ႇၸႂ်ႈ)။
* **Memory Size**: 1 Byte။

```cpp
bool isCodingFun = true;
bool isGameOver = false;
```

**ၼႂ်း C++:**
* `true` မီးၵႃႈၶၼ်ပဵၼ် **1**.
* `false` မီးၵႃႈၶၼ်ပဵၼ် **0**.

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    char initial = 'M';
    bool isShan = true;

    std::cout << "Initial: " << initial << std::endl;
    std::cout << "Is Shan: " << isShan << std::endl; // တေဢွၵ်ႇမႃးပဵၼ် 1

    // ၼေလိၵ်ႈဝႃႈ true/false တႅၼ်းတူဝ်ၼပ်ႉ
    std::cout << std::boolalpha; 
    std::cout << "Is Shan (Text): " << isShan << std::endl; // တေဢွၵ်ႇမႃးပဵၼ် true

    return 0;
}
```

---

### 4. Special Characters (Escape Sequences)
မီးတူဝ်လိၵ်ႈလၢၵ်ႇလၢႆး ဢၼ်ႁဝ်းတႅမ်ႈလူၺ်ႈၸႂ်ႉ `\` (Backslash) ၶႃႈ:
* `\n` : လူင်းထႅဝ်မႂ်ႇ (New line).
* `\t` : ဝၢႆႉၵႂႃႇ (Tab).
* `\'` : Single quote.
* `\"` : Double quote.

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`char`**: သိမ်းတူဝ်လိၵ်ႈတူဝ်လဵဝ် ၼႂ်း `' '`.
* **`bool`**: သိမ်းၵႃႈၶၼ် `true` (1) ဢမ်ႇၼၼ် `false` (0).
* **`std::boolalpha`**: ၸႂ်ႉတႃႇၼေလိၵ်ႈ true/false တႅၼ်းတူဝ်ၼပ်ႉ 1/0.

---