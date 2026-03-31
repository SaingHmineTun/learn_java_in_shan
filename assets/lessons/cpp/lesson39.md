# Lesson 39: Vector Operations: push_back, pop_back, and size

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
လွင်ႈလီသုတ်းၶွင် **Vector** ၼၼ်ႉၵေႃႈ ပဵၼ်ၵၢၼ်ဢၼ်ႁဝ်းၸၢင်ႈ "ထႅမ်" ၶေႃႈမုၼ်းသႂ်ႇ မိူဝ်ႈလႂ်ၵေႃႈလႆႈ ၼၼ်ႉၶႃႈယဝ်ႉ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသွၼ်လွင်ႈ ၶိူင်ႈမိုဝ်း (Functions) ဢၼ်ၸႂ်ႉၼမ်သေပိူၼ်ႈ တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းၼႂ်း Vector ၶႃႈ။

---

### 1. ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်း (`push_back`)
**`.push_back(value)`** ၸႂ်ႉတႃႇထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ သႂ်ႇဝႆႉတီႈ **"ၽၢႆႇလင်သုတ်း"** (End of the vector) ၶႃႈ။ 
မိူဝ်ႈႁဝ်းထႅမ်သႂ်ႇ၊ Vector တေယႂ်ႇၶိုၼ်ႈႁင်းၵူၺ်း။

```cpp
std::vector<int> nums;
nums.push_back(10); // {10}
nums.push_back(20); // {10, 20}
```

---

### 2. ၵၢၼ်ထွၼ်ၶေႃႈမုၼ်း (`pop_back`)
**`.pop_back()`** ၸႂ်ႉတႃႇ "ဢဝ်ဢွၵ်ႇ" ၶေႃႈမုၼ်းတူဝ်ဢၼ်ယူႇ **"ၽၢႆႇလင်သုတ်း"** ၼၼ်ႉၶႃႈ။ 
မၼ်းတေဢမ်ႇသူင်ႇၵႃႈၶၼ်သင်မႃးပၼ်၊ မၼ်းၵူၺ်းၸႂ်ႉတႃႇ "ထွၼ်ပႅတ်ႈ" ၶေႃႈမုၼ်းတူဝ်ၼၼ်ႉၵူၺ်း။

```cpp
nums.pop_back(); // {10} (20 ႁၢႆၵႂႃႇယဝ်ႉ)
```



---

### 3. ၵၢၼ်ၵူတ်ႇထတ်း သႅၼ်း (`size` & `empty`)
* **`.size()`**: ၸွႆႈၼပ်ႉဝႃႈ တေႃႈလဵဝ်မီးၶေႃႈမုၼ်းလၢႆတူဝ် ၼႂ်း Vector။
* **`.empty()`**: ၸွႆႈၵူတ်ႇထတ်းဝႃႈ ၼႂ်း Vector မီးၶေႃႈမုၼ်းယူႇႁႃႉ? (Returns `true` ပေႃးမၼ်းပဝ်ႇ)။
* **`.clear()`**: ၸႂ်ႉတႃႇ "ၽဵဝ်ႈမူၺ်ႉပႅတ်ႈ" ၶေႃႈမုၼ်းတင်းမူတ်း ၼႂ်း Vector ၵမ်းလဵဝ်။

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <vector>
#include <string>

int main() {
    std::vector<std::string> playlist;

    // 1. ထႅမ်ၵႂၢမ်းသႂ်ႇ (Add)
    playlist.push_back("Song A");
    playlist.push_back("Song B");
    playlist.push_back("Song C");

    std::cout << "Total songs: " << playlist.size() << std::endl; // 3

    // 2. လူၶေႃႈမုၼ်း (Access - မိူၼ် Array)
    std::cout << "First song: " << playlist[0] << std::endl;

    // 3. ထွၼ်ၵႂၢမ်းသုတ်းထႅဝ်ဢွၵ်ႇ (Remove last)
    playlist.pop_back(); 
    std::cout << "After pop_back, size is: " << playlist.size() << std::endl; // 2

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`.push_back()`**: ထႅမ်ၶေႃႈမုၼ်း သႂ်ႇၽၢႆႇလင်။
* **`.pop_back()`**: ဢဝ်ၶေႃႈမုၼ်း ၽၢႆႇလင်သုတ်းဢွၵ်ႇ။
* **`.size()`**: တူၺ်းဝႃႈ မီးၶေႃႈမုၼ်းၵီႈတူဝ်။
* **Index**: ႁဝ်းယင်းၸၢင်ႈၸႂ်ႉ `[ ]` တႃႇလူၶေႃႈမုၼ်းၼႂ်း Vector လႆႈမိူၼ် Array ယူႇၶႃႈ။

---