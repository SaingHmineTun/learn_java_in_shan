# Lesson 67: The 'this' Pointer: Disambiguating Member Variables

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ် မိူဝ်ႈႁဝ်းတႅမ်ႈ Constructor ဢမ်ႇၼၼ် Method၊ ႁဝ်းၵႆႉပၼ်ၸိုဝ်ႈ **Parameter** ႁႂ်ႈမိူၼ်တင်းၸိုဝ်ႈ **Member Variable** (Attributes) ၼႂ်း Class ၶႃႈ။ 
တူဝ်ယၢင်ႇ - တင်းသွင်ဢၼ်ပဵၼ် `name` မိူၼ်ၵၼ်။ တီႈၼႆႈ C++ တေယုင်ႈဝႃႈ `name` တူဝ်လႂ် ပဵၼ်ၶွင်ၽႂ်။ 
Keyword **`this`** ၸင်ႇမႃးၸွႆႈၼေဝႃႈ "ၼႆႉပဵၼ်ၶွင်တူဝ်ၵဝ် (Object) ၼႃ" ၼႆၶႃႈယဝ်ႉ။

---

### 1. `this` Pointer ပဵၼ်သင်?
**`this`** ပဵၼ် Pointer ပိူင်လူင် ဢၼ်မီးယူႇၼႂ်း Non-static Methods ၵူႈဢၼ်။
* မၼ်းသိမ်း **Memory Address** ၶွင် Object ဢၼ်တိုၵ်ႉႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉဝႆႉ။
* ႁဝ်းၸႂ်ႉတူဝ် **`->` (Arrow Operator)** တေႃႇလုၵ်ႉတီႈ `this` တႃႇလူ Attributes ၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class Player {
private:
    std::string name;
    int health;

public:
    // သင်ၸိုဝ်ႈ Parameter (n, h) ပႅၵ်ႇၵၼ် - ဢမ်ႇလူဝ်ႇၸႂ်ႉ this ၵေႃႈလႆႈ
    Player(std::string name, int health) {
        // name = name; // ERROR! C++ တေဝူၼ်ႉဝႃႈ ဢဝ် parameter မႃးပၼ် parameter ႁင်းၵူၺ်း
        
        // ၸႂ်ႉ this တႃႇမၢႆဝႃႈ ပဵၼ် Member Variable ၼႂ်း Class
        this->name = name;
        this->health = health;
    }

    void printAddress() {
        std::cout << "My memory address is: " << this << std::endl;
    }
};

int main() {
    Player p1("Sai Mao", 100);
    Player p2("Nang Mo", 90);

    std::cout << "Address of p1: " << &p1 << std::endl;
    p1.printAddress(); // တေၼေ Address မိူၼ် &p1

    std::cout << "Address of p2: " << &p2 << std::endl;
    p2.printAddress(); // တေၼေ Address မိူၼ် &p2

    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Use Cases)
1.  **Disambiguation**: တႃႇၸႅၵ်ႇလွင်ႈသုၵ်ႉသၵ်ႉ မိူဝ်ႈၸိုဝ်ႈ Parameter လႄႈ ၸိုဝ်ႈ Attribute မိူၼ်ၵၼ် (မိူၼ်တူဝ်ယၢင်ႇၽၢႆႇၼိူဝ်)။
2.  **Method Chaining**: တႃႇသူင်ႇ Object တူဝ်မၼ်းႁင်းၵူၺ်း (Current Object) ၶိုၼ်းပၼ် ၼႂ်း Method တၢင်ႇဢၼ်။
3.  **Validation**: တႃႇၵူတ်ႇထတ်းဝႃႈ Object သွင်တူဝ် ပဵၼ်တူဝ်လဵဝ်ၵၼ်ႁႃႉ (Self-assignment check)။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`this`**: ပဵၼ် Pointer ဢၼ်ၸီႉၸူး **Current Object** (Address ၶွင်တူဝ်မၼ်း)။
* **`this->var`**: ၸႂ်ႉတႃႇလူ Member Variable ၼႂ်း Class ၼၼ်ႉ။
* မၼ်းၸွႆႈႁႂ်ႈႁဝ်းပၼ်ၸိုဝ်ႈ Variable လႆႈငၢႆႈ (မိူၼ်ၼင်ႇ `name = name`) လူၺ်ႈဢမ်ႇသုၵ်ႉသၵ်ႉၶႃႈ။

---