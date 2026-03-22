# Lesson 87: "The 'params' Keyword"

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈတႅမ်ႈ Method တႃႇလေႃးဢဝ် (Sum) မၢႆၼပ်ႉတင်းၼမ်လၢႆ။ 
မၢင်ပွၵ်ႈလုၵ်ႈႁဵၼ်းသူင်ႇမႃး 2 တူဝ်၊ မၢင်ပွၵ်ႈ 5 တူဝ်၊ မၢင်ပွၵ်ႈ 10 တူဝ်။ 
သင်ႁဝ်းၸႂ်ႉ Overloading (Lesson 82) ႁဝ်းတေလႆႈတႅမ်ႈ Code ၼမ်ၼႃႇၶႃႈ။ 
**`params`** တေၶဝ်ႈတၢင်းတိုဝ်း တီႈၼႆႈယဝ်ႉ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
မိူဝ်ႈႁဝ်းသႂ်ႇ `params` ဝႆႉၽၢႆႇၼႃႈ Array Parameter ၼၼ်ႉ... 
C# တေပွင်ႇၸႂ်ဝႃႈ: "User ၸၢင်ႈသူင်ႇ Argument မႃးလၢႆလၢႆဢၼ် (ၸႅၵ်ႇၵၼ်လူၺ်း Comma) သေယဝ်ႉ ၵဝ်တေဢဝ်ၶဝ်မႃးသႂ်ႇၼႂ်း Array ဢၼ်ၼိုင်ႈ" ၼႆၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
```csharp
class MathHelper {
    // ၸႂ်ႉ params ဝႆႉၽၢႆႇၼႃႈ array
    public static int SumAll(params int[] numbers) {
        int total = 0;
        foreach (int n in numbers) {
            total += n;
        }
        return total;
    }
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ (သူင်ႇလၢႆဢၼ်ၵေႃႈလႆႈ)
int result1 = MathHelper.SumAll(10, 20);           // ၽွၼ်းလႆႈ: 30
int result2 = MathHelper.SumAll(1, 2, 3, 4, 5);    // ၽွၼ်းလႆႈ: 15
int result3 = MathHelper.SumAll();                 // ၽွၼ်းလႆႈ: 0 (Array ပဝ်ႇ)
```

### 3. ပိူင်ၵၢၼ် (Rules)
* **Only One:** Method ၼိုင်ႈဢၼ် ၸၢင်ႈမီး `params` လႆႈ **ဢၼ်လဵဝ်** (One array) ၵူၺ်းၶႃႈ။
* **Last Position:** `params` တေလႆႈယူႇ **ၽၢႆႇလင်သုတ်း** တႃႇသေႇ။ သင်မီး Parameter တၢင်ႇၸိူဝ်း တေလႆႈဝၢင်းဝႆႉ ၽၢႆႇၼႃႈမၼ်းၶႃႈ။
* **Type:** Arguments တင်းမူတ်းဢၼ်သူင်ႇမႃး တေလႆႈပဵၼ် Type လဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ int တင်းမူတ်း)။

```csharp
// မႅၼ်ႈ (Correct)
public void ShowScores(string name, params int[] scores) { ... }

// ၽိတ်း (Incorrect)
public void Error(params int[] scores, string name) { ... } // params လူဝ်ႇယူႇလင်သုတ်း
```

### 4. တူဝ်ယင်ႇၼႂ်း C# တႄႉ
ႁဝ်းႁၼ် `params` ယူႇၵူႈဝၼ်းၼႂ်း **`Console.WriteLine()`** ၶႃႈ။
`Console.WriteLine("Hello {0}, your age is {1}", name, age);`
(မၼ်းၸႂ်ႉ `params object[]` တႃႇႁပ်ႉ Argument လၢႆလၢႆဢၼ်ၼၼ်ႉယဝ်ႉၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Variable Argument Length:** ၵၢၼ်သူင်ႇ Argument ဢၼ်ႁူဝ်ၼပ်ႉမၼ်းလႅၵ်ႈလၢႆႈလႆႈ။
* **params Keyword:** ၶေႃႈၵႂၢမ်းမၵ်းမၼ်ႈ Array တႃႇႁပ်ႉ Arguments လၢႆဢၼ်။
* **Comma-Separated Values:** ၵႃႈၶၼ်ဢၼ်ၸႅၵ်ႇၵၼ်လူၺ်းမၢႆ (,) မိူဝ်ႈသူင်ႇၶဝ်ႈ Method။
* **Array Wrapper:** ၵၢၼ်ဢၼ် Compiler ဢဝ် Arguments မႃးႁေႃႇဝႆႉၼႂ်း Array ႁင်းၵူၺ်း။

---
