# Lesson 49: "Scope and Variable Lifetime"

ၼႂ်း C#၊ Variable ၵူႈဢၼ်မီး "ၼႃႈတီႈ" ႁင်းမၼ်းယဝ်ႉ။ 
ပေႃးမၼ်းဢွၵ်ႇၼွၵ်ႈၼႃႈတီႈ (Scope) မၼ်းၵႂႃႇယဝ်ႉ၊ Computer တေ "ယႃႉ" (Destroy) မၼ်းပႅတ်ႇသေ ႁဝ်းတေဢမ်ႇၸၢင်ႈ ႁွင်ႉၸႂ်ႉမၼ်းလႆႈထႅင်ႈၶႃႈ။

### 1. Code Blocks `{ }` ပဵၼ်တူဝ်မၵ်းမၼ်ႈ
မိူဝ်ႈႁဝ်းပိုတ်ႇ `{` လႄႈ ပိၵ်ႉ `}` ၼၼ်ႉ မၼ်းပဵၼ်ၵၢၼ်သၢင်ႈ **Local Scope** ဢေႃႈ။
* Variable ဢၼ်တႅမ်ႈဝႆႉၼႂ်း `{ }` တေမီးဢႃႇယုယူႇလႆႈ **ၼႂ်းၼၼ်ႉၵူၺ်း**။



### 2. တူဝ်ယင်ႇလွင်ႈ Scope Error
တူၺ်း Code တွၼ်ႈၼႆႉၶႃႈ၊ မၼ်းတေပဵၼ် **Error** ယွၼ်ႉ Variable ဢွၵ်ႇၼွၵ်ႈ Scope:

```csharp
if (true) 
{
    int score = 100; // Variable ၼႆႉ ၵိူတ်ႇၼႂ်း { }
    Console.WriteLine(score); // ၸႂ်ႉလႆႈ (မႅၼ်ႈ)
}

// Console.WriteLine(score); // Error! ဢွၵ်ႇၼွၵ်ႈ { } ယဝ်ႉ score ဢမ်ႇမီးတူဝ်ယဝ်ႉ
```

### 3. Parent Scope vs Child Scope
* **Parent (ၽၢႆႇၼွၵ်ႈ):** Variable ဢၼ်တႅမ်ႈဝႆႉၽၢႆႇၼွၵ်ႈ ၸၢင်ႈ "ၶဝ်ႈၵႂႃႇၸႂ်ႉ" ၼႂ်း `{ }` ၽၢႆႇၼႂ်းလႆႈ။
* **Child (ၽၢႆႇၼႂ်း):** Variable ဢၼ်တႅမ်ႈဝႆႉၼႂ်း `{ }` သမ်ႉ "ဢွၵ်ႇမႃးၸႂ်ႉ" ၽၢႆႇၼွၵ်ႈဢမ်ႇလႆႈ။

```csharp
string name = "Sai Mao"; // Parent Scope

if (true) 
{
    Console.WriteLine(name); // ၸႂ်ႉလႆႈ! ၽၢႆႇၼႂ်းႁၼ်ၽၢႆႇၼွၵ်ႈ
}
```

### 4. Lifetime (ၸူဝ်ႈပၢၼ်)
* **Start:** မိူဝ်ႈ Program လႅၼ်ႈမႃးထိုင်ထႅဝ်ဢၼ် Declaration (မိူၼ်ၼင်ႇ `int x = 5;`)။
* **End:** မိူဝ်ႈ Program လႅၼ်ႈပူၼ်ႉမၢႆပိၵ်ႉ `}` ၶွင် Block ၼၼ်ႉၵႂႃႇ။ Memory တေလႆႈယႃႉ (Released) ၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Scope:** ၼႃႈတီႈ ဢၼ် Variable မီးဝႆႉလႄႈ ႁွင်ႉၸႂ်ႉလႆႈ။
* **Local Variable:** Variable ဢၼ်တႅမ်ႈဝႆႉၼႂ်း Method ဢမ်ႇၼၼ် Block `{ }`။
* **Lifetime:** ၶၢဝ်းယၢမ်းဢၼ် Variable ၼၼ်ႉသိမ်းဝႆႉၼႂ်း Memory ၶွင် Computer။
* **Declaration:** ၵၢၼ်ပိုၼ်ၽၢဝ်ႇသၢင်ႈ Variable မႂ်ႇ။
* **Out of Scope:** ၵၢၼ်ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉ Variable တီႈဢၼ်မၼ်း "ဢမ်ႇမီး" ဝႆႉ။

---