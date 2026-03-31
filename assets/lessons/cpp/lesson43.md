# Lesson 6.43: Function Prototypes: Declaration vs. Definition

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++၊ Compiler မၼ်းတေလူၶူတ်ႉ တႄႇဢဝ် **ၼိူဝ်လူင်းတႂ်ႈ** ၶႃႈ။ 
ပေႃးၸဝ်ႈၵဝ်ႇႁွင်ႉၸႂ်ႉ Function ၼႂ်း `main()`၊ ၵူၺ်းၵႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function ၼၼ်ႉဝႆႉ ၽၢႆႇတႂ်ႈ `main()` ၸိုင် Compiler တေႁႃမၼ်းဢမ်ႇထူပ်း သေတေၼေ Error ၶႃႈ။ 
တႃႇတေၵႄႈလွင်ႈၼႆႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Function Prototype** ၶႃႈ။

---

### 1. Declaration vs. Definition
မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ် 2 ပွတ်းၶႃႈ:
* **Declaration (Prototype)**: လၢတ်ႈၼေ Compiler ဝႃႈ "မီး Function ၸိုဝ်ႈၼႆႉ၊ မီး Parameter မဵဝ်းၼႆႉယူႇၼႃ"။ (ဝႆႉၽၢႆႇၼိူဝ် `main`)
* **Definition**: တႅမ်ႈၶူတ်ႉ "ၵၢၼ်ႁဵတ်းမၼ်းတႄႉတႄႉ" ဝႆႉၼႂ်း `{ }`။ (ဝႆႉၽၢႆႇတႂ်ႈ `main`)



---

### 2. ပိူင်သၢင်ႈ Prototype (Syntax)
Prototype မၼ်းမိူၼ်ၼင်ႇ "ႁူဝ်ၶေႃႈ" Function ၵူၺ်းၶႃႈ၊ တေလႆႈသုတ်းလူၺ်ႈ **Semicolon (`;`)** သေႇသေႇ။

```cpp
// Prototype (Declaration)
int add(int a, int b); 
```

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

// 1. Declaration (Prototype) - မၢႆၸိုဝ်ႈဝႆႉဢွၼ်တၢင်း
void printMessage();
int multiply(int x, int y);

int main() {
    printMessage(); // ႁွင်ႉၸႂ်ႉလႆႈယဝ်ႉ ၵွပ်ႈမၼ်းႁူႉၸၵ်း Prototype
    
    int result = multiply(5, 4);
    std::cout << "Result: " << result << std::endl;
    
    return 0;
}

// 2. Definition - တႅမ်ႈၵၢၼ်ႁဵတ်းမၼ်းဝႆႉ ၽၢႆႇတႂ်ႈ
void printMessage() {
    std::cout << "Learning Prototypes is fun!" << std::endl;
}

int multiply(int x, int y) {
    return x * y;
}
```

---

### 4. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Prototype?
1.  **Organization**: ၸွႆႈႁႂ်ႈ `main()` ယူႇၽၢႆႇၼိူဝ်သုတ်း၊ လူငၢႆႈဝႃႈ ပရူဝ်ႇၶႅမ်ႇႁဝ်းတႄႇႁဵတ်းၵၢၼ်ၸိူဝ်ႉႁိူဝ်။
2.  **Circular Dependency**: မိူဝ်ႈ Function A ႁွင်ႉ Function B၊ သေ Function B သမ်ႉႁွင်ႉ Function A ၶိုၼ်း၊ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Prototype ၸင်ႇတေတႅမ်ႈလႆႈၶႃႈ။
3.  **Header Files**: ပေႃးႁဝ်းတႅမ်ႈပရူဝ်ႇၶႅမ်ႇယႂ်ႇလူင်၊ ႁဝ်းတေလႆႈသိမ်း Prototype ဝႆႉၼႂ်း `.h` (Header) ၾၢႆႇၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Prototype**: ပဵၼ်ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ (Declare) ၸိုဝ်ႈ လႄႈ Type၊ တေလႆႈသုတ်းလူၺ်ႈ **`;`**။
* **Definition**: ပဵၼ်ၵၢၼ်တႅမ်ႈၶူတ်ႉ (Logic) တႄႉတႄႉ။
* ၵၢၼ်ၸႂ်ႉ Prototype ႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း "ပဵၼ်ပိူင်" (Organized) လႄႈ ၵုမ်းထိင်းငၢႆႈၶႃႈ။

---