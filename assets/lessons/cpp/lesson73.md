# Lesson 73: Virtual Functions: Enabling Dynamic Dispatch

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 72, ႁဝ်း Override Function လႆႈယဝ်ႉ။ 
ၵူၺ်းၵႃႈ မၼ်းမီးပၼ်ႁႃဢၼ်ၼိုင်ႈ: 
သင်ႁဝ်းၸႂ်ႉ **Base Class Pointer** (မိူၼ်ၼင်ႇ `Animal*`) တႃႇၸီႉၸူး Object ၶွင် `Dog`, သေႁဝ်းႁွင်ႉ `makeSound()` ၼႆ၊ 
C++ တေႁွင်ႉဢဝ် Method ၶွင် "ပေႃႈ" (Animal) မႃးၸႂ်ႉၵူၺ်း၊ 
မၼ်းတေဢမ်ႇႁွင်ႉၶွင် "လုၵ်ႈ" (Dog) ၶႃႈ။ တႃႇတေၵႄႈလွင်ႈၼႆႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Keyword **`virtual`** ၶႃႈ။



---

### 1. ပၼ်ႁႃသင်ၵိူတ်ႇၶိုၼ်ႈ (The Problem)
မိူဝ်ႈဢမ်ႇပႃး `virtual`, C++ တေလိူၵ်ႈ Function ၸွမ်းၼင်ႇ **"Type ၶွင် Pointer"** (Static Binding) ၶႃႈ။

```cpp
Animal* ptr = new Dog();
ptr->makeSound(); // တေၼေ "Animal Sound" (ၵွပ်ႈ ptr ပဵၼ် Type Animal)
```

---

### 2. Virtual Function ပဵၼ်သင်?
**Virtual Function** ပဵၼ် Method ၼႂ်း Base Class ဢၼ်ႁဝ်းမၢႆဝႆႉဝႃႈ "သင်မီးလုၵ်ႈမႃး Override မၼ်း၊ ႁႂ်ႈလိူၵ်ႈႁွင်ႉၶွင်လုၵ်ႈၼၼ်ႉတႅၼ်း"။ 
မၼ်းႁဵတ်းႁႂ်ႈၵိူတ်ႇ **Dynamic Binding** (ၵၢၼ်လိူၵ်ႈမိူဝ်ႈပရူဝ်ႇၶႅမ်ႇ Run ယူႇ) ၶႃႈ။

---

### 3. ၵၢၼ်တႅမ်ႈ Code (Syntax)

```cpp
#include <iostream>

class Animal {
public:
    // ၸႂ်ႉ Keyword 'virtual' ဝႆႉၽၢႆႇၼႃႈ
    virtual void makeSound() {
        std::cout << "Animal makes a generic sound." << std::endl;
    }
    // ႁဝ်းတေလႆႈမီး Virtual Destructor တႃႇလွင်ႈလွတ်ႈၽေး Memory
    virtual ~Animal() {} 
};

class Dog : public Animal {
public:
    void makeSound() override {
        std::cout << "Dog barks: Woof! Woof!" << std::endl;
    }
};

int main() {
    // ၸႂ်ႉ Base Pointer ၸီႉၸူး Derived Object
    Animal* ptr = new Dog();

    // တေႃႈလဵဝ် မၼ်းတေလိူၵ်ႈႁွင်ႉၶွင် Dog ယဝ်ႉ!
    ptr->makeSound(); // ၼေ: Dog barks: Woof! Woof!

    delete ptr;
    return 0;
}
```

---

### 4. Dynamic Dispatch (ၵၢၼ်သူင်ႇၵၢၼ်မိူဝ်ႈ Run)
မိူဝ်ႈႁဝ်းၸႂ်ႉ `virtual`, C++ တေၸႂ်ႉတွၼ်ႈၵၢၼ်ဢၼ်ႁွင်ႉဝႃႈ **v-table** (Virtual Table) တႃႇၵိုတ်းထတ်းတူၺ်းဝႃႈ "Object တႄႉတႄႉ ဢၼ် Pointer ၸီႉဝႆႉၼၼ်ႉ ပဵၼ်သင်?" 
သေၸင်ႇသူင်ႇၵၢၼ် (Dispatch) ၵႂႃႇၸူး Function ဢၼ်ထုၵ်ႇမႅၼ်ႈသုတ်းၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`virtual`**: တႅမ်ႈဝႆႉၼႂ်း Base Class တႃႇပၼ်သုၼ်ႇ Override လႆႈ။
* **Static Binding**: လိူၵ်ႈ Function မိူဝ်ႈ Compile (ၸွမ်းၼင်ႇ Pointer Type)။
* **Dynamic Binding**: လိူၵ်ႈ Function မိူဝ်ႈ Runtime (ၸွမ်းၼင်ႇ Object Type တႄႉတႄႉ)။
* **Rule**: သင်ၸဝ်ႈၵဝ်ႇမီး Virtual Function, တေလႆႈမီး **Virtual Destructor** ၸွမ်းသေႇသေႇၶႃႈ။

---