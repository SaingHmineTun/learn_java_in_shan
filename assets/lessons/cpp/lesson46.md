# Lesson 6.46: Efficiency: Pass-by-Reference with &

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 45 ႁဝ်းႁူႉယဝ်ႉဝႃႈ Pass-by-Value မၼ်း "ၵေႃႇပီႇ" ၶေႃႈမုၼ်းသေသူင်ႇ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းမီး **Vector** ဢၼ်သိမ်းၸိုဝ်ႈၵူၼ်း 1,000 ၵေႃႉ၊ ၵၢၼ်ၵေႃႇပီႇမၼ်းတေႁဵတ်းႁႂ်ႈၶမ်ႇပိဝ်ႇတႃႇ ဢိူၼ် (Slow) ၵႂႃႇၶႃႈ။ 
**Pass-by-Reference** ၼႆႉ မႃးၸွႆႈႁႂ်ႈႁဝ်းသူင်ႇ "သဵၼ်ႈတၢင်း" (Address) ၵႂႃႇၸူး Variable တူဝ်တႄႉ လူၺ်ႈၸႂ်ႉတူဝ် **`&`** (Ampersand) ၶႃႈ။

---

### 1. Pass-by-Reference ပဵၼ်သင်?
**Pass-by-Reference** ပွင်ႇၸႂ်ဝႃႈ:
* Function တေဢမ်ႇလႆႈႁပ်ႉဢဝ်တူဝ်ၵေႃႇပီႇ၊ မၼ်းလႆႈႁပ်ႉဢဝ် **"ၸိုဝ်ႈတီႈယူႇ" (Alias)** ၶွင် Variable တူဝ်တႄႉ။
* သင်ဝႃႈႁဝ်းလႅၵ်ႈလၢႆႈၵႃႈၶၼ်ၼႂ်း Function၊ Variable **တူဝ်တႄႉၵေႃႈတေလႅၵ်ႈလၢႆႈၸွမ်း** ၵမ်းလဵဝ်ၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

// ၸႂ်ႉ & တႃႇႁပ်ႉဢဝ် Reference (တူဝ်တႄႉ)
void reallyChangeValue(int &x) {
    x = 100; // လႅၵ်ႈၵႃႈၶၼ် Variable တူဝ်တႄႉ
}

int main() {
    int myNumber = 20;
    
    std::cout << "Before function: " << myNumber << std::endl; // 20
    
    reallyChangeValue(myNumber); // သူင်ႇ myNumber သႂ်ႇ (Pass-by-Reference)
    
    std::cout << "After function: " << myNumber << std::endl;  // ပဵၼ် 100 ယဝ်ႉ!
    
    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Why use it?)
1.  **Efficiency**: ဢမ်ႇလူဝ်ႇၵေႃႇပီႇၶေႃႈမုၼ်းယႂ်ႇယႂ်ႇ (မိူၼ်ၼင်ႇ `std::string` ဢမ်ႇၼၼ် `std::vector`)၊ ႁဵတ်းႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇ။
2.  **Modify Original**: မိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Function ၼၼ်ႉ မႄးပၼ်ၶေႃႈမုၼ်းႁဝ်းတႄႉတႄႉ။
3.  **Multiple Returns**: Function ၼိုင်ႈဢၼ် သူင်ႇ `return` လႆႈၵႃႈၶၼ်ဢၼ်လဵဝ်ၵူၺ်း။ ၵူၺ်းၵႃႈ ပေႃးၸႂ်ႉ Reference ႁဝ်းၸၢင်ႈမႄး (Update) Variable လၢႆလၢႆတူဝ် ၼႂ်းပွၵ်ႈလဵဝ်ၶႃႈ။

---

### 4. မၢႆတွင်း: `const` Reference
ပေႃးႁဝ်းၶႂ်ႈလႆႈ **လွင်ႈဝႆး** (ဢမ်ႇၵေႃႇပီႇ) ၵူၺ်းၵႃႈ **ဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းမႄး** (Safety) ၶေႃႈမုၼ်းႁဝ်း၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`const`** ၶႃႈ:
```cpp
void printBigData(const std::string &data) {
    // data = "new"; // Error! မႄးဢမ်ႇလႆႈ ၵွပ်ႈပဵၼ် const
    std::cout << data << std::endl;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`&`**: ၸႂ်ႉတႃႇႁပ်ႉ Reference (တူဝ်တႄႉ) ၼႂ်း Parameter။
* **Pass-by-Reference**: ဢမ်ႇၵေႃႇပီႇ၊ မႄး Variable တူဝ်တႄႉလႆႈ။
* ၸႂ်ႉတႃႇၶေႃႈမုၼ်းယႂ်ႇယႂ်ႇ တႃႇႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ **ဝႆး (Efficient)**။

---
