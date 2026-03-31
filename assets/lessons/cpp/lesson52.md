# Lesson 52: Introduction to Pointers: Storing Memory Addresses

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 51 ႁဝ်းႁၼ်ယဝ်ႉဝႃႈ Variable ၵူႈတူဝ် မီး Address (မၢႆလိၵ်ႈႁိူၼ်း)။ 
တေႃႈလဵဝ်၊ ပေႃးႁဝ်းၶႂ်ႈသိမ်း "မၢႆလိၵ်ႈႁိူၼ်း" ၼၼ်ႉဝႆႉၼႂ်း Variable ထႅင်ႈတူဝ်ၼိုင်ႈလူး? 
Variable ဢၼ်မီးၼႃႈၵၢၼ်သိမ်း Address ၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Pointer** ၶႃႈယဝ်ႉ။

---

### 1. Pointer ပဵၼ်သင်? (What is a Pointer?)
**Pointer** ပဵၼ် Variable ဢၼ် "ၸီႉ" (Points) ၵႂႃႇတီႈ Variable တၢင်ႇတူဝ် လူၺ်ႈၵၢၼ်သိမ်း **Memory Address** ၶွင် Variable ၼၼ်ႉဝႆႉၶႃႈ။



---

### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Pointer (Declaring Pointers)
တႃႇတေႁဵတ်းႁႂ်ႈ C++ ႁူႉဝႃႈ Variable ၼႆႉပဵၼ် Pointer၊ ႁဝ်းလူဝ်ႇၸႂ်ႉတူဝ် **`*`** (Asterisk) ၽၢႆႇလင် Data Type ၶႃႈ။

* **Syntax**: `dataType* pointerName;`

```cpp
int* pScore;    // Pointer တႃႇသိမ်း Address ၶွင် int
double* pPrice; // Pointer တႃႇသိမ်း Address ၶွင် double
```

---

### 3. ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Initializing Pointers)
ႁဝ်းဢဝ် **Address-of Operator (`&`)** ၼၼ်ႉ မႃးပၼ်ၵႃႈၶၼ်သႂ်ႇၼႂ်း Pointer ၶႃႈ။

```cpp
#include <iostream>

int main() {
    int age = 25;      // Regular variable
    int* pAge = &age;  // Pointer 'pAge' သိမ်း Address ၶွင် 'age'

    std::cout << "Value of age: " << age << std::endl;         // 25
    std::cout << "Address of age (&age): " << &age << std::endl; 
    std::cout << "Value in pAge (Address): " << pAge << std::endl; // မိူၼ် &age

    return 0;
}
```

---

### 4. ၶေႃႈမၢႆတွၼ်ႈ လွင်ႈၸႂ်ႉတိုဝ်း
* **Data Type Match**: Pointer တေလႆႈမီး Type မိူၼ်တင်း Variable ဢၼ်မၼ်းတေၸီႉၵႂႃႇ (မိူၼ်ၼင်ႇ `int*` ၸီႉၵႂႃႇတီႈ `int`)။
* **Null Pointer**: ပေႃး Pointer ႁဝ်းပႆႇမီးတီႈၸီႉ၊ ႁဝ်းလူဝ်ႇလႆႈပၼ်ၵႃႈၶၼ်ဝႃႈ **`nullptr`** (C++11) တႃႇႁႄႉၵင်ႈလွင်ႈပရူဝ်ႇၶႅမ်ႇ Crash ၶႃႈ။
    ```cpp
    int* pNumber = nullptr; // သိမ်းဝႆႉပဝ်ႇပဝ်ႇဢွၼ်တၢင်း
    ```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Pointer**: Variable ဢၼ်သိမ်း **Memory Address**။
* **`*`**: ၸႂ်ႉတႃႇပိုၼ်ၽၢဝ်ႇ (Declare) Pointer။
* **`&`**: ၸႂ်ႉတႃႇဢဝ် Address ၶွင် Variable သႂ်ႇၼႂ်း Pointer။
* Pointer ႁဵတ်းႁႂ်ႈႁဝ်း "ဢဝ်ၸႂ်ႉ" (Indirectly access) ၶေႃႈမုၼ်းလႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇႁွင်ႉၸိုဝ်ႈ Variable တူဝ်တႄႉမၼ်းၵေႃႈလႆႈၶႃႈ။

---