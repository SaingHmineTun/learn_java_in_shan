# Lesson 97: STL Algorithms: Sorting, Searching, and Modifying

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
STL Algorithms ႁဵတ်းၵၢၼ်ႁူမ်ႈတင်း **Iterators**။ မၼ်းၸၢင်ႈၸႂ်ႉလႆႈတင်း Container ၵူႈမဵဝ်း (Vector, List, Deque)။ 
ႁဝ်းသူင်ႇ "တီႈတႄႇ" (`.begin()`) လႄႈ "တီႈသုတ်း" (`.end()`) သေ Algorithm တေၸတ်းၵၢၼ်ပၼ်ႁင်းၵူၺ်းၶႃႈ။

---

### 1. Sorting (ၵၢၼ်သီႇၶေႃႈမုၼ်း)
**`std::sort()`** ပဵၼ် Algorithm ဢၼ်ၵႆႉၸႂ်ႉသုတ်း။ မၼ်းၸႂ်ႉလွၵ်းလၢႆး IntroSort (ႁူမ်ႈၵၼ်တင်း QuickSort, HeapSort, လႄႈ Insertion Sort) တႃႇႁႂ်ႈမၼ်းဝႆးသုတ်း $O(n log n)$ ၶႃႈ။

```cpp
#include <vector>
#include <algorithm>
#include <iostream>

int main() {
    std::vector<int> v = {4, 1, 3, 5, 2};
    
    // ၶပ်ႉၸွမ်းပိူင် ဢွၼ်ႇၵႂႃႇယႂ်ႇ
    std::sort(v.begin(), v.end()); 
    
    // ၶပ်ႉၸွမ်းပိူင် ယႂ်ႇၵႂႃႇဢွၼ်ႇ (ၸႂ်ႉ Greater comparison)
    std::sort(v.begin(), v.end(), std::greater<int>());
}
```

---

### 2. Searching (ၵၢၼ်ႁႃၶေႃႈမုၼ်း)
* **`std::find()`**: ႁႃ Value ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ။ သင်ႁႃဢမ်ႇထူပ်း မၼ်းတေသူင်ႇ `.end()` iterator မႃးၶႃႈ။
* **`std::binary_search()`**: ၸႂ်ႉတႃႇႁႃၼႂ်း Container ဢၼ် "ၶပ်ႉ" (Sorted) ဝႆႉယဝ်ႉ။ မၼ်းဝႆးလိူဝ် `find()` တႄႉတႄႉၶႃႈ။



```cpp
auto it = std::find(v.begin(), v.end(), 3);
if (it != v.end()) {
    std::cout << "Found element at position: " << std::distance(v.begin(), it);
}
```

---

### 3. Modifying (ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း)
* **`std::reverse()`**: ပိၼ်ႈလုၵ်ႉတၢင်းလင်မႃးတၢင်းၼႃႈ။
* **`std::replace()`**: လႅၵ်ႈ Value ဢၼ်ၼိုင်ႈ ပဵၼ်ထႅင်ႈဢၼ်ၼိုင်ႈ။
* **`std::fill()`**: သႂ်ႇ Value တူဝ်လဵဝ်ၵၼ် ပၼ်ၵူႈတူဝ်ၼႂ်း Container။



---

### 4. တူဝ်ယၢင်ႇ Code ဢၼ်ၸႂ်ႉ Algorithms လၢႆလၢႆမဵဝ်း

```cpp
#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    std::vector<int> nums = {10, 20, 30, 40, 50};

    // 1. ပိၼ်ႈၶေႃႈမုၼ်း
    std::reverse(nums.begin(), nums.end()); // {50, 40, 30, 20, 10}

    // 2. ႁႃတူဝ်ဢၼ်ယႂ်ႇသုတ်း (Max Element)
    auto maxIt = std::max_element(nums.begin(), nums.end());
    std::cout << "Max: " << *maxIt << std::endl;

    // 3. ၼပ်ႉတူဝ်ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ
    int count = std::count(nums.begin(), nums.end(), 20);
    std::cout << "Count of 20: " << count << std::endl;

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Reusability**: ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ Sorting ဢမ်ႇၼၼ် Searching logic ႁင်းၵူၺ်း။
* **Performance**: Algorithms ၸိူဝ်းၼႆႉ ထုၵ်ႇမႄးဝႆႉ (Optimized) ႁႂ်ႈႁဵတ်းၵၢၼ်လႆႈလီသုတ်း တႃႇ CPU။
* **Standardization**: ၵူၼ်းတႅမ်ႈ C++ ၵူႈၵေႃႉ ႁူႉၸတ်း လႄႈ ၸႂ်ႉ Algorithms ၸိူဝ်းၼႆႉ မိူၼ်ၵၼ်မူတ်းၶႃႈ။

---