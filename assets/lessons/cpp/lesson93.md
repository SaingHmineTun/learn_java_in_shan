# Lesson 93: Introduction to STL: Containers, Iterators, and Algorithms

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
**STL** မၢႆထိုင် **Standard Template Library** ၶႃႈ။ 
မၼ်းပဵၼ် "ႁွင်ႈသိမ်းၶိူင်ႈမိုဝ်း" (Library) ဢၼ်လူင်ၼႂ်း C++ ဢၼ်တႅမ်ႈဝႆႉလူၺ်ႈ **Templates** တင်းမူတ်း။ 
ၼႆႉမၢႆဝႃႈ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉၶိူင်ႈမိုဝ်းၸိူဝ်းၼႆႉ တင်း Data Type မဵဝ်းလႂ်ၵေႃႈလႆႈၶႃႈ။
STL မီး "သၢမ်ပိူင်လူင်" (Three Pillars) ဢၼ်ႁဵတ်းၵၢၼ်ႁူမ်ႈၵၼ်ၶႃႈ:



---

### 1. Containers (ထူင်သိမ်းၶေႃႈမုၼ်း)
**Containers** ပဵၼ် Objects ဢၼ်ၸႂ်ႉတႃႇသိမ်းၶေႃႈမုၼ်း။ တႅၼ်းဢၼ်ႁဝ်းတေၸႂ်ႉ Array (ဢၼ်မႄးသႅၼ်းဢမ်ႇလႆႈ)၊ STL မီး Containers ဢၼ်လၢတ်ႈလႅတ်းလိူဝ်ၼၼ်ႉ:
* **`vector`**: Array ဢၼ် ထႅမ်/ထွၼ် ၶေႃႈမုၼ်းလႆႈ (Dynamic Array)။
* **`list`**: Doubly linked list။
* **`map`**: သိမ်းၶေႃႈမုၼ်းပဵၼ်ၵူႈ (Key-Value) မိူၼ်ၼင်ႇ Dictionary။

---

### 2. Iterators (တူဝ်ၸီႉလႅၼ်း)
**Iterators** ပဵၼ် "ၶူဝ်လၢၵ်ႇ" (Bridge) ဢၼ်ၵွင်ႉၵၢႆႇ Containers လႄႈ Algorithms ၶႃႈ။ မၼ်းႁဵတ်းၵၢၼ်မိူၼ် **Pointers** ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်း "လႅၼ်ႈၵႂႃႇမႃး" (Traverse) ၸွမ်းၶေႃႈမုၼ်းၼႂ်း Container လႆႈၵူႈမဵဝ်း လူၺ်ႈလၢႆးၸႂ်ႉမိူၼ်ၵၼ်ၶႃႈ။



---

### 3. Algorithms (လၢႆးၵႄႈပၼ်ႁႃ)
**Algorithms** ပဵၼ် Functions ဢၼ်မီးဝႆႉ တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်း ၸိူင်ႉၼင်ႇ:
* **`sort()`**: ၶပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈဢွၼ်ႇၵႂႃႇႁႃယႂ်ႇ။
* **`find()`**: ႁႃၶေႃႈမုၼ်းၼႂ်း Container။
* **`reverse()`**: ပိၼ်ႈ ၶေႃႈမုၼ်းလုၵ်ႉတၢင်းလင်မႃးတၢင်းၼႃႈ။

---

### 4. တူဝ်ယၢင်ႇ Code ဢၼ်ၼေႁၢင်ႈၽၢင် STL

```cpp
#include <iostream>
#include <vector>    // Container
#include <algorithm> // Algorithms

int main() {
    // 1. ၸႂ်ႉ Container (Vector)
    std::vector<int> nums = {5, 2, 9, 1, 7};

    // 2. ၸႂ်ႉ Algorithm (Sort) တႃႇသီႇၶေႃႈမုၼ်း
    // std::begin() လႄႈ std::end() သူင်ႇ Iterators ၵႂႃႇပၼ် sort
    std::sort(nums.begin(), nums.end());

    std::cout << "Sorted numbers: ";
    
    // 3. ၸႂ်ႉ Iterator (ၼႂ်း loop) တႃႇၼေၽွၼ်း
    for (int n : nums) {
        std::cout << n << " ";
    }

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **STL** ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈ Code လႆႈဝႆး၊ သႅၼ်ႈသႂ်၊ လႄႈ မီးၼမ်ႉၵတ်ႉ (Performance) သုင်။
* **Containers**: တီႈသိမ်း Data။
* **Iterators**: တူဝ်ၸွႆႈလႅၼ်းၵႂႃႇႁႃ Data။
* **Algorithms**: တူဝ်ၸတ်းၵၢၼ် Data။

---