# Lesson 36: C-Style Strings vs. std::string: The Evolution

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++၊ ႁဝ်းၸၢင်ႈသိမ်းတူဝ်လိၵ်ႈ (Text) လႆႈသွင်လၢႆးၶႃႈ။ 
လၢႆးၼိုင်ႈပဵၼ် လၢႆးပၢၼ်ၵဝ်ႇ ဢၼ်ပႃးမႃးတီႈ ၽႃႇသႃႇ C၊ လႄႈ လၢႆးၼိုင်ႈသမ်ႉ ပဵၼ်လၢႆးပၢၼ်မႂ်ႇ ဢၼ်မႃးၸွမ်း C++ Standard Library ၶႃႈ။

---

### 1. C-Style Strings (ပၢၼ်ၵဝ်ႇ)
C-Style String ၼႆႉ တႄႉတႄႉမၼ်းပဵၼ် **"Array ၶွင်တူဝ်လိၵ်ႈ (char)"** ဢၼ်သုတ်းလူၺ်ႈ တူဝ်ၼပ်ႉလပ်ႉ **`\0`** (Null Terminator) ၶႃႈ။
* **Syntax**: `char name[] = "Sai Mao";`
* **လွင်ႈယၢပ်ႇ**: Size မၼ်းတေလႆႈမီးပိူင်ႈတၢႆ၊ ႁဝ်းဢဝ်တူဝ် `+` မႃးသိုပ်ႇလိၵ်ႈဢမ်ႇလႆႈ၊ လႄႈ ၵုမ်းထိင်း Memory ယၢပ်ႇၶႃႈ။



---

### 2. std::string (ပၢၼ်မႂ်ႇ)
ၼႆႉပဵၼ် **Class** ဢၼ် C++ သၢင်ႈမႃး ႁႂ်ႈႁဝ်းၸႂ်ႉတိုဝ်းလိၵ်ႈ (Text) လႆႈငၢႆႈမိူၼ်ၼင်ႇ Variable ပိုၼ်ႉထၢၼ်ၶႃႈ။
* **Syntax**: `std::string name = "Sai Mao";`
* **လွင်ႈလီ**: Size မၼ်းယိုတ်းလႆႈ ႁူတ်းလႆႈ (Dynamic)၊ ၸႂ်ႉ `+` သိုပ်ႇလိၵ်ႈလႆႈ၊ လႄႈ မီး Function တင်းၼမ် တႃႇၸွႆႈထႅမ်ၶႃႈ။



---

### 3. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း)

| Feature | C-Style String (`char[]`) | Modern `std::string` |
| :--- |:--------------------------| :--- |
| **Memory** | Fixed Size (ပိူင်ႈတၢႆ)    | Dynamic Size (ယိုတ်းလႆႈ) |
| **Ending** | လူဝ်ႇလႆႈမီး `\0` တီႈသုတ်း | ၵုမ်းထိင်းပၼ်ႁင်းၵူၺ်း |
| **Concatenation** | ၸႂ်ႉ `strcat()` (ယၢပ်ႇ)   | ၸႂ်ႉ `+` (ငၢႆႈ) |
| **Safety** | ၸၢင်ႈမီး Buffer Overflow  | လွတ်ႈၽေးလိူဝ် (Safe) |

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string> // လူဝ်ႇပႃးဢၼ်ၼႆႉ တႃႇ std::string

int main() {
    // C-Style String
    char oldWay[] = "Hello"; 
    
    // std::string
    std::string newWay = "World";
    
    // ၵၢၼ်သိုပ်ႇလိၵ်ႈ
    std::string message = oldWay; // ပိၼ်ႇ C-style ပဵၼ် std::string
    message += " " + newWay;      // သိုပ်ႇလိၵ်ႈငၢႆႈငၢႆႈ
    
    std::cout << message << std::endl; // Hello World
    
    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **C-Style String**: ပဵၼ် Array ၶွင် `char` သုတ်းလူၺ်ႈ `\0`။
* **`std::string`**: ပဵၼ်လၢႆးၸႂ်ႉလိၵ်ႈ ဢၼ်ငၢႆႈ လႄႈ လွတ်ႈၽေး (Standard in C++)။
* ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၶႅမ်ႇပၢၼ်မႂ်ႇ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`std::string`** ပဵၼ်ပိူင်လူင်ၶႃႈ။

---