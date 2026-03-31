# Lesson 42: The Power of Reusability: Defining and Calling Functions

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တေႃႇထိုင်ယၢမ်းလဵဝ် ႁဝ်းတႅမ်ႈၶူတ်ႉတင်းမူတ်း ဝႆႉၼႂ်း `int main()` ၵူၺ်းၶႃႈ။ ပေႃးပရူဝ်ႇၶႅမ်ႇႁဝ်း ယႂ်ႇမႃး၊ ၶူတ်ႉတေယုင်ႈယၢင်ႈ လႄႈ လူယၢပ်ႇလိူဝ်ႁႅင်း။ 
**Function** ၼႆႉ မႃးၸွႆႈႁႂ်ႈႁဝ်း "ၸႅၵ်ႇ" ၶူတ်ႉပဵၼ်တွၼ်ႈဢွၼ်ႇ ဢၼ်မီးၼႃႈၵၢၼ်ၽႂ်မၼ်းဝႆႉၶႃႈ။ 
ပေႃးႁဝ်းတႅမ်ႈဝႆႉပွၵ်ႈၼိုင်ႈယဝ်ႉ၊ ႁဝ်းၸၢင်ႈ "ႁွင်ႉၸႂ်ႉ" (Call) မၼ်း လၢႆပွၵ်ႈၵေႃႈလႆႈ၊ ဢမ်ႇလူဝ်ႇတႅမ်ႈၶိုၼ်းၶႃႈ။

---

### 1. ပိူင်သၢင်ႈ Function (Defining a Function)
တႃႇတေတႅမ်ႈ Function တူဝ်ၼိုင်ႈ ႁဝ်းလူဝ်ႇလႆႈလၢတ်ႈၼေ 3 တွၼ်ႈ:
1.  **Return Type**: ၵႃႈၶၼ် ဢၼ်မၼ်းတေသူင်ႇပၼ်ၶိုၼ်း (မိူၼ်ၼင်ႇ `int`, `void`)။
2.  **Function Name**: ၸိုဝ်ႈဢၼ်ႁဝ်းတေႁွင်ႉၸႂ်ႉ။
3.  **Parameters**: ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းတေသူင်ႇသႂ်ႇၼႂ်းမၼ်း (ဝႆႉၼႂ်း `( )`)။



---

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Calling a Function)
မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ယဝ်ႉယဝ်ႉ၊ မၼ်းတေပႆႇႁဵတ်းၵၢၼ်သင်ၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈ "ႁွင်ႉ" (Call) မၼ်း တီႈၼႂ်း `main()` ဢမ်ႇၼၼ် တီႈ Function တၢင်ႇဢၼ်ၶႃႈ။

```cpp
// 1. တႅမ်ႈ Function ဝႆႉၽၢႆႇၼိူဝ် main()
void sayHello() {
    std::cout << "Mingalarbar! Welcome to TMK School." << std::endl;
}

int main() {
    // 2. ႁွင်ႉၸႂ်ႉ
    sayHello(); 
    sayHello(); // ႁွင်ႉလႆႈလၢႆလၢႆပွၵ်ႈ
    return 0;
}
```

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ: Function ဢၼ်မီးၵၢၼ်ၼပ်ႉသွၼ်ႇ

```cpp
#include <iostream>

// Function တႃႇၼေလိၵ်ႈၵိုတ်း (Greeting)
void showBanner() {
    std::cout << "--------------------------" << std::endl;
    std::cout << "   C++ Math Assistant    " << std::endl;
    std::cout << "--------------------------" << std::endl;
}

// Function တွၼ်ႈတႃႇလေႃး (Addition)
void addNumbers(int a, int b) {
    int sum = a + b;
    std::cout << "The sum of " << a << " and " << b << " is: " << sum << std::endl;
}

int main() {
    showBanner(); // ႁွင်ႉၸႂ်ႉ
    
    addNumbers(10, 20); // သူင်ႇ 10 လႄႈ 20 သႂ်ႇ
    addNumbers(5, 5);   // ၸႂ်ႉၶိုၼ်းထႅင်ႈပွၵ်ႈၼိုင်ႈ
    
    return 0;
}
```

---

### 4. လွင်ႈလီၶွင် Function (Advantages)
* **Reusability**: တႅမ်ႈပွၵ်ႈလဵဝ် ၸႂ်ႉလႆႈၵူႈတီႈ။
* **Readability**: ႁဵတ်းႁႂ်ႈၶူတ်ႉ လူငၢႆႈ (Clean Code)။
* **Easy Debugging**: ပေႃးမီးလွင်ႈၽိတ်း၊ ႁဝ်းၵူၺ်းလူဝ်ႇၵႂႃႇမႄးတီႈ Function ၼၼ်ႉ တီႈလဵဝ်ၵူၺ်း။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Define**: တႅမ်ႈၼႃႈၵၢၼ်မၼ်းဝႆႉ။
* **Call**: ႁွင်ႉၸႂ်ႉတီႈၼႂ်း `main()`။
* Function ၸွႆႈႁႂ်ႈႁဝ်း ဢမ်ႇလႆႈတႅမ်ႈၶူတ်ႉဢၼ်ၵဝ်ႇ ၶိုၼ်းပွၵ်ႈၶိုၼ်းပွၵ်ႈ (DRY Principle - Don't Repeat Yourself)။

---