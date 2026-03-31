# Lesson 64: Constructors: Initializing Your Objects

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တေႃႇထိုင်ယၢမ်းလဵဝ် မိူဝ်ႈႁဝ်းသၢင်ႈ Object ယဝ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈမႃးတႅမ်ႈထႅဝ်လိၵ်ႈလၢႆလၢႆထႅဝ် တႃႇပၼ်ၵႃႈၶၼ် (Initialize) ပၼ်မၼ်း (မိူၼ်ၼင်ႇ `s1.setName("Sai"); s1.setAge(20);`)။ 
ၵူၺ်းၵႃႈ ၼႂ်း OOP မီးလၢႆးဢၼ်ငၢႆႈလိူဝ်ၼၼ်ႉ၊ ၼၼ်ႉၵေႃႈပဵၼ်ၵၢၼ်ၸႂ်ႉ **Constructor** ၶႃႈ။

---

### 1. Constructor ပဵၼ်သင်?
**Constructor** ပဵၼ် Method ပိူင်လူင် (Special Method) ဢၼ်တေ **"ႁဵတ်းၵၢၼ်ႁင်းၵူၺ်း"** ၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းသၢင်ႈ Object မႂ်ႇတူဝ်ၼိုင်ႈၶႃႈ။

* **ပိူင်လူင်မၼ်း**:
    1. ၸိုဝ်ႈမၼ်း တေလႆႈ **"မိူၼ်တင်းၸိုဝ်ႈ Class"**။
    2. မၼ်း **"ဢမ်ႇမီး Return Type"** (`void` ၵေႃႈ ဢေဢမ်ႇလႆႈပႃး)။
    3. တေလႆႈဝႆႉၼႂ်းတွၼ်ႈ **`public:`** ၸင်ႇတေသၢင်ႈ Object လႆႈၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class SmartPhone {
private:
    std::string model;
    int price;

public:
    // 1. Constructor (ပၼ်ၵႃႈၶၼ်တႄႇဢၼ်)
    SmartPhone(std::string m, int p) {
        model = m;
        price = p;
        std::cout << "Object created for " << model << std::endl;
    }

    void showDetails() {
        std::cout << "Model: " << model << " | Price: " << price << std::endl;
    }
};

int main() {
    // 2. သၢင်ႈ Object သေသူင်ႇၵႃႈၶၼ်သႂ်ႇၵမ်းလဵဝ် (Initializing)
    SmartPhone phone1("iPhone 15", 999);
    SmartPhone phone2("Samsung S24", 899);

    phone1.showDetails();
    phone2.showDetails();

    return 0;
}
```

---

### 3. Default Constructor
သင်ဝႃႈႁဝ်းဢမ်ႇတႅမ်ႈ Constructor သင်သေမဵဝ်း၊ C++ တေၸွႆႈသၢင်ႈပၼ် **Default Constructor** (ဢၼ်ဢမ်ႇမီး Parameter) ဝႆႉပၼ်ႁင်းၵူၺ်းၶႃႈ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းတႅမ်ႈ Constructor ဢၼ်မီး Parameter ဝႆႉယဝ်ႉ၊ Default Constructor ၼၼ်ႉတေႁၢႆၵႂႃႇၶႃႈ။

---

### 4. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Benefits)
1.  **Efficiency**: ယွမ်းၵၢၼ်တႅမ်ႈၶူတ်ႉလၢႆထႅဝ် တႃႇပၼ်ၵႃႈၶၼ်။
2.  **Consistency**: ႁဵတ်းႁႂ်ႈ Object ၵူႈတူဝ် မီးၶေႃႈမုၼ်းတႄႇငဝ်ႈ (Starting data)။
3.  **Automatic**: မၼ်းႁဵတ်းၵၢၼ်ႁင်းၵူၺ်း၊ ႁဝ်းဢမ်ႇလူဝ်ႇႁွင်ႉၸႂ်ႉမၼ်းၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Constructor**: Method ဢၼ်ၸိုဝ်ႈမိူၼ် Class သေ ႁဵတ်းၵၢၼ်မိူဝ်ႈသၢင်ႈ Object။
* ၸႂ်ႉတႃႇ **Initialize** (ပၼ်ၵႃႈၶၼ်တႄႇဢၼ်) ပၼ် Attributes။
* ႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း "လူငၢႆႈ" လႄႈ "ပဵၼ်ပိူင်" လိူဝ်ၵဝ်ႇၶႃႈ။

---
