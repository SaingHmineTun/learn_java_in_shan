# Lesson 84: RAII and Smart Pointers (Introduction)

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Module 7, ႁဝ်းႁဵၼ်းဝႃႈ ပေႃးႁဝ်းၸႂ်ႉ `new` ႁဝ်းတေလႆႈၸႂ်ႉ `delete` သေႇသေႇ။
ၵူၺ်းၵႃႈ သင်ပရူဝ်ႇၶႅမ်ႇႁဝ်း "ပိုတ်ႈ" (Throw) Exception ဢွၵ်ႇမႃး ဢွၼ်တၢင်း ပႆႇထိုင်ထႅဝ်လိၵ်ႈ `delete` ၼၼ်ႉ၊
Memory ၼၼ်ႉတေၵိုတ်းဝႆႉ (**Memory Leak**) သေ ႁဵတ်းႁႂ်ႈ RAM တဵမ်ၶႃႈ။
တႃႇၵႄႈလွင်ႈၼႆႉ C++ ၸင်ႇမီးလွၵ်းလၢႆး **RAII** ၶႃႈ။

---

### 1. RAII ပဵၼ်သင်?
**RAII** မၢႆထိုင် **Resource Acquisition Is Initialization** ၶႃႈ။
* **လၢႆးၸႂ်ႉတိုဝ်း**: ႁဝ်းတေဢဝ် "ၶူဝ်းၶွင်" (မိူၼ်ၼင်ႇ Memory) သႂ်ႇဝႆႉၼႂ်း **Object** တူဝ်ၼိုင်ႈ။
* **ၵၢၼ်ႁဵတ်း**: မိူဝ်ႈ Object ၼၼ်ႉ "တၢႆ" (Out of scope)၊ **Destructor** ၶွင်မၼ်းတေသင်ႇ `delete` Memory ၼၼ်ႉပၼ်ႁင်းၵူၺ်းၶႃႈ။



---

### 2. Smart Pointers ပဵၼ်သင်?
**Smart Pointers** ပဵၼ် Class Templates ဢၼ်ႁဵတ်းၵၢၼ်မိူၼ် Pointer
ၵူၺ်းၵႃႈ မၼ်းၸတ်းၵၢၼ် Memory ပၼ်ႁင်းၵူၺ်း (Automatic Memory Management) ၸွမ်းၼင်ႇပိူင် RAII ၶႃႈ။

မၼ်းမီး 2 မဵဝ်းဢၼ်ၵႆႉၸႂ်ႉ (ၼႂ်း Library `<memory>`):

#### A. `std::unique_ptr` (ပိုင်ႇၵေႃႉလဵဝ်)
ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Pointer တူဝ်လဵဝ်ၵူၺ်း **ပိူင်ႇ** (Own) Memory ၼၼ်ႉ။ 
မၼ်း "Copy" ဢမ်ႇလႆႈ၊ ၵူၺ်းၵႃႈ "Move" လႆႈၶႃႈ။



```cpp
#include <iostream>
#include <memory>

class MyClass {
public:
    MyClass() { std::cout << "Created!" << std::endl; }
    ~MyClass() { std::cout << "Destroyed Automatically!" << std::endl; }
};

int main() {
    {
        // သၢင်ႈ unique_ptr (ဢမ်ႇလူဝ်ႇၸႂ်ႉ delete)
        std::unique_ptr<MyClass> ptr = std::make_unique<MyClass>();
    } // ပေႃးဢွၵ်ႇ Scope ၼႆႉ၊ ptr တေတၢႆ သေယႃႉ Memory ပၼ်ႁင်းၵူၺ်း
    
    std::cout << "After Scope" << std::endl;
    return 0;
}
```

#### B. `std::shared_ptr` (ပိုင်ႇႁူမ်ႈၵၼ်)
ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Pointer လၢႆလၢႆတူဝ် **ပိူင်ႇ** (Own) Memory တူဝ်လဵဝ်ၵၼ်။
မၼ်းတေမီး "Reference Counter" တႃႇၼပ်ႉဝႃႈ မီးၵူၼ်းၸႂ်ႉလၢႆၵေႃႉ။
ပေႃးၵူၼ်းၸႂ်ႉပဵၼ် **0** ၸင်ႇတေ `delete` ၶႃႈဢေႃႈ။



---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ Smart Pointers?
1.  **No More Memory Leaks**: မၼ်းယႃႉ Memory ပၼ်သေႇသေႇ ဢမ်ႇဝႃႈတေပဵၼ် Exception ၵေႃႈယဝ်ႉ။
2.  **No More Dangling Pointers**: ႁႄႉၵင်ႈၵၢၼ်ၸႂ်ႉ Address ဢၼ်ထုၵ်ႇ delete ယဝ်ႉ။
3.  **Clean Code**: ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ `delete` သေထႅဝ်၊ ႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **RAII**: ၵၢၼ်ၸႂ်ႉ Destructor တႃႇယႃႉ Resource ႁင်းၵူၺ်း။
* **`unique_ptr`**: တွၼ်ႈတႃႇ **ပိူင်ႇ** (Own) ၵေႃႉလဵဝ် (Efficiency သုင်)။
* **`shared_ptr`**: တွၼ်ႈတႃႇ **ပိူင်ႇ** (Own) ႁူမ်ႈၵၼ် လၢႆလၢႆတီႈ။
* **Rule**: ၼႂ်း C++ ပၢၼ်မႂ်ႇ၊ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Smart Pointers တႅၼ်း "Raw Pointers" (`*`) ၵူႈတီႈၶႃႈ။

---