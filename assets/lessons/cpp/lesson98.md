
# Lesson 98: Lambda Expressions in C++

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈ ႁဝ်းလူဝ်ႇ Function ဢွၼ်ႇၼိုင်ႈဢၼ် တႃႇၸႂ်ႉၼႂ်း STL Algorithm (မိူၼ်ၼင်ႇ `sort()` ဢမ်ႇၼၼ် `find_if()`) ၵမ်းလဵဝ်ၵူၺ်း။ 
တႅၼ်းဢၼ်တေၵႂႃႇတႅမ်ႈ `void myFunction()` ဝႆႉၽၢႆႇၼွၵ်ႈ၊ ႁဝ်းၸၢင်ႈတႅမ်ႈ Lambda ဝႆႉၼႂ်းထႅဝ်လိၵ်ႈ (Inline) ၼၼ်ႉလႆႈၶႃႈ။

---

### 1. Lambda Syntax (ပိူင်တႅမ်ႈ)
ပိူင်တႅမ်ႈ Lambda မီး 3 တွၼ်သေ ႁဝ်းႁွင်ႉဝႃႈ **Capture**, **Parameters**, လႄႈ **Body** ၶႃႈ:

$$[capture](parameters) -> return\_type \{ body; \};$$



* **`[]` (Capture Clause)**: ၸႂ်ႉတႃႇ "ၸၼ်ဢဝ်" Variables ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈ Lambda ၶဝ်ႈမႃးၸႂ်ႉဝႆႉၼႂ်းမၼ်း။
* **`()` (Parameter List)**: မိူၼ်တင်း Parameter ၶွင် Function။
* **`{}` (Function Body)**: တွၼ်ႈတႅမ်ႈ Logic ၵၢၼ်ႁဵတ်းၵၢၼ်။

---

### 2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉ Lambda ပိုၼ်ႉထၢၼ်

```cpp
#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    auto greet = []() { 
        std::cout << "Hello from Lambda!" << std::endl; 
    };

    greet(); // ႁွင်ႉၸႂ်ႉမိူၼ် Function ပၵ်းယၢမ်ႇ

    // ၸႂ်ႉ Parameter
    auto add = [](int a, int b) { 
        return a + b; 
    };
    std::cout << "Sum: " << add(5, 10) << std::endl;

    return 0;
}
```

---

### 3. ၵၢၼ်ၸႂ်ႉ Lambda ႁူမ်ႈတင်း STL Algorithms
ၼႆႉပဵၼ်တီႈဢၼ် Lambda မီးၽွၼ်းလီသုင်သုတ်းၶႃႈ။ မိူၼ်ၼင်ႇ ႁဝ်းၶႂ်ႈသီႇ (Sort) ၶေႃႈမုၼ်းၸွမ်းၼင်ႇပိူင် "ပႅၵ်ႇပိူင်ႈ" ႁင်းၵူၺ်း:

```cpp
#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    std::vector<int> nums = {1, 4, 2, 8, 5, 7};

    // ၸႂ်ႉ Lambda တႃႇၶပ်ႉပၼ် ယႂ်ႇလူင်းဢွၼ်ႇ
    std::sort(nums.begin(), nums.end(), [](int a, int b) {
        return a > b; 
    });

    // ၸႂ်ႉ find_if တႃႇႁႃတူဝ်ၼပ်ႉဢၼ် "ပဵၼ်တူဝ်ၵူပ်ႉ (Even)"
    auto it = std::find_if(nums.begin(), nums.end(), [](int n) {
        return n % 2 == 0;
    });

    if (it != nums.end()) {
        std::cout << "First even number found: " << *it << std::endl;
    }

    return 0;
}
```

---

### 4. Capture Clause (`[]`) လမ်ႇလွင်ႈၸိူင်ႉႁိူဝ်?
သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈၸႂ်ႉ Variable ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈ Lambda၊ ၸဝ်ႈၵဝ်ႇတေလႆႈ "Capture" မၼ်းၶႃႈ:
* **`[x]`**: Capture Variable `x` လူၺ်ႈၵႃႈၶၼ် (Value) - မႄးမၼ်းၼႂ်း Lambda ဢမ်ႇလႆႈ။
* **`[&x]`**: Capture Variable `x` လူၺ်ႈ Reference - မႄးမၼ်းၼႂ်း Lambda လႆႈ။
* **`[=]`**: Capture Variables တင်းမူတ်းလူၺ်ႈ Value။
* **`[&]`**: Capture Variables တင်းမူတ်းလူၺ်ႈ Reference။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Lambda**: ပဵၼ် Function ဢွၼ်ႇဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ ဢၼ်တႅမ်ႈဝႆႉၸႂ်ႉၵမ်းလဵဝ်။
* **Convenience**: ၸွႆႈႁႂ်ႈ Code သႅၼ်ႈသႂ် ၵွပ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇတႅမ်ႈ Function ႁင်းၵူၺ်းဝႆႉလၢႆတီႈ။
* **Flexibility**: ၸႂ်ႉလႆႈလီတႄႉတႄႉ ႁူမ်ႈတင်း STL Algorithms တႃႇၵူတ်ႇထတ်း (Predicates) ဢမ်ႇၼၼ် သီႇ (Sorting) ၶေႃႈမုၼ်းၶႃႈ။

---