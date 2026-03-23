
# Lesson 171: "Static Classes"

**Static Class** ပဵၼ် Class ဢၼ်မၵ်းမၼ်ႈဝႆႉဝႃႈ "ၵူႈဢၼ်ဢၼ်မီးၼႂ်းမၼ်း တေလႆႈပဵၼ် `static` တင်းမူတ်း"။ ၶူးဢမ်ႇၸၢင်ႈ `new` မၼ်းမႃးပဵၼ် Object လႆႈၶႃႈ။

### 1. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ (The Rules)
1.  **Cannot be Instantiated:** ဢမ်ႇၸၢင်ႈၸႂ်ႉ Keyword `new`။ (Compiler တေလၢတ်ႈ Error ၵမ်းလဵဝ်)
2.  **Static Members Only:** ၵူႈ Method, Field, လႄႈ Property ၼႂ်းမၼ်း **တေလႆႈ** ပဵၼ် `static` တင်းမူတ်း။
3.  **Cannot be Inherited:** မၼ်းပဵၼ် `sealed` ဝႆႉႁင်းၵူၺ်းမၼ်း (Implicitly)၊ ပွင်ႇဝႃႈ ၽႂ်တေမႃးသိုပ်ႇၸိူဝ်ႉၶိူဝ်းမၼ်းဢမ်ႇလႆႈၶႃႈ။
4.  **No Instance Constructor:** မၼ်းမီးလႆႈၵူၺ်း **Static Constructor** ၶႃႈ။



### 2. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ? (The Toolkit Pattern)
ဝူၼ်ႉတူၺ်း Class **`Math`** ၼႂ်း C#။ ၶူးဢမ်ႇလူဝ်ႇ `new Math()` ၸိုင်တေၼပ်ႉလႆႈ `Math.Max(10, 20)`။
* Static Class မီးဝႆႉတႃႇသိမ်း Method ၸိူဝ်းဢၼ် "ဢမ်ႇလူဝ်ႇၵဵပ်း State" (Stateless)။
* မၼ်းၸွႆးႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Code လႆႈငၢႆႈလိူဝ်ၵဝ်ႇ (Direct Access) ၶႃႈ။

### 3. တူဝ်ယင်ႇ Code: "ShanUtility"
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈသၢင်ႈ Toolkit ဢၼ်ၸွႆးပိၼ်ႇလိၵ်ႈတႆး ဢမ်ႇၼၼ် ၼပ်ႉငိုၼ်းတႆး:

```csharp
// 1. မၵ်းမၼ်ႈပဵၼ် 'static' class
public static class ShanHelper {
    
    // 2. ၵူႈဢၼ်တေလႆႈပဵၼ် 'static'
    public static string SiteName = "Shan Dev Community";

    public static string ToUpperTai(string text) {
        return text.ToUpper(); // (တူဝ်ယင်ႇ လၢႆးႁဵတ်းၵၢၼ်)
    }

    public static void LogError(string message) {
        Console.WriteLine($"[LOG]: {message}");
    }
}

// --- ၵၢၼ်ၸႂ်ႉတႄႉ ---
// ShanHelper helper = new ShanHelper(); // ERROR! (ဢမ်ႇလႆႈ)

Console.WriteLine(ShanHelper.SiteName); // OK!
ShanHelper.LogError("Connection Failed"); // OK!
```

### 4. တူဝ်ယင်ႇ ၼႂ်း C# Ecosystem
* **`System.Math`**: တႃႇၼပ်ႉဢၢၼ်ႇ (Sin, Cos, Max, Min)။
* **`System.IO.File`**: တႃႇၸတ်းၵၢၼ် File (Copy, Delete, Move)။
* **`System.Convert`**: တႃႇပိၼ်ႇ Data Type (ToInt32, ToBoolean)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Toolkit / Utility Class:** Class ဢၼ်မီးဝႆႉတႃႇၸွႆးထႅမ် ၼႃႈၵၢၼ်လၢႆလၢႆပိူင်။
* **Stateless:** Class ဢၼ်ဢမ်ႇမီးၶေႃႈမုၼ်းသုၼ်ႇတူဝ် Object (ၵူၺ်းမီး Global Data)။
* **Sealed:** Class ဢၼ်ဢမ်ႇပၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း။
* **Container:** တီႈႁေႃႇသိမ်း Methods ဢၼ်ၵွင်ႉၵၢႆႇၵၼ် ဝႆႉတီႈလဵဝ်ၵၼ်။

---