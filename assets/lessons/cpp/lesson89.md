# Lesson 11.89: File Modes: Appending, Truncating, and Binary

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းပိုတ်ႇ File လူၺ်ႈ `.open()` ၼၼ်ႉ၊ ႁဝ်းၸၢင်ႈသႂ်ႇ "ၸိူဝ်ႉၽၼ်းၵၢၼ်ပိုတ်ႇ" (Flags) တႃႇမၢႆတွင်းဝႃႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ C++ ၸတ်းၵၢၼ် File ၼၼ်ႉၸိူင်ႉႁိူဝ်ၶႃႈ။



---

### 1. File Modes ဢၼ်ၵႆႉၸႂ်ႉ (Common Flags)
ႁဝ်းၸႂ်ႉ `std::ios::[flag]` တႃႇလိူၵ်ႈ Mode ၶႃႈ:

* **`std::ios::out`**: ပိုတ်ႇတႃႇတႅမ်ႈ (Default ၶွင် `ofstream`)။
* **`std::ios::in`**: ပိုတ်ႇတႃႇလူ (Default ၶွင် `ifstream`)။
* **`std::ios::app`**: (**Append**) တႅမ်ႈထႅမ်သႂ်ႇၽၢႆႇလင်သုတ်း ၶွင် File ဢၼ်မီးဝႆႉယဝ်ႉ။
* **`std::ios::trunc`**: (**Truncate**) လူပ်းၶေႃႈမုၼ်းၵဝ်ႇပႅတ်ႈတင်းမူတ်း (Default မိူဝ်ႈၸႂ်ႉ `out`)။
* **`std::ios::binary`**: ပိုတ်ႇပဵၼ် Binary Mode (တႃႇသိမ်းႁၢင်ႈၽၢင် ဢမ်ႇၼၼ် သဵင် ဢၼ်ဢမ်ႇၸႂ်ႈ Plain Text)။

---

### 2. ၵၢၼ်တႅမ်ႈထႅမ် (Appending Data)
ၼႆႉပဵၼ်လၢႆးဢၼ်လမ်ႇလွင်ႈသုတ်း တႃႇသၢင်ႈ **Log Files** ဢမ်ႇၼၼ် **History** ၶႃႈ။

```cpp
#include <iostream>
#include <fstream>

int main() {
    // ၸႂ်ႉ ios::app တႃႇတႅမ်ႈထႅမ်သႂ်ႇ ၽၢႆႇလင်
    std::ofstream MyFile;
    MyFile.open("log.txt", std::ios::app);

    if (MyFile.is_open()) {
        MyFile << "New entry added at 1:40 PM" << std::endl;
        MyFile.close();
        std::cout << "Data appended successfully!" << std::endl;
    }

    return 0;
}
```

---

### 3. ၵၢၼ်ၸႂ်ႉလၢႆလၢႆ Mode ႁူမ်ႈၵၼ်
ႁဝ်းၸၢင်ႈၸႂ်ႉ Bitwise OR Operator (**`|`**) တႃႇႁူမ်ႈ Flags ၶဝ်ႈၵၼ်ၶႃႈ။

```cpp
// ပိုတ်ႇ File တႃႇတႅမ်ႈ ဢၼ်ပဵၼ် Binary လႄႈ တႅမ်ႈထႅမ်သႂ်ႇၽၢႆႇလင်
std::fstream MyFile;
MyFile.open("data.bin", std::ios::out | std::ios::binary | std::ios::app);
```



---

### 4. Binary vs Text Mode
* **Text Mode**: C++ တေမႄးပၼ်လွင်ႈ "ထႅဝ်မႂ်ႇ" (`\n`) ႁႂ်ႈမႅၼ်ႈၸွမ်း OS (မိူၼ်ၼင်ႇ Windows ၸႂ်ႉ `\r\n`)။
* **Binary Mode**: ၶေႃႈမုၼ်းတေထုၵ်ႇသိမ်းဝႆႉ "ၸိူင်ႉၼင်ႇမၼ်းမီး" (Raw bytes)၊ ဢမ်ႇမီးၵၢၼ်လႅၵ်ႈလၢႆႈသင်။ ၼႆႉလီတွၼ်ႈတႃႇသိမ်း Objects ဢမ်ႇၼၼ် Multimedia ၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`ios::app`**: တႃႇတႅမ်ႈထႅမ် (Append) လူၺ်ႈဢမ်ႇလူပ်း Data ၵဝ်ႇ။
* **`ios::binary`**: တႃႇၸတ်းၵၢၼ် Raw Data။
* **`|` Operator**: ၸႂ်ႉတႃႇႁူမ်ႈလၢႆလၢႆ Mode ၶဝ်ႈၵၼ်။

---