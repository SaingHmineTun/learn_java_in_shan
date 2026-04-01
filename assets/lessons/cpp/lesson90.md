# Lesson 90: Detecting File States: `is_open()`, `eof()`, and `fail()`

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
C++ မီး Method ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်းႁူႉဝႃႈ ၵၢၼ်ႁဵတ်းၵၢၼ်တင်း File ၼၼ်ႉ မႅၼ်ႈ ဢမ်ႇၼၼ် ၽိတ်း။ 
ၼႆႉပဵၼ်လွင်ႈလမ်ႇလွင်ႈ တႃႇႁႄႉၵင်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း ဢမ်ႇႁႂ်ႈ Crash ၶႃႈ။



---

### 1. `is_open()`: ၵူတ်ႇထတ်းဝႃႈ ပိုတ်ႇလႆႈႁႃႉ?
ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉ **"ၵူႈပွၵ်ႈ"** ဝၢႆးလုၵ်ႉတီႈႁဝ်းႁွင်ႉ `.open()` ယဝ်ႉ။ 
မၼ်းတေသူင်ႇၵႃႈၶၼ် `true` မႃး သင်ဝႃႈ File ၼၼ်ႉၵွင်ႉၵၢႆႇတင်း Object ႁဝ်းလႆႈတႄႉတႄႉၶႃႈ။

```cpp
std::ifstream MyFile("data.txt");
if (MyFile.is_open()) {
    std::cout << "File is ready for reading!" << std::endl;
} else {
    std::cout << "Error: File not found or access denied." << std::endl;
}
```

---

### 2. `eof()`: ထိုင်ပၢႆ File ယဝ်ႉႁႃႉ?
**`eof`** မၢႆထိုင် **End-Of-File** ၶႃႈ။ မၼ်းတေသူင်ႇ `true` မႃး မိူဝ်ႈႁဝ်းလူၶေႃႈမုၼ်းၵႂႃႇတေႃႇပေႃးသုတ်း File ယဝ်ႉ။

```cpp
std::string line;
while (!MyFile.eof()) { // တေႃႇပေႃးဢမ်ႇပႆႇထိုင်ပၢႆ File
    std::getline(MyFile, line);
    std::cout << line << std::endl;
}
```

---

### 3. `fail()`: မီးပၼ်ႁႃသေမဵဝ်းႁႃႉ?
Method ၼႆႉတေသူင်ႇ `true` မႃး သင်ဝႃႈမီး Logical Error ပဵၼ်မႃး မိူၼ်ၼင်ႇ:
* ၸဝ်ႈၵဝ်ႇၶႂ်ႈလူဢဝ် `int` ၵူၺ်းၵႃႈ ၼႂ်း File သမ်ႉပဵၼ် "ABC" (Data Mismatch)။
* File ၼၼ်ႉဢမ်ႇမီးယူႇတႄႉ (မိူၼ်တင်း `!is_open()`)။

```cpp
int number;
MyFile >> number;
if (MyFile.fail()) {
    std::cerr << "Error: Data type mismatch or stream error!" << std::endl;
}
```

---

### 4. တူဝ်ယၢင်ႇ Code ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်

```cpp
#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ifstream file("test.txt");

    // Check 1: ပိုတ်ႇလႆႈႁႃႉ?
    if (!file.is_open()) {
        std::cerr << "File could not be opened!" << std::endl;
        return 1;
    }

    std::string data;
    // Check 2: လူတေႃႇပေႃးယဝ်ႉ
    while (file >> data) {
        std::cout << "Read: " << data << std::endl;
    }

    if (file.eof()) {
        std::cout << "Reached end of file successfully." << std::endl;
    } else if (file.fail()) {
        std::cout << "Stream failed due to invalid data." << std::endl;
    }

    file.close();
    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`is_open()`**: ၵူတ်ႇထတ်းဝၢႆးပိုတ်ႇ File (လမ်ႇလွင်ႈသုတ်း)။
* **`eof()`**: ၵူတ်ႇထတ်းဝႃႈ လူထိုင်ပၢႆမၼ်းယဝ်ႉႁႃႉ။
* **`fail()`**: ၵူတ်ႇထတ်း Error ၼႂ်းၵၢၼ် လူ/တႅမ်ႈ ၶေႃႈမုၼ်း။

---
