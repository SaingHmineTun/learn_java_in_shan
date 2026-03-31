# Lesson 48: Variable Scope: Local vs. Global Memory

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++၊ Variable ၵူႈတူဝ် ဢမ်ႇလႆႈယူႇ တေႃႇထိုင် ပရူဝ်ႇၵႅမ်ႇပေႃး ႁဵတ်းၵၢၼ်ယဝ်ႉၶႃႈ။ 
မၼ်းမီး "ၼႃႇတီႈ" (**Scope**) ဢၼ်ႁဝ်းတေ ႁၼ်/ၸႂ်ႉ လႆႈမၼ်းၶႃႈ။ 
ပေႃးႁဝ်းသၢင်ႈ Variable ဝႆႉၽိတ်းတီႈ၊ ႁဝ်းၸၢင်ႈတေလူ (Access) မၼ်းဢမ်ႇလႆႈ ဢမ်ႇၼၼ် မၼ်းၸၢင်ႈၵႂႃႇ "ယုင်ႈ" တင်းၶေႃႈမုၼ်းတၢင်ႇတွၼ်ႈၶႃႈယဝ်ႉ။

---

### 1. Local Variables (ယူႇၼႂ်းတူင်ႇ)
**Local Variable** ပဵၼ် Variable ဢၼ်သၢင်ႈဝႆႉၼႂ်း **`{ }`** (Block) ဢမ်ႇၼၼ် ၼႂ်း Function ၼိုင်ႈဢၼ်ၵူၺ်း။
* **Visibility**: လူလႆႈ ၼႂ်း `{ }` ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။
* **Lifetime**: မၼ်းတေ "တၢႆ" (Destroyed) ၵႂႃႇ ၵမ်းလဵဝ် မိူဝ်ႈႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈၼႂ်း Block ၼၼ်ႉ။

```cpp
void myFunction() {
    int x = 5; // Local to myFunction
    std::cout << x; // လႆႈ
}

int main() {
    // std::cout << x; // ERROR! x ဢမ်ႇမီးယူႇတီႈၼႆႈ
    return 0;
}
```

---

### 2. Global Variables (ယူႇၼွၵ်ႈတူင်ႇ)
**Global Variable** ပဵၼ် Variable ဢၼ်သၢင်ႈဝႆႉ "ၼွၵ်ႈ" Function တင်းမူတ်း (ၵမ်ႈၼမ် ဝႆႉၽၢႆႇၼိူဝ်သုတ်း)။
* **Visibility**: လူလႆႈ၊ မႄးလႆႈ တႄႇဢဝ်ထႅဝ်ဢၼ်မၼ်းယူႇ တေႃႇပေႃးသုတ်းပရူဝ်ႇၶႅမ်ႇ။
* **Lifetime**: ယူႇတေႃႇပေႃးပရူဝ်ႇၶႅမ်ႇပိၵ်ႉၵႂႃႇၶႃႈ။



---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int globalVar = 10; // Global Variable

void testScope() {
    int localVar = 5; // Local Variable
    std::cout << "Global in function: " << globalVar << std::endl;
    std::cout << "Local in function: " << localVar << std::endl;
}

int main() {
    testScope();
    
    std::cout << "Global in main: " << globalVar << std::endl;
    // std::cout << localVar; // ERROR! localVar ဢမ်ႇမီးယူႇတီႈၼႆႈ
    
    return 0;
}
```

---

### 4. ၵၢၼ်ၼိူင်းတူၺ်း (Comparison)

| Feature | Local Variable | Global Variable |
| :--- | :--- | :--- |
| **သၢင်ႈတီႈလႂ်** | ၼႂ်း Function ဢမ်ႇၼၼ် Block `{ }` | ၼွၵ်ႈ Function တင်းမူတ်း |
| **ဢႃႇယု (Lifetime)** | မိူဝ်ႈယဝ်ႉ Block ၵေႃႈတၢႆ | မိူဝ်ႈယဝ်ႉ Program ၸင်ႇတၢႆ |
| **လွင်ႈလွတ်ႈၽေး** | **သုင်**: ဢမ်ႇယုင်ႈၵၼ်တင်းပိူၼ်ႈ | **တႅမ်ႇ**: ၵူႈ Function မႄးမၼ်းလႆႈ (ယၢပ်ႇမိူဝ်ႈ Debug) |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Local**: ၸႂ်ႉတီႈဢၼ်လူဝ်ႇၵူၺ်း (Recommended).
* **Global**: ၸႂ်ႉမိူဝ်ႈလူဝ်ႇ "သူင်ႇၶေႃႈမုၼ်း" ႁူမ်ႈၵၼ်တင်း Program (Use sparingly).
* ပေႃးမီး Variable ၸိုဝ်ႈမိူၼ်ၵၼ်၊ C++ တေလိူၵ်ႈၸႂ်ႉ **Local** ဢွၼ်တၢင်းသေႇသေႇၶႃႈ။

---