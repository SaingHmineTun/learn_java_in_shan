# Lesson 5.41: Project: The Student Grade Management System

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်းပရူဝ်ႇၵျႅၵ်ႉၼႆႉ ႁဝ်းတေတႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ်ႁပ်ႉဢဝ် ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း လႄႈ ၸၼ်ႉ (Grades) သေယဝ်ႉ သိမ်းဝႆႉၼႂ်း **Vector**။ 
ဝၢႆးၼၼ်ႉ ႁဝ်းတေၼေၽွၼ်းဢွၵ်ႇ တင်းမူတ်း လႄႈ ၼပ်ႉသွၼ်ႇပၼ် ၵႃႈၶၼ်ၵႄႈၵၢင် (Average Score) ၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  ၸႂ်ႉ **`std::vector<std::string>`** တႃႇသိမ်းၸိုဝ်ႈလုၵ်ႈႁဵၼ်း။
2.  ၸႂ်ႉ **`std::vector<double>`** တႃႇသိမ်းၸၼ်ႉ (Grades)။
3.  ၸႂ်ႉ **`while` loop** တႃႇႁပ်ႉၶေႃႈမုၼ်း တေႃႇ User ၼဵၵ်း "exit"။
4.  ၸႂ်ႉ **`for` loop** (ဢမ်ႇၼၼ် Iterator) တႃႇၼေၶေႃႈမုၼ်းတင်းမူတ်း။
5.  ၼပ်ႉသွၼ်ႇပၼ် **Average Grade** ၶွင်လုၵ်ႈႁဵၼ်းတင်းမူတ်း။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>
#include <vector>
#include <string>
#include <numeric> // တႃႇၸႂ်ႉ accumulate (ၼပ်ႉႁူမ်ႈ)

int main() {
    std::vector<std::string> names;
    std::vector<double> grades;
    std::string inputName;
    double inputGrade;

    std::cout << "=== TMK Student Grade System ===" << std::endl;

    while (true) {
        std::cout << "Enter student name (or 'exit' to finish): ";
        std::cin >> inputName;

        if (inputName == "exit") break;

        std::cout << "Enter grade for " << inputName << ": ";
        std::cin >> inputGrade;

        names.push_back(inputName);
        grades.push_back(inputGrade);
    }

    // ၼေၽွၼ်းဢွၵ်ႇ
    std::cout << "\n--- Student Records ---" << std::endl;
    double total = 0;

    for (size_t i = 0; i < names.size(); ++i) {
        std::cout << i + 1 << ". " << names[i] << " : " << grades[i] << std::endl;
        total += grades[i];
    }

    // ၼပ်ႉသွၼ်ႇ Average
    if (!names.empty()) {
        double average = total / names.size();
        std::cout << "-----------------------" << std::endl;
        std::cout << "Total Students: " << names.size() << std::endl;
        std::cout << "Average Grade: " << average << std::endl;
    } else {
        std::cout << "No data entered." << std::endl;
    }

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Parallel Vectors**: ႁဝ်းၸႂ်ႉ Vector သွင်ဢၼ် (`names` လႄႈ `grades`) တႃႇသိမ်းၶေႃႈမုၼ်း ဢၼ်ၵပ်းသိုပ်ႇၵၼ် (မိူၼ်ၼင်ႇ Index 0 ၶွင်တင်းသွင်ဢၼ် ပဵၼ်ၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်းၵေႃႉလဵဝ်ၵၼ်)။
* **Dynamic Handling**: ပရူဝ်ႇၶႅမ်ႇႁဝ်း ႁပ်ႉလုၵ်ႈႁဵၼ်းလႆႈ 1 ၵေႃႉ ဢမ်ႇၼၼ် 1,000 ၵေႃႉၵေႃႈလႆႈ ၵွပ်ႈႁဝ်းၸႂ်ႉ **Vector**။
* **Validation**: ၵၢၼ်ၵူတ်ႇထတ်း `if (!names.empty())` ၸွႆႈႁႄႉၵင်ႈလွင်ႈ "ၵၢၼ်ၸႅၵ်ႇလူၺ်ႈ 0" (Division by zero) ဢၼ်တေႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ Crash ၼၼ်ႉၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈ Module 5 ယဝ်ႉၶႃႈ! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇပဵၼ် Programmer ဢၼ်ႁူႉလၢႆး **"ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း" (Organizing Data)** ယဝ်ႉ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ App ဢၼ်သိမ်းၶေႃႈမုၼ်းတင်းၼမ် လႄႈ ၼပ်ႉသွၼ်ႇၽွၼ်းဢွၵ်ႇမၼ်းလႆႈယဝ်ႉ။

---