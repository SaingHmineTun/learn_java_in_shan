# Lesson 75: Polymorphism: One Interface, Multiple Behaviors

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၶေႃႈၵႂၢမ်း **Polymorphism** ၼႆႉ လုၵ်ႉတီႈၵႂၢမ်း Greek မႃး (Poly = မီးၼမ်၊ Morph = ႁၢင်ႈၽၢင်) သေ
ပွင်ႇဝႃႈ **"မီးလၢႆႁၢင်ႈၽၢင်"** ၶႃႈ။ 
ၼႂ်း C++ မၼ်းမၢႆထိုင်လွင်ႈဢၼ် **Interface လဵဝ်ၵၼ်** (မိူၼ်ၼင်ႇ ၸိုဝ်ႈ Function လဵဝ်ၵၼ်) ၵူၺ်းၵႃႈ မၼ်းၸၢင်ႈ **ႁဵတ်းၵၢၼ်လၢႆလၢႆမဵဝ်း** 
ၸွမ်းၼင်ႇ Object ဢၼ်ႁဝ်းၸႂ်ႉယူႇၼၼ်ႉၶႃႈ။



---

### 1. ပိူင်လူင်ၶွင် Polymorphism
တႃႇတေမီး Polymorphism တႄႉတႄႉ (Runtime Polymorphism) ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမီး 3 ပိူင်ၼႆႉၶႃႈ:
1.  **Inheritance**: မီးၵၢၼ်သိုပ်ႇၸိူဝ်ႉဝႆႉ။
2.  **Function Overriding**: မီး Virtual Function ဢၼ်လုၵ်ႈ Override ဝႆႉ။
3.  **Base Pointer/Reference**: ၸႂ်ႉ Pointer ၶွင် "ပေႃႈ" တႃႇၸီႉၸူး "လုၵ်ႈ"။

---

### 2. ၵၢၼ်တႅမ်ႈ Code (Syntax)

တူၺ်းတူဝ်ယၢင်ႇ ဢၼ်ႁဝ်းဢဝ် Animal မႃးၸႂ်ႉႁူမ်ႈၵၼ်လၢႆလၢႆတူဝ်ၶႃႈ:

```cpp
#include <iostream>
#include <vector>

class Animal {
public:
    virtual void makeSound() = 0; // Pure Virtual (Interface)
    virtual ~Animal() {}
};

class Dog : public Animal {
public:
    void makeSound() override { std::cout << "Woof! Woof!" << std::endl; }
};

class Cat : public Animal {
public:
    void makeSound() override { std::cout << "Meow! Meow!" << std::endl; }
};

class Bird : public Animal {
public:
    void makeSound() override { std::cout << "Tweet! Tweet!" << std::endl; }
};

int main() {
    // ၸႂ်ႉ Vector သိမ်း Pointer ၶွင် Animal (ပေႃႈ)
    std::vector<Animal*> zoo;

    // ထႅမ်သတ်းလၢႆလၢႆမဵဝ်း (လုၵ်ႈ) ၶဝ်ႈၵႂႃႇ
    zoo.push_back(new Dog());
    zoo.push_back(new Cat());
    zoo.push_back(new Bird());

    // --- တီႈၼႆႈပဵၼ် Polymorphism တႄႉတႄႉယဝ်ႉ ---
    for (Animal* a : zoo) {
        a->makeSound(); // Interface လဵဝ်ၵၼ် (makeSound) ၵူၺ်းၵႃႈ ၼေလၢႆသဵင်
    }

    // Clean up memory
    for (Animal* a : zoo) delete a;
    
    return 0;
}
```

---

### 3. ၽွၼ်းလီၶွင် Polymorphism
1.  **Extensibility**: သင်ဝႃႈမိူဝ်ႈၽုၵ်ႈ ၸဝ်ႈၵဝ်ႇၶႂ်ႈထႅမ် Class **Lion**၊ ၸဝ်ႈၵဝ်ႇၵူၺ်းလူဝ်ႇတႅမ်ႈ Class Lion သေထႅမ်ၶဝ်ႈ Vector ၵူၺ်း။ Code ၼႂ်း `for` loop တေဢမ်ႇလူဝ်ႇမႄးသင်သေဢိတ်း၊ မၼ်းတေႁဵတ်းၵၢၼ်ပၼ်ႁင်းၵူၺ်းၶႃႈ။
2.  **Simplification**: ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇၸႂ်ႉ `if-else` တႃႇၵူတ်ႇထတ်းဝႃႈ "ၼႆႉပဵၼ်မႃႁႃႉ? ၼႆႉပဵၼ်မႅဝ်ႁႃႉ?"။ C++ တေလိူၵ်ႈပၼ်ႁင်းၵူၺ်း (Dynamic Dispatch) ၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Polymorphism**: Interface လဵဝ်ၵၼ်၊ မီးလႆႈ Behavior (ၵၢၼ်ႁဵတ်း) လၢႆလၢႆဢၼ်။
* **Runtime Polymorphism**: ၸႂ်ႉ `virtual` လႄႈ `Base Pointer`။
* **Power**: ၸွႆႈႁႂ်ႈ Code ႁဝ်းယိုတ်းယၢင် (Flexible) လႄႈ မႄးလႆႈငၢႆႈ (Scalable) ၶႃႈ။

---