# Lesson 11.87: Writing to Files: The `ofstream` Class

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
**`ofstream`** ပဵၼ် Class ဢၼ်ၸႂ်ႉတႃႇသူင်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ ပရူဝ်ႇၶႅမ်ႇ (RAM) ၵႂႃႇသိမ်းဝႆႉၼႂ်း File (Disk)။ 
မၼ်းမီးလၢႆးၸႂ်ႉမိူၼ်တင်း `cout` တႄႉတႄႉ၊ ၵူၺ်းၵႃႈ တႅၼ်းဢၼ်တေၼေတီႈ Screen မၼ်းတေသႂ်ႇၼႂ်း File ဢၼ်ႁဝ်းပိုတ်ႇဝႆႉၼၼ်ႉၶႃႈ။

---

### 1. ၵၢၼ်ပိုတ်ႇ File တႃႇတႅမ်ႈ (Opening a File)
ႁဝ်းၸၢင်ႈပိုတ်ႇ File လႆႈသွင်လၢႆးၶႃႈ:
* **လၢႆး 1**: ၸႂ်ႉ Constructor မိူဝ်ႈပိုၼ်ၽၢဝ်ႇ Object။
* **လၢႆး 2**: ၸႂ်ႉ Method `.open()` ဝၢႆးလင်။

```cpp
// လၢႆး 1
std::ofstream MyFile("data.txt"); 

// လၢႆး 2
std::ofstream MyFile;
MyFile.open("data.txt");
```
*မၢႆတွင်း: သင်ဝႃႈ File ၼၼ်ႉဢမ်ႇပႆႇမီးယူႇ၊ C++ တေသၢင်ႈပၼ်မႂ်ႇႁင်းၵူၺ်း။ သင်မၼ်းမီးယဝ်ႉ၊ မၼ်းတေလူပ်းၶေႃႈမုၼ်းၵဝ်ႇပႅတ်ႈ (Overwrite) သေတႅမ်ႈမႂ်ႇၶႃႈ။*

---

### 2. ၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်း (Writing Data)
ႁဝ်းၸႂ်ႉ Insertion Operator **`<<`** မိူၼ်ၼင်ႇ `cout` ၵူၺ်းၶႃႈ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသူင်ႇ တူဝ်လိၵ်ႈ (Strings), တူဝ်ၼပ်ႉ (Integers/Doubles) ဢမ်ႇၼၼ် Variables ၶဝ်ႈၵႂႃႇလႆႈၵူႈမဵဝ်းၶႃႈ။



---

### 3. တူဝ်ယၢင်ႇ Code ဢၼ်ၵုမ်ႇထူၼ်ႈ

```cpp
#include <iostream>
#include <fstream>
#include <string>

int main() {
    // 1. သၢင်ႈ Object လႄႈ ပိုတ်ႇ File
    std::ofstream MyFile("students.txt");

    // 2. ၵူတ်ႇထတ်းဝႃႈ File ပိုတ်ႇလႆႈမႅၼ်ႈႁႃႉ
    if (!MyFile) {
        std::cerr << "Error: File could not be created!" << std::endl;
        return 1; // ဢွၵ်ႇပရူဝ်ႇၶႅမ်ႇ
    }

    // 3. တႅမ်ႈၶေႃႈမုၼ်းလၢႆလၢႆထႅဝ်
    std::string name = "Sai Mao";
    int age = 25;

    MyFile << "Student Profile Report" << std::endl;
    MyFile << "----------------------" << std::endl;
    MyFile << "Name: " << name << std::endl;
    MyFile << "Age: " << age << std::endl;
    MyFile << "Course: Advanced C++" << std::endl;

    // 4. ပိၵ်ႉ File (လမ်ႇလွင်ႈသုတ်း တႃႇသိမ်း Data)
    MyFile.close();

    std::cout << "Data has been saved to students.txt" << std::endl;

    return 0;
}
```

---

### 4. ၶေႃႈသတိ လႄႈ ပၵ်းယၢမ်ႇလီ (Best Practices)
* **Check for success**: ၸႂ်ႉ `if (!MyFile)` တႃႇၵူတ်ႇထတ်းဝႃႈ File ပိုတ်ႇလႆႈမႅၼ်ႈႁႃႉ (မၢင်ပွၵ်ႈ Disk တဵမ် ဢမ်ႇၼၼ် ဢမ်ႇမီးသုၼ်ႇပၼ်တႅမ်ႈ - Permission Denied)။
* **Close your files**: သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇပိၵ်ႉ File၊ ၶေႃႈမုၼ်းမၢင်တွၼ်ႈ ၸၢင်ႈၵိုတ်းဝႆႉၼႂ်း Buffer (Memory) သေ ဢမ်ႇတႅမ်ႈလူင်းၼႂ်း File တႄႉတႄႉၶႃႈ။
* **Overwriting**: သတိဝႆႉဝႃႈ `ofstream` မၼ်းတေလူပ်း Data ၵဝ်ႇပႅတ်ႈသေ တႅမ်ႈမႂ်ႇ (ႁဝ်းတေႁဵၼ်းလွင်ႈ "Appending" ၼႂ်း Lesson 89 ၶႃႈ)။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`ofstream`**: ၸႂ်ႉတႃႇ **Output** ၶေႃႈမုၼ်းၵႂႃႇၼႂ်း File။
* **`<<` Operator**: ၸႂ်ႉတႃႇသူင်ႇ Data ၶဝ်ႈၼႂ်း Stream။
* **Overwrite**: မၼ်းတေသၢင်ႈ File မႂ်ႇ ဢမ်ႇၼၼ် လူပ်း Data ၵဝ်ႇပႅတ်ႈ။

---