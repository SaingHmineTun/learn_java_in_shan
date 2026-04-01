# Lesson 77: Project: The Digital Zoo Simulation

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ႁဝ်းတေသၢင်ႈပိူင်သၢင်ႈ **သူၼ်သတ်း (Zoo)** ဢၼ်မီးသတ်းလၢႆလၢႆမဵဝ်း။ 
သတ်းၵူႈတူဝ် တေလႆႈမီး "ၸိုဝ်ႈ" လႄႈ "သဵင်ႁွင်ႉ"။ 
ႁဝ်းတေၸႂ်ႉ **Abstract Class** တႃႇဝၢင်းပိူင်သတ်းတင်းမူတ်း သေၸႂ်ႉ **Polymorphism** 
တႃႇႁႂ်ႈသတ်းၵူႈတူဝ် ၼေလွင်ႈၵတ်ႉၶႅၼ်ႇ (Behavior) ၶွင်ၽႂ်မၼ်းၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **Abstract Base Class (`Animal`)**: မီး Attributes `name` လႄႈ Pure Virtual Function `makeSound() = 0`။
2.  **Derived Classes (`Dog`, `Cat`, `Lion`)**: သိုပ်ႇၸိူဝ်ႉလုၵ်ႉတီႈ `Animal` မႃး သေ Override Method `makeSound()` ႁႂ်ႈပႅၵ်ႇၵၼ်။
3.  **Zoo Manager**: ၸႂ်ႉ `std::vector<Animal*>` တႃႇသိမ်း Pointer ၶွင်သတ်းတင်းမူတ်း။
4.  **Simulation Loop**: ၸႂ်ႉ Loop တူဝ်လဵဝ် တႃႇသင်ႇႁႂ်ႈသတ်းၵူႈတူဝ် ႁွင်ႉသဵင်ဢွၵ်ႇမႃး ၸွမ်းၼင်ႇၸိူဝ်ႉၽၼ်းမၼ်း။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>
#include <vector>
#include <string>

// 1. Abstract Base Class
class Animal {
protected:
    std::string name;
public:
    Animal(std::string name) : name(name) {}
    
    // Pure Virtual Function - ႁဵတ်းႁႂ်ႈ Animal ပဵၼ် Abstract
    virtual void makeSound() = 0; 
    
    virtual std::string getName() { return name; }
    virtual ~Animal() { std::cout << "[System] " << name << " left the zoo." << std::endl; }
};

// 2. Concrete Classes
class Dog : public Animal {
public:
    Dog(std::string name) : Animal(name) {}
    void makeSound() override {
        std::cout << name << " (Dog) says: Woof! Woof!" << std::endl;
    }
};

class Cat : public Animal {
public:
    Cat(std::string name) : Animal(name) {}
    void makeSound() override {
        std::cout << name << " (Cat) says: Meow! Meow!" << std::endl;
    }
};

class Lion : public Animal {
public:
    Lion(std::string name) : Animal(name) { }
    void makeSound() override {
        std::cout << name << " (Lion) ROARS: RRRAAAWWWRRR!" << std::endl;
    }
};

int main() {
    // 3. Zoo Management using Polymorphism
    std::vector<Animal*> myZoo;

    myZoo.push_back(new Dog("Aung Net"));
    myZoo.push_back(new Cat("Meow Lay"));
    myZoo.push_back(new Lion("Singha"));

    std::cout << "--- Welcome to the Digital Zoo ---" << std::endl;

    // 4. One Loop to control them all (Polymorphism in action)
    for (Animal* animal : myZoo) {
        std::cout << "Animal: " << animal->getName() << " -> ";
        animal->makeSound(); 
    }

    std::cout << "----------------------------------" << std::endl;

    // Clean up memory
    for (Animal* animal : myZoo) {
        delete animal;
    }

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **One Interface**: ႁဝ်းႁွင်ႉ `animal->makeSound()` မိူၼ်ၵၼ်တင်းမူတ်း၊ ၵူၺ်းၵႃႈ "သဵင်ဢွၵ်ႇ" ပႅၵ်ႇၵၼ်။ ၼႆႉပဵၼ်ယွၼ်ႉ **Virtual Functions** လႄႈ **Dynamic Binding** ၶႃႈ။
* **Scalability**: သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈထႅမ် "Bird" ဢမ်ႇၼၼ် "Elephant"၊ ၸဝ်ႈၵဝ်ႇၵူၺ်းလူဝ်ႇတႅမ်ႈ Class မႂ်ႇ သိုပ်ႇၸိူဝ်ႉတီႈ `Animal` သေထႅမ်ၶဝ်ႈ Vector ၵူၺ်း။ Code ၼႂ်း `main` တေဢမ်ႇလူဝ်ႇမႄးသင်သေဢိတ်းၶႃႈ။
* **Safety**: ၵၢၼ်ၸႂ်ႉ **Virtual Destructor** ၼႂ်း Base Class ၸွႆႈႁႂ်ႈမိူဝ်ႈႁဝ်း `delete animal` ၼၼ်ႉ၊ မၼ်းတေၵႂႃႇယႃႉ Memory ၼႂ်း Derived Class လႆႈထုၵ်ႇမႅၼ်ႈၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈ **Module 9** ယဝ်ႉၶႃႈ! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇပဵၼ် Programmer ဢၼ်ပွင်ႇၸႂ် OOP တႄႉတႄႉယဝ်ႉ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈဝၢင်းပိူင် Software ဢၼ်ယႂ်ႇလူင်၊ ၸႅၵ်ႇၸၼ်ႉထၢၼ် (Hierarchy) လႆႈလီ လႄႈ ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလၢႆလၢႆမဵဝ်း ႁူမ်ႈၵၼ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

---