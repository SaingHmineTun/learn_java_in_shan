# Lesson 169: "Static Methods"

**Static Method** ပဵၼ် Method ဢၼ်ၵွင်ႉၵၢႆႇတင်း Class ၵမ်းလဵဝ်။ ႁဝ်းဢမ်ႇလူဝ်ႇမီး "တူဝ် Object" ၵေႃႈ ႁွင်ႉၸႂ်ႉလၢႆးႁဵတ်းသၢင်ႈမၼ်းလႆႈယဝ်ႉၶႃႈ။



### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈတႅမ်ႈ Method တႃႇ "ပိၼ်ႇၵႃႈၶၼ်ငိုၼ်း" (Currency Converter)။
* ႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Object `Converter` မႃး ၸင်ႇတေၼပ်ႉငိုၼ်းလႆႈ။
* ႁဝ်းၵူၺ်းလူဝ်ႇသူင်ႇ "ၵႃႈၶၼ်" ၶဝ်ႈၵႂႃႇ သေႁႂ်ႈမၼ်းသူင်ႇ "ၽົນလႆႈ" ဢွၵ်ႇမႃးၵူၺ်း။
* **Static Method** ၸင်ႇပဵၼ်တၢင်းလိူၵ်ႈဢၼ်လီသုတ်း တႃႇၼႃႈၵၢၼ်ၼင်ႇၼႆၶႃႈ။

### 2. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ (The Golden Rule)
မီးပၵ်းၵၢၼ်ဢၼ်ၼိုင်ႈ ဢၼ်ၶူးတေလႆႈမၢႆတွင်းဝႆႉတႃႇသေႇ:
> **"Static Method ၸၢင်ႈႁွင်ႉၸႂ်ႉလႆႈၵူၺ်း Static Members တၢင်ႇဢၼ်။ မၼ်းႁွင်ႉၸႂ်ႉ Instance Members (ဢၼ်ဢမ်ႇၸႂ်ႈ static) ဢမ်ႇလႆႈၶႃႈ။"**

* **ယွၼ်ႉသင်?** ယွၼ်ႉ Static Method ႁဵတ်းၵၢၼ်လူၺ်းဢမ်ႇမီး Object... မၼ်းၸင်ႇဢမ်ႇႁူႉဝႃႈ `this` (တူဝ်ၵဝ်ႇ) ၼၼ်ႉပဵၼ်တူဝ်လႂ်၊ သေမၼ်းတေဢမ်ႇႁၼ် Property ၸိူဝ်းဢၼ်ပဵၼ်ၶွင် Object ၼၼ်ႉၶႃႈ။

### 3. တူဝ်ယင်ႇ Code (Shan Utility Helper)

```csharp
public class ShanMath {
    // Static Method: ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ်
    public static double ToKyat(double dollar, double rate) {
        return dollar * rate;
    }

    public static void Greet() {
        Console.WriteLine("Mai Sung Kha from Static Method!");
    }
}

// --- ၵၢၼ်ၸႂ်ႉတႄႉ ---
double result = ShanMath.ToKyat(100, 3500); // ႁွင်ႉၽၢၼ်ႇၸိုဝ်ႈ Class ၵမ်းလဵဝ်
ShanMath.Greet();
```

### 4. တူဝ်ယင်ႇ ၼႂ်း C# Library
ၶူးသၢႆမၢဝ်း တိုၵ်ႉၸႂ်ႉ Static Methods ယူႇၵူႈဝၼ်း လူၺ်းဢမ်ႇႁူႉတူဝ်ၶႃႈ:
* **`Console.WriteLine()`** - `WriteLine` ပဵၼ် static method ၼႂ်း class `Console`။
* **`Math.Sqrt(25)`** - `Sqrt` ပဵၼ် static method ၼႂ်း class `Math`။
* **`Int32.Parse("123")`** - `Parse` ပဵၼ် static method ၼႂ်း class `Int32`။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Utility Method:** Method ဢၼ်ႁဵတ်းၼႃႈတီႈပဵၼ် "ၶိူင်ႈမိုဝ်း" ၸွႆးထႅမ်ၵူႈလွင်ႈ။
* **Helper Function:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် Utility Method။
* **Direct Access:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ ဢၼ်ဢမ်ႇလူဝ်ႇၽၢၼ်ႇ Instance (Object)။
* **Stateless:** Method ဢၼ်ဢမ်ႇၵဵပ်းၶေႃႈမုၼ်းဝႆႉၼႂ်းတူဝ်မၼ်း (သူင်ႇ input ၶဝ်ႈ -> လႆႈ output ဢွၵ်ႇ)။

---