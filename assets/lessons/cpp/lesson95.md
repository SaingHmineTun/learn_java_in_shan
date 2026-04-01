# Lesson 95: Associative Containers: Sets and Maps

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
Associative Containers တေဢမ်ႇသိမ်းၶေႃႈမုၼ်းၸွမ်းၼင်ႇ "ၶပ်ႉတွၼ်ႈၶိင်ႇယၢမ်း" (Order of insertion)။ 
မၼ်းတေသႂ်ႇၶေႃႈမုၼ်းဝႆႉၼႂ်း **Binary Search Tree** ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်း "ၶပ်ႉ" (Sort) ဝႆႉပၼ်သေႇသေႇ။ 
ၼႆႉၸွႆႈႁႂ်ႈၵၢၼ်ႁႃၶေႃႈမုၼ်း (Search) မီးၼမ်ႉၵတ်ႉ $O(log n)$ ၶႃႈ။

---

### 1. `std::set` (ၵုမ်ႇၶေႃႈမုၼ်းဢၼ်ဢမ်ႇသမ်ႉၵၼ်)
**Set** ပဵၼ် Container ဢၼ်သိမ်း Value ၵူၺ်း၊ ၵူၺ်းၵႃႈမၼ်းမီးလၵ်းၸဵင်ႇဝႆႉဝႃႈ:
* **Unique**: ၶေႃႈမုၼ်းၼႂ်း Set တေဢမ်ႇလႆႈသွၼ်ႉၵၼ် (No duplicates)။
* **Sorted**: ၶေႃႈမုၼ်းတေၶပ်ႉဝႆႉပၼ်ႁင်းၵူၺ်း (လုၵ်ႉဢွၼ်ႇၵႂႃႇႁႃယႂ်ႇ)။



```cpp
#include <iostream>
#include <set>

int main() {
    std::set<int> mySet = {5, 2, 8, 2, 5}; // သႂ်ႇတူဝ်သမ်ႉၵၼ်
    mySet.insert(10);

    // ပေႃးၼေၽွၼ်း: တေဢွၵ်ႇမႃး 2 5 8 10 (တူဝ်သမ်ႉႁၢႆ လႄႈ သီႇဝႆႉယဝ်ႉ)
    for (int x : mySet) std::cout << x << " "; 
    return 0;
}
```

---

### 2. `std::map` (ၵူပ်ႉၶေႃႈမုၼ်း Key-Value)
**Map** ပဵၼ် Container ဢၼ်ၵႆႉၸႂ်ႉသုတ်း တႃႇသိမ်းၶေႃႈမုၼ်းပဵၼ်ၵူႊ **Key** လႄႈ **Value** (မိူၼ်ၼင်ႇ Dictionary)။
* **Key**: ၸႂ်ႉတႃႇ "ႁႃ" (Unique)။
* **Value**: ပဵၼ်ၶေႃႈမုၼ်းဢၼ်ၵွင်ႉၵၢႆႇတင်း Key ၼၼ်ႉ။ မီးမိူၼ်ၵၼ်ၵေႃႈလႆႈ



```cpp
#include <iostream>
#include <map>
#include <string>

int main() {
    std::map<std::string, int> scores;

    // ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်း
    scores["Sai Mao"] = 95;
    scores["Nang Hla"] = 88;
    scores["Aung Net"] = 70;

    // ၵၢၼ်ႁႃ (Search) ဝႆးတႄႉတႄႉ
    std::cout << "Sai Mao's score: " << scores["Sai Mao"] << std::endl;

    // ၵၢၼ်လႅၼ်း (Traverse) ၸွမ်း Map
    for (auto const& [name, score] : scores) {
        std::cout << name << " -> " << score << std::endl;
    }

    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Use Cases)
* **Set**: ၸႂ်ႉမိူဝ်ႈၶႂ်ႈသိမ်း "သဵၼ်ႈမၢႆဢၼ်ဢမ်ႇသွၼ်ႉၵၼ်" (မိူၼ်ၼင်ႇ ID လုၵ်ႈႁဵၼ်း တင်းႁူင်းႁဵၼ်း)။
* **Map**: ၸႂ်ႉမိူဝ်ႈၶႂ်ႈႁဵတ်း "ပပ်ႉသႅၼ်သမ်ႇ (Lookup Table)" (မိူၼ်ၼင်ႇ သိမ်းမၢႆၾူၼ်း ၸွမ်းၸိုဝ်ႈၵူၼ်း)။

---

### 4. တူဝ်ယၢင်ႇ Unordered Containers (C++11)
သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇႁႂ်ႈမၼ်း "ၶပ်ႉ" (Sorted)၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ:
* `std::unordered_set`
* `std::unordered_map`
  မၼ်းတေၸႂ်ႉ **Hash Table** သေႁဵတ်းႁႂ်ႈၵၢၼ်ႁႃ (Search) ဝႆးလိူဝ်ၵဝ်ႇ ($O(1)$) ၶႃႈဢေႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`std::set`**: သိမ်း Value ဢၼ်ဢမ်ႇသွၼ်ႉၵၼ် လႄႈ ၶပ်ႉဝႆႉယဝ်ႉ။
* **`std::map`**: သိမ်း Key-Value pairs၊ ႁႃၶေႃႈမုၼ်းလူၺ်ႈ Key လႆႈဝႆးသုတ်း။
* **Complexity**: $O(log n)$ တႃႇၵၢၼ် Insert/Search/Delete ၶႃႈ။

---