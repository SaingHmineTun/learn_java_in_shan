# Lesson 69: The Power of Hierarchy: Base and Derived Classes

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်းလူၵ်ႈတႄႉတႄႉၼႆႉ ဝတ်ႉထုၵူႈပိူင် မီး "ၸၼ်ႉထၢၼ်" (Hierarchy) ၶွင်မၼ်းၶႃႈ။ 
တူဝ်ယၢင်ႇ - **မႃ (Dog)** ၼႆႉ မၼ်းပဵၼ် **သတ်း (Animal)** မဵဝ်းၼိုင်ႈ။ 
ပွင်ႇဝႃႈ သင်သေမဵဝ်းဢၼ် "သတ်း" ႁဵတ်းလႆႈ (မိူၼ်ၼင်ႇ ၵိၼ်၊ တူင်ႉၼိုင်)၊ "မႃ" ၵေႃႈတေလႆႈႁဵတ်းလႆႈၸွမ်းၶႃႈ။ 
ၼႂ်း C++ ႁဝ်းႁွင်ႉလွၵ်းလၢႆးၼႆႉဝႃႈ **Inheritance** ၶႃႈဢေႃႈ။

---

### 1. Base Class လႄႈ Derived Class ပဵၼ်သင်?

* **Base Class (Parent Class)**: ပဵၼ် Class "ပေႃႈ/ငဝ်ႈ" ဢၼ်မီးၶေႃႈမုၼ်း လႄႈ ၵၢၼ်ႁဵတ်းပိုၼ်ႉထၢၼ် (General class)။
* **Derived Class (Child Class)**: ပဵၼ် Class "လုၵ်ႈ/မႂ်ႇ" ဢၼ် "သိုပ်ႇၸိူဝ်ႉ" ဢဝ် Attributes လႄႈ Methods လုၵ်ႉတီႈ Base Class မႃးၸႂ်ႉ သေယဝ်ႉ မၼ်းယင်းၸၢင်ႈထႅမ်သႂ်ႇ လွင်ႈၵတ်ႉၶႅၼ်ႇၶွင်မၼ်းႁင်းၵူၺ်း (Specialized class)။



---

### 2. လွင်ႈၵပ်းသိုပ်ႇ "IS-A" (The IS-A Relationship)
မိူဝ်ႈၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ Inheritance ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇလူဝ်ႇၵူတ်ႇထတ်းဝႃႈ မၼ်းပဵၼ်လွင်ႈၵပ်းသိုပ်ႇ **"IS-A"** (မီးလွင်ႈၵွင်ႉၵၼ်ဝႆႉ) ႁႃႉ ၼႆၶႃႈ?
* **Dog** IS-A **Animal** (ထုၵ်ႇမႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)
* **Car** IS-A **Vehicle** (ထုၵ်ႇမႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)
* **Teacher** IS-A **Person** (ထုၵ်ႇမႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)

---

### 3. ၵၢၼ်တႅမ်ႈ Code (Syntax)
ႁဝ်းၸႂ်ႉတူဝ် **`:` (Colon)** တႃႇမၢႆတွၼ်ႈၵၢၼ် "သိုပ်ႇၸိူဝ်ႉ" (Inheritance) ၶႃႈ။

```cpp
#include <iostream>
#include <string>

// 1. Base Class (Parent)
class Animal {
public:
    std::string name;
    void eat() {
        std::cout << name << " is eating..." << std::endl;
    }
};

// 2. Derived Class (Child) - သိုပ်ႇၸိူဝ်ႉမႃးတီႈ Animal
class Dog : public Animal {
public:
    void bark() {
        std::cout << name << " is barking: Woof! Woof!" << std::endl;
    }
};

int main() {
    Dog myDog;
    myDog.name = "Aung Net"; // ၸႂ်ႉ Attribute ဢၼ်ၵူၺ်းမီးဝႆႉၼႂ်း Animal
    
    myDog.eat();  // ႁွင်ႉၸႂ်ႉ Method ၶွင် Base Class
    myDog.bark(); // ႁွင်ႉၸႂ်ႉ Method ၶွင် Derived Class ႁင်းၵူၺ်း
    
    return 0;
}
```

---

### 4. ၽွၼ်းလီၶွင် Inheritance
1.  **Code Reusability**: ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ Function `eat()` သွၼ်ႉၵၼ်ၼႂ်း Class Dog, Cat, လႄႈ Lion။ တႅမ်ႈဝႆႉၼႂ်း Animal ၵမ်းလဵဝ်ၵူၺ်းယဝ်ႉၶႃႈ။
2.  **Extensibility**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈထႅမ် Class မႂ်ႇ (မိူၼ်ၼင်ႇ Bird) လႆႈငၢႆႈငၢႆႈ လူၺ်ႈ သိုပ်ႇၸိူဝ်ႉတီႈ Animal မႃး။
3.  **Organization**: ႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇမီး "ၸၼ်ႉထၢၼ်" ဢၼ်တႅတ်ႈတေႃး လႄႈ လူငၢႆႈၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Inheritance**: ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Class ၼိုင်ႈ ၵႂႃႇၸႂ်ႉၼႂ်းထႅင်ႈ Class ၼိုင်ႈ။
* **Base Class**: ပဵၼ် "ပေႃႈ/မႄႇ" (General)။
* **Derived Class**: ပဵၼ် "လုၵ်ႈ" (Specialized)။
* **Syntax**: `class Child : public Parent { ... };`

---