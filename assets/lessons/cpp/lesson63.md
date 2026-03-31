# Lesson 63: Encapsulation: The Role of Getters and Setters

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson 62 ႁဝ်းႁူႉယဝ်ႉဝႃႈ ၵၢၼ်ဝႆႉ Attributes (Data) ပဵၼ် **Private** ၼၼ်ႉ ၸွႆႈႁႄႉၵင်ႈၶေႃႈမုၼ်းလႆႈ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းပိၵ်ႉဝႆႉတင်းမူတ်း၊ ၵူၼ်းၽၢႆႇၼွၵ်ႈတေ "လူ" (Read) ဢမ်ႇၼၼ် "မႄး" (Write) ၶေႃႈမုၼ်းၼၼ်ႉၸိူင်ႉႁိူဝ်? 
တႃႇတေၵႄႈလွင်ႈၼႆႉ ႁဝ်းၸႂ်ႉ **Getter** လႄႈ **Setter** ၶႃႈ။

---

### 1. Getters လႄႈ Setters ပဵၼ်သင်?
မၼ်းပဵၼ် **Public Methods** ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ တႃႇပဵၼ် "တူဝ်ၵၢင်" ၵပ်းသိုပ်ႇပၼ် တင်းၶေႃႈမုၼ်း Private ၶႃႈ။
* **Getter**: Function ဢၼ်ၸႂ်ႉတႃႇ "လူဢဝ်ၵႃႈၶၼ်" (Get the value)။
* **Setter**: Function ဢၼ်ၸႂ်ႉတႃႇ "မႄးပၼ်ၵႃႈၶၼ်" (Set the value)။



---

### 2. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Why use them?)
1.  **Validation**: ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်း (Check) ၶေႃႈမုၼ်းဢွၼ်တၢင်း မိူဝ်ႈပႆႇပၼ်မႄး (မိူၼ်ၼင်ႇ ဢႃႇယု တေလႆႈယႂ်ႇလိူဝ် 0)။
2.  **Read-Only Access**: ႁဝ်းၸၢင်ႈသၢင်ႈ Getter ၵူၺ်းသေဢမ်ႇပၼ် Setter၊ ႁဵတ်းႁႂ်ႈပိူၼ်ႈလူလႆႈ ၵူၺ်းၵႃႈမႄးဢမ်ႇလႆႈ။
3.  **Flexibility**: သင်ဝႃႈဝၼ်းၼိုင်ႈ ႁဝ်းလႅၵ်ႈလၢႆႈ လၢႆးသိမ်းၶေႃႈမုၼ်းၽၢႆႇၼႂ်း၊ ၶူတ်ႉတီႈ `main` တေဢမ်ႇလူဝ်ႇလႅၵ်ႈလၢႆႈၸွမ်း။

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class Employee {
private:
    int age; // Private data

public:
    // 1. Setter (တႃႇမႄးၵႃႈၶၼ်)
    void setAge(int a) {
        if (a >= 18) { // ၵူတ်ႇထတ်း Validation
            age = a;
        } else {
            std::cout << "Invalid age! Must be 18 or older." << std::endl;
        }
    }

    // 2. Getter (တႃႇလူၵႃႈၶၼ်)
    int getAge() {
        return age;
    }
};

int main() {
    Employee emp;

    // emp.age = 20; // ERROR! Private
    
    emp.setAge(25);                 // လႆႈ (ၸႂ်ႉ Setter)
    std::cout << "Employee age: " << emp.getAge() << std::endl; // လႆႈ (ၸႂ်ႉ Getter)

    emp.setAge(10);                 // တေၼေ Error Message
    
    return 0;
}
```

---

### 4. Encapsulation (ၵၢၼ်ႁေႃႇၶေႃႈမုၼ်း)
**Encapsulation** ၼႆႉပဵၼ် လွၵ်းလၢႆးဢၼ်ဢဝ် Data လႄႈ Methods မႃးႁေႃႇဝႆႉၸွမ်းၵၼ် ၼႂ်း Class သေ ပိုတ်ႇၼေ Getter/Setter တႃႇၸႂ်ႉတိုဝ်းၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Getter**: Function တႃႇဢဝ် Value ဢွၵ်ႇမႃး (ReturnType `getVarName()`)။
* **Setter**: Function တႃႇသႂ်ႇ Value ၶဝ်ႈၵႂႃႇ (void `setVarName(parameter)`)။
* **Encapsulation**: ၸွႆႈႁႂ်ႈၶေႃႈမုၼ်းလွတ်ႈၽေး လႄႈ ၵုမ်းထိင်းလႆႈ (Control) ၵူႈၶၼ်တွၼ်ႈၶႃႈ။

---