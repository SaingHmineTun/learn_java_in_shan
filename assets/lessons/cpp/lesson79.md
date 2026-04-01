# Lesson 79: Class Templates: Creating Reusable Data Structures

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ဝူၼ်ႉတူၺ်းၶႃႈ၊ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသၢင်ႈ Class `Box` တႃႇသိမ်းၶေႃႈမုၼ်း:
* တွၼ်ႈၼိုင်ႈ သိမ်း `int` (တူဝ်ၼပ်ႉ)။
* တွၼ်ႈၼိုင်ႈ သိမ်း `string` (ၸိုဝ်ႈၵူၼ်း)။
  သင်ဢမ်ႇၸႂ်ႉ Template, ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈ Class `IntBox` လႄႈ `StringBox` ၸႅၵ်ႇၵၼ်။ ၵူၺ်းၵႃႈ သင်ၸႂ်ႉ **Class Template**၊ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Class `Box` ၵမ်းလဵဝ်ၵူၺ်း သေပၼ်ႁႂ်ႈမၼ်းႁပ်ႉလႆႈၵူႈမဵဝ်းၶႃႈ။



---

### 1. Class Template ပဵၼ်သင်?
**Class Template** ပဵၼ်ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Class ဢၼ်မီး **Type Parameter** (မိူၼ်ၼင်ႇ `T`) ဝႆႉၼႂ်းမၼ်း။ 
မၼ်းတေၸွႆႈႁႂ်ႈ Attributes, Method Parameters, လႄႈ Return Types ပဵၼ် Generic တင်းမူတ်းၶႃႈ။

---

### 2. ၵၢၼ်တႅမ်ႈ Code (Syntax)

```cpp
#include <iostream>
#include <string>

// 1. ပိုၼ်ၽၢဝ်ႇ Template တူဝ် 'T'
template <typename T>
class Box {
private:
    T data; // သိမ်း Data ၸွမ်းၼင်ႇ Type T
public:
    Box(T value) : data(value) {}

    void setData(T value) {
        data = value;
    }

    T getData() {
        return data;
    }
};

int main() {
    // 2. သၢင်ႈ Box တႃႇသိမ်း int (လူဝ်ႇသႂ်ႇ <int>)
    Box<int> intBox(100);
    std::cout << "Integer Box: " << intBox.getData() << std::endl;

    // 3. သၢင်ႈ Box တႃႇသိမ်း string (လူဝ်ႇသႂ်ႇ <string>)
    Box<std::string> nameBox("Sai Mao");
    std::cout << "String Box: " << nameBox.getData() << std::endl;

    return 0;
}
```

---

### 3. လွင်ႈပႅၵ်ႇပိူင်ႈတင်း Function Templates
ၼႂ်း Function Template, Compiler ၸၢင်ႈ "ႁႃ Type" (Deduction) ပၼ်ႁင်းၵူၺ်းလႆႈ။ 
ၵူၺ်းၵႃႈ ၼႂ်း Class Template (မိူဝ်ႈပၢၼ် C++17 ဢမ်ႇပႆႇဢွၵ်ႇ)၊ 
ႁဝ်းလူဝ်ႇလႆႈမၢႆတွင်း **`<Type>`** ဝႆႉသေႇသေႇ မိူဝ်ႈသၢင်ႈ Object ၶႃႈ။



---

### 4. ၵၢၼ်တႅမ်ႈ Method ၽၢႆႇၼွၵ်ႈ Class
သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈတႅမ်ႈ Body ၶွင် Method ဝႆႉၽၢႆႇၼွၵ်ႈ Class Definition, ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႆႈတႅမ်ႈ `template <typename T>` ၶိုၼ်းၵူႈပွၵ်ႈၶႃႈ:

```cpp
template <typename T>
T Box<T>::getData() {
    return data;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Class Template**: ၸွႆႈႁႂ်ႈ Class ၼိုင်ႈဢၼ် ၸႂ်ႉလႆႈၸွမ်း လၢႆလၢႆ Data Type။
* **Reusability**: ယွမ်းၵၢၼ်တႅမ်ႈ Code သွၼ်ႉၵၼ်၊ ႁဵတ်းႁႂ်ႈမႄး Code လႆႈငၢႆႈ (တႅမ်ႈတီႈလဵဝ် မႄးလႆႈၵူႈ Type)။
* **Standard Library**: Container ၸိူဝ်းဢၼ်ႁဝ်းၸႂ်ႉယူႇ (မိူၼ်ၼင်ႇ `std::vector<int>`) ၼၼ်ႉၵေႃႈ ပဵၼ် Class Templates တင်းမူတ်းၶႃႈဢေႃႈ!

---