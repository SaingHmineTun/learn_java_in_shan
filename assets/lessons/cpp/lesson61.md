# Lesson 61: Defining Your First Class and Creating Objects

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း OOP၊ ႁဝ်းလူဝ်ႇလႆႈမီး "ပိူင်သၢင်ႈ" (Blueprint) ဢွၼ်တၢင်း ၸင်ႇတေသၢင်ႈ "တူဝ်ၶွင်" (Object) လႆႈၶႃႈ။ 
တူဝ်ယၢင်ႇ - ၸဝ်ႈၵဝ်ႇလူဝ်ႇမီး **"ပိူင်သၢင်ႈႁိူၼ်း"** (Class) သေၸင်ႇတေၵေႃႇသၢင်ႈ **"ႁိူၼ်းတႄႉတႄႉ"** (Object) လႆႈၼၼ်ႉယဝ်ႉ။

---

### 1. Class ပဵၼ်သင်? (What is a Class?)
**Class** ပဵၼ် "ၵွၵ်း" ဢၼ်ႁဝ်းၸႂ်ႉမၢႆဝႆႉဝႃႈ Object ႁဝ်းတေမီးသင်လၢႆလၢႆ။ ၼႂ်းမၼ်း ႁဝ်းတေတႅမ်ႈလႆႈ 2 ပိူင်ၼႆႉၶႃႈ။
* **Attributes (Data)**: တူဝ်ယၢင်ႇ - ၸိုဝ်ႈ၊ ဢႃႇယု၊ သီ။
* **Methods (Functions)**: တူဝ်ယၢင်ႇ - ယၢင်ႈ၊ လၢတ်ႈ၊ ၵိုတ်း။



---

### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Class (Defining a Class)
ႁဝ်းၸႂ်ႉ Keyword **`class`** သေတေလႆႈသုတ်းလူၺ်ႈ **Semicolon (`;`)** သေႇသေႇၶႃႈ။

* **Syntax**:
```cpp
class ClassName {
public: // ႁႂ်ႈပိူၼ်ႈလူလႆႈ (တေသွၼ်လိုၵ်ႉၼႂ်း Lesson 62)
    // Attributes
    std::string name;
    int age;

    // Method
    void introduce() {
        std::cout << "I am " << name << std::endl;
    }
}; // လူဝ်ႇပႃး ; တီႈၼႆႈၶႃႈ
```

---

### 3. ၵၢၼ်သၢင်ႈ Object (Creating Objects)
မိူဝ်ႈႁဝ်းမီး Class ယဝ်ႉ၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Object လၢႆတူဝ်ၵေႃႈလႆႈ ၼႂ်း `main()` ၶႃႈ။ 
ႁဝ်းႁွင်ႉၵၢၼ်သၢင်ႈၼႆႉဝႃႈ **Instantiation** ၶႃႈ။



---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

// 1. သၢင်ႈပိူင် (Class)
class Student {
public:
    std::string name;
    double grade;

    void displayInfo() {
        std::cout << "Student: " << name << " | Grade: " << grade << std::endl;
    }
};

int main() {
    // 2. သၢင်ႈတူဝ်ၶွင် (Object) တူဝ်ဢွၼ်တၢင်း
    Student s1;
    s1.name = "Sai Mao";
    s1.grade = 95.5;

    // 3. သၢင်ႈတူဝ်ၶွင် (Object) တူဝ်ထႅၼ်ႈၼိုင်ႈ
    Student s2;
    s2.name = "Nang Mo";
    s2.grade = 98.0;

    // 4. ႁွင်ႉၸႂ်ႉ Method
    s1.displayInfo();
    s2.displayInfo();

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Class**: ပဵၼ်ပိူင်သၢင်ႈ (Blueprint)၊ ဢမ်ႇၸႂ်ႉ Memory တႄႉတႄႉ။
* **Object**: ပဵၼ်တူဝ်တႄႉ (Instance) ဢၼ်သၢင်ႈမႃးၸွမ်းၼင်ႇ Class၊ မၼ်းၸႂ်ႉ Memory တႄႉၶႃႈ။
* **Dot Operator (`.`)**: ၸႂ်ႉတႃႇလူ ဢမ်ႇၼၼ် ပၼ်ၵႃႈၶၼ် သႂ်ႇၼႂ်း Attributes/Methods ၶွင် Object ၼၼ်ႉၶႃႈ။

---