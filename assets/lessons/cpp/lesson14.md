# Lesson 14: Type Casting and Data Safety

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈမၢင်လႂ် ႁဝ်းလူဝ်ႇဢဝ်တူဝ်ၼပ်ႉ `int` ၵႂႃႇၼပ်ႉသွၼ်ႇၸွမ်း `double` ဢမ်ႇၼၼ် ဢဝ် `double` ပိၼ်ႇပဵၼ် `int` ၶိုၼ်း။ 
ၵၢၼ်ပိၼ်ႇမဵဝ်းၶေႃႈမုၼ်းၼႆႉ ႁွင်ႉဝႃႈ **Type Casting** ၶႃႈ။ ပေႃးႁဝ်းဢမ်ႇၾၢင်ႉၸွမ်း၊ ၶေႃႈမုၼ်းႁဝ်း ၸၢင်ႈၽိတ်းၵႂႃႇလႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 1. Implicit Widening Casting (ပိၼ်ႇပၼ်ႁင်းၵူၺ်း)
ၼႆႉပဵၼ်ၵၢၼ် ဢၼ် Compiler ပိၼ်ႇပၼ်ႁင်းၵူၺ်းၶႃႈ။ 
မိူဝ်ႈႁဝ်းဢဝ် "ၵွၵ်းလဵၵ်ႉ" ၵႂႃႇသႂ်ႇၼႂ်း "ၵွၵ်းယႂ်ႇ" ၼၼ်ႉ မၼ်းမီးလွင်ႈလွတ်ႈၽေး (Safe) ၵွပ်ႈၶေႃႈမုၼ်း ဢမ်ႇလူႉႁၢႆလႄႈ 
Compiler မၼ်းတေပိၼ်ႇပၼ်ႁင်းၵူၺ်းၶႃႈ။

* **တူဝ်ယၢင်ႇ**: ဢဝ် `int` (4 bytes) သႂ်ႇၼႂ်း `double` (8 bytes)။
```cpp
int myInt = 10;
double myDouble = myInt; // Automatic casting: 10.0
```

---

### 2. Explicit Narrowing Casting (ၵၢၼ်ၸႂ်ႉတႅပ်းတတ်း)
ၼႆႉပဵၼ်ၵၢၼ် ဢၼ် Programmer တေလႆႈသင်ႇပိၼ်ႇႁင်းၵူၺ်း။ 
မၼ်းၵိူတ်ႇပဵၼ် မိူဝ်ႈႁဝ်းဢဝ် "ၵွၵ်းယႂ်ႇ" ၵႂႃႇသႂ်ႇၼႂ်း "ၵွၵ်းလဵၵ်ႉ" ၶႃႈ။ 
ၼႆႉမီးလွင်ႈတုၵ်ႉယၢပ်ႇ ၵွပ်ႈၶေႃႈမုၼ်းၸၢင်ႈလူႉႁၢႆ (Data Loss)။

* **C-Style Casting** (ဢမ်ႇၼႄႉၼำႁႂ်ႈၸႂ်ႉ): `(int)3.14`
* **Static Cast** (ၼႄႉၼำၼႂ်း C++): `static_cast<type>(expression)`

```cpp
double pi = 3.14;
int roundedPi = static_cast<int>(pi); // တေၵိုတ်းၵူၺ်း 3 (0.14 လူႉႁၢႆယဝ်ႉ)
```



---

### 3. လွင်ႈၽိတ်းၼႂ်းၵၢၼ်ၼပ်ႉသွၼ်ႇ (Integer Division)
ၼႆႉပဵၼ် တီႈဢၼ်လုၵ်ႈႁဵၼ်း ၽိတ်းၼမ်သေပိူၼ်ႈၶႃႈ။ ၼႂ်း C++ ပေႃးႁဝ်းဢဝ် `int / int` မၼ်းတေဢွၵ်ႇမႃးပဵၼ် `int` သေႇသေႇၶႃႈ။

```cpp
int a = 5;
int b = 2;
double result = a / b; // တေဢွၵ်ႇ 2.0 (ဢမ်ႇၸႂ်ႈ 2.5)

// လၢႆးၵႄႈ (Fix): ၸႂ်ႉ static_cast
double correctResult = static_cast<double>(a) / b; // တေဢွၵ်ႇ 2.5
```

---

### 4. Data Safety (လွင်ႈလွတ်ႈၽေးၶေႃႈမုၼ်း)
မိူဝ်ႈပိၼ်ႇ Data Type တေလႆႈသတိလွင်ႈ:
1. **Narrowing Conversion**: ပေႃးဢဝ် `double` ပိၼ်ႇပဵၼ် `int`၊ တူဝ်ၸုတ်ႇ (Decimals) တေႁၢႆ။
2. **Overflow**: ပေႃးဢဝ် `long long` ဢၼ်ယႂ်ႇတႄႉတႄႉ ၵႂႃႇသႂ်ႇၼႂ်း `short`၊ တူဝ်ၼပ်ႉတေၽိတ်းၵႂႃႇတင်းမူတ်းၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Implicit**: လဵၵ်ႉၵႂႃႇယႂ်ႇ (Safe/Automatic)။
* **Explicit**: ယႂ်ႇၵႂႃႇလဵၵ်ႉ (လူဝ်ႇၸႂ်ႉ `static_cast`)။
* **Integer Division**: တေလႆႈပိၼ်ႇတူဝ်ၼိုင်ႈ ႁႂ်ႈပဵၼ် `double` ၸင်ႇတေလႆႈၵႃႈၶၼ် ဢၼ်မႅၼ်ႈယံၶႃႈ။

---