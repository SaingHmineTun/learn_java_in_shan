# Lesson 6.45: Parameters: The Pass-by-Value Mechanism

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းသူင်ႇ Variable တူဝ်ၼိုင်ႈ သႂ်ႇၼႂ်း Function ၼၼ်ႉ၊ ၸဝ်ႈၵဝ်ႇဝူၼ်ႉဝႃႈ C++ ဢဝ် Variable တူဝ်တႄႉမၼ်း ၵႂႃႇၸႂ်ႉႁႃႉ? 
ဢမ်ႇၼၼ် မၼ်းၵူၺ်းဢဝ် "ၵႃႈၶၼ်" မၼ်းၵႂႃႇၸႂ်ႉ? ၼႂ်း C++၊ 
ပိုၼ်ႉထၢၼ်မၼ်းပဵၼ် **Pass-by-Value** ၶႃႈ။ မၼ်းတေ "ၵေႃႇပီႇ" (Copy) ၶေႃႈမုၼ်းၼၼ်ႉသေ ၸင်ႇသူင်ႇသႂ်ႇၼႂ်း Function ၶႃႈယဝ်ႉ။

---

### 1. Pass-by-Value ပဵၼ်သင်?
**Pass-by-Value** ပွင်ႇၸႂ်ဝႃႈ:
* Function တေလႆႈႁပ်ႉဢဝ် **"တူဝ်ၵေႃႇပီႇ" (Copy)** ၶွင် Variable ၼၼ်ႉၵူၺ်း။
* သင်ဝႃႈႁဝ်းလႅၵ်ႈလၢႆႈၵႃႈၶၼ် Variable ၼၼ်ႉ "တီႈၼႂ်း" Function ၸိုင်၊ မၼ်း **တေဢမ်ႇတိူဝ်ႉၽႅဝ် (Affect)** Variable တူဝ်တႄႉ ဢၼ်ယူႇတီႈ `main()` ၼၼ်ႉၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

// Function ဢၼ်ၸၢမ်းလႅၵ်ႈၵႃႈၶၼ်
void changeValue(int x) {
    x = 100; // လႅၵ်ႈၵႃႈၶၼ် x (ဢၼ်ပဵၼ်တူဝ်ၵေႃႇပီႇ)
    std::cout << "Inside function: " << x << std::endl;
}

int main() {
    int myNumber = 20;
    
    std::cout << "Before function: " << myNumber << std::endl; // 20
    
    changeValue(myNumber); // သူင်ႇ myNumber သႂ်ႇ (Pass-by-Value)
    
    std::cout << "After function: " << myNumber << std::endl;  // ယင်းပဵၼ် 20 ယူႇ!
    
    return 0;
}
```

---

### 3. လွင်ႈလီ လႄႈ လွင်ႈယၢပ်ႇ (Pros & Cons)

| Feature | Pass-by-Value |
| :--- | :--- |
| **Safety** | **သုင်**: Function ဢမ်ႇၸၢင်ႈၵႂႃႇမႄး Variable တူဝ်တႄႉႁဝ်းလႆႈ။ |
| **Independence** | Variable ၼႂ်း Function လႄႈ ၼွၵ်ႈ Function ၸႅၵ်ႇၵၼ်ၶႃႈ။ |
| **Performance** | **ဢိူၼ် (Slow)**: ပေႃးသူင်ႇၶေႃႈမုၼ်းယႂ်ႇ (မိူၼ်ၼင်ႇ Vector လူင်)၊ မၼ်းတေလႆႈၵေႃႇပီႇ တင်းမူတ်း ႁဵတ်းႁႂ်ႈၸႂ်ႉ Memory ၼမ်။ |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Pass-by-Value**: ပဵၼ်ၵၢၼ်သူင်ႇ **"တူဝ်ၵေႃႇပီႇ"** သႂ်ႇၼႂ်း Function။
* လွင်ႈလႅၵ်ႈလၢႆႈၼႂ်း Function တေဢမ်ႇတိူဝ်ႉ Variable တူဝ်တႄႉ။
* ၸႂ်ႉလႆႈလီ တႃႇတူဝ်ၼပ်ႉဢွၼ်ႇ (Basic types) မိူၼ်ၼင်ႇ `int`, `double`, `bool` ၶႃႈ။

---