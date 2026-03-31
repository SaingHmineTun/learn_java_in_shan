# Lesson 4: Your First Program: Hello World

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းတင်ႈၵႃႈ ၶိူင်ႈမိုဝ်းယဝ်ႉတူဝ်ႈယဝ်ႉၼၼ်ႉ ႁဝ်းတေမႃးၸၢမ်းတႅမ်ႈ ပရူဝ်ႇၶႅမ်ႇဢွၼ်ႇ တူဝ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **"Hello World"** ၼၼ်ႉၶႃႈ။ 
ၼႆႉပဵၼ် လွင်ႈယဵၼ်ႇငႄႈ (Tradition) ၶေႃႈၼိုင်ႈ ဢၼ် Programmer တင်းၵမ်ႇၽႃႇ ႁဵတ်းၸွမ်းၵၼ် မိူဝ်ႈတႄႇသွၼ် ၽႃႇသႃႇဢၼ်မႂ်ႇမႂ်ႇၼၼ်ႉယဝ်ႉ။

---

### Step 1: သၢင်ႈၾၢႆႇမႂ်ႇ (Create New File)
1.  ပိုတ်ႇ **VS Code** ၶိုၼ်ႈမႃး။
2.  ၼိပ်ႇ **File > New Text File** (ဢမ်ႇၼၼ် Ctrl+N)။
3.  ၼိပ်ႇ **File > Save As...** သေ တႅမ်ႈၸိုဝ်ႈၾၢႆႇဝႃႈ `hello.cpp` ၶႃႈ။
    * **မၢႆတွၼ်ႈ:** ၾၢႆႇ C++ တေလႆႈမီး တူဝ်သုတ်း (Extension) ဝႃႈ `.cpp` သေႇသေႇၶႃႈ။

---

### Step 2: တႅမ်ႈၶူတ်ႉ (Write the Code)
တႅမ်ႈၶူတ်ႉ ၸိူဝ်းၼႆႉသေ သႂ်ႇၼႂ်းၾၢႆႇ `hello.cpp` ၶႃႈ:

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, World! Mai Sung Kha!" << std::endl;
    return 0;
}
```

---

### Step 3: Compile လႄႈ Run ပရူဝ်ႇၶႅမ်ႇ
တႃႇတေႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ ႁဵတ်းၵၢၼ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈ Compile မၼ်းၶႃႈ:

1.  ပိုတ်ႇ **Terminal** ၼႂ်း VS Code (Ctrl+`)။
2.  တႅမ်ႈၶူတ်ႉ Compile ၼႆႉသေ Enter:
    ```bash
    g++ hello.cpp -o hello
    ```
    *(မၼ်းတေ သၢင်ႈၾၢႆႇ `hello.exe` ဢွၵ်ႇမႃးပၼ်ၶႃႈ)*
3.  တႅမ်ႈၶူတ်ႉ Run ၼႆႉသေ Enter:
    ```bash
    ./hello
    ```



---

### ၽွၼ်းဢွၵ်ႇ (Expected Output)
ပေႃးပရူဝ်ႇၶႅမ်ႇ ႁဵတ်းၵၢၼ်လႆႈလီၼၼ်ႉ ၸဝ်ႈၵဝ်ႇတေလႆႈႁၼ် လိၵ်ႈဢွၵ်ႇမႃးၼႂ်း Terminal ဝႃႈ:
`Hello, World! Mai Sung Kha!`

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`.cpp`**: ပဵၼ် တူဝ်သုတ်းၾၢႆႇ C++။
* **`g++`**: ပဵၼ် ၶေႃႈၵႂၢမ်း တႃႇႁွင်ႉၸႂ်ႉ Compiler ပိၼ်ႇၶူတ်ႉ။
* **`-o`**: ပဵၼ် လွင်ႈပိုတ်ႇၸိုဝ်ႈ (Output name) ၾၢႆႇဢၼ်ပိၼ်ႇယဝ်ႉ။

---