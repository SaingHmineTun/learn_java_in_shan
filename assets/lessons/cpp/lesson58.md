# Lesson 58: References vs. Pointers: When to use which?

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Module 6 ႁဝ်းႁဵၼ်းလွင်ႈ **Reference (`&`)** မႃးယဝ်ႉသေ ၼႂ်း Module 7 ၼႆႉ ႁဝ်းႁဵၼ်းလွင်ႈ **Pointer (`*`)**။ 
တင်းသွင်မဵဝ်းၼႆႉ ၸႂ်ႉတႃႇ "ၸီႉ" ၸူး တီႈယူႇ Variable ၼႆၵေႃႈ လႆႈႁူႉမႃးယဝ်ႉ။ 
ၵူၺ်းၵႃႈ မၼ်းၵေႃႈမီး လွင်ႈဢၼ် ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

---

### 1. ပိုၼ်ႉထၢၼ်လွင်ႈပႅၵ်ႇပိူင်ႈ (Key Differences)

| Feature | Reference (`&`) | Pointer (`*`) |
| :--- | :--- | :--- |
| **Initialization** | တေလႆႈပၼ်ၵႃႈၶၼ်ၵမ်းလဵဝ် | ပၼ် `nullptr` ဝႆႉဢွၼ်တၢင်းၵေႃႈလႆႈ |
| **Re-assignment** | လႅၵ်ႈၵႂႃႇၸီႉတူဝ်တၢင်ႇဢၼ်ဢမ်ႇလႆႈ | လႅၵ်ႈၵႂႃႇၸီႉ Address မႂ်ႇလႆႈတႃႇသေႇ |
| **Null Value** | ဢမ်ႇၸၢင်ႈပဵၼ် Null (တေလႆႈမီးတူဝ်တႄႉ) | ၸၢင်ႈပဵၼ် `nullptr` လႆႈ |
| **Syntax** | ၸႂ်ႉငၢႆႈ (မိူၼ် Variable ပိုၼ်ႉထၢၼ်) | လူဝ်ႇၸႂ်ႉ `*` လႄႈ `&` တႃႇၸတ်းၵၢၼ် |



---

### 2. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Reference?
ႁဝ်းတေလႆႈၸႂ်ႉ **Reference** ပဵၼ်ပိူင်လူင် (Default) ၵွပ်ႈမၼ်း "လွတ်ႈၽေး" (Safer) လိူဝ်ၶႃႈ။
* **Function Parameters**: ပေႃးသူင်ႇၶေႃႈမုၼ်းယႂ်ႇ (မိူၼ်ၼင်ႇ `std::string`) သႂ်ႇၼႂ်း Function။
* **Operator Overloading**: တႃႇႁဵတ်းႁႂ်ႈ Syntax လူငၢႆႈ။
* **မိူဝ်ႈႁဝ်းႁူႉဝႃႈ**: Variable ၼၼ်ႉ "တေလႆႈမီးယူႇတႄႉ" လႄႈ တေဢမ်ႇလႅၵ်ႈလၢႆႈ တီႈယူႇမၼ်းၶႃႈ။

---

### 3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Pointer?
ႁဝ်းတေလႆႈၸႂ်ႉ **Pointer** မိူဝ်ႈႁဝ်းလူဝ်ႇ "လွင်ႈလႅတ်းသႂ်" (Flexibility) ၶႃႈ။
* **Dynamic Memory**: မိူဝ်ႈၸႂ်ႉ `new` လႄႈ `delete` (Heap Memory)။
* **Iterating Data Structures**: တႃႇယၢင်ႈၵႂႃႇၼႂ်း Array, Linked List, ဢမ်ႇၼၼ် Tree။
* **Optional Data**: မိူဝ်ႈၶေႃႈမုၼ်းၼၼ်ႉ "ၸၢင်ႈဢမ်ႇမီးၵေႃႈလႆႈ" (ၸႂ်ႉ `nullptr` တႃႇမၢႆဝႆႉ)။
* **Re-binding**: မိူဝ်ႈလူဝ်ႇလႅၵ်ႈလၢႆႈ ႁႂ်ႈမၼ်းၵႂႃႇၸီႉတီႈ Address တၢင်ႇဢၼ် ၼႂ်းဝူင်ႇၵၢၼ်ႁဵတ်းၵၢၼ်။

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Comparison Code)

```cpp
#include <iostream>
#include <string>

void useReference(std::string &ref) {
    ref = "Changed by Ref"; // ၸႂ်ႉငၢႆႈ
}

void usePointer(std::string *ptr) {
    if (ptr != nullptr) { // လူဝ်ႇၵူတ်ႇထတ်း Safety
        *ptr = "Changed by Ptr"; // လူဝ်ႇ Dereference
    }
}

int main() {
    std::string name = "Original";

    useReference(name);
    usePointer(&name);

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* ၸႂ်ႉ **Reference** ပေႃးၶႂ်ႈလႆႈ လွင်ႈငၢႆႈ လႄႈ လွင်ႈလွတ်ႈၽေး (Safety)။
* ၸႂ်ႉ **Pointer** ပေႃးလူဝ်ႇၵုမ်းထိင်း Memory ၵမ်းသိုဝ်ႈ ဢမ်ႇၼၼ် ၸႂ်ႉ Heap Allocation။
* ပၵ်းယၢမ်ႇ C++: **"ၸႂ်ႉ Reference ပေႃးႁဵတ်းလႆႈ၊ ၸႂ်ႉ Pointer ပေႃးလူဝ်ႇတႄႉတႄႉၵူၺ်း"** ၶႃႈ။

---