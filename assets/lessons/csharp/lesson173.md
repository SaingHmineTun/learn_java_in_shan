# Lesson 173: "Rules for Extension Methods"

တႃႇတေႁႂ်ႈ Extension Method ႁဵတ်းၵၢၼ်လႆႈၼၼ်ႉ မၼ်းမီးပၵ်းၵၢၼ်လမ်ႇလွင်ႈ 3 ၶေႃႈၶႃႈ:

### 1. တေလႆႈယူႇၼႂ်း Static Class ၵူၺ်း
Extension Method ၼိုင်ႈဢၼ် ဢမ်ႇၸၢင်ႈယူႇၼႂ်း Class ธรรมดา လႆႈၶႃႈ။
* Class ဢၼ်ႁေႃႇမၼ်းဝႆႉၼၼ်ႉ တေလႆႈမၵ်းမၼ်ႈပဵၼ် **`static`** တႃႇသေႇ။
* Method တူဝ်မၼ်းၵေႃႈ တေလႆႈပဵၼ် **`static`** ၸွမ်ၶႃႈ။

### 2. ပၵ်းၵၢၼ် 'this' Parameter
* Parameter တူဝ်ထီႉၼိုင်ႈ တေလႆႈမီး Keyword **`this`** ၼႃႈ Type ဢၼ်ႁဝ်းၶႂ်ႈထႅမ်သႂ်ႇ။
* ႁဝ်းထႅမ် Parameter တၢင်ႇဢၼ်ၸွမ်လႆႈယူႇ၊ ၵူၺ်းၵႃႈ `this` တေလႆႈယူႇ **ထီႉၼိုင်ႈ** တႃႇသေႇၶႃႈ။

```csharp
// တူဝ်ယင်ႇ: ထႅမ် Method ၸူး string သေသူင်ႇ int ၶဝ်ႈၵႂႃႇၸွမ်
public static void PrintRepeat(this string text, int count) {
    for (int i = 0; i < count; i++) {
        Console.WriteLine(text);
    }
}
```

### 3. Namespace Requirement (လမ်ႇလွင်ႈသုတ်း!)
ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ၵူၼ်းၵႆႉလိုမ်းသုတ်းၶႃႈ။ Extension Method တေ "ဢွၵ်ႇမႃး" ၵူၺ်းမိူဝ်ႈႁဝ်း **`using`** Namespace ၶွင်မၼ်းဝႆႉၶႃႈ။

* သင်ၶူးသၢႆမၢဝ်းတႅမ်ႈ Extension ဝႆႉၼႂ်း `Shan.Utilities`။
* သေၶူးတေၵႂႃႇၸႂ်ႉၼႂ်း `Shan.App`။
* ၶူးတေလႆႈတႅမ်ႈ **`using Shan.Utilities;`** ဝႆႉၽၢႆႇၼိူဝ် ၸင်ႇတေႁၼ် Method ၼၼ်ႉၶႃႈ။



---

### 4. တွၼ်ႈဢၼ် "ႁဵတ်းဢမ်ႇလႆႈ" (Limitations)
* **ဢမ်ႇၸၢင်ႈ Access Private Data:** Extension Method ႁၼ်လႆႈၵူၺ်း `public` members ၶွင် Class ဢၼ်မၼ်းၵႂႃႇၵွင်ႉၸွမ်ၼၼ်ႉၶႃႈ (ယွၼ်ႉမၼ်းယူႇ "ၼွၵ်ႈ" Class ၼၼ်ႉ)။
* **ဢမ်ႇၸၢင်ႈ Override:** သင် Class ၼၼ်ႉ မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ်ဝႆႉယဝ်ႉ (Instance Method)... C# တေလိူၵ်ႈၸႂ်ႉတူဝ်ၼႂ်း Class ၼၼ်ႉဢွၼ်တၢင်း၊ Extension Method ႁဝ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ၶႃႈ။
* **Static Class Only:** ဢမ်ႇၸၢင်ႈတႅမ်ႈၼႂ်း Interface ဢမ်ႇၼၼ် Normal Class။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Namespace Scope:** ၶွပ်ႇလႅၼ်းတၢင်းႁၼ် ၶွင် Code ၼႂ်း Namespace။
* **Parameter Decoration:** ၵၢၼ်သႂ်ႇ Keyword `this` တႃႇမၵ်းမၼ်ႈၼႃႈတီႈ။
* **Visibility:** လွင်ႈႁၼ်လႆႈ/ၸႂ်ႉလႆႈ ၶွင် Method။
* **Access Level:** ၸၼ်ႉၵၢၼ်ၶဝ်ႈထိုင်ၶေႃႈမုၼ်း (Public/Private)။

---