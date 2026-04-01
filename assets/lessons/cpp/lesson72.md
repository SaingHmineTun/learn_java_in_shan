# Lesson 72: Function Overriding: Changing Behavior in Subclasses

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ်၊ Method ဢၼ် "လုၵ်ႈ" သိုပ်ႇၸိူဝ်ႉလုၵ်ႉတီႈ "ပေႃႈ" မႃးၼၼ်ႉ 
မၼ်းဢမ်ႇၵုမ်ႇထူၼ်ႈ တႃႇတူဝ်မၼ်းၶႃႈ။ 
တူဝ်ယၢင်ႇ - Class **Animal (သတ်း)** မီး Method `makeSound()` ဢၼ်ၼေဝႃႈ "Animal makes a sound"။ 
ၵူၺ်းၵႃႈ ပေႃးပဵၼ် **Dog (မႃ)**၊ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁွင်ႉဝႃႈ "Woof Woof!" ၼႆၶႃႈ။ 
ၵၢၼ်မႄးၶိုၼ်းၼႆႉ ႁွင်ႉဝႃႈ **Function Overriding** ၶႃႈဢေႃႈ။

---

### 1. Function Overriding ပဵၼ်သင်?
**Function Overriding** ပဵၼ်ၵၢၼ်ဢၼ် Derived Class တႅမ်ႈ Method ဢၼ်မီး **"ၸိုဝ်ႈမိူၼ်ၵၼ်"** လႄႈ **"Parameters မိူၼ်ၵၼ်"** 
တင်း Method ၼႂ်း Base Class တႃႇလႅၵ်ႈလၢႆႈၵၢၼ်ႁဵတ်း (Behavior) မၼ်းၶႃႈ။



---

### 2. ၵၢၼ်တႅမ်ႈ Code (Syntax)

```cpp
#include <iostream>

class Animal {
public:
    void makeSound() {
        std::cout << "Animal makes a generic sound." << std::endl;
    }
};

class Dog : public Animal {
public:
    // 1. Overriding Method (ၸိုဝ်ႈ လႄႈ Parameter မိူၼ် Base)
    void makeSound() {
        std::cout << "Dog barks: Woof! Woof!" << std::endl;
    }
};

int main() {
    Animal myAnimal;
    myAnimal.makeSound(); // ၼေ: Animal makes a generic sound.

    Dog myDog;
    myDog.makeSound();    // ၼေ: Dog barks: Woof! Woof! (Override ယဝ်ႉ)

    return 0;
}
```

---

### 3. Keyword `override` (C++11)
ၼႂ်း C++ ပၢၼ်မႂ်ႇ၊ ႁဝ်းထုၵ်ႇလီသႂ်ႇ Keyword **`override`** ဝႆႉၽၢႆႇလင် Method ၼႂ်း Derived Class ၶႃႈ။ မၼ်းတေၸွႆႈ:
* ႁႂ်ႈ Compiler ၵူတ်ႇထတ်းဝႃႈ ႁဝ်းတႅမ်ႈၸိုဝ်ႈ/Parameter မႅၼ်ႈႁႃႉ။
* သင်ႁဝ်းတႅမ်ႈၸိုဝ်ႈၽိတ်း (မိူၼ်ၼင်ႇ `makesound` တႅၼ်း `makeSound`)၊ မၼ်းတေၼေ Error ၵမ်းလဵဝ် တႃႇႁႄႉၵင်ႈ Bug ၶႃႈ။

---

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ Base Method (Accessing Base Version)
သင်ဝႃႈ "လုၵ်ႈ" ၶႂ်ႈႁဵတ်းၵၢၼ် ဢၼ် "ပေႃႈ" ႁဵတ်းဝႆႉယဝ်ႉ ၸွမ်းၵၼ်တင်း ၵၢၼ်ႁဵတ်းမႂ်ႇၶွင်မၼ်း၊ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ **Scope Resolution Operator (`::`)** ႁွင်ႉလႆႈၶႃႈ။

```cpp
void makeSound() override {
    Animal::makeSound(); // ႁွင်ႉဢဝ်ၵၢၼ်ႁဵတ်းၶွင် ပေႃႈ မႃးၸႂ်ႉဢွၼ်တၢင်း
    std::cout << "Dog also barks!" << std::endl;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Overriding**: မႄးၵၢၼ်ႁဵတ်းၶွင် Method ဢၼ်သိုပ်ႇၸိူဝ်ႉမႃး။
* **Signature**: ၸိုဝ်ႈ လႄႈ Parameter တေလႆႈ **မိူၼ်ၵၼ်**။
* **`override`**: ၸႂ်ႉတႃႇလွင်ႈလွတ်ႈၽေး (Safety) ၼႂ်းၵၢၼ်တႅမ်ႈၶူတ်ႉ။
* **Overloading vs Overriding**: Overloading ပဵၼ်ၵၢၼ်မီးလၢႆ Function ၼႂ်း Class လဵဝ်၊ Overriding ပဵၼ်ၵၢၼ်လႅၵ်ႈလၢႆႈ လွင်ႈႁဵတ်းၵၢၼ် Function ပေႃး ၼႂ်း လုၵ်ႈ ၶႃႈ။

---