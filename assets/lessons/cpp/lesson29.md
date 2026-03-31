# Lesson 29: Nested Loops and Multi-dimensional Logic

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းလူဝ်ႇႁဵတ်းၵၢၼ် ဢၼ်မီးလွင်ႈပၼ်ႇသွင်ၸၼ်ႉ။ 
တူဝ်ယၢင်ႇ - "ၵၢၼ်ၼေပပ်ႉၵုၼ်း (Multiplication Table)" ဢၼ်မီးတင်း ထႅဝ်ၼွၼ်း (Rows) လႄႈ ထႅဝ်တင်ႈ (Columns)။ 
တႃႇတေႁဵတ်းလႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Nested Loop** (Loop သွၼ်ႉ Loop) ၶႃႈ။

---

### 1. ပိူင်သၢင်ႈ (Structure) ၶွင် Nested Loop
မၼ်းတေမီး Loop ၽၢႆႇၼွၵ်ႈ (Outer Loop) လႄႈ Loop ၽၢႆႇၼႂ်း (Inner Loop) ၶႃႈ။

```cpp
for (int i = 1; i <= 3; i++) {       // Outer Loop
    for (int j = 1; j <= 3; j++) {   // Inner Loop
        // ႁဵတ်းၵၢၼ်တီႈၼႆႈ
    }
}
```



---

### 2. ၶၵ်ႉတွၼ်ႈၵၢၼ်ႁဵတ်း (How it Works)
* **Outer Loop** ပၼ်ႇ 1 ပွၵ်ႈ၊ **Inner Loop** တေလႆႈပၼ်ႇႁဵတ်းၵၢၼ် **"တင်းမူတ်း"** (Complete all iterations)။
* ပေႃး Inner Loop ယဝ်ႉယဝ်ႉ၊ Outer Loop ၸင်ႇတေၶၢႆႉၵႂႃႇ ထႅင်ႈပွၵ်ႈၼိုင်ႈ။
* တူဝ်ယၢင်ႇ: ပေႃး Outer Loop ပၼ်ႇ 3 ပွၵ်ႈ လႄႈ Inner Loop ပၼ်ႇ 3 ပွၵ်ႈ၊ ၵၢၼ်ၼႂ်းသုတ်းမၼ်းတေႁဵတ်းၵၢၼ်တင်းမူတ်း $3 times 3 = 9$ ပွၵ်ႈၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example: Multiplication Table)

```cpp
#include <iostream>

int main() {
    // ၼေပပ်ႉၵုၼ်း 1 တေႃႇ 3
    for (int i = 1; i <= 3; i++) {         // ထႅဝ်ၼွၼ်း (Row)
        for (int j = 1; j <= 5; j++) {     // ထႅဝ်တင်ႈ (Column)
            std::cout << (i * j) << "\t";  // \t ပဵၼ်ၵၢၼ်ဝၢႆႉ (Tab)
        }
        std::cout << std::endl;            // ပေႃးယဝ်ႉၼိုင်ႈထႅဝ် လူင်းထႅဝ်မႂ်ႇ
    }

    return 0;
}
```

**ၽွၼ်းဢွၵ်ႇ (Output):**
```text
1   2   3   4   5
2   4   6   8   10
3   6   9   12  15
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်း (Use Cases)
1.  **Printing Patterns**: ၸႂ်ႉတႃႇတႅမ်ႈရူပ်ႇႁၢင်ႈ (မိူၼ်ၼင်ႇ တူဝ်လၢဝ် `*`)။
2.  **2D Arrays**: ၸႂ်ႉတႃႇလူၶေႃႈမုၼ်းၼႂ်း Table/Matrix။
3.  **Coordinate Systems**: ၸႂ်ႉၼႂ်းၵၢၼ်ႁဵတ်းၵဵမ်း (Games) တႃႇၼပ်ႉသွၼ်ႇ X, Y။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Inner Loop** တေလႆႈႁဵတ်းယဝ်ႉတူဝ်ႈ တေႃႇပေႃးသုတ်း Outer Loop ၸင်ႇတေၶၢႆႉၼိုင်ႈပွၵ်ႈ။
* ၸႂ်ႉ **`i`** လႄႈ **`j`** ပဵၼ် Identifier တႃႇၸႅၵ်ႇ Variable ၼႂ်း Loop တင်းသွင်။
* **Nested Loop** ၼႆႉ မၼ်းၸႂ်ႉ Memory လႄႈ CPU ၼမ်၊ ၵွပ်ႈၼႆ တေလႆႈၾၢင်ႉ ယႃႇႁႂ်ႈမၼ်းသွၼ်ႉၵၼ်ၼမ်လိူဝ်ႁႅင်းၶႃႈ။

---