# Lesson 23: Project: The BMI & Fitness Calculator

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ယိၼ်းၸူမ်းၸွမ်းၶႃႈ! ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းႁူႉလွင်ႈ **Operators** တင်းမူတ်းယဝ်ႉ။ 
ပရူဝ်ႇၵျႅၵ်ႉ (Project) ၼႆႉ တေၸွႆႈႁႂ်ႈၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်လွင်ႈၵၢၼ်ၸႂ်ႉ **Math Expressions** ဢၼ်ယၢပ်ႇလိူဝ်ၵဝ်ႇ 
တႃႇႁႃၵႃႈၶၼ် Body Mass Index (BMI) လႄႈ ၵႃႈၶၼ်ၵၢၼ်ၸႂ်ႉႁႅင်း (Calories) ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  ႁပ်ႉဢဝ် ၼမ်ႉၼၵ်း (Weight) ပဵၼ် **kg** လႄႈ တၢင်းသုင် (Height) ပဵၼ် **meters**။
2.  ၼပ်ႉသွၼ်ႇ **BMI** လူၺ်ႈၸႂ်ႉသုတ်း: $BMI = frac{weight}{height^2}$
3.  ၼပ်ႉသွၼ်ႇ **Target Heart Rate** (60% ၶွင်ႁႅင်းႁူဝ်ၸႂ်သုတ်းယေႃတ်း): $(220 - age) \times 0.6$
4.  ၸႂ်ႉ **Relational Operators** တႃႇၵူတ်ႇထတ်းဝႃႈ BMI ၼၼ်ႉ မီးၼႂ်းၸၼ်ႉ "Normal" (18.5 - 24.9) ႁႃႉ?

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)
ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈၾၢႆႇမႂ်ႇၸိုဝ်ႈဝႃႈ `fitness_calc.cpp` သေ တႅမ်ႈၶူတ်ႉၼႆႉသႂ်ႇတူၺ်းၶႃႈ:

```cpp
#include <iostream>
#include <iomanip>

int main() {
    double weight, height;
    int age;

    std::cout << "=== TMK Fitness Calculator ===" << std::endl;

    // 1. ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း
    std::cout << "Enter your weight (kg): ";
    std::cin >> weight;
    std::cout << "Enter your height (m): ";
    std::cin >> height;
    std::cout << "Enter your age: ";
    std::cin >> age;

    // 2. ၼပ်ႉသွၼ်ႇ BMI (BMI = weight / (height * height))
    double bmi = weight / (height * height);

    // 3. ၼပ်ႉသွၼ်ႇ Target Heart Rate (60% Intensity)
    double targetHR = (220 - age) * 0.6;

    // 4. ၵူတ်ႇထတ်း Logic (Normal Weight Range: 18.5 - 24.9)
    bool isNormal = (bmi >= 18.5) && (bmi <= 24.9);

    // 5. ၼေၽွၼ်းဢွၵ်ႇ
    std::cout << std::fixed << std::setprecision(2);
    std::cout << "\n--- Your Health Summary ---" << std::endl;
    std::cout << "Your BMI: " << bmi << std::endl;
    std::cout << "Target Heart Rate (60%): " << targetHR << " bpm" << std::endl;
    
    std::cout << std::boolalpha;
    std::cout << "Is your BMI in normal range? " << isNormal << std::endl;
    std::cout << "---------------------------" << std::endl;

    return 0;
}
```



---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Precedence**: ၼႂ်းၵၢၼ်ႁႃ BMI ႁဝ်းၸႂ်ႉ `(height * height)` ဢွၼ်တၢင်း ၸင်ႇဢဝ်ၵႂႃႇၸႅၵ်ႇ။
* **Logical AND (`&&`)**: ၸႂ်ႉတႃႇၵူတ်ႇထတ်း "Range" (ၵႄႈၵၢင်) ၶေႃႈမုၼ်း သွင်ဢၼ်။
* **Arithmetic**: ၵၢၼ်ၸႂ်ႉ `* 0.6` တႃႇႁႃ 60% ၼၼ်ႉ ပဵၼ်ၵၢၼ်ၵုၼ်း ဢၼ်ၸႂ်ႉၼမ်တႄႉတႄႉ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ တႃႇ **Module 3**! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇၵတ်ႉၶႅၼ်ႇလွင်ႈၵၢၼ်ၸႂ်ႉ **Operators** တႃႇႁဵတ်း Logic လႄႈ Math Expressions ဢၼ်ယၢပ်ႇလိူဝ်ၵဝ်ႇယဝ်ႉ။ ၼႆႉပဵၼ် "မၼ်းဢွၵ်း" ဢၼ်တေႁဵတ်းႁႂ်ႈပရူဝ်ႇၶႅမ်ႇႁဝ်း တႅပ်းတတ်းၸႂ်လႆႈၶႃႈ။

---