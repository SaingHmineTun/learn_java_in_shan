# Lesson 7: Project: The Personal Greeter

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ယိၼ်းၸူမ်းၸွမ်းၶႃႈ! ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းႁူႉလွင်ႈ ပိူင်သၢင်ႈ C++, ၵၢၼ် Compile လႄႈ ၵၢၼ်ၼေလိၵ်ႈဢွၵ်ႇ (Output) ယဝ်ႉ။ 
ပရူဝ်ႇၵျႅၵ်ႉ (Project) ၼႆႉ တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ ၸၢမ်းတႅမ်ႈၶူတ်ႉ ဢၼ်မီးၵၢၼ်တုမ်ႉတွပ်ႇ (Interactive) ၸွမ်းၵူၼ်းၸႂ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  ပိုတ်ႇပရူဝ်ႇၶႅမ်ႇမႃး ႁႂ်ႈၼေလိၵ်ႈ "System Booting..."။
2.  ၼေလိၵ်ႈႁပ်ႉတွၼ်ႈ "Mai Sung Kha!" လႄႈ ၸိုဝ်ႈၶမ်ႇပိဝ်ႇတႃႇ (ဢမ်ႇၼၼ် ၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ)။
3.  ၼေပၼ်ဝႃႈ "Language: C++ Standard 17/20"။
4.  သုတ်းယဝ်ႉ ႁႂ်ႈၼေဝႃႈ "Status: System Ready."။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)
ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈၾၢႆႇမႂ်ႇၸိုဝ်ႈဝႃႈ `greeter.cpp` သေ တႅမ်ႈၶူတ်ႉၼႆႉသႂ်ႇတူၺ်းၶႃႈ:

```cpp
#include <iostream>

int main() {
    // 1. ၼေ Status တႄႇပရူဝ်ႇၶႅမ်ႇ
    std::cout << ">> System Booting..." << std::endl;
    std::cout << "---------------------------" << std::endl;

    // 2. ၼေလိၵ်ႈႁပ်ႉတွၼ်ႈ (Greeting)
    std::cout << "Mai Sung Kha! I am Mao's Computer." << std::endl;
    std::cout << "Welcome to the C++ Programming World!" << std::endl;

    // 3. ၼေပၼ်ပိုၼ်း (System Info)
    std::cout << "Project: The Personal Greeter" << std::endl;
    std::cout << "Language: C++ (Compiled with GCC)" << std::endl;

    std::cout << "---------------------------" << std::endl;
    // 4. ၼေ Status သုတ်းတွၼ်ႈ
    std::cout << ">> Status: System Ready. Enjoy Coding!" << std::endl;

    return 0;
}
```

---

### ၵၢၼ် Compile လႄႈ Run
ပိုတ်ႇ Terminal သေ တႅမ်ႈၶေႃႈၵႂၢမ်းၸိူဝ်းၼႆႉၶႃႈ:
```bash
g++ greeter.cpp -o greeter
./greeter
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **`std::endl`**: ၸႂ်ႉတႃႇလူင်းထႅဝ်မႂ်ႇ (New Line) လႄႈ ႁႂ်ႈလိၵ်ႈဢွၵ်ႇမႃးၵမ်းလဵဝ် (Flush Buffer)။
* **`std::cout`**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `<<` လၢႆလၢႆဢၼ် ၼႂ်းထႅဝ်လဵဝ်ၵၼ်လႆႈ။
* **Formatting**: ၵၢၼ်ၸႂ်ႉ `---` ဢမ်ႇၼၼ် `>>` မၼ်းၸွႆႈႁႂ်ႈ Interface ႁဝ်း တူၺ်းငၢႆႈလိူဝ်ၵဝ်ႇၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ တႃႇ **Module 1**! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇမီးပိုၼ်ႉထၢၼ် ဢၼ်ၵႅၼ်ႇၶႅင် တႃႇတေၵႂႃႇတႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ်မီးလွင်ႈသုၵ်ႉယၢပ်ႇလိူဝ်ၼႆႉယဝ်ႉ။

---