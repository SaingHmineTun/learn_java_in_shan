# Lesson 37: Essential String Functions: Manipulation and Searching

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၵၢၼ်ၸႂ်ႉ `std::string` ၼၼ်ႉ မၼ်းဢမ်ႇၸႂ် တႃႇသိမ်းလိၵ်ႈ လၢႆလၢႆၵူၺ်းၶႃႈ။ 
မၼ်းယင်းမီး **"Functions"** (ၶေႃႈၵႂၢမ်းသင်ႇ) တင်းၼမ် ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်း ၵုမ်းထိင်းလိၵ်ႈလႆႈငၢႆႈငၢႆႈ။ 
မိူၼ်ၼင်ႇ - "လိၵ်ႈၼႆႉယၢဝ်းလၢႆတူဝ်?" ဢမ်ႇၼၼ် "မီးၶေႃႈၵႂၢမ်း 'Mao' ၼႂ်းၼႆႉႁႃႉ?" ၼႆယဝ်ႉ။

---

### 1. ၵၢၼ်ၼပ်ႉ လႄႈ ၵၢၼ်ၵူတ်ႇထတ်း (Information)
* **`.length()`** ဢမ်ႇၼၼ် **`.size()`**: ၸႂ်ႉတႃႇၼပ်ႉဝႃႈ မီးတူဝ်လိၵ်ႈလၢႆတူဝ် (ၼပ်ႉပႃး Space)။
* **`.empty()`**: ၸွႆႈၵူတ်ႇထတ်းဝႃႈ String ၼၼ်ႉ "ပဝ်ႇ" (Empty) ဝႆႉႁႃႉ? (Returns `true`/`false`)။

---

### 2. ၵၢၼ်မႄး လႄႈ ၵၢၼ်တတ်း (Manipulation)
* **`.append()`**: ၸႂ်ႉတႃႇသိုပ်ႇလိၵ်ႈ (မိူၼ်ၼင်ႇၸႂ်ႉ `+`)။
* **`.substr(pos, len)`**: ၸႂ်ႉတႃႇ **"တတ်းဢဝ်"** (Extract) လိၵ်ႈပွတ်းၼိုင်ႈ။ `pos` ပဵၼ်တီႈတႄႇ၊ `len` ပဵၼ်တၢင်းယၢဝ်းဢၼ်တေတတ်း။
* **`.replace(pos, len, str)`**: ၸႂ်ႉတႃႇ "လႅၵ်ႈလၢႆႈ" လိၵ်ႈတွၼ်ႈၼိုင်ႈ ႁႂ်ႈပဵၼ်လိၵ်ႈမႂ်ႇ။
* **`.clear()`**: ၸႂ်ႉတႃႇ "မွတ်ႇပႅတ်ႈ" (Erase) လိၵ်ႈတင်းမူတ်း ၼႂ်း Variable ၼၼ်ႉ။

---

### 3. ၵၢၼ်ႁႃလိၵ်ႈ (Searching)
* **`.find(str)`**: ၸႂ်ႉတႃႇႁႃဝႃႈ ၶေႃႈၵႂၢမ်းဢၼ်ႁဝ်းလူဝ်ႇၼၼ်ႉ ယူႇတီႈ **Index** ထီႉၵီႈ။
    * ပေႃးႁႃဢမ်ႇထူပ်း၊ မၼ်းတေသူင်ႇၵႃႈၶၼ် **`std::string::npos`** မႃးပၼ်ၶႃႈ။



---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

int main() {
    std::string text = "Learn C++ at TMK School";

    // 1. ၼပ်ႉတူဝ်လိၵ်ႈ
    std::cout << "Length: " << text.length() << std::endl;

    // 2. တတ်းဢဝ်လိၵ်ႈ (Sub-string)
    std::string schoolName = text.substr(13, 10); // တႄႇ Index 13, တတ်းဢဝ် 10 တူဝ်
    std::cout << "School: " << schoolName << std::endl; // TMK School

    // 3. ႁႃလိၵ်ႈ
    size_t position = text.find("TMK");
    if (position != std::string::npos) {
        std::cout << "Found 'TMK' at index: " << position << std::endl;
    }

    // 4. လႅၵ်ႈလိၵ်ႈ (Replace)
    text.replace(0, 5, "Study"); // လႅၵ်ႈ "Learn" ပဵၼ် "Study"
    std::cout << "Modified: " << text << std::endl;

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* ၸႂ်ႉ **`.length()`** တႃႇႁူႉတၢင်းယၢဝ်း။
* ၸႂ်ႉ **`.substr()`** တႃႇတတ်းပွတ်းလိၵ်ႈ။
* ၸႂ်ႉ **`.find()`** တႃႇႁႃတီႈယူႇ (Index) ၶွင်ၶေႃႈၵႂၢမ်း။
* **`std::string`** ၸွႆႈႁႂ်ႈႁဝ်း "ၵဝ်း" လိၵ်ႈလႆႈၸွမ်းၸႂ် ဢၼ်လၢႆးပၢၼ်ၵဝ်ႇ (`char[]`) ႁဵတ်းလႆႈယၢပ်ႇၼၼ်ႉၶႃႈ။

---