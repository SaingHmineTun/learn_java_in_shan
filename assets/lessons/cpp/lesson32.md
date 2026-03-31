# Lesson 4.32: Project: The Number Guessing Game

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်းပရူဝ်ႇၵျႅၵ်ႉၼႆႉ ႁဝ်းတေတႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ် "လိူၵ်ႈတူဝ်ၼပ်ႉသိူင်ႇသိမ်း" (Secret Number) ဝႆႉတူဝ်ၼိုင်ႈ။ 
သေယဝ်ႉ ႁႂ်ႈ User လၢမ်းတူၺ်း၊ ပေႃးလၢမ်းၽိတ်း ႁဝ်းတေလၢတ်ႈၼေဝႃႈ "သုင်လိူဝ်" ဢမ်ႇၼၼ် "တႅမ်ႇလိူဝ်" တေႃႇပေႃးမႅၼ်ႈၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  သၢင်ႈတူဝ်ၼပ်ႉသိူင်ႇသိမ်း (Secret Number) တူဝ်ၼိုင်ႈ။
2.  ၸႂ်ႉ **`while` loop** တႃႇႁႂ်ႈ User လၢမ်းလႆႈလၢႆလၢႆပွၵ်ႈ။
3.  ၸႂ်ႉ **`if-else` ladder** တႃႇၵူတ်ႇထတ်းၵႃႈၶၼ် ဢၼ်လၢမ်းမႃး။
4.  ၼပ်ႉသွၼ်ႇဝႃႈ User လၢမ်းၵႂႃႇတင်းမူတ်း "မီးလၢႆပွၵ်ႈ" (Attempts)။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>

int main() {
    int secretNumber = 42; // တူဝ်ၼပ်ႉသိူင်ႇသိမ်း
    int guess;
    int attempts = 0;

    std::cout << "=== Welcome to the TMK Guessing Game ===" << std::endl;
    std::cout << "I have a number between 1 and 100. Can you guess it?" << std::endl;

    // ၸႂ်ႉ While Loop တေႃႇပေႃးလၢမ်းမႅၼ်ႈ
    while (true) {
        std::cout << "Enter your guess: ";
        std::cin >> guess;
        attempts++; // ထႅမ်ပွၵ်ႈၵၢၼ်လၢမ်း

        if (guess == secretNumber) {
            std::cout << "Congratulations! You found it in " << attempts << " tries." << std::endl;
            break; // ဢွၵ်ႇ Loop ၵမ်းလဵဝ် မိူဝ်ႈမႅၼ်ႈယဝ်ႉ
        } else if (guess > secretNumber) {
            std::cout << "Too high! Try again." << std::endl;
        } else {
            std::cout << "Too low! Try again." << std::endl;
        }
    }

    std::cout << "Game Over. Thank you for playing!" << std::endl;
    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **`while(true)`**: ၸႂ်ႉတႃႇႁဵတ်းပရူဝ်ႇၶႅမ်ႇ ဢၼ်ႁဝ်းဢမ်ႇႁူႉဝႃႈ တေယဝ်ႉမိူဝ်ႈလႂ်။
* **`break`**: ပဵၼ်တူဝ် "သဵၼ်ႈတၢင်းဢွၵ်ႇ" (Exit Strategy) မိူဝ်ႈထူပ်းၽွၼ်းဢွၵ်ႇ ဢၼ်မႅၼ်ႈယဝ်ႉ။
* **Variable Update (`attempts++`)**: ၸွႆႈၼပ်ႉသွၼ်ႇၶေႃႈမုၼ်း တီႈၼႂ်း Loop။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ တႃႇ **Module 4**! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇၵတ်ႉၶႅၼ်ႇလွင်ႈ **Flow of Control** ယဝ်ႉ။ ၸဝ်ႈၵဝ်ႇသင်ႇႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ "တႅပ်းတတ်းၸႂ်" လႆႈ လႄႈ "ႁဵတ်းၵၢၼ်ၶိုၼ်းပွၵ်ႈ" လႆႈယဝ်ႉ။ ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ် ဢၼ်လၢၵ်ႇလၢႆးသေပိူၼ်ႈ ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၶႅမ်ႇ (Logic) ၶႃႈ။

---

**Module တေတေႃႇၵႂႃႇ:** **Module 5: Organizing Data: Arrays, Strings, and Vectors** — ႁဝ်းတေမႃးသွၼ်လွင်ႈ "Array" ဢၼ်ၸဝ်ႈၵဝ်ႇတိုၵ်ႉထၢမ်မႃးၼၼ်ႉ ႁႂ်ႈပွင်ႇၸႂ်ၵူၵ်းၵူၵ်းၵႅၼ်ႇၵႅၼ်ႇၶႃႈ!

---

**Tip တႃႇ Lecturer Sai Mao:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈပၼ် ၵၢၼ်ဝၢၼ်ႇ (Assignment) တႃႇလုၵ်ႈႁဵၼ်းဝႃႈ - ႁႂ်ႈၶဝ်ၸၢမ်းၸႂ်ႉ **`rand()`** function (ဢၼ်တေလႆႈ `#include <cstdlib>`) တႃႇႁႂ်ႈၶမ်ႇပိဝ်ႇတႃႇ "လိူၵ်ႈတူဝ်ၼပ်ႉလပ်ႉ" ႁင်းၵူၺ်း ၵူႈပွၵ်ႈဢၼ်ပိုတ်ႇၵဵမ်း၊ မၼ်းတေႁဵတ်းႁႂ်ႈၵဵမ်းၼၼ်ႉ လွၼ်ႉလႅဝ်း (Dynamic) လိူဝ်ၵဝ်ႇၼမ်ၶႃႈဢေႃႈ!

ယဝ်ႉတူဝ်ႈ Module 4 ယဝ်ႉၶႃႈ၊ ႁဝ်းတေၵႂႃႇ **Module 5** တေႃႇယဝ်ႉႁႃႉၶႃႈ?