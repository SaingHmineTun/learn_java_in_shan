
# Lesson 66: The Destructor: Cleaning Up Memory Automatically

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းသၢင်ႈ Object တူဝ်ၼိုင်ႈ၊ မၼ်းတေၸႂ်ႉ Memory (RAM) ဝႆႉၶႃႈ။ ပေႃးဝႃႈ Object ၼၼ်ႉယဝ်ႉၵၢၼ်ယဝ်ႉ (မိူၼ်ၼင်ႇ ဢွၵ်ႇၼွၵ်ႈ Function ၵႂႃႇ)၊ ႁဝ်းလူဝ်ႇလႆႈ "ပၼ်ၶိုၼ်း" Memory ၼၼ်ႉပၼ် System ႁဝ်းၶႃႈ။ 
**Destructor** ပဵၼ် Method ပိူင်လူင် ဢၼ်တေ **"ႁဵတ်းၵၢၼ်ႁင်းၵူၺ်း"** မိူဝ်ႈ Object ၼၼ်ႉတေတၢႆၵႂႃႇ (Destroyed) ၶႃႈ။

---

### 1. Destructor ပဵၼ်သင်?
**Destructor** ပဵၼ် Method ဢၼ်ၸႂ်ႉတႃႇ "ယႃႉပႅတ်ႈ" ဢမ်ႇၼၼ် "သိမ်းၶူဝ်း" (Clean up) မိူဝ်ႈ Object ယဝ်ႉၵၢၼ်ၶႃႈ။

* **ပိူင်လူင်မၼ်း**:
    1. ၸိုဝ်ႈမၼ်း တေလႆႈ **"မိူၼ်တင်းၸိုဝ်ႈ Class"** ၵူၺ်းၵႃႈ တေလႆႈမီးတူဝ် **`~` (Tilde)** ဝႆႉၽၢႆႇၼႃႈ။
    2. မၼ်း **"ဢမ်ႇမီး Return Type"**။
    3. မၼ်း **"ဢမ်ႇႁပ်ႉ Parameter"** သင်သေမဵဝ်း (ၵွပ်ႈၼၼ် ႁဝ်းဢမ်ႇၸၢင်ႈ Overload Destructor လႆႈၶႃႈ)။
    4. ၼႂ်း Class ၼိုင်ႈဢၼ် မီး Destructor လႆႈ **"တူဝ်လဵဝ်"** ၵူၺ်းၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class Database {
public:
    // 1. Constructor
    Database() {
        std::cout << "Database connection OPENED." << std::endl;
    }

    // 2. Destructor (ၸႂ်ႉတူဝ် ~)
    ~Database() {
        std::cout << "Database connection CLOSED. Memory cleared." << std::endl;
    }

    void query() {
        std::cout << "Executing data query..." << std::endl;
    }
};

void runProgram() {
    Database db; // Constructor ႁဵတ်းၵၢၼ်တီႈၼႆႈ
    db.query();
} // Destructor ႁဵတ်းၵၢၼ်တီႈၼႆႈ (မိူဝ်ႈဢွၵ်ႇ Function)

int main() {
    std::cout << "Program Start." << std::endl;
    runProgram();
    std::cout << "Program End." << std::endl;
    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Why use it?)
1.  **Memory Management**: ပေႃးႁဝ်းၸႂ်ႉ `new` တႃႇယွၼ်း Memory ၼႂ်း Heap (Module 7)၊ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Destructor တႃႇသင်ႇ **`delete`** ထွၼ်မၼ်းၶိုၼ်း ႁင်းၵူၺ်းၶႃႈ။
2.  **Resource Cleanup**: ၸႂ်ႉတႃႇပိတ်း File ဢၼ်ပိုတ်ႇဝႆႉ ဢမ်ႇၼၼ် ပိတ်း Network Connection ႁႂ်ႈသႅၼ်ႈသႂ်။
3.  **Automatic**: မၼ်းႁဵတ်းၵၢၼ်ႁင်းၵူၺ်း၊ ႁဝ်းဢမ်ႇလူဝ်ႇမႆႈၸႂ်ဝႃႈ တေလိုမ်း "ပိတ်း" ပရူဝ်ႇၶႅမ်ႇၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Destructor (`~`)**: Method ဢၼ်ၸိုဝ်ႈမိူၼ် Class သေ ႁဵတ်းၵၢၼ်မိူဝ်ႈ Object တၢႆ။
* ၸႂ်ႉတႃႇ **Clean up** (သိမ်းၶူဝ်း/ပၼ်ၶိုၼ်း Memory)။
* မၼ်းၸွႆႈႁႄႉၵင်ႈ **Memory Leaks** ၼႂ်းပရူဝ်ႇၶႅမ်ႇ ဢၼ်ယႂ်ႇလူင်ၶႃႈ။

---
