# Lesson 47: Default Arguments and Function Overloading

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈလႂ် ႁဝ်းၶႂ်ႈႁႂ်ႈ Function ႁဝ်း Flexible ၶႃႈ။ 
တူဝ်ယၢင်ႇ - "ပေႃး User ဢမ်ႇပၼ်ၵႃႈၶၼ်မႃး၊ ႁႂ်ႈၸႂ်ႉၵႃႈၶၼ်ဢၼ်ႁဝ်းမၢႆဝႆႉ" (Default Argument)။ 
ဢမ်ႇၼၼ် "ႁဝ်းၶႂ်ႈမီး Function ၸိုဝ်ႈလဵဝ်ၵၼ် ၵူၺ်းၵႃႈ ႁပ်ႉလႆႈတင်းတူဝ်ၼပ်ႉ `int` လႄႈ တူဝ်ၸုတ်ႇ `double`" (Overloading) ၼႆယဝ်ႉ။

---

### 1. Default Arguments (ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်)
**Default Argument** ပဵၼ်ၵႃႈၶၼ် ဢၼ်ႁဝ်း "ပၼ်ဝႆႉဢွၼ်တၢင်း" ၼႂ်း Parameter။ 
ပေႃး User ႁွင်ႉၸႂ်ႉ Function သေ ဢမ်ႇပၼ်ၶေႃႈမုၼ်းမႃး၊ မၼ်းတေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉ ၵႂႃႇၸႂ်ႉႁင်းၵူၺ်းၶႃႈ။

* **မၢႆတွင်း**: တေလႆႈပၼ် Default Value တႄႇဢဝ် **"ၽၢႆႇၶႂႃသုတ်း"** (Right-to-left) ၵႂႃႇၶႃႈ။

```cpp
void greet(std::string name, std::string prefix = "Mr.") {
    std::cout << "Hello, " << prefix << " " << name << std::endl;
}

int main() {
    greet("Sai Mao");            // Hello, Mr. Sai Mao (ၸႂ်ႉ Default)
    greet("Nang Mo", "Ms.");     // Hello, Ms. Nang Mo (ၸႂ်ႉဢၼ်သူင်ႇမႃး)
    return 0;
}
```

---

### 2. Function Overloading (ၸိုဝ်ႈလဵဝ် ၼႃႈၵၢၼ်လၢႆမဵဝ်း)
**Function Overloading** ပဵၼ်ၵၢၼ်သၢင်ႈ Function တင်းၼမ် ဢၼ်မီး **"ၸိုဝ်ႈမိူၼ်ၵၼ်"** ၵူၺ်းၵႃႈ မီး **"Parameters ပႅၵ်ႇၵၼ်"** (Data Type ဢမ်ႇမိူၼ်ၵၼ် ဢမ်ႇၼၼ် တူဝ်ၼပ်ႉ Parameter ဢမ်ႇမိူၼ်ၵၼ်) ၶႃႈ။



```cpp
// 1. တႃႇလေႃး int
int add(int a, int b) {
    return a + b;
}

// 2. တႃႇလေႃး double (Overloaded)
double add(double a, double b) {
    return a + b;
}

int main() {
    std::cout << add(5, 10) << std::endl;      // ႁွင်ႉၸႂ်ႉတူဝ် (1)
    std::cout << add(5.5, 2.5) << std::endl;  // ႁွင်ႉၸႂ်ႉတူဝ် (2)
    return 0;
}
```

---

### 3. ပၵ်းယၢမ်ႇတႃႇ Overloading
Compiler တေတူၺ်း **"Signature"** ၶွင် Function တႃႇလိူၵ်ႈႁွင်ႉၸႂ်ႉ:
* **လိူၵ်ႈလႆႈ**: ပေႃး Data Type ပႅၵ်ႇၵၼ် (int vs double)။
* **လိူၵ်ႈလႆႈ**: ပေႃးတူဝ်ၼပ်ႉ Parameter ပႅၵ်ႇၵၼ် (2 parameters vs 3 parameters)။
* **လိူၵ်ႈဢမ်ႇလႆႈ**: ပေႃးပႅၵ်ႇၵၼ်ၵူၺ်းတီႈ **Return Type** (မိူၼ်ၼင်ႇ `int add()` လႄႈ `void add()`) - ၼႆႉတေပဵၼ် Error ၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Default Arguments**: ၸွႆႈယွမ်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉၼမ် (မိူၼ်ၼင်ႇ Tax Rate ပိုၼ်ႉထၢၼ်)။
* **Overloading**: ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတင်ႈၸိုဝ်ႈယၢဝ်းယၢဝ်း (မိူၼ်ၼင်ႇ `addInt`, `addDouble`)။
* တူဝ် **Compiler** တေပဵၼ်ၵူၼ်းလိူၵ်ႈပၼ်ဝႃႈ တေၸႂ်ႉ Function တူဝ်လႂ် ၸွမ်းၼင်ႇၶေႃႈမုၼ်း ဢၼ်ႁဝ်းသူင်ႇသႂ်ႇ (Arguments) ၼၼ်ႉၶႃႈ။

---