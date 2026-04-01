# Lesson 76: The 'final' Keyword and Preventing Inheritance

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++ 11 မႃးၼႆႉ၊ ႁဝ်းမီး Keyword ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်းၵုမ်းထိင်း "ၸၼ်ႉထၢၼ်" (Hierarchy) ၶွင် Class ႁဝ်းလႆႈလီလိူဝ်ၵဝ်ႇ။ 
Keyword **`final`** ၼႆႉၸႂ်ႉတႃႇမၢႆဝႃႈ "ၼႆႉပဵၼ်တွၼ်ႈသုတ်းယဝ်ႉ၊ ႁၢမ်ႈၽႂ်မႃးသိုပ်ႇၸိူဝ်ႉ ဢမ်ႇၼၼ် မႃးမႄး (Override) မၼ်းထႅင်ႈ" ၼႆၶႃႈ။

---

### 1. ၵၢၼ်ႁၢမ်ႈသိုပ်ႇၸိူဝ်ႉ Class (Preventing Class Inheritance)
သင်ႁဝ်းတႅမ်ႈ `final` ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Class၊ Class တၢင်ႇဢၼ်တေဢမ်ႇၸၢင်ႈမႃးသိုပ်ႇၸိူဝ်ႉ (Inherit) လုၵ်ႉတီႈမၼ်းလႆႈယဝ်ႉ။

```cpp
#include <iostream>

// 1. Class ဢၼ်ပဵၼ် 'final'
class SecretBase final {
    // ...
};

// 2. သင်မီး Class မႃးၸမ်းသိုပ်ႇၸိူဝ်ႉ
// class Derived : public SecretBase { }; 
// ERROR! Compiler တေဝႃႈ: cannot derive from 'final' class
```

---

### 2. ၵၢၼ်ႁၢမ်ႈ Override Method (Preventing Virtual Function Overriding)
မၢင်ပွၵ်ႈႁဝ်းပၼ်ပိူၼ်ႈသိုပ်ႇၸိူဝ်ႉ Class လႆႈယူႇ၊ 
ၵူၺ်းၵႃႈ ႁဝ်းၶႂ်ႈႁၢမ်ႈဢမ်ႇပၼ်မႄး (Override) Method မၢင်ဢၼ်။ 
ႁဝ်းတေၸႂ်ႉ `final` ဝႆႉၽၢႆႇလင် Virtual Function ၼၼ်ႉၶႃႈ။

```cpp
class Parent {
public:
    virtual void show() {
        std::cout << "Parent's show" << std::endl;
    }
};

class Child : public Parent {
public:
    // ႁၢမ်ႈလၢၼ် (Grandchild) မႃး Override Method ၼႆႉထႅင်ႈ
    void show() override final {
        std::cout << "Child's show" << std::endl;
    }
};

class GrandChild : public Child {
public:
    // void show() override { } 
    // ERROR! Compiler တေဝႃႈ: virtual function 'show' is final
};
```

---

### 3. ပဵၼ်သင်ႁဝ်းတေလႆႈၸႂ်ႉ `final`? (Why use it?)
1.  **Security**: တႃႇႁႄႉၵင်ႈဢမ်ႇပၼ်ပိူၼ်ႈမႃးမႄး Logic ဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇ ၵၢၼ်ၵူတ်ႇထတ်း Password)။
2.  **Performance**: မိူဝ်ႈ Compiler ႁူႉဝႃႈ Class ၼႆႉပဵၼ် `final` ယဝ်ႉ၊ မၼ်းၸၢင်ႈ "Optimize" ၶူတ်ႉႁဝ်းႁႂ်ႈဝႆးလိူဝ်ၵဝ်ႇ ၵွပ်ႈမၼ်းဢမ်ႇလူဝ်ႇၵႂႃႇႁႃ v-table လၢႆလၢႆၸၼ်ႉၶႃႈ။
3.  **Design Intent**: တႃႇၼေပိူၼ်ႈဝႃႈ "Class ၼႆႉႁဝ်းတႅမ်ႈဝႆႉတႃႇၸႂ်ႉတူဝ်မၼ်းၵူၺ်း၊ ဢမ်ႇၸႂ်ႈတႃႇပဵၼ် Base Class ပၼ်ၽႂ်"။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`final`**: ၸႂ်ႉတႃႇ "ဢိုတ်ႉပိၵ်ႉ" (Close) ၵၢၼ်သိုပ်ႇၸိူဝ်ႉ ဢမ်ႇၼၼ် ၵၢၼ် Override။
* **Class level**: ႁၢမ်ႈဢမ်ႇပၼ်သိုပ်ႇၸိူဝ်ႉ Class တင်းမူတ်း။
* **Method level**: ႁၢမ်ႈဢမ်ႇပၼ် Override Virtual Function ၼၼ်ႉၵူၺ်း။

---