# Lesson 68: Project: The Student Profile Manager

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ၼႂ်းပရူဝ်ႇၵျႅၵ်ႉၼႆႉ ႁဝ်းတေသၢင်ႈ **`Student` Class** ဢၼ်ၵုမ်းထိင်းၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း ႁႂ်ႈမီးလွင်ႈလွတ်ႈၽေး (Secure)။ 
ႁဝ်းတေၸႂ်ႉ **Constructor** တႃႇတႄႇငဝ်ႈၶေႃႈမုၼ်း၊ 
**Encapsulation** တႃႇၵူတ်ႇထတ်းၸၼ်ႉလိၵ်ႈ (Grades)၊ လႄႈ **Destructor** တႃႇၼေဝႃႈ Object ၼၼ်ႉယဝ်ႉၵၢၼ်ယဝ်ႉၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **Private Attributes**: သိမ်း `name`, `id`, လႄႈ `gpa` ဝႆႉပဵၼ် Private။
2.  **Constructor**: ႁပ်ႉဢဝ်ၸိုဝ်ႈ လႄႈ ID မိူဝ်ႈသၢင်ႈ Object။
3.  **Encapsulation**: သၢင်ႈ `setGPA()` တႃႇၵူတ်ႇထတ်းဝႃႈ GPA တေလႆႈယူႇၵႄႈၵၢင် `0.0` တေႃႇ `4.0` ၵူၺ်း။
4.  **Display Method**: ၼေၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းတင်းမူတ်း ဢွၵ်ႇၼႃႈၸေႃး။
5.  **Destructor**: ၼေၶေႃႈၵႂၢမ်းဝႃႈ "Profile for [Name] closed" မိူဝ်ႈ Object တၢႆ။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>
#include <string>

class Student {
private:
    std::string name;
    int id;
    double gpa;

public:
    // 1. Constructor with 'this' pointer
    Student(std::string name, int id) {
        this->name = name;
        this->id = id;
        this->gpa = 0.0; // Default GPA
        std::cout << "[System] Profile created for: " << name << std::endl;
    }

    // 2. Destructor
    ~Student() {
        std::cout << "[System] Profile for " << name << " closed and memory cleared." << std::endl;
    }

    // 3. Setter with Validation (Encapsulation)
    void setGPA(double g) {
        if (g >= 0.0 && g <= 4.0) {
            gpa = g;
        } else {
            std::cout << "[Error] Invalid GPA for " << name << "! Must be 0.0 - 4.0" << std::endl;
        }
    }

    // 4. Getter
    double getGPA() {
        return gpa;
    }

    // 5. Method to display info
    void displayProfile() {
        std::cout << "\n--- Student Profile ---" << std::endl;
        std::cout << "Name: " << name << std::endl;
        std::cout << "ID:   " << id << std::endl;
        std::cout << "GPA:  " << gpa << std::endl;
        std::cout << "-----------------------" << std::endl;
    }
};

int main() {
    // သၢင်ႈ Object လုၵ်ႈႁဵၼ်း
    Student s1("Sai Mao", 1001);
    Student s2("Nang Mo", 1002);

    // ပၼ်ၵႃႈၶၼ် GPA လူၺ်ႈၸႂ်ႉ Setter
    s1.setGPA(3.85);
    s2.setGPA(4.5); // တေၼေ Error ၵွပ်ႈလိူဝ် 4.0

    // ၼေၶေႃႈမုၼ်း
    s1.displayProfile();
    s2.displayProfile();

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Data Security**: ၵူၼ်းၽၢႆႇၼွၵ်ႈ ဢမ်ႇၸၢင်ႈမႃးလႅၵ်ႈလၢႆႈ GPA လုၵ်ႈႁဵၼ်း ႁႂ်ႈပဵၼ် `99.0` လႆႈၸွမ်းၸႂ် ၵွပ်ႈႁဝ်းၸႂ်ႉ **Private** လႄႈ **Setter Validation**။
* **Lifecycle**: ၸဝ်ႈၵဝ်ႇတေႁၼ်ဝႃႈ **Constructor** ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်းသုတ်း သေ **Destructor** တေႁဵတ်းၵၢၼ် ဝၢႆး `main()` ယဝ်ႉတူဝ်ႈ (မိူဝ်ႈ Object တၢႆ)။
* **Organization**: ၶူတ်ႉၸဝ်ႈၵဝ်ႇ ပဵၼ်ပိူင်ပဵၼ်သၢင်ႈလိူဝ်ၵဝ်ႇတႄႉတႄႉ ၵွပ်ႈဢဝ် Data လႄႈ Logic မႃးႁူမ်ႈၵၼ်ဝႆႉၼႂ်း **Class Student**။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈ Module 8 ယဝ်ႉၶႃႈ! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈလၢႆးဝူၼ်ႉ တႄႇဢဝ်ၵၢၼ်တႅမ်ႈၸွမ်းတွၼ်ႈ (Procedural) မႃးပဵၼ် **ၵၢၼ်တႅမ်ႈၸွမ်းတူဝ်ၶွင် (OOP)** ယဝ်ႉ။ ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ် ဢၼ်ၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ တႃႇတႅမ်ႈ Software ယႂ်ႇလူင် ဢမ်ႇၼၼ် တႅမ်ႈ Game ၼႂ်းဝၼ်းၼႃႈၶႃႈ။

---