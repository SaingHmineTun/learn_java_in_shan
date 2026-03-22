# Lesson 61: "The 'return' Statement inside Loops"

**'return'** ၼႆႉ ၸႂ်ႉတႃႇသူင်ႇ "ၽွၼ်းလႆႈ" (Value) ၵႂႃႇၸူးတီႈ Method ဢၼ်ႁွင်ႉၸႂ်ႉ မၼ်းၼၼ်ႉလႄႈ တႃႇ "ၵိုတ်း" ၵၢၼ်ႁဵတ်းသၢင်ႈတင်းမူတ်းၼႂ်း Method ၼၼ်ႉၶႃႈ။

### 1. ပိူင်ၵၢၼ် (How it Works)
မိူဝ်ႈ Program လႅၼ်ႈမႃးၺႃးၶေႃႈၵႂၢမ်း `return;` ၼႂ်း Loop...
* Loop တေၵိုတ်းၵမ်းလဵဝ်။
* Code ဢၼ်ၵိုတ်းဝႆႉၽၢႆႇတႂ်ႈ Loop (ၼႂ်း Method ၼၼ်ႉ) တေထုၵ်ႇ **"ၶၢမ်ႈ"** ပႅတ်ႇတင်းမူတ်း။
* Program တေဢွၵ်ႇၵႂႃႇၸူး တီႈဢၼ်ႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉၶႃႈ။



### 2. တူဝ်ယင်ႇ Code တႄႉတႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Method တႃႇႁႃမၢႆၼပ်ႉၼႂ်း Array ၶႃႈ။

```csharp
static void SearchNumber(int[] numbers, int target)
{
    foreach (int n in numbers)
    {
        if (n == target)
        {
            Console.WriteLine("Found: " + n);
            return; // ဢွၵ်ႇပႅတ်ႇတင်း Method ၵမ်းလဵဝ်
        }
    }

    // ထႅဝ်ၼႆႉ တေႁဵတ်းၵၢၼ် မိူဝ်ႈ "ဢမ်ႇၺႃး return" ၼႂ်း Loop ၵူၺ်း
    Console.WriteLine("Target not found in the list.");
}
```

### 3. ပႅၵ်ႇၵၼ်တင်း 'break' ၼင်ႇႁိုဝ်?
* **`break`**: ဢွၵ်ႇၵႂႃႇတီႈ Loop ၵူၺ်း၊ ဝၢႆးၼၼ်ႉ တေသိုပ်ႇႁဵတ်း Code ဢၼ်ယူႇၽၢႆႇလင် Loop ၼၼ်ႉထႅင်ႈ။
* **`return`**: ဢွၵ်ႇပႅတ်ႇတင်း Method ၵမ်းလဵဝ်၊ Code ဢၼ်ယူႇလင် Loop ၼၼ်ႉၵေႃႈ တေဢမ်ႇလႆႈႁဵတ်းယဝ်ႉ။

### 4. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ?
* **Early Exit:** မိူဝ်ႈႁဝ်းလႆႈ "ၶေႃႈတွပ်ႇ" ဢၼ်ႁဝ်းလူဝ်ႇယဝ်ႉ၊ သေဢမ်ႇမီးလွင်ႈတၢင်းသင် တေလႆႈသိုပ်ႇႁဵတ်းၵၢၼ်ၼႂ်း Method ၼၼ်ႉထႅင်ႈ။
* **Validation:** မိူဝ်ႈၵူတ်ႇထတ်းၶေႃႈမုၼ်း ပေႃးၺႃး Error ႁႂ်ႈမၼ်းၵိုတ်းပႅတ်ႇတင်းမူတ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Return Statement:** ၶေႃႈသင်ႇဢၼ်ၵိုတ်း Method လႄႈ သူင်ႇၵႃႈၶၼ်ၶိုၼ်း (သင်မီး)။
* **Functional Exit:** ၵၢၼ်ဢွၵ်ႇၼႂ်း Method ၸွမ်းၼင်ႇပိူင်ၵၢၼ် (Logic)။
* **Method/Function:** ၸုမ်း Code ဢၼ်ႁူမ်ႈၵၼ် ႁဵတ်းၵၢၼ်ဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ Main)။
* **Caller:** ၵေႃႉဢၼ်ႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉ (မိူၼ်ၼင်ႇ တီႈဢၼ်သင်ႇႁႂ်ႈ App လႅၼ်ႈ)။

---
