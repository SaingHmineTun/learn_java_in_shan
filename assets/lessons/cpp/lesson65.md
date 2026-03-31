# Lesson 65: Constructor Overloading: Multiple ways to Create

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူၼ်ၼင်ႇႁဝ်းႁဵၼ်းမႃးၼႂ်း **Function Overloading** (Lesson 47) ၼၼ်ႉယဝ်ႉ၊ 
ၼႂ်း Class ၼိုင်ႈဢၼ် ႁဝ်းၸၢင်ႈမီး **Constructor** လၢႆလၢႆဢၼ်လႆႈၶႃႈ။ 
ၼႆႉၸွႆႈႁႂ်ႈႁဝ်းသၢင်ႈ Object လႆႈလၢႆလၢႆလၢႆး—မိူၼ်ၼင်ႇ သၢင်ႈ Object ပဝ်ႇပဝ်ႇၵေႃႈလႆႈ၊ ဢမ်ႇၼၼ် သၢင်ႈသေပၼ်ၵႃႈၶၼ်ၵမ်းလဵဝ်ၵေႃႈလႆႈၶႃႈ။

---

### 1. Constructor Overloading ပဵၼ်သင်?
မၼ်းပဵၼ်ၵၢၼ်မီး Constructor တင်းၼမ် ဢၼ်မီး **"ၸိုဝ်ႈမိူၼ်ၵၼ်"** (ၸိုဝ်ႈ Class) ၵူၺ်းၵႃႈ မီး **"Parameter ပႅၵ်ႇၵၼ်"** ၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class Book {
public:
    std::string title;
    double price;

    // 1. Default Constructor (ဢမ်ႇပႃး Parameter)
    Book() {
        title = "Unknown";
        price = 0.0;
    }

    // 2. Overloaded Constructor (ပႃး Parameter 1 တူဝ်)
    Book(std::string t) {
        title = t;
        price = 0.0;
    }

    // 3. Overloaded Constructor (ပႃး Parameter 2 တူဝ်)
    Book(std::string t, double p) {
        title = t;
        price = p;
    }

    void display() {
        std::cout << "Title: " << title << ", Price: $" << price << std::endl;
    }
};

int main() {
    // သၢင်ႈ Object လၢႆလၢႆလၢႆး
    Book b1;                    // ႁွင်ႉၸႂ်ႉ Constructor (1)
    Book b2("C++ Basics");      // ႁွင်ႉၸႂ်ႉ Constructor (2)
    Book b3("Mastering OOP", 25.5); // ႁွင်ႉၸႂ်ႉ Constructor (3)

    b1.display();
    b2.display();
    b3.display();

    return 0;
}
```

---

### 3. ပၵ်းယၢမ်ႇ လႄႈ လွင်ႈလီ
* **Flexibility**: ပၼ်တၢင်းလိူၵ်ႈတီႈ User ဝႃႈ တႃႇတႄႉၶူင်သၢင်ႈ Object (Initialize)။
* **Rules**: Parameter တေလႆႈပႅၵ်ႇၵၼ် (Data Type ဢမ်ႇမိူၼ်ၵၼ် ဢမ်ႇၼၼ် တူဝ်ၼပ်ႉ Parameter ဢမ်ႇမိူၼ်ၵၼ်)။
* **Automatic Choice**: Compiler တေလိူၵ်ႈပၼ်ႁင်းၵူၺ်းဝႃႈ တေၸႂ်ႉ Constructor တူဝ်လႂ် ၸွမ်းၼင်ႇၶေႃႈမုၼ်း ဢၼ်ႁဝ်းသူင်ႇသႂ်ႇၼၼ်ႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Constructor Overloading**: ၵၢၼ်မီး Constructor လၢႆဢၼ် ၼႂ်း Class လဵဝ်ၵၼ်။
* ၸွႆႈႁႂ်ႈၵၢၼ်သၢင်ႈ Object မီးလွင်ႈ **လႅတ်းသႂ်** (Flexible) လိူဝ်ၵဝ်ႇ။
* မၼ်းပဵၼ်လၢႆး ဢၼ်ႁဝ်းၸၢင်ႈ "တႄႇငဝ်ႈ" Object လႆႈၸွမ်းၼင်ႇ ၶေႃႈမုၼ်းဢၼ်ႁဝ်းမီးဝႆႉၼၼ်ႉၶႃႈ။

---