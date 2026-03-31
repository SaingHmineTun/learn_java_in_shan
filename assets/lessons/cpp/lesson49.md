# Lesson 49: Static Variables and Persistent State

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၸိူင်ႉၼင်ႇႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 48၊ Local Variable တေတၢႆၵႂႃႇ မိူဝ်ႈ Function ႁဵတ်းၵၢၼ်ယဝ်ႉ။ 
ပေႃးႁဝ်းႁွင်ႉၸႂ်ႉ Function ၼၼ်ႉထႅင်ႈပွၵ်ႈၼိုင်ႈ၊ Variable တေတႄႇၼပ်ႉ 0 မႂ်ႇၵူႈပွၵ်ႈၶႃႈ။ 
ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းၶႂ်ႈႁႂ်ႈ Function "တွင်းမၢႆ" (Remember) ၵႃႈၶၼ်ၵဝ်ႇမၼ်းဝႆႉ။ 
ၼႆႉပဵၼ်တီႈဢၼ် **`static`** Keyword မႃးၸွႆႈယဝ်ႉ။

---

### 1. Static Variable ပဵၼ်သင်?
**Static Local Variable** ပဵၼ် Variable ဢၼ်ၶူင်သၢင်ႈဝႆႉၼႂ်း Function ၵူၺ်းၵႃႈ:
* မၼ်းတေလႆႈ **"သၢင်ႈ" (Initialize) ဝႆႉပွၵ်ႈလဵဝ်ၵူၺ်း** မိူဝ်ႈပရူဝ်ႇၶႅမ်ႇတႄႇႁဵတ်းၵၢၼ်။
* မိူဝ်ႈ Function ယဝ်ႉၵႂႃႇ၊ မၼ်းတေ **ဢမ်ႇတၢႆ**။ မၼ်းတေသိမ်းၵႃႈၶၼ်သုတ်းသုတ်းမၼ်းဝႆႉ ၼႂ်း Memory။
* ပေႃးႁွင်ႉၸႂ်ႉ Function ၼၼ်ႉထႅင်ႈ၊ မၼ်းတေဢဝ်ၵႃႈၶၼ်ၵဝ်ႇၼၼ်ႉ မႃးၸႂ်ႉ တိုဝ်းၵမ်းလဵဝ်ၶႃႈ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

void countCalls() {
    // သၢင်ႈဝႆႉပွၵ်ႈလဵဝ်ၵူၺ်း သေတေတွၼ်ႈမၢႆၵႃႈၶၼ်ဝႆႉ
    static int counter = 0; 
    
    counter++;
    std::cout << "Function called " << counter << " times." << std::endl;
}

int main() {
    countCalls(); // Output: 1
    countCalls(); // Output: 2
    countCalls(); // Output: 3
    
    return 0;
}
```
**မၢႆတွင်း:** သင်ဝႃႈႁဝ်းဢမ်ႇၸႂ်ႉ `static` ၼႆ၊ Output တေပဵၼ် `1` ၵူႈပွၵ်ႈ ၵွပ်ႈ `counter` တေတၢႆယဝ်ႉ တႄႇမႂ်ႇၵူႈပွၵ်ႈၶႃႈ။

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ? (Use Cases)
1.  **Unique ID Generator**: တႃႇပၼ်မၢႆၾၢင်လုၵ်ႈႁဵၼ်း (Student ID) ႁႂ်ႈမၼ်းပိူင်ႈၵၼ်တႃႇသေႇ။
2.  **State Tracking**: တႃႇတွင်းမၢႆဝႃႈ ၼႂ်းၵဵမ်းၼၼ်ႉ User ပိုတ်ႇ Menu ၵႂႃႇလၢႆပွၵ်ႈယဝ်ႉ။
3.  **Efficiency**: ၸွႆႈႁႂ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ **Global Variable** ၵူၺ်းၵႃႈ ယင်းလႆႈ "လွင်ႈတွင်းမၢႆ" (Persistence) မိူၼ်ၵၼ်ၶႃႈ။

---

### 4. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း)

| Feature | Regular Local Variable | Static Local Variable        |
| :--- | :--- |:-----------------------------|
| **Lifetime** | တၢႆမိူဝ်ႈ Function ယဝ်ႉ | ယူႇတေႃႇပေႃး Program ပိၵ်ႉ    |
| **Initialization** | သၢင်ႈမႂ်ႇၵူႈပွၵ်ႈ ဢၼ်ႁွင်ႉၸႂ်ႉ | သၢင်ႈဝႆႉပွၵ်ႈလဵဝ်ၵူၺ်း       |
| **Scope** | လူလႆႈၼႂ်း Function ၵူၺ်း | လူလႆႈၼႂ်း Function ၵူၺ်း     |
| **Memory** | Stack Memory | Data Segment (Static Memory) |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`static`**: ႁဵတ်းႁႂ်ႈ Variable "ဢႃႇယုယၢဝ်း" ၵူၺ်းၵႃႈ "ယူႇၼႂ်းတူင်ႇၵႅပ်ႈ"။
* မၼ်းၸွႆႈႁႂ်ႈ Function မီး **"သတိ" (State)** သေတွင်းမၢႆၶေႃႈမုၼ်းလႆႈ။
* ၼႆႉပဵၼ်လၢႆးၵႄႈပၼ်ႁႃ ဢၼ်လီလိူဝ် ၵၢၼ်ၸႂ်ႉ Global Variable ၼႂ်းလၢႆလၢႆလွင်ႈၶႃႈ။

---