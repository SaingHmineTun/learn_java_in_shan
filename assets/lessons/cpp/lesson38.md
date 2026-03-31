# Lesson 38: Introduction to std::vector: The Dynamic Array

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 33 ႁဝ်းႁဵၼ်းလွင်ႈ **Array** ပိုၼ်ႉထၢၼ် (Static Array) မႃးယဝ်ႉ။ 
လွင်ႈယၢပ်ႇမၼ်းတႄႉ ပေႃးႁဝ်းသၢင်ႈ Size မၼ်းဝႆႉ 5 ယဝ်ႉ၊ ႁဝ်းတေမႃးထႅမ်ပဵၼ် 6 ၼၼ်ႉဢမ်ႇလႆႈၶႃႈ။ 
တႃႇတေၵႄႈလွင်ႈၼႆႉ C++ မီး **`std::vector`** ဢၼ်ပဵၼ် Dynamic Array ဢၼ်ၸၢင်ႈယႂ်ႇၶိုၼ်ႈႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းထႅမ်ၶေႃႈမုၼ်းသႂ်ႇၼၼ်ႉယဝ်ႉ။

---

### 1. Vector ပဵၼ်သင်? (What is a Vector?)
Vector ၼႆႉ မိူၼ်ၼင်ႇ Array ၵူၺ်းၶႃႈ၊ ၵူၺ်းၵႃႈ မၼ်းမီး "ဢဵၼ်ႁႅင်း" (Power) လိူဝ်:
* **Dynamic Size**: ႁဝ်းဢမ်ႇလူဝ်ႇလၢတ်ႈၼေ Size မၼ်းဝႆႉဢွၼ်တၢင်း။
* **Automatic Memory**: မၼ်းၵုမ်းထိင်း Memory ပၼ်ႁင်းၵူၺ်း။
* **Standard Library**: မၼ်းယူႇၼႂ်း `#include <vector>` ၶႃႈ။



---

### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Vector (Declaring a Vector)
တႃႇတေၸႂ်ႉ Vector၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼေ Data Type ဝႆႉၼႂ်း **Angle Brackets `< >`** ၶႃႈ။

* **Syntax**: `std::vector<dataType> vectorName;`

```cpp
#include <vector> // လူဝ်ႇပႃးဢၼ်ၼႆႉသေႇသေႇ

std::vector<int> scores;        // Vector ပဝ်ႇ ဢၼ်သိမ်း int
std::vector<std::string> names; // Vector ပဝ်ႇ ဢၼ်သိမ်း string
```

---

### 3. Static Array vs. std::vector

| Feature | Static Array (`int arr[5]`) | Modern `std::vector` |
| :--- |:----------------------------| :--- |
| **Size** | Fixed (ပိူင်ႈတၢႆ)           | Dynamic (ယိုတ်းလႆႈ) |
| **Memory** | Stack Memory                | Heap Memory (Flexible) |
| **Functions** | ဢမ်ႇမီး Function ၸွႆႈ       | မီး `.push_back()`, `.size()`, etc. |
| **Ease of Use** | ယၢပ်ႇ မိူဝ်ႈလူဝ်ႇထႅမ် Data  | ငၢႆႈ လႄႈ လွတ်ႈၽေးလိူဝ် |

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <vector>
#include <string>

int main() {
    // 1. သၢင်ႈ Vector ပဝ်ႇ
    std::vector<std::string> students;

    // 2. ၸၢမ်းပၼ်ၵႃႈၶၼ် တႄႇဢၼ် (မိူၼ် Array)
    std::vector<int> luckyNumbers = {7, 9, 13};

    std::cout << "Vector created successfully!" << std::endl;
    std::cout << "Initial size of luckyNumbers: " << luckyNumbers.size() << std::endl;

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`std::vector`**: ပဵၼ် Array ဢၼ်သႅၼ်း (Size) မၼ်းလႅၵ်ႈလၢႆႈလႆႈ။
* လူဝ်ႇလႆႈ `#include <vector>` တႃႇၸႂ်ႉတိုဝ်း။
* ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၶႅမ်ႇ C++ ပၢၼ်မႂ်ႇ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **Vector** တႅၼ်း Array ပိုၼ်ႉထၢၼ် ၵွပ်ႈမၼ်းငၢႆႈ လႄႈ မီးလွင်ႈလွတ်ႈၽေးလိူဝ်ၶႃႈ။

---