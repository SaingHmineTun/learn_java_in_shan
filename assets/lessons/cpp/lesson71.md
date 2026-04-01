# Lesson 71: Constructors and Destructors in Inheritance

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Inheritance ၼႆႉ၊ **Derived Class (လုၵ်ႈ)** မၼ်းသိုပ်ႇၸိူဝ်ႉဢဝ် Attributes လုၵ်ႉတီႈ **Base Class (ပေႃႈ)** မႃး။ 
ၵွပ်ႈၼၼ် မိူဝ်ႈႁဝ်းသၢင်ႈ Object "လုၵ်ႈ" မႃးတူဝ်ၼိုင်ႈၼၼ်ႉ၊ မၼ်းလူဝ်ႇလႆႈသၢင်ႈတွၼ်ႈဢၼ်ပဵၼ် "ပေႃႈ" မၼ်းႁႂ်ႈယဝ်ႉတူဝ်ႈဢွၼ်တၢင်း 
ၸင်ႇတေသိုပ်ႇသၢင်ႈတွၼ်ႈၶွင် "လုၵ်ႈ" လႆႈၶႃႈ။

---

### 1. ၶၵ်ႉတွၼ်ႈၵၢၼ်ႁဵတ်းၵၢၼ် (Execution Order)

မိူဝ်ႈႁဝ်းသိုပ်ႇၸိူဝ်ႉၵၼ်၊ ၶၵ်ႉတွၼ်ႈမၼ်းတေပဵၼ်ၸိူင်ႉၼႆၶႃႈ:

* **Constructors**: တႄႇတီႈ **Base (ပေႃႈ)** ၵႂႃႇၸူး **Derived (လုၵ်ႈ)**။ (ပေႃႈလူဝ်ႇၵိူတ်ႇ ဢွၼ်တၢင်းလုၵ်ႈ)
* **Destructors**: တႄႇတီႈ **Derived (လုၵ်ႈ)** ၶိုၼ်းၵႂႃႇၸူး **Base (ပေႃႈ)**။ (လုၵ်ႈလူဝ်ႇၵႂႃႇ ဢွၼ်တၢင်းပေႃႈ)



---

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ Base Constructor (Calling Base Constructor)
သင်ဝႃႈ Base Class မီး Constructor ဢၼ်လူဝ်ႇ Argument (Parameter)၊ 
ႁဝ်းတေလႆႈသူင်ႇၵႃႈၶၼ်ၵႂႃႇပၼ်မၼ်း လူၺ်ႈၸႂ်ႉ **Member Initializer List** ၼႂ်း Derived Class ၶႃႈ။

```cpp
#include <iostream>
#include <string>

class Parent {
public:
    Parent(std::string name) {
        std::cout << "Parent Constructor: " << name << std::endl;
    }
    ~Parent() {
        std::cout << "Parent Destructor" << std::endl;
    }
};

class Child : public Parent {
public:
    // သူင်ႇ name ၵႂႃႇၸူး Parent Constructor
    Child(std::string name, int age) : Parent(name) {
        std::cout << "Child Constructor: " << age << std::endl;
    }
    ~Child() {
        std::cout << "Child Destructor" << std::endl;
    }
};

int main() {
    Child c("Sai Mao", 20);
    return 0;
}
```

**ၽွၼ်းဢွၵ်ႇ (Output):**
1. Parent Constructor: Sai Mao
2. Child Constructor: 20
3. Child Destructor
4. Parent Destructor

---

### 3. ပဵၼ်သင် Destructor သမ်ႉယႃႉ လုၵ်ႉတႂ်ႈၶိုၼ်ႈၼိူဝ်?
တွၼ်ႈဢၼ်ပဵၼ် "လုၵ်ႈ" ၸၢင်ႈၸႂ်ႉ Attributes ၶွင် "ပေႃႈ" ဝႆႉယူႇ။ 
သင်ႁဝ်းယႃႉ "ပေႃႈ" ဢွၼ်တၢင်း၊ တွၼ်ႈ "လုၵ်ႈ" တေမီးပၼ်ႁႃ (Crash) ၵမ်းလဵဝ် ၵွပ်ႈ Data ဢၼ်မၼ်းၸႂ်ႉယူႇၼၼ်ႉ ႁၢႆၵႂႃႇယဝ်ႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Constructors**: ႁဵတ်းၵၢၼ် **Base -> Derived** (ပေႃႈၵႂႃႇလုၵ်ႈ)။
* **Destructors**: ႁဵတ်းၵၢၼ် **Derived -> Base** (လုၵ်ႈၵႂႃႇပေႃႈ)။
* သင် Base Constructor မီး Parameter၊ ႁဝ်းလူဝ်ႇသူင်ႇၵႃႈၶၼ်ပၼ်မၼ်း ၼႂ်း Derived Constructor ၶႃႈ။

---