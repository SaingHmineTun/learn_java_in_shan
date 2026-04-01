# Lesson 80: Template Specialization: Handling Unique Data Types

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ဝူၼ်ႉတူၺ်းၶႃႈ၊ ႁဝ်းမီး Template Function ဢၼ်ၸႂ်ႉတႃႇ "ၼေၵႃႈၶၼ်" (Print value)။
* ပေႃးပဵၼ် `int` ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းၼေတူဝ်ၼပ်ႉ။
* ၵူၺ်းၵႃႈ ပေႃးပဵၼ် `bool` ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းၼေ `1` ဢမ်ႇၼၼ် `0`၊ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းၼေလိၵ်ႈဝႃႈ `"True"` ဢမ်ႇၼၼ် `"False"` ၶႃႈ။
  ၵၢၼ်မႄး Template ႁႂ်ႈတႅတ်ႉတေႃႇၸွမ်း Data Type မၢင်မဵဝ်းၼၼ်ႉ ႁွင်ႉဝႃႈ **Specialization** ၶႃႈ။



---

### 1. Function Template Specialization
ႁဝ်းတႅမ်ႈ Template ပိုၼ်ႉထၢၼ် (Generic) ဝႆႉဢွၼ်တၢင်း၊ 
သေၸင်ႇတႅမ်ႈတွၼ်ႈဢၼ် "ပႅၵ်ႇပိူင်ႈ" (Specialized) ၸွမ်းလၢႆးၼႆႉၶႃႈ:

```cpp
#include <iostream>

// 1. Generic Template (တႃႇၵူႈ Type)
template <typename T>
void printData(T data) {
    std::cout << "Data: " << data << std::endl;
}

// 2. Specialized Template (တႃႇ bool ၵူၺ်း)
// ၸႂ်ႉ template <> သေ သႂ်ႇ <bool> ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Function
template <>
void printData<bool>(bool data) {
    std::cout << "Boolean Data: " << (data ? "True" : "False") << std::endl;
}

int main() {
    printData(100);      // ႁွင်ႉၸႂ်ႉ Generic (Data: 100)
    printData(3.14);     // ႁွင်ႉၸႂ်ႉ Generic (Data: 3.14)
    printData(true);     // ႁွင်ႉၸႂ်ႉ Specialized (Boolean Data: True)
    
    return 0;
}
```

---

### 2. Class Template Specialization
ၸဝ်ႈၵဝ်ႇၵေႃႈၸၢင်ႈမႄး Class တင်းမူတ်း ႁႂ်ႈႁဵတ်းၵၢၼ်ပႅၵ်ႇပိူင်ႈလႆႈမိူၼ်ၵၼ်ၶႃႈ။ 
တူဝ်ယၢင်ႇ - Class `Storage` ဢၼ်သိမ်း Data၊ 
ၵူၺ်းၵႃႈ ပေႃးပဵၼ် `char` ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်း ၼေပဵၼ် ASCII Code တႅၼ်းၶႃႈ။

```cpp
template <typename T>
class Storage {
public:
    void show(T val) { std::cout << val << std::endl; }
};

// Specialization တႃႇ char
template <>
class Storage<char> {
public:
    void show(char val) { 
        std::cout << "Character: " << val << " (ASCII: " << (int)val << ")" << std::endl; 
    }
};
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Use Cases)
1.  **Optimization**: တႃႇ Data Type မၢင်မဵဝ်း ဢၼ်ၸၢင်ႈတႅမ်ႈၶူတ်ႉႁႂ်ႈဝႆးလိူဝ် (မိူၼ်ၼင်ႇ `bitset` တႃႇ `bool`)။
2.  **Type-Specific Logic**: မိူဝ်ႈလၢႆးၼပ်ႉသွၼ်ႇပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ ၵၢၼ်ၼိူင်း `char*` ဢၼ်လူဝ်ႇၸႂ်ႉ `strcmp` တႅၼ်း `==`)။
3.  **Readability**: ႁႂ်ႈ Output ဢွၵ်ႇမႃးတႅတ်ႈၼႅတ်ႈ ၸွမ်းၼင်ႇ Data Type ၼၼ်ႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Specialization**: ၵၢၼ်မႄး Template ႁႂ်ႈတႅတ်ႈတေႃးၸွမ်း Data Type ဢၼ်ၶႂ်ႈလိူၵ်ႈ။
* **Syntax**: ၸႂ်ႉ `template <>` သေမၢႆတွၼ်ႈ `<Type>` ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ။
* **Priority**: Compiler တေလိူၵ်ႈႁွင်ႉ Specialized version ဢွၼ်တၢင်း Generic version သေႇသေႇ သင်ဝႃႈ Type မၼ်းမႅၼ်ႈၵၼ်ၶႃႈ။

---