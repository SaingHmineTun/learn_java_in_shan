# Lesson 96: Container Adaptors: Stack and Queue

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
Container Adaptors ၸွႆႈႁၢမ်ႈ ၵၢၼ်ႁွင်ႉၸႂ်ႉၶေႃႈမုၼ်းလၢႆလၢႆလၢႆးသေ 
ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်း ႁဵတ်းၵၢၼ်လႆႈၸွမ်းလၢၵ်းၵၢၼ် **LIFO** ဢမ်ႇၼၼ် **FIFO** ၶႃႈ။

---

### 1. `std::stack` (LIFO - Last In, First Out)
**Stack** မိူၼ်ၼင်ႇ "ၵၢၼ်ဝၢင်းပပ်ႉလိၵ်ႈသွၼ်ႉၵၼ်ဝႆႉ"။ 
တူဝ်ဢၼ်ၸဝ်ႈၵဝ်ႇဝၢင်းဝႆႉ "လိုၼ်းသုတ်း" တေလႆႈပဵၼ်တူဝ်ဢၼ်ၸဝ်ႈၵဝ်ႇဢဝ်ဢွၵ်ႇ "ဢွၼ်တၢင်းသုတ်း" ၶႃႈ။

* **`push()`**: သႂ်ႇၶေႃႈမုၼ်းဝႆႉၽၢႆႇၼိူဝ် (Top)။
* **`pop()`**: ဢဝ်ၶေႃႈမုၼ်းဢၼ်ယူႇၽၢႆႇၼိူဝ်သုတ်းဢွၵ်ႇ။ (ဢဝ်ဢွၵ်ႇ)
* **`top()`**: လူတူၺ်းၶေႃႈမုၼ်းဢၼ်ယူႇၽၢႆႇၼိူဝ်သုတ်း (ၵူၺ်းၵႃႈဢမ်ႇဢဝ်ဢွၵ်ႇ)။



```cpp
#include <iostream>
#include <stack>

int main() {
    std::stack<int> s;
    s.push(10);
    s.push(20);
    s.push(30);

    std::cout << "Top element: " << s.top() << std::endl; // 30

    s.pop(); // ဢဝ် 30 ဢွၵ်ႇ
    std::cout << "New top: " << s.top() << std::endl;   // 20

    return 0;
}
```

---

### 2. `std::queue` (FIFO - First In, First Out)
**Queue** မိူၼ်ၼင်ႇ "ၵၢၼ်ၶပ်ႉထႅဝ်သိုဝ်ႉၶူဝ်း"။ ၵူၼ်းဢၼ်မႃး "ဢွၼ်တၢင်းသုတ်း" တေလႆႈပဵၼ်ၵူၼ်းဢၼ်ဢွၵ်ႇၵႂႃႇ "ဢွၼ်တၢင်းသုတ်း" ၶႃႈ။

* **`push()`**: သႂ်ႇၶေႃႈမုၼ်းဝႆႉၽၢႆႇလင် (Back)။
* **`pop()`**: ဢဝ်ၶေႃႈမုၼ်းဢၼ်ယူႇၽၢႆႇၼႃႈသုတ်း (Front) ဢွၵ်ႇ။
* **`front()`**: လူတူၺ်းၶေႃႈမုၼ်းတူဝ်ၼႃႈသုတ်း။
* **`back()`**: လူတူၺ်းၶေႃႈမုၼ်းတူဝ်လင်သုတ်း။



```cpp
#include <iostream>
#include <queue>

int main() {
    std::queue<std::string> q;
    q.push("First");
    q.push("Second");
    q.push("Third");

    std::cout << "Front: " << q.front() << std::endl; // First
    std::cout << "Back: " << q.back() << std::endl;   // Third

    q.pop(); // ဢဝ် "First" ဢွၵ်ႇ
    std::cout << "New front: " << q.front() << std::endl; // Second

    return 0;
}
```

---

### 3. `std::priority_queue`
ၼႆႉပဵၼ် Queue မဵဝ်းၼိုင်ႈ ဢၼ်တေၶပ်ႉ (Sort) ၶေႃႈမုၼ်းဝႆႉပၼ်သေႇသေႇ။ 
တူဝ်ဢၼ်မီး "ၵႃႈၶၼ်ယႂ်ႇသုတ်း" တေယူႇၽၢႆႇၼႃႈသေ တေထုၵ်ႇဢဝ်ဢွၵ်ႇဢွၼ်တၢင်းပိူၼ်ႈၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Stack**: LIFO (Last In, First Out) - ၵေႃႉမႃးလိုၼ်းသုတ်ႉ တေလႆးဢွၵ်ႇဢွၼ်တၢင်းပိူၼ်ႈ။
* **Queue**: FIFO (First In, First Out) - ၵေႃႉမႃးဢွၼ်တၢင်း တေလႆႈဢွၵ်ႇဢွၼ်တၢင်း။
* **Adaptors**: မၼ်းဢမ်ႇမီး Iterator၊ ၸဝ်ႈၵဝ်ႇလႅၼ်ႈ `for` loop ၸွမ်းမၼ်းဢမ်ႇလႆႈ။ လူဝ်ႇၸႂ်ႉ `pop()` တေႃႇပေႃးပဝ်ႇၶႃႈ။

---