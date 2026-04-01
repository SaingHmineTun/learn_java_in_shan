# Lesson 11.88: Reading from Files: The `ifstream` Class

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
**`ifstream`** ပဵၼ် Class ဢၼ်ၸႂ်ႉတႃႇ "လူတ်ႇဢဝ်" ၶေႃႈမုၼ်း လုၵ်ႉတီႈ File (Disk) မႃးသႂ်ႇၼႂ်း Variables ၶွင်ႁဝ်း (RAM)။ 
မၼ်းမီးလၢႆးၸႂ်ႉမိူၼ်တင်း `cin` တႄႉတႄႉ၊ ၵူၺ်းၵႃႈ တႅၼ်းဢၼ်တေႁပ်ႉလုၵ်ႉတီႈ Keyboard မၼ်းတေၵႂႃႇဢဝ် ၶေႃႈမုၼ်းမႃးတီႈ File ၶႃႈ။

---

### 1. ၵၢၼ်ပိုတ်ႇ File တႃႇလူ (Opening for Reading)
မိူၼ်တင်း `ofstream` ၼၼ်ႉၶႃႈ၊ ႁဝ်းပိုၼ်ၽၢဝ်ႇ Object သေပိုတ်ႇ File လႆႈငၢႆႈငၢႆႈ:

```cpp
std::ifstream InFile("students.txt"); 

if (!InFile) {
    std::cerr << "Error: File could not be opened!" << std::endl;
}
```
*မၢႆတွင်း: သင်ဝႃႈ File ၼၼ်ႉဢမ်ႇမီးယူႇတႄႉ (File not found)၊ `ifstream` တေ "Fail" သေ ဢမ်ႇလူလႆႈၶေႃႈမုၼ်းသင်ၶႃႈ။*

---

### 2. လၢႆးလူၶေႃႈမုၼ်း (3 Ways to Read)
ႁဝ်းၸၢင်ႈလူၶေႃႈမုၼ်းလႆႈလၢႆလၢႆပိူင် ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈၶႃႈ:

#### A. လူထႅဝ်လဵဝ် (Word by Word)
ၸႂ်ႉ Extraction Operator **`>>`**။ မၼ်းတေၵိုတ်းမိူဝ်ႈထူပ်း "ႁွင်ႇပဝ်ႇ" (Space) ဢမ်ႇၼၼ် "ထႅဝ်မႂ်ႇ" (Newline)။
```cpp
std::string word;
InFile >> word; // လူဢဝ်ၵႂၢမ်းၼိုင်ႈၶေႃႈ
```

#### B. လူထႅဝ်ယဝ်ႉထႅဝ် (Line by Line)
ၸႂ်ႉ Function **`getline()`**။ ၼႆႉပဵၼ်လၢႆးဢၼ်လီသုတ်း တႃႇလူဢဝ်လိၵ်ႈတင်းထႅဝ် ဢၼ်မီးပႃးႁွင်ႇပဝ်ႇၶႃႈ။
```cpp
std::string line;
std::getline(InFile, line); // လူဢဝ်တင်းထႅဝ်
```



---

### 3. တူဝ်ယၢင်ႇ Code ဢၼ်ၵုမ်ႇထူၼ်ႈ
ၼႆႉပဵၼ် Code တႃႇလူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း ၼႂ်း File ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 87 ၼၼ်ႉၶႃႈ:

```cpp
#include <iostream>
#include <fstream>
#include <string>

int main() {
    // 1. ပိုၼ်ၽၢဝ်ႇ Object လႄႈ ပိုတ်ႇ File
    std::ifstream MyFile("students.txt");

    // 2. ၵူတ်ႇထတ်းဝႃႈ File မီးယူႇတႄႉႁႃႉ
    if (!MyFile.is_open()) {
        std::cerr << "Error: Could not open students.txt" << std::endl;
        return 1;
    }

    std::string line;
    std::cout << "--- Reading Data from File ---" << std::endl;

    // 3. လူၶေႃႈမုၼ်း "ၵူႈထႅဝ်" တေႃႇပေႃးထိုင်ပၢႆ File
    while (std::getline(MyFile, line)) {
        std::cout << line << std::endl;
    }

    // 4. ပိတ်း File
    MyFile.close();

    return 0;
}
```

---

### 4. လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **The `while` loop**: ၵၢၼ်ၸႂ်ႉ `while (std::getline(MyFile, line))` ၼၼ်ႉ ပဵၼ်လၢႆးဢၼ် "လွတ်ႈၽေး" (Safe) သုတ်း တႃႇလူၶေႃႈမုၼ်း တေႃႇပေႃးထိုင်ပၢႆ File (End of File) ၶႃႈ။
* **Sequential Access**: ၵၢၼ်လူ File ၼႆႉ မၼ်းတေလုၵ်ႉတၢင်းၼိူဝ် လူလူင်းတၢင်းတႂ်ႈ ၶႃႈ။
* **Closing**: ဢမ်ႇဝႃႈလူယဝ်ႉ/ဢမ်ႇလူယဝ်ႉ ထုၵ်ႇလီ `close()` သေႇသေႇ တႃႇပၼ် System ၸႂ်ႉ File ၼၼ်ႉတႃႇၵၢၼ်တၢင်ႇမဵဝ်းၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`ifstream`**: ၸႂ်ႉတႃႇ **Input** ၶေႃႈမုၼ်းလုၵ်ႉတီႈ File။
* **`>>`**: လူဢဝ်ၶေႃႈ (Word)။
* **`getline()`**: လူဢဝ်ထႅဝ် (Line)။
* **Loop**: ၸႂ်ႉ Loop တႃႇလူၶေႃႈမုၼ်း တေႃႇပေႃးသုတ်း File။

---