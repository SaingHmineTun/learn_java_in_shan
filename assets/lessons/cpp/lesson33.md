# Lesson 5.33: Introduction to Arrays: Storing Multiple Values

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တေႃႇထိုင်ယၢမ်းလဵဝ်၊ ႁဝ်းသိမ်းၶေႃႈမုၼ်း ၼႂ်း Variable တူဝ်လဵဝ်မႃးယူႇသေႇသေႇ (မိူၼ်ၼင်ႇ `int score1 = 90;`)။ ၵူၺ်းၵႃႈ ပေႃးႁဝ်းမီးလုၵ်ႈႁဵၼ်း 100 ၵေႃႉ၊ ႁဝ်းတေတႅမ်ႈ Variable 100 တူဝ်ၼႆႉ မၼ်းယၢပ်ႇလိူဝ်ႁႅင်းၶႃႈ။ **Array** ၼႆႉ မႃးၸွႆႈႁႂ်ႈႁဝ်းသိမ်းၶေႃႈမုၼ်း **"မဵဝ်းလဵဝ်ၵၼ်" (Same Data Type)** တင်းၼမ် ဝႆႉၼႂ်း "ထႅဝ်လဵဝ်ၵၼ်" ၶႃႈ။

---

### 1. Array ပဵၼ်သင်? (What is an Array?)
Array ၼႆႉ ပဵၼ်ၸုမ်းၶေႃႈမုၼ်း ဢၼ်မီး **"သႅၼ်း" (Size)** ပိူင်ႈတၢႆဝႆႉၶႃႈ။
* မၼ်းသိမ်းၶေႃႈမုၼ်း ဝႆႉၸပ်းၵၼ်ၼႂ်း Memory။
* ၶေႃႈမုၼ်းၵူႈတူဝ် ၼႂ်း Array တေလႆႈပဵၼ် **Data Type** မဵဝ်းလဵဝ်ၵၼ်ၵူၺ်း (မိူၼ်ၼင်ႇ `int` တင်းမူတ်း)။



---

### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Array (Declaring an Array)
တႃႇတေတႄႇၸႂ်ႉ Array၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼေ 3 ပိူင်: **Data Type**, **ၸိုဝ်ႈ**, လႄႈ **Size** (ဝႆႉၼႂ်း Square Brackets `[ ]`)။

* **Syntax**: `dataType arrayName[arraySize];`

```cpp
int scores[5]; // သိမ်းတူဝ်ၼပ်ႉ int လႆႈ 5 တူဝ်
double prices[10]; // သိမ်းတူဝ်ၸုတ်ႇ double လႆႈ 10 တူဝ်
```

---

### 3. ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Initializing an Array)
ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ် တႄႇဢဝ်မိူဝ်ႈသၢင်ႈမၼ်းလႆႈၵမ်းသိုဝ်ႈ လူၺ်ႈၸႂ်ႉ Curly Braces `{ }` ၶႃႈ။

```cpp
// လၢႆးပၼ်ၵႃႈၶၼ်တင်းမူတ်း
int myNumbers[5] = {10, 20, 30, 40, 50};

// လၢႆးပၼ်ၵႃႈၶၼ် ဢၼ်ဢမ်ႇလၢတ်ႈ Size (Compiler တေၼပ်ႉပၼ်ႁင်းၵူၺ်း)
int ages[] = {18, 20, 25}; // Size တေပဵၼ် 3 ႁင်းၵူၺ်း
```

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    // သၢင်ႈ Array သိမ်းၸိုဝ်ႈဝၼ်း (Size 3)
    int luckyNumbers[3] = {7, 9, 13};

    std::cout << "Array created successfully!" << std::endl;
    
    // မၢႆတွင်း: ၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈ ႁဝ်းတေမႃးသွၼ်လွင်ႈ ၵၢၼ် "လူ" (Access)
    // ၶေႃႈမုၼ်းၼႂ်း Array ၸိူဝ်းၼႆႉၶႃႈ။

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Array**: ၸုမ်းၶေႃႈမုၼ်း မဵဝ်းလဵဝ်ၵၼ်။
* **Square Brackets `[ ]`**: ၸႂ်ႉတႃႇလၢတ်ႈၼေ "သႅၼ်း" (Size) ၶွင် Array။
* Array ၼႂ်း C++ ပိုၼ်ႉထၢၼ် (Static Array) ၼႆႉ ပေႃးသၢင်ႈယဝ်ႉ **Size မၼ်းတေလႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ** ၶႃႈ။

---