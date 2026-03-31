
# Lesson 53: De-referencing (*): Accessing Data via Pointers

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းမီး **Pointer** ဢၼ်သိမ်း Address ဝႆႉယဝ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈမီးလၢႆး "ၵႂႃႇဢဝ်" ၶေႃႈမုၼ်း ဢၼ်ယူႇတီႈ Address ၼၼ်ႉၶႃႈ။ 
ၵၢၼ်ဢဝ် Pointer သေၵႂႃႇၸီႉဢဝ် Value ၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **De-referencing** ၶႃႈ။ 
ႁဝ်းၸႂ်ႉတူဝ် **`*`** (Asterisk) ထႅင်ႈပွၵ်ႈၼိုင်ႈ၊ ၵူၺ်းၵႃႈ တီႈပွင်ႇမၼ်း တေပႅၵ်ႇပိူင်ႈၵၼ်တင်း ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ (Declare) ၶႃႈ။

---

### 1. De-referencing Operator (*)
မိူဝ်ႈႁဝ်းဝႆႉတူဝ် **`*`** ၽၢႆႇၼႃႈၸိုဝ်ႈ Pointer ဢၼ်မီးၵႃႈၶၼ်ဝႆႉယဝ်ႉၼၼ်ႉ:
* မၼ်းပွင်ႇၸႂ်ဝႃႈ: **"ၵႂႃႇတီႈ Address ဢၼ် Pointer ၼႆႉၸီႉဝႆႉ သေဢဝ် Value မၼ်းမႃးပၼ်ၵဝ်"**။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    int score = 100;
    int* pScore = &score; // 1. Store Address

    // 2. Access via De-referencing
    std::cout << "Value via variable: " << score << std::endl;  // 100
    std::cout << "Value via pointer: " << *pScore << std::endl; // 100

    // 3. Modify via De-referencing
    *pScore = 200; // ၵႂႃႇလႅၵ်ႈၵႃႈၶၼ် တီႈ Address ၼၼ်ႉ
    
    std::cout << "New value of score: " << score << std::endl; // ပဵၼ် 200 ယဝ်ႉ!
    
    return 0;
}
```

---

### 3. လွင်ႈပႅၵ်ႇပိူင်ႈၶွင်တူဝ် `*` (The Two Faces of *)
ၼုမ်ႇႁဵၼ်းၶဝ် ၵႆႉၵႆႉသုၵ်ႉသၵ်ႉၸွမ်းတူဝ် `*` ၼႆႉၶႃႈ။ တွင်းမၢႆဝႆႉၼင်ႇၼႆ:
1.  **မိူဝ်ႈပိုၼ်ၽၢဝ်ႇ (Declaration)**: `int* p;` -> "ၼႆႉပဵၼ် Pointer ၼႃ" (Type Definition)။
2.  **မိူဝ်ႈၸႂ်ႉတိုဝ်း (Dereferencing)**: `*p = 10;` -> "ၵႂႃႇတီႈ Address ၼၼ်ႉ သေပၼ်ၵႃႈၶၼ် 10" (Action)။

---

### 4. ၶေႃႈပၼ်ၾၢင်ႉ: Danger of Null Pointers
ယႃႇပေ **De-reference** Pointer ဢၼ်ပဵၼ် `nullptr` ဢမ်ႇၼၼ် ဢၼ်ပႆႇမီး Address သေပွၵ်ႈၶႃႈ!
```cpp
int* pBad = nullptr;
// std::cout << *pBad; // ERROR! ပရူဝ်ႇၶႅမ်ႇတေ Crash ၵမ်းလဵဝ်
```
* **Tip**: တေလႆႈၵူတ်ႇထတ်း `if (pScore != nullptr)` ဢွၼ်တၢင်း တေၸႂ်ႉ `*` သေႇသေႇၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **De-referencing (`*`)**: ၵၢၼ်လူ ဢမ်ႇၼၼ် ၵၢၼ်မႄး ၶေႃႈမုၼ်း လူၺ်ႈၸႂ်ႉ Address ၼႂ်း Pointer။
* **`*p`**: ပွင်ႇၸႂ်ဝႃႈ "Value ဢၼ်ယူႇတီႈ Address `p`"။
* ၸွႆႈႁႂ်ႈႁဝ်း ၵုမ်းထိင်းၶေႃႈမုၼ်းလႆႈ **ၵမ်းသိုဝ်ႈ (Directly)** ၼႂ်း Memory ၶႃႈ။

---