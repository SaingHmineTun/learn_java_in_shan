# Lesson 57: Memory Management: The 'delete' Keyword & Memory Leaks

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းၸႂ်ႉ Keyword `new` တႃႇယွၼ်း Memory ၼႂ်း **Heap** ယဝ်ႉ၊ 
C++ တေဢမ်ႇထွၼ် (Deallocate) Memory ၼၼ်ႉပၼ်ႁင်းၵူၺ်း မိူၼ်ၼင်ႇၼႂ်း Stack ၶႃႈ။ 
မၼ်းပဵၼ် "ၼႃႈၵၢၼ်" Programmer ဢၼ်တေလႆႈသင်ႇ **`delete`** တႃႇပၼ်ၶိုၼ်း Memory ၼၼ်ႉ မိူဝ်ႈႁဝ်းဢမ်ႇၸႂ်ႉမၼ်းယဝ်ႉ။ 
ပေႃးႁဝ်းလိုမ်းထွၼ်မၼ်းၶိုၼ်း၊ မၼ်းတေၵိူတ်ႇပဵၼ် **Memory Leak** ဢၼ်ႁဵတ်းႁႂ်ႈ RAM ႁဝ်းတဵမ် လႄႈ ပရူဝ်ႇၶႅမ်ႇထိူင်းၵႂႃႇၶႃႈ။

---

### 1. Keyword `delete` ပဵၼ်သင်?
**`delete`** ၸႂ်ႉတႃႇယႃႉပႅတ်ႈ (Free) Memory ဢၼ်ႁဝ်းယွၼ်းဝႆႉၼႂ်း Heap ၶႃႈ။
* **တႃႇ Variable တူဝ်လဵဝ်**: ၸႂ်ႉ `delete pointerName;`
* **တႃႇ Array**: ၸႂ်ႉ `delete[] pointerName;` (လူဝ်ႇလႆႈပႃး `[]` သေႇသေႇ)



---

### 2. Memory Leak ပဵၼ်သင်?
**Memory Leak** ပဵၼ်မိူဝ်ႈ:
1.  ႁဝ်းၸႂ်ႉ `new` တႃႇယွၼ်း Memory။
2.  ႁဝ်းလိုမ်းၸႂ်ႉ `delete` တႃႇထွၼ်မၼ်းၶိုၼ်း။
3.  Pointer ဢၼ်သိမ်း Address ၼၼ်ႉ "တၢႆ" ၵႂႃႇ (မိူၼ်ၼင်ႇဢွၵ်ႇ Function)၊ ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇၸၢင်ႈၵႂႃႇသင်ႇ Delete Memory တွၼ်ႈၼၼ်ႉလႆႈထႅင်ႈယဝ်ႉ။



---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    // 1. ယွၼ်း Memory
    int* pNumber = new int[100];
    int* pArray = new int[5];

    std::cout << "Using dynamic memory..." << std::endl;

    // 2. ၸႂ်ႉယဝ်ႉ ထွၼ်ၶိုၼ်း (Proper Clean-up)
    delete pNumber;      // ထွၼ် variable တူဝ်လဵဝ်
    delete[] pArray;     // ထွၼ် array

    // 3. Setting to nullptr (Best Practice)
    // ဝၢႆး delete ယဝ်ႉ၊ Pointer တေယင်းၸီႉဝႆႉတီႈ "Address ဢၼ်ပဝ်ႇ" ၼၼ်ႉယူႇ
    pNumber = nullptr; 
    pArray = nullptr;

    return 0;
}
```

---

### 4. Dangling Pointers (Pointer ဢၼ်ၸီႉၵၢင်ႁၢဝ်)
ပေႃးႁဝ်း `delete` Memory ၵႂႃႇယဝ်ႉ ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇပၼ်ၵႃႈၶၼ် `nullptr` သႂ်ႇၼႂ်း Pointer၊ မၼ်းတေပဵၼ် **Dangling Pointer** ၶႃႈ။ 
ပေႃးႁဝ်းၵႂႃႇၸႂ်ႉ `*pNumber` ထႅင်ႈပွၵ်ႈၼိုင်ႈ၊ ပရူဝ်ႇၶႅမ်ႇတေ Crash ၵမ်းလဵဝ် ၵွပ်ႈမၼ်းၵႂႃႇပိုတ်ႇႁွင်ႈ ဢၼ်ႁဝ်းပၼ်ၶိုၼ်း ၼၼ်ႉယဝ်ႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`delete`**: ၸႂ်ႉတႃႇထွၼ် Memory တွၼ်ႈဢွၼ်ႇ။
* **`delete[]`**: ၸႂ်ႉတႃႇထွၼ် Array။
* **Memory Leak**: ၵၢၼ်လိုမ်းထွၼ် Memory ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉယဝ်ႉ။
* **`nullptr`**: ပဵၼ်ၵၢၼ် "ပိၵ်ႉ" ၼိဝ်ႉမိုဝ်း Pointer ဝၢႆး delete ယဝ်ႉ တႃႇလွင်ႈလွတ်ႈၽေး။

---