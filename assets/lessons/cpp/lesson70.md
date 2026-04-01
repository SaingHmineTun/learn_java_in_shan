# Lesson 70: Inheritance Types: Public, Private, and Protected

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းသိုပ်ႇၸိူဝ်ႉ (Inherit) လုၵ်ႉတီႈ Base Class မႃးၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈ ထတ်းသိၼ်ဝႆႉဝႃႈ 
ႁဝ်းတေပၼ် "လုၵ်ႈ" (Derived Class) ၶွင်ႁဝ်း လူၸႂ်ႉ Attributes လႄႈ Methods ၸိူဝ်းၼၼ်ႉလႆႈၸိူင်ႉႁိူဝ်။ 
ၼႆႉႁွင်ႉဝႃႈ **Inheritance Access Specifiers** ၶႃႈ။

---

### 1. ပိူင်သိုပ်ႇၸိူဝ်ႉ 3 မဵဝ်း (Three Types of Inheritance)

ႁဝ်းၵႆႉၸႂ်ႉ Keyword ၽၢႆႇလင် တူဝ် **`:`** မိူဝ်ႈပိုၼ်ၽၢဝ်ႇ Class ၶႃႈ။

1.  **Public Inheritance (`public`)**: ဢၼ်ၼႆႉၵူၼ်းၸႂ်ႉၼမ်သုတ်း။ ၶေႃႈမုၼ်းတင်းမူတ်း (Public/Protected) ၶွင် Base Class တေပဵၼ် ၼင်ႇမၼ်းပဵၼ်ဝႆႉ (Public တေပဵၼ် Public၊ Protected တေပဵၼ် Protected) တင်းမူတ်း။
2.  **Protected Inheritance (`protected`)**: ၶေႃႈမုၼ်းတင်းမူတ်း (Public/Protected) ၶွင် Base Class တေပဵၼ် **Protected** ၼႂ်း Derived Class တင်းမူတ်း။
3.  **Private Inheritance (`private`)**: ၶေႃႈမုၼ်းတင်းမူတ်း (Public/Protected) ၶွင် Base Class တေပဵၼ် **Private** ၼႂ်း Derived Class တင်းမူတ်း။



---

### 2. Protected Access ၼႂ်း Inheritance
ၼႂ်း Module 8 ႁဝ်းႁဵၼ်းဝႃႈ `private` ၼႆႉ ၵူၼ်းၽၢႆႇၼွၵ်ႈလူဢမ်ႇလႆႈၼႆယဝ်ႉ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းသိုပ်ႇၸိူဝ်ႉသေ သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ "လုၵ်ႈ" ႁဝ်းလူလႆႈ၊ "ၵူၼ်းၼွၵ်ႈ" (main) ဢမ်ႇလႆႈယူႇၼႆ
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`protected`** ၶႃႈ။

```cpp
class Parent {
protected:
    int money = 1000; // လုၵ်ႈလူလႆႈ၊ ၵူၼ်းၼွၵ်ႈလူဢမ်ႇလႆႈ
};

class Child : public Parent {
public:
    void showMoney() {
        std::cout << "Father's money: " << money << std::endl; // လႆႈ (Success)
    }
};

int main() {
    Child c;
    // c.money = 2000; // ERROR! ၵူၼ်းၼွၵ်ႈ (main) မႃးတိူဝ်ႉဢမ်ႇလႆႈ
    c.showMoney();
    return 0;
}
```

---

### 3. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း Visibility)

| Base Class Member | Public Inheritance | Protected Inheritance | Private Inheritance |
| :--- | :--- | :--- | :--- |
| **Public** | Public | Protected | Private |
| **Protected** | Protected | Protected | Private |
| **Private** | Hidden (လူဢမ်ႇလႆႈ) | Hidden (လူဢမ်ႇလႆႈ) | Hidden (လူဢမ်ႇလႆႈ) |



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Public Inheritance**: ၸႂ်ႉတႃႇသၢင်ႈလွင်ႈၵပ်းသိုပ်ႇ "IS-A" တႄႉတႄႉ။
* **Protected**: ၸွႆႈႁႂ်ႈ "လုၵ်ႈ" မီးသုၼ်ႇၸႂ်ႉ Data ငဝ်ႈၵဝ်ႇ လႆႈလိူဝ်ၵူၼ်းၽၢႆႇၼွၵ်ႈ။
* **Private Members**: ဢမ်ႇဝႃႈတေပဵၼ် Inheritance မဵဝ်းလႂ်၊ Derived Class တေဢမ်ႇၸၢင်ႈလူၸႂ်ႉ Private Data ၶွင် Base Class လႆႈ (လူဝ်ႇၸႂ်ႉ Getters/Setters)။

---