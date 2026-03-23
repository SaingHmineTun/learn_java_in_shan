# Lesson 97: "Namespaces: Organizing Your Project"

မိူဝ်ႈႁဝ်းတႅမ်ႈ Project ယႂ်ႇမႃး၊ ႁဝ်းတေမီး Class ဢၢၼ်ႇႁူဝ်ပၢၵ်ႇမၼ်းယဝ်ႉ။ 
သင်ႁဝ်းဝၢင်ႈ Class ၸိူဝ်းၼၼ်ႉဝႆႉ တီႈလဵဝ်ၵၼ်တင်းမူတ်း မၼ်းတေယုင်ႈၼႃႇၶႃႈ။ 
**Namespace** ၸွႆးႁဝ်းၸတ်းပိူင် (Organize) Class ၸိူဝ်းၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. Namespace ပဵၼ်သင်?
**Namespace** ပဵၼ် "ႁွင်ႈ" (Container) ဢၼ်ႁေႃႇ Class လၢႆလၢႆဢၼ် ဢၼ်မီးၵၢၼ်ႁဵတ်းမိူၼ်ၵၼ် ဝႆႉႁူမ်ႈၵၼ်ၶႃႈ။

* **တၢင်းလီ:** မၼ်းၵႅတ်ႇၶႄ လွင်ႈ **"ၸိုဝ်ႈမိူၼ်ၵၼ်" (Naming Collisions)**။
* **တူဝ်ယင်ႇ:** ၼႂ်း Project "Learn Shan" ႁဝ်း ႁဝ်းၸၢင်ႈမီး:
    * `ShanApp.Database` (တႃႇ Class ဢၼ်ၵိုၵ်း Database)
    * `ShanApp.UI` (တႃႇ Class ဢၼ်ၵိုၵ်းၼႃႈ Screen)



### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉ Keyword **`namespace`** ဝႆႉၽၢႆႇၼိူဝ်သုတ်းၶွင် File ၶႃႈ။

```csharp
namespace ShanApp.Utilities 
{
    public class Calculator 
    {
        // Code ဝႆႉၼႂ်းၼႆႉ
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Fully Qualified Name)
သင်ႁဝ်းယူႇၼွၵ်ႈ Namespace သေ ၶႂ်ႈႁွင်ႉၸႂ်ႉ Class ၼၼ်ႉ ႁဝ်းလႆႈတႅမ်ႈၸိုဝ်ႈတဵမ်မၼ်းၶႃႈ:
`ShanApp.Utilities.Calculator myCalc = new ShanApp.Utilities.Calculator();`

### 4. File-Scoped Namespaces (Modern C#)
ၼႂ်း C# 10 ၶိုၼ်ႈၼိူဝ် ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ `{ }` တႃႇ Namespace ၵေႃႈလႆႈယဝ်ႉၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇ:
```csharp
namespace ShanApp.Utilities; // ၸႂ်ႉ semicolon တႅၼ်း braces

public class Calculator { ... }
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Namespace:** တွၼ်ႈၸတ်းပိူင် Class ႁႂ်ႈမီးပိူင်မၼ်း။
* **Naming Collision:** ၵၢၼ်ဢၼ် Class သွင်ဢၼ်မီးၸိုဝ်ႈမိူၼ်ၵၼ် သေႁဵတ်းႁႂ်ႈ Compiler ၵႂၢင်။
* **Container:** တီႈသိမ်း ဢမ်ႇၼၼ် ႁွင်ႈဢၼ်ႁေႃႇၶေႃႈမုၼ်းဝႆႉ။
* **Fully Qualified Name:** ၸိုဝ်ႈတဵမ်ၶွင် Class ဢၼ်မီးတင်း Namespace ဝႆႉၽၢႆႇၼႃႈ (မိူၼ်ၼင်ႇ `System.Console`)။

---