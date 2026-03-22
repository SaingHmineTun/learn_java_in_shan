# Lesson 46: "The 'switch' Statement" (ၵၢၼ်လိူၵ်ႈတၢင်းပႆလၢႆလၢႆသဵၼ်ႈ)

**'switch'** ၼႆႉမိူၼ်ၼင်ႇ "ၽၵ်းတူလၢႆလၢႆသဵၼ်ႈ" ဢၼ်မီးၸိုဝ်ႈတႅမ်ႈဝႆႉ။ 
မၼ်းတေတူၺ်းၵႃႈၶၼ် Variable ႁဝ်းသေ ၵႂႃႇပိုတ်ႇၽၵ်းတူ (Case) ဢၼ်မႅၼ်ႈၸွမ်းၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)

```csharp
switch (variable)
{
    case value1:
        // Code
        break;
    case value2:
        // Code
        break;
    default:
        // Code (ပေႃးဢမ်ႇမီးဢၼ်လႂ်မႅၼ်ႈ)
        break;
}
```

### 2. တူဝ်ယင်ႇ Code တႄႉတႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ App တႃႇလိူၵ်ႈ "ဝၼ်းၵိူတ်ႇ" ၶႃႈ။

```csharp
int day = 1;

switch (day)
{
    case 1:
        Console.WriteLine("Monday (ဝၼ်းၸၼ်)");
        break;
    case 2:
        Console.WriteLine("Tuesday (ဝၼ်းဢင်းၵၢၼ်း)");
        break;
    case 3:
        Console.WriteLine("Wednesday (ဝၼ်းပုတ်ႉ)");
        break;
    default:
        Console.WriteLine("Other day...");
        break;
}
```

### 3. ၶေႃႈၵႂၢမ်းလုၵ်ႈၸႂ် (Keywords)
* **case:** ၸိုဝ်ႈၵႃႈၶၼ် ဢၼ်ႁဝ်းၶႂ်ႈၵူတ်ႇထတ်း။
* **break:** ၶေႃႈၵႂၢမ်း "ၵိုတ်း"။ မၼ်းလၢတ်ႈၼႄဝႃႈ "ယဝ်ႉယဝ်ႉ၊ ဢွၵ်ႇၵႂႃႇလႆႈယဝ်ႉ"။ (ပေႃးဢမ်ႇသႂ်ႇ break မၼ်းတေ Error ၶႃႈ)။
* **default:** မိူၼ်တင်း `else` ဢေႃႈ။ မၼ်းတေႁဵတ်းၵၢၼ် ပေႃးဢမ်ႇမီး `case` ဢၼ်လႂ်မႅၼ်ႈၸွမ်း။


### 4. Switch vs If-Else
* ၸႂ်ႉ **If-Else:** မိူဝ်ႈမီးၵၢၼ်တႅၵ်ႈၵၼ်ပဵၼ် "သၢႆ" (Range) မိူၼ်ၼင်ႇ `score > 80`။
* ၸႂ်ႉ **Switch:** မိူဝ်ႈမီးၵႃႈၶၼ် "တႅတ်ႉတေႃး" (Exact Values) မိူၼ်ၼင်ႇ `1`, `2`, `"Monday"`, `"Admin"`။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Discrete Values:** ၵႃႈၶၼ်ဢၼ်တႅတ်ႉတေႃးသေ ဢမ်ႇၸႂ်ႈပဵၼ်သၢႆယၢဝ်း (မိူၼ်ၼင်ႇ မၢႆၼပ်ႉတဵမ် ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈ)။
* **Fall-through:** ၼႂ်း C# တေဢမ်ႇပၼ်ႁဵတ်း Fall-through (ၵၢၼ်လႅၼ်ႈပူၼ်ႉ Case ၼိုင်ႈၵႂႃႇၸူးထႅင်ႈ Case ၼိုင်ႈ) လိူဝ်သေ Case ၼၼ်ႉပဝ်ႇဝႆႉ။
* **Match:** ၵၢၼ်ဢၼ်ၵႃႈၶၼ် Variable မိူၼ်ၵၼ်တင်းၵႃႈၶၼ်ၼႂ်း Case။
* **Execution:** လွင်ႈႁဵတ်းၵၢၼ်ၶွင် Code ၼႂ်း Case ဢၼ်မႅၼ်ႈၸွမ်း။

---