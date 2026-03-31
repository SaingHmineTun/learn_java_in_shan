# Lesson 31: Modern C++: Range-based For Loops

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း `for` loop ပိုၼ်ႉထၢၼ် (Traditional Loop)၊ ႁဝ်းလူဝ်ႇလႆႈၼပ်ႉတူဝ် Index `i` (0, 1, 2...) တႃႇၵႂႃႇဢဝ်ၶေႃႈမုၼ်းၼႂ်း Array ၶႃႈ။ 
ၵူၺ်းၵႃႈ ၼႂ်း Modern C++၊ မၼ်းမီးလၢႆးတႅမ်ႈ ဢၼ်ႁဝ်းဢမ်ႇလူဝ်ႇၼပ်ႉ `i` ယဝ်ႉ။ 
ႁဝ်းသင်ႇႁႂ်ႈမၼ်း "လူဢဝ်ၵူႈတူဝ်" ၼႂ်း Array ၼၼ်ႉလႆႈၵမ်းသိုဝ်ႈၶႃႈ။

---

### 1. ပိူင်သၢင်ႈ (Syntax) ၶွင် Range-based For
လၢႆးတႅမ်ႈမၼ်းၵႅပ်ႈသေ လူငၢႆႈတႄႉတႄႉၶႃႈ:

```cpp
for (declaration : range) {
    // ႁဵတ်းၵၢၼ်ၸွမ်း ၶေႃႈမုၼ်းၵူႈတူဝ်
}
```
* **`declaration`**: Variable ဢၼ်တေမႃးႁပ်ႉဢဝ် ၵႃႈၶၼ်ၵူႈတူဝ် (Element)။
* **`range`**: တီႈၵဵပ်းၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Array ဢမ်ႇၼၼ် Vector)။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    // သၢင်ႈ Array တႃႇသိမ်းတူဝ်ၼပ်ႉ
    int numbers[] = {10, 20, 30, 40, 50};

    // ၸႂ်ႉ Range-based for loop တႃႇၼေလိၵ်ႈ
    for (int n : numbers) {
        std::cout << "Value: " << n << std::endl;
    }

    return 0;
}
```
**လွင်ႈလီမၼ်း:** ႁဝ်းဢမ်ႇလူဝ်ႇလၢတ်ႈဝႃႈ Array မီးၵီႈတူဝ် (Size)၊ C++ တေႁႃပၼ်ႁင်းၵူၺ်းသေ လူဢဝ်တေႃႇပေႃးသုတ်းၶႃႈ။

---

### 3. ၵၢၼ်ၸႂ်ႉ `auto` Keyword
တႃႇႁႂ်ႈငၢႆႈလိူဝ်ၵဝ်ႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`auto`** တႅၼ်း `int` ဢမ်ႇၼၼ် `double` ၶႃႈ။ Compiler တေတူၺ်း Array ႁဝ်းသေ တႅပ်းတတ်းပၼ်ဝႃႈ မၼ်းပဵၼ် Data Type မဵဝ်းလႂ် ႁင်းၵူၺ်းၶႃႈ။

```cpp
for (auto n : numbers) {
    std::cout << n << " ";
}
```

---

### 4. Range-based vs Traditional Loop
| Feature | Traditional For Loop | Range-based For Loop |
| :--- | :--- | :--- |
| **Index** | ၸႂ်ႉ `i` (0, 1, 2...) | ဢမ်ႇမီး Index (လူၵႃႈၶၼ်ၵမ်းသိုဝ်ႈ) |
| **Size** | လူဝ်ႇလႆႈႁူႉ Size ၶွင် Array | ဢမ်ႇလူဝ်ႇႁူႉ Size |
| **Control** | ၸၢမ်းၶၢမ်ႇ (Skip) တူဝ်ၼပ်ႉလႆႈငၢႆႈ | လူဢဝ်ၵူႈတူဝ် တႄႇတေႃႇသုတ်း |
| **Readability** | ၶူတ်ႉယၢဝ်းလိူဝ် | ၶူတ်ႉၵႅပ်ႈ လႅတ်းသႂ်လိူဝ် |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Range-based for** ၸႂ်ႉတႃႇလူၶေႃႈမုၼ်းၼႂ်း Array ဢမ်ႇၼၼ် Container တၢင်ႇၸိူဝ်း။
* ၸႂ်ႉ **`:`** တႃႇၸႅၵ်ႇ Variable လႄႈ Array။
* မၼ်းႁႄႉၵင်ႈလွင်ႈၽိတ်း (Errors) ဢၼ်ၵိူတ်ႇမႃးတီႈၵၢၼ်ၼပ်ႉ Index ၽိတ်း (Off-by-one errors) ၶႃႈ။

---