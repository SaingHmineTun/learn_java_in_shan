# Lesson 50: Project: The Custom Math Library

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်းပရူဝ်ႇၵျႅၵ်ႉၼႆႉ ႁဝ်းတေဢမ်ႇၸႂ်ႉ Library ၶွင် C++၊ ႁဝ်းတေတႅမ်ႈ Function ႁဝ်းႁင်းၵူၺ်း တႃႇၼပ်ႉသွၼ်ႇလွင်ႈတူဝ်ၼပ်ႉ။ 
ႁဝ်းတေၸႂ်ႉ **Overloading** တႃႇႁပ်ႉလႆႈ `int` လႄႈ `double`၊ သေၸႂ်ႉ **Pass-by-Reference** တႃႇ "လႅၵ်ႈ" (Swap) ၵႃႈၶၼ်တူဝ်ၼပ်ႉၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **`power()`**: Function ဢၼ်မီး Default Argument တႃႇၼပ်ႉသွၼ်ႇ `x` ပုၼ်ႈ `y` (Default `y=2`)။
2.  **`area()`**: ၸႂ်ႉ **Function Overloading** တႃႇၼပ်ႉသွၼ်ႇ ၵႂၢင်ႈမူၼ်း (Circle) လႄႈ ၵႂၢင်ႈသီႇၸဵင်ႇ (Rectangle)။
3.  **`swap()`**: ၸႂ်ႉ **Pass-by-Reference (`&`)** တႃႇလႅၵ်ႈၵႃႈၶၼ် Variable သွင်တူဝ်။
4.  **`counter()`**: ၸႂ်ႉ **Static Variable** တႃႇၼပ်ႉဝႃႈ ႁဝ်းၸႂ်ႉ Math Tool ၵႂႃႇလၢႆပွၵ်ႈယဝ်ႉ။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>

// --- Prototypes ---
void useTool();
void swap(int &a, int &b);
double area(double radius);               // Circle
double area(double length, double width); // Rectangle
long power(int base, int exp = 2);        // Default exponent 2

int main() {
    std::cout << "=== TMK Custom Math Library ===" << std::endl;

    // 1. Testing Power (with Default Argument)
    useTool();
    std::cout << "5 squared: " << power(5) << std::endl;
    std::cout << "2 to the power 3: " << power(2, 3) << std::endl;

    // 2. Testing Overloaded Area
    useTool();
    std::cout << "Area of Circle (r=5): " << area(5.0) << std::endl;
    std::cout << "Area of Rect (5x10): " << area(5.0, 10.0) << std::endl;

    // 3. Testing Swap (Pass-by-Reference)
    useTool();
    int x = 10, y = 20;
    std::cout << "Before swap: x=" << x << ", y=" << y << std::endl;
    swap(x, y);
    std::cout << "After swap:  x=" << x << ", y=" << y << std::endl;

    return 0;
}

// --- Definitions ---

void useTool() {
    static int count = 0;
    count++;
    std::cout << "\n[Tool Usage #" << count << "]" << std::endl;
}

long power(int base, int exp) {
    long result = 1;
    for (int i = 0; i < exp; i++) result *= base;
    return result;
}

double area(double radius) {
    return 3.14159 * radius * radius;
}

double area(double length, double width) {
    return length * width;
}

void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Encapsulation**: ႁဝ်းၸႅၵ်ႇ Logic ၵၢၼ်ၼပ်ႉသွၼ်ႇ ဢွၵ်ႇတီႈ `main()` ႁဵတ်းႁႂ်ႈၶူတ်ႉလူငၢႆႈ။
* **Flexibility**: ၸႂ်ႉ **Overloading** ႁဵတ်းႁႂ်ႈၸိုဝ်ႈ Function `area` ဢၼ်လဵဝ်ၵၼ် ႁဵတ်းၵၢၼ်လႆႈလၢႆမဵဝ်း။
* **Efficiency**: ၵၢၼ်ၸႂ်ႉ **`&`** ၼႂ်း `swap` ႁဵတ်းႁႂ်ႈႁဝ်းမႄး Variable တူဝ်တႄႉလႆႈ ၵမ်းသိုဝ်ႈ။
* **State Management**: ၵၢၼ်ၸႂ်ႉ **`static`** ၸွႆႈႁႂ်ႈ Function `useTool` တွင်းမၢႆၵႃႈၶၼ်ဝႆႉလႆႈ တႃႇသေႇ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈ Module 6 ယဝ်ႉၶႃႈ! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇပဵၼ် Programmer ဢၼ်ႁူႉလၢႆးတႅမ်ႈ **Modular Code** ယဝ်ႉ။ 
ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function ဢၼ်ၸႂ်ႉၶိုၼ်းလႆႈ လႄႈ မီးလွင်ႈဝႆး (Efficient) ယဝ်ႉၶႃႈ။

---