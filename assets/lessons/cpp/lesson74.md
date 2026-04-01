# Lesson 74: Pure Virtual Functions and Abstract Classes

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ်၊ Base Class ႁဝ်းၼၼ်ႉ မၼ်း "ၵႂၢင်ႈလိူဝ်ႁႅင်း" တေႃႇပေႃးဢမ်ႇပွင်ႇၸႂ်ဝႃႈ မၼ်းလူဝ်ႇႁဵတ်းၵၢၼ်ၸိူင်ႉႁိူဝ်။ 
တူဝ်ယၢင်ႇ - Class **Shape (ႁၢင်ႈဝတ်ႉထု)**။ 
ႁဝ်းႁူႉဝႃႈ Shape ၵူႈဢၼ်လူဝ်ႇမီးၵၢၼ် "တႅမ်ႈႁၢင်ႈ" (`draw()`)၊ ၵူၺ်းၵႃႈ Shape ပဝ်ႇပဝ်ႇၼၼ်ႉ မၼ်းတေတႅမ်ႈႁၢင်ႈၸိူင်ႉႁိူဝ်? 
မၼ်းဢမ်ႇမီးႁၢင်ႈတႅတ်ႈတေႃး။ 
ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ **Pure Virtual Function** တႃႇသင်ႇဝႃႈ "လုၵ်ႈၵူႈတူဝ် လူဝ်ႇလႆႈမီး Method ၼႆႉ၊ ၵူၺ်းၵႃႈ ပေႃး/ငဝ်ႈ တေဢမ်ႇတႅမ်ႈ Body မၼ်းဝႆႉပၼ်" ၼႆၶႃႈ။

---

### 1. Pure Virtual Function ပဵၼ်သင်?
**Pure Virtual Function** ပဵၼ် Virtual Function ဢၼ်ဢမ်ႇမီးၵၢၼ်တႅမ်ႈ (Implementation) ၼႂ်း Base Class။ 
ႁဝ်းၸႂ်ႉ Symbol **`= 0`** ဝႆႉၽၢႆႇလင်မၼ်းၶႃႈ။



---

### 2. Abstract Class ပဵၼ်သင်?
**Abstract Class** ပဵၼ် Class ဢၼ်မီး Pure Virtual Function ယူႇၼႂ်းမၼ်း။
* **မၢႆမီႈ (Rule)**: ႁဝ်း **ဢမ်ႇၸၢင်ႈသၢင်ႈ Object** ၶွင် Abstract Class လႆႈ။
* **ၼႃႈၵၢၼ် (Purpose)**: ၸႂ်ႉတႃႇပဵၼ် Interface ဢမ်ႇၼၼ် ပိူင်ငဝ်ႈ (Blueprint) တွၼ်ႈတႃႇ Derived Classes ၵူၺ်း။

---

### 3. ၵၢၼ်တႅမ်ႈ Code (Syntax)

```cpp
#include <iostream>

// 1. Abstract Base Class
class Shape {
public:
    // Pure Virtual Function
    virtual void draw() = 0; 

    // Virtual Destructor (လူဝ်ႇလႆႈမီးသေႇသေႇ)
    virtual ~Shape() {}
};

// 2. Concrete Class (Derived)
class Circle : public Shape {
public:
    // လူဝ်ႇလႆႈ Override Pure Virtual Function ၼႆႉ ယႃႇၼွႆႉ
    void draw() override {
        std::cout << "Drawing a Circle..." << std::endl;
    }
};

class Square : public Shape {
public:
    void draw() override {
        std::cout << "Drawing a Square..." << std::endl;
    }
};

int main() {
    // Shape s; // ERROR! ဢမ်ႇၸၢင်ႈသၢင်ႈ Object လုၵ်ႉတီႈ Abstract Class
    
    Shape* s1 = new Circle();
    Shape* s2 = new Square();

    s1->draw(); // ၼေ: Drawing a Circle...
    s2->draw(); // ၼေ: Drawing a Square...

    delete s1;
    delete s2;
    return 0;
}
```

---

### 4. Concrete Class ပွင်ႇဝႃႈသင်?
**Concrete Class** ပဵၼ် Derived Class ဢၼ်လႆႈတႅမ်ႈ (Override) တႃႇ Pure Virtual Functions ၶွင် Base Class ယဝ်ႉတူဝ်ႈယဝ်ႉ။ 
မၼ်းၸင်ႇတေပဵၼ် Class ဢၼ်သၢင်ႈ Object လႆႈတႄႉတႄႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Pure Virtual Function**: Function ဢၼ်မီး `= 0` သေ ဢမ်ႇမီး Body ၼႂ်း Base Class။
* **Abstract Class**: Class ဢၼ်သၢင်ႈ Object ဢမ်ႇလႆႈ၊ ၵူၺ်းၵႃႈ ၸီႉၸူး (Pointer) လႆႈ။
* **Interface**: ႁဝ်းၸႂ်ႉ Abstract Class တႃႇဝၢင်းပိူင် (Contract) ဝႃႈ "လုၵ်ႈ" တေလႆႈမီး Method သင်လၢႆလၢႆၶႃႈ။

---