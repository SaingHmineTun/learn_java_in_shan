# Lesson 15: Project: The Currency Converter

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ယိၼ်းၸူမ်းၸွမ်းၶႃႈ! ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းႁူႉလွင်ႈ ၵၢၼ်သိမ်းၶေႃႈမုၼ်း (Data Types) မဵဝ်းပႅၵ်ႇပိူင်ႈၵၼ်ယဝ်ႉ။ 
ပရူဝ်ႇၵျႅၵ်ႉ (Project) ၼႆႉ တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်ဝႃႈ ၵွပ်ႈသင် ႁဝ်းထုၵ်ႇလီၾၢင်ႇ လွင်ႈမႅၼ်ႈ (Precision) ၼႂ်းၵၢၼ်ၼပ်ႉသွၼ်ႇငိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  သၢင်ႈ **`const double`** တႃႇသိမ်းၵႃႈၶၼ်ပိၼ်ႇငိုၼ်း (Exchange Rates)။
2.  ႁပ်ႉဢဝ်တူဝ်ၼပ်ႉငိုၼ်း (Amount) ၼႂ်းမဵဝ်း **`double`**။
3.  ၼပ်ႉသွၼ်ႇပိၼ်ႇငိုၼ်းသေ ၼေလိၵ်ႈဢွၵ်ႇမႃး ႁႂ်ႈမီးတူဝ်ၸုတ်ႇ (Decimals) 2 တူဝ်။
4.  ၸႂ်ႉ **`std::string`** တႃႇသိမ်းၸိုဝ်ႈငိုၼ်း (Currency Name)။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)
ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈၾၢႆႇမႂ်ႇၸိုဝ်ႈဝႃႈ `converter.cpp` သေ တႅမ်ႈၶူတ်ႉၼႆႉသႂ်ႇတူၺ်းၶႃႈ:

```cpp
#include <iostream>
#include <string>
#include <iomanip> // တႃႇၸႂ်ႉ setprecision

int main() {
    // 1. တင်ႈၵႃႈ Exchange Rates (တူဝ်ယၢင်ႇ: 1 USD = 2100 MMK)
    const double USD_TO_MMK = 2100.0;
    const double USD_TO_THB = 35.5;

    double amountUSD;
    std::string userName;

    std::cout << "--- TMK Currency Converter ---" << std::endl;
    
    // 2. ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း
    std::cout << "Enter your name: ";
    std::getline(std::cin, userName);

    std::cout << "Enter amount in USD: ";
    std::cin >> amountUSD;

    // 3. ၼပ်ႉသွၼ်ႇ
    double mmkResult = amountUSD * USD_TO_MMK;
    double thbResult = amountUSD * USD_TO_THB;

    // 4. ၼေၽွၼ်းဢွၵ်ႇ ႁႂ်ႈမႅၼ်ႈယံ 2 တူဝ်ၸုတ်ႇ
    std::cout << std::fixed << std::setprecision(2);
    
    std::cout << "\nHello, " << userName << "!" << std::endl;
    std::cout << amountUSD << " USD is equal to:" << std::endl;
    std::cout << ">> " << mmkResult << " MMK (Myanmar Kyat)" << std::endl;
    std::cout << ">> " << thbResult << " THB (Thai Baht)" << std::endl;

    std::cout << "------------------------------" << std::endl;

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **`std::fixed`**: ၸႂ်ႉတႃႇႁႂ်ႈမၼ်းၼေ တူဝ်ၸုတ်ႇ (Decimal) တူဝ်ၼပ်ႉတၢႆတူဝ်။
* **`std::setprecision(2)`**: ၵုမ်းထိင်းႁႂ်ႈၼေတူဝ်ၸုတ်ႈ 2 တူဝ်ၵူၺ်း။
* **`const`**: ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ Exchange Rate လႅၵ်ႈလၢႆႈ ၼႂ်းၵႄႈပရူဝ်ႇၶႅမ်ႇႁဵတ်းၵၢၼ်။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ တႃႇ **Module 2**! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်လွင်ႈ Memory, Variables, လႄႈ ၵၢၼ်ၸႂ်ႉတိုဝ်း Data Types ဢၼ်မႅၼ်ႈယံယဝ်ႉ။ ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ် ဢၼ်တေႁဵတ်းႁႂ်ႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ်ၼပ်ႉသွၼ်ႇလႆႈ ၵူႈမဵဝ်းယဝ်ႉၶႃႈ။

---