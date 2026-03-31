# Lesson 62: Access Specifiers: Public, Private, and Protected

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း OOP ၼႆႉ သင်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ "ၵူၼ်းၽၢႆႇၼွၵ်ႈ" (ၶူတ်ႉတီႈ `main`) မႃးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၼႂ်း Class ႁဝ်းလႆႈၸွမ်းၸႂ်ၼႆ ႁဝ်းမီးလၢႆးႁၢမ်ႈမၼ်းၶႃႈ။ 
တူဝ်ယၢင်ႇ - ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၽႂ်ၵေႃႈယဝ်ႉ မႃးလႅၵ်ႈလၢႆႈ "ငိုၼ်းၼႂ်းယေး" (Bank Balance) ႁဝ်းလႆႈ ၵမ်းသိုဝ်ႈ။ 
ႁဝ်းၸႂ်ႉ **Access Specifiers** တႃႇၵုမ်းထိင်းဝႃႈ ၽႂ်လူလႆႈ သေၽႂ်မႄးလႆႈၶႃႈ။

---

### 1. တူဝ်ၵုမ်းထိင်း 3 မဵဝ်း (The Three Specifiers)

ၼႂ်း C++ မီးတူဝ်ၵုမ်းထိင်းယူႇ 3 မဵဝ်း:

1.  **`public`**: ၵူႈၵေႃႉလူလႆႈ၊ မႄးလႆႈ (တႄႇဢဝ်ၼႂ်း Class တေႃႇပေႃးထိုင်ၼွၵ်ႈ Class)။
2.  **`private`**: ၼႂ်း Class ၼၼ်ႉၵူၺ်း ဢၼ်လူလႆႈ/မႄးလႆႈ။ (ၼႆႉပဵၼ် ပိုၼ်ႉထၢၼ်/Default ၶွင် Class ၶႃႈ)။
3.  **`protected`**: မိူၼ်တင်း Private ၵူၺ်းၵႃႈ "လုၵ်ႈလၢၼ်" (Subclasses) ယင်းတိုၵ်ႉလူလႆႈယူႇ။



---

### 2. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>
#include <string>

class BankAccount {
public:
    std::string owner; // ၵူႈၵေႃႉႁူႉၸိုဝ်ႈလႆႈ

private:
    double balance;   // ဢမ်ႇပၼ်ၵူၼ်းၼွၵ်ႈမႄးလႆႈၵမ်းသိုဝ်ႈ

public:
    // Method တႃႇပၼ်ငိုၼ်း (Control access)
    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            std::cout << "Added: " << amount << std::endl;
        }
    }

    void showBalance() {
        std::cout << "Balance: " << balance << std::endl;
    }
};

int main() {
    BankAccount myAcc;
    myAcc.owner = "Sai Mao"; // လႆႈ (Public)
    
    // myAcc.balance = 1000000; // ERROR! (Private - ဢမ်ႇပၼ်မႄးၸွမ်းၸႂ်)
    
    myAcc.deposit(500);      // လႆႈ (ၸႂ်ႉ Method တႃႇမႄး)
    myAcc.showBalance();
    
    return 0;
}
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Private?
* **Data Protection**: ႁႄႉၵင်ႈလွင်ႈ "ပၼ်ၵႃႈၶၼ်ၽိတ်း" (မိူၼ်ၼင်ႇ သႂ်ႇၵႃႈၶၼ်ပဵၼ် -50)။
* **Encapsulation**: သိမ်းဝႆႉလွင်ႈယုင်ႈယၢင်ႈ ၽၢႆႇၼႂ်း၊ သေပိုတ်ႇၼေ "ပုမ်ႇၼဵၵ်း" (Methods) ဢၼ်ငၢႆႈငၢႆႈပၼ် User ၵူၺ်း။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Public**: ပိုတ်ႇပၼ်ၵူႈၵေႃႉ (Open to all)။
* **Private**: ပိၵ်ႉဝႆႉတႃႇၸႂ်ႉၼႂ်း Class ၵူၺ်း (Safe/Secure)။
* **Protected**: ပိၵ်ႉဝႆႉ ၵူၺ်းၵႃႈ ပၼ် "လုၵ်ႈလၢၼ်" ၸႂ်ႉလႆႈ (Inheritance)။
* **Rule of Thumb**: ဝႆႉ Attributes (Data) ပဵၼ် **Private** သေႇသေႇ၊ သေဝႆႉ Methods ပဵၼ် **Public** ၶႃႈ။

---