# Lesson 47: "Modern C# Switch Expressions"

ၽိူဝ်ႇႁဝ်းတေတႅမ်ႈ `case`, `break`, လႄႈ `return` ၼမ်ၼႃႇၼၼ်ႉ၊ 
ႁဝ်းၸႂ်ႉ **Lambda Arrow (`=>`)** တႃႇပၼ်ၵႃႈၶၼ် (Assign Value) လႆႈၵမ်းလဵဝ်ၶႃႈ။

### 1. ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်? (Switch Statement vs Expression)



**လၢႆးၵဝ်ႇ (Switch Statement):**
```csharp
int day = 1;
string dayName;

switch (day) {
    case 1: dayName = "Monday"; break;
    case 2: dayName = "Tuesday"; break;
    default: dayName = "Unknown"; break;
}
```

**လၢႆးမႂ်ႇ (Switch Expression):**
```csharp
int day = 1;

string dayName = day switch {
    1 => "Monday",
    2 => "Tuesday",
    _ => "Unknown" // _ ၼႆႉတႅၼ်းတၢင်း default ဢေႃႈ
};
```

### 2. ပိူင်သၢင်ႈဢၼ်လူဝ်ႇမၢႆတွင်း
* **Variable switch { ... }**: ဢဝ် Variable ဝႆႉၽၢႆႇၼႃႈ Keyword `switch`။
* **Arrow (`=>`)**: ၸႂ်ႉတႅၼ်းတၢင်း `case` လႄႈ `:`။
* **Discard (`_`)**: ၸႂ်ႉတႅၼ်းတၢင်း `default` (ပေႃးဢမ်ႇမီးဢၼ်လႂ်မႅၼ်ႈ)။
* **Comma (,)**: ၸႂ်ႉတႅၼ်းတၢင်း `break` တႃႇၸႅၵ်ႇ Case ၼိုင်ႈတင်းၼိုင်ႈ။
* 

### 3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ?
* ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ **"လိူၵ်ႈဢဝ်ၵႃႈၶၼ်"** (Return a value) မႃးသႂ်ႇၼႂ်း Variable။
* ၸႂ်ႉမိူဝ်ႈ Case ႁဝ်းမၼ်းငၢႆႈငၢႆႈ (Single Line)။
* ပေႃးလူဝ်ႇတႅမ်ႈ Logic ယၢဝ်းယၢဝ်းၼႂ်း Case တႄႉ ၸႂ်ႉ Switch Statement ပိူင်ၵဝ်ႇ တိုၵ်ႉလီယူႇၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Switch Expression:** လၢႆးတႅမ်ႈ Switch ဢၼ်သူင်ႇၵႃႈၶၼ် (Value) ဢွၵ်ႇမႃးၵမ်းလဵဝ်။
* **Lambda Arrow (=>):** ၶိူင်ႈမၢႆဢၼ်ၸီႉၼႄဝႃႈ "သင်ပဵၼ်ဢၼ်ၼႆႉ ႁႂ်ႈဢဝ်ဢၼ်ၼၼ်ႉ"။
* **Discard (_):** ၶိူင်ႈမၢႆဢၼ်တႅၼ်းတၢင်း "Anything else" ဢမ်ႇၼၼ် Default။
* **Immutability:** ၵၢၼ်ၸႂ်ႉ Switch Expression ၸွႆးႁႂ်ႈႁဝ်း Assign ၵႃႈၶၼ်ပၼ် Variable (မိူၼ်ၼင်ႇ readonly) လႆႈငၢႆႈငၢႆႈ။

---