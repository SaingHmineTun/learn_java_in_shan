# Lesson 98: "The 'using' Directive and Alias Namespaces"

မိူဝ်ႈႁဝ်းမီး Class ဢၼ်ယူႇၼႂ်း Namespace ယၢဝ်းယၢဝ်း မိူၼ်ၼင်ႇ `ShanApp.System.Utilities.Calculator` ၼၼ်ႉ...
ၵၢၼ်တႅမ်ႈၸိုဝ်ႈတဵမ်မၼ်း (Fully Qualified Name) ၵူႈတီႈၼႂ်း Code ႁဝ်းၼၼ်ႉ မၼ်းႁဵတ်းႁႂ်ႈ Code ယုင်ႈၼႃႇၶႃႈ။

### 1. The `using` Directive
ႁဝ်းၸႂ်ႉ Keyword **`using`** ဝႆႉၽၢႆႇၼိူဝ်သုတ်းၶွင် File တႃႇလၢတ်ႈၼႄ Compiler ဝႃႈ:
"ပေႃးၵဝ်တႅမ်ႈၸိုဝ်ႈ Class ဢၼ်မီးၼႂ်း Namespace ၼႆႉ ႁႂ်ႈမႂ်းပွင်ႇၸႂ်ပၼ်ၵမ်းလဵဝ်ၶႃႈ" ၼႆယဝ်ႉ။

```csharp
using System; // ႁဵတ်းႁႂ်ႈႁွင်ႉ Console.WriteLine() လႆႈ (တႅၼ်းတၢင်း System.Console)
using ShanApp.Utilities; // ႁဵတ်းႁႂ်ႈႁွင်ႉ Calculator လႆႈၵမ်းလဵဝ်

namespace ShanApp.Main;

public class Program {
    public void Run() {
        Calculator myCalc = new Calculator(); // ငၢႆႈၼႃႇ! ဢမ်ႇလူဝ်ႇတႅမ်ႈ Namespace ဝႆႉၽၢႆႇၼႃႈ
    }
}
```

### 2. Namespace Aliases (ၵၢၼ်ပၼ်ၸိုဝ်ႈလဵၼ်ႈ)
မၢင်ပွၵ်ႈ ႁဝ်းမီး Class သွင်ဢၼ် ဢၼ်ၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႈယူႇၵေႃႉတီႈတီႈ တီႈၼႂ်း Namespace (မိူၼ်ၼင်ႇ `ShanApp.UI.Button` လႄႈ `Windows.Controls.Button`)။
တွၼ်ႈၼႆႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Alias** တႃႇပၼ်ၸိုဝ်ႈမႂ်ႇႁင်းၵူၺ်းႁဝ်းၶႃႈ။

* **ပိူင်သၢင်ႈ:** `using AliasName = Namespace.ClassName;`

```csharp
using ShanButton = ShanApp.UI.Button;
using WinButton = Windows.Controls.Button;

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
ShanButton btn1 = new ShanButton();
WinButton btn2 = new WinButton();
```



### 3. Global Using (C# 10+)
သင်ႁဝ်းမီး Namespace ဢၼ်လူဝ်ႇၸႂ်ႉၼႂ်း **ၵူႈ File** (မိူၼ်ၼင်ႇ `System`)၊ ႁဝ်းၸၢင်ႈတႅမ်ႈ **`global using`** ဝႆႉၼႂ်း File ၼိုင်ႈဢၼ်ၵူၺ်း သေယဝ်ႉ File တၢင်ႇၸိူဝ်းတင်းမူတ်း တေႁူႉၸွမ်းၵမ်းလဵဝ်ၶႃႈ။
* `global using System;`

### 4. Static Using
ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Static Methods ၶွင် Class ၼိုင်ႈဢၼ် လူၺ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Class မၼ်းၵေႃႈလႆႈၶႃႈ။
* `using static System.Math;`
* `double r = Sqrt(16);` (တႅၼ်းတၢင်း `Math.Sqrt`)

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Directive:** ၶေႃႈသင်ႇတႃႇ Compiler ဢၼ်တႄႇလူၺ်း Keyword (မိူၼ်ၼင်ႇ `using`)။
* **Alias:** ၸိုဝ်ႈတႅၼ်း ဢမ်ႇၼၼ် ၸိုဝ်ႈလဵၼ်ႈ ဢၼ်ပၼ်ဝႆႉတႃႇ Namespace ဢမ်ႇၼၼ် Class။
* **Fully Qualified Name:** ၸိုဝ်ႈတဵမ်ဢၼ်ပႃးတင်း Namespace (မိူၼ်ၼင်ႇ `System.IO.File`)။
* **Ambiguity:** ၵၢၼ်ဢၼ် Compiler ဢမ်ႇႁူႉဝႃႈ တေလိူၵ်ႈ Class တူဝ်လႂ် ယွၼ်ႉမၼ်းၸိုဝ်ႈမိူၼ်ၵၼ်။

---