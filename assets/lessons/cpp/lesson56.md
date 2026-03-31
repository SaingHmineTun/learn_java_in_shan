# Lesson 56: Dynamic Memory Allocation: Using the 'new' Keyword

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းဢမ်ႇႁူႉဝႃႈ လုၵ်ႈႁဵၼ်းတေမႃးၶိုၼ်ႈႁူင်းႁဵၼ်းလၢႆၵေႃႉ (Size)။ 
ပေႃးႁဝ်းသၢင်ႈ Array ဝႆႉၼႂ်း **Stack** (မိူၼ်ၼင်ႇ `int students[100]`)၊ မၼ်းတေပဵၼ်ၵၢၼ်ၸႂ်ႉ Memory ၼမ်လိူဝ်ႁႅင်း ပေႃးမီးလုၵ်ႈႁဵၼ်း 5 ၵေႃႉၵူၺ်း။ 
တႃႇတေၵႄႈလွင်ႈၼႆႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Dynamic Memory Allocation** တႃႇယွၼ်း Memory ၸွမ်းၼင်ႇ "တေႃႈလဵဝ်" (Runtime) ႁဝ်းလူဝ်ႇၼၼ်ႉၶႃႈ။

---

### 1. Keyword `new` ပဵၼ်သင်?
**`new`** ပဵၼ် Keyword ဢၼ်ၸႂ်ႉတႃႇ:
1.  ယွၼ်းဢဝ် Memory တွၼ်ႈၼိုင်ႈ တီႈၼႂ်း **Heap**။
2.  သူင်ႇ **Address** ၶွင် Memory တွၼ်ႈၼၼ်ႉ မႃးပၼ်ၶိုၼ်း။
3.  ႁဝ်းလူဝ်ႇလႆႈဢဝ် **Pointer** မႃးႁပ်ႉ Address ၼၼ်ႉဝႆႉၶႃႈ။

---

### 2. ၵၢၼ်ၸႂ်ႉတိုဝ်း (Syntax)

* **တႃႇ Variable တူဝ်လဵဝ်**:
```cpp
int* pNum = new int; // ယွၼ်းတီႈယူႇတႃႇ int 1 တူဝ် ၼႂ်း Heap
*pNum = 50;          // ပၼ်ၵႃႈၶၼ်
```

* **တႃႇ Array (Dynamic Array)**:
```cpp
int size;
std::cout << "How many students? ";
std::cin >> size;

int* students = new int[size]; // ယွၼ်း Memory ၸွမ်းၼင်ႇ size ဢၼ် User ပၼ်မႃး
```



---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    int count;
    std::cout << "Enter the number of items: ";
    std::cin >> count;

    // 1. Allocate Memory (ယွၼ်း Memory ၼႂ်း Heap)
    int* pGrades = new int[count];

    // 2. ၸႂ်ႉတိုဝ်း (မိူၼ် Array ပိုၼ်ႉထၢၼ်)
    for (int i = 0; i < count; i++) {
        std::cout << "Enter grade " << i + 1 << ": ";
        std::cin >> pGrades[i];
    }

    std::cout << "Grades saved in Heap memory!" << std::endl;

    // မၢႆတွင်း: သင်ၸႂ်ႉယဝ်ႉ ႁဝ်းလူဝ်ႇလႆႈထွၼ် (Delete) မၼ်းၶိုၼ်းၶႃႈ။ လွင်ႈၼႆႉ တေသွၼ်ၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။

    return 0;
}
```

---

### 4. လွင်ႈလီၶွင်ၵၢၼ်ၸႂ်ႉ `new`
* **Flexibility**: သၢင်ႈ Array ၸွမ်းၼင်ႇ Size ဢၼ်လူဝ်ႇတႄႉတႄႉ (Runtime)။
* **Longevity**: ၶေႃႈမုၼ်းတေဢမ်ႇတၢႆၵႂႃႇ မိူဝ်ႈယဝ်ႉ Function (ၸိူင်ႉၼင်ႇ Stack)၊ မၼ်းတေယူႇတေႃႇပေႃးႁဝ်းသင်ႇယႃႉပႅတ်ႈ။
* **Large Data**: သိမ်းၶေႃႈမုၼ်းယႂ်ႇလူင်လႆႈ ၵွပ်ႈ Heap မီးပိုၼ်ႉတီႈၼမ်လိူဝ် Stack။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`new`**: ၸႂ်ႉတႃႇယွၼ်း Memory ၼႂ်း **Heap**။
* မၼ်းသူင်ႇ **Address** မႃးပၼ်၊ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇ **Pointer** တႃႇၸတ်းၵၢၼ်မၼ်း။
* ၵၢၼ်ၸႂ်ႉ `new` ႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း Dynamic လႄႈ ၵုမ်းထိင်း Memory လႆႈလီလိူဝ်ၵဝ်ႇၶႃႈ။

---
