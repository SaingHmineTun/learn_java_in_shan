# Lesson 45: "The Conditional (Ternary) Operator"

ၸိုဝ်ႈမၼ်းဝႃႈ "Ternary" ယွၼ်ႉမၼ်းမီး Operand 3 တွၼ်ႈဢေႃႈ။ 
မၼ်းၸႂ်ႉမၢႆ **`?`** လႄႈ **`:`** တႃႇႁဵတ်းၵၢၼ်။

### 1. ပိူင်သၢင်ႈ (Syntax)
`condition ? value_if_true : value_if_false;`

* **တွၼ်ႈ 1:** ၶေႃႈထၢမ် (Condition) ဢၼ်ဢွၵ်ႇပဵၼ် True/False။
* **တွၼ်ႈ 2:** ၵႃႈၶၼ်ဢၼ်တေၸႂ်ႉ ပေႃးပဵၼ် **True** (ဝႆႉလင်မၢႆ `?`)။
* **တွၼ်ႈ 3:** ၵႃႈၶၼ်ဢၼ်တေၸႂ်ႉ ပေႃးပဵၼ် **False** (ဝႆႉလင်မၢႆ `:`)။



### 2. တူဝ်ယင်ႇ Comparison
ႁဝ်းမႃး တူၺ်းလွင်ႈပႅၵ်ႇပိူင်ႈ မိူဝ်ႈႁဝ်းတႅမ်ႈ `If-Else` ပိူင်ၵဝ်ႇ လႄႈ `Ternary` ၶႃႈ:

**လၢႆးၵဝ်ႇ (If-Else):**
```csharp
int time = 10;
string greeting;

if (time < 12) {
    greeting = "Good Morning";
} else {
    greeting = "Good Day";
}
```

**လၢႆးမႂ်ႇ (Ternary Operator):**
```csharp
int time = 10;
string greeting = (time < 12) ? "Good Morning" : "Good Day";
```
*(Code ပွတ်းၵႂႃႇၼမ်ၼႃႇသေ ဢၢၼ်းငၢႆႈၶိုၼ်ႈၶႃႈ)*

### 3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ?
* ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ **Assign Value** ပၼ် Variable ၵမ်းလဵဝ်။
* ၸႂ်ႉၼႂ်း `Console.WriteLine` တႃႇၼႄလိၵ်ႈပႅၵ်ႇၵၼ်။
    * `Console.WriteLine(age >= 18 ? "Can Vote" : "Cannot Vote");`
* **သတိ:** ပေႃးၶေႃႈၵၼ်ယုင်ႈယၢပ်ႈၼႃႇ (Nested Ternary)၊ လူဝ်ႇၸႂ်ႉ `If-Else` တူဝ်ၵဝ်ႇ တႃႇႁႂ်ႈဢၢၼ်း Code ငၢႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Ternary:** ဢၼ်မီး 3 တွၼ်ႈ (Three parts)။
* **Condition:** ၶေႃႈထၢမ် ဢမ်ႇၼၼ် ၵၢၼ်တဵၵ်းၵၼ် ဢၼ်ၽိူၼ်ဢွၵ်ႇပဵၼ် Boolean။
* **Expression:** ထႅဝ် Code ဢၼ်သူင်ႇၵႃႈၶၼ် (Value) ဢွၵ်ႇမႃး။
* **Shorthand:** လၢႆးတႅမ်ႈဢၼ်ပွတ်း လႄႈ ၽႂ်း (မိူၼ်ၼင်ႇ Shortcut)။

---