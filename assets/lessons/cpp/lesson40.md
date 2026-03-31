# Lesson 40: Iterating through Vectors with Iterators

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တေႃႇထိုင်ယၢမ်းလဵဝ် ႁဝ်းၸႂ်ႉ Index `[i]` တႃႇလူၶေႃႈမုၼ်းၼႂ်း Vector ၶႃႈ။ 
ၵူၺ်းၵႃႈ ၼႂ်း C++ မၼ်းမီးထႅင်ႈလၢႆးၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **Iterator**။ 
မၼ်းမိူၼ်ၼင်ႇ "ၼိဝ်ႉမိုဝ်း" ဢၼ်ၸီႉၵႂႃႇတီႈ ၶေႃႈမုၼ်းၵမ်းတူဝ်ၵမ်းတူဝ် ၼႂ်း Vector ၼၼ်ႉယဝ်ႉ။ 
ၵၢၼ်ၸႂ်ႉ Iterator ၼႆႉ မၼ်းလႅတ်းသႂ် လႄႈ လွတ်ႈၽေးလိူဝ် ၵၢၼ်ၸႂ်ႉ Index ၶႃႈ။

---

### 1. Iterator ပဵၼ်သင်? (What is an Iterator?)
Iterator ပဵၼ် Object ဢၼ် "ၸီႉ" (Point) ၵႂႃႇတီႈ Elements ၼႂ်း Vector။ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းတႃႇ:
* **`.begin()`**: ၸီႉၵႂႃႇတီႈ ၶေႃႈမုၼ်း **"တူဝ်ဢွၼ်တၢင်းသုတ်း"**။
* **`.end()`**: ၸီႉၵႂႃႇတီႈ **"တူဝ်လိုၼ်းသုတ်း"** (ၼႆႉပဵၼ်မၢႆတွင်း တႃႇႁူႉဝႃႈ Loop ယဝ်ႉယဝ်ႉၼႆၶႃႈ)။



---

### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Iterator (Syntax)
လၢႆးတႅမ်ႈ Iterator ၼၼ်ႉ မၼ်းယၢဝ်းဢိတ်းၼိုင်ႈ၊ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`auto`** တႃႇႁႂ်ႈမၼ်းငၢႆႈၶႃႈ။

```cpp
std::vector<int> nums = {10, 20, 30};

// လၢႆးတႅမ်ႈတဵမ်ထူၼ်ႈ
std::vector<int>::iterator it; 

// လၢႆးတႅမ်ႈငၢႆႈ (Modern C++)
auto it = nums.begin(); 
```

---

### 3. ၵၢၼ်ၸႂ်ႉ Loop တင်း Iterator
မိူဝ်ႈႁဝ်းၸႂ်ႉ Iterator ၼႂ်း Loop၊ ႁဝ်းတေၸႂ်ႉတူဝ် **`*`** (Dereference operator) တႃႇ "ဢဝ်ၵႃႈၶၼ်" ဢၼ်မၼ်းၸီႉဝႆႉၼၼ်ႉ ဢွၵ်ႇမႃးၶႃႈ။

```cpp
#include <iostream>
#include <vector>

int main() {
    std::vector<int> scores = {85, 90, 75};

    std::cout << "Scores using Iterator: " << std::endl;

    // Loop တႄႇဢဝ် begin() တေႃႇပေႃးထိုင် end()
    for (auto it = scores.begin(); it != scores.end(); ++it) {
        std::cout << *it << " "; // ၸႂ်ႉ *it တႃႇလူၵႃႈၶၼ်
    }

    return 0;
}
```

---

### 4. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Iterator?
1.  **Generality**: Iterator ၸႂ်ႉလႆႈတင်း Vector, List, Map လႄႈ Container တင်းမူတ်း (Index ၸၢင်ႈၸႂ်ႉဢမ်ႇလႆႈ ၼႂ်း Container မဵဝ်းဢၼ်ဢမ်ႇၸပ်းၵၼ်)။
2.  **Safety**: မၼ်းႁႄႉၵင်ႈလွင်ႈ "ၼပ်ႉမၢႆပူၼ်ႉၶွပ်ႇ" (Out of bounds) လႆႈလီလိူဝ် Index။
3.  **Efficiency**: ၸွႆႈႁႂ်ႈ Algorithm ၼႂ်း C++ (မိူၼ်ၼင်ႇ ၵၢၼ် Sort ဢမ်ႇၼၼ် Search) ႁဵတ်းၵၢၼ်လႆႈဝႆးၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Iterator**: မိူၼ်ၼင်ႇ တူဝ်ၸီႉ (Pointer) ၼႂ်း Vector။
* **`.begin()`**: ၸီႉတူဝ်ဢွၼ်တၢင်း။
* **`.end()`**: ၸီႉတီႈသုတ်း (ဝၢႆးလင်တူဝ်သုတ်း)။
* **`*it`**: ၸႂ်ႉတႃႇဢဝ် "ၵႃႈၶၼ်" ဢၼ်ယူႇတီႈ Iterator ၼၼ်ႉ။

---