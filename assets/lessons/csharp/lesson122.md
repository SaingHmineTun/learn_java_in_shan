# Lesson 122: "The 'internal' Modifier"

**`internal`** ၼႆႉ ပွင်ႇဝႃႈ **"သိူင်ႇဝႆႉၼႂ်း Project"** ၶႃႈ။ 
မၼ်းတေပၼ်သုၼ်ႇၶဝ်ႈၸႂ်ႉ (Access) ၼႂ်း **Assembly** ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။

### 1. ၼႃႈတီႈ ဢၼ်ႁၼ်မၼ်းလႆႈ (Visibility Scope)
* **ၼႂ်း Project (Assembly) လဵဝ်ၵၼ်:** **ႁၼ်လႆႈၵူႈတီႈ** (မိူၼ် public)။
* **ၼွၵ်ႈ Project (External Assembly):** **ဢမ်ႇႁၼ်** (မိူၼ် private တႃႇၵူၼ်းၼွၵ်ႈ)။



### 2. ပိူင်သၢင်ႈ (Syntax)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းသၢင်ႈ Project ၸိုဝ်ႈဝႃႈ `ShanLibrary.dll` သေ မီး Class တႃႇၵူတ်ႇထတ်း (Validation) ၼႂ်းမၼ်း။

```csharp
// ယူႇၼႂ်း Project: ShanLibrary.dll
internal class InternalSecurityHelper {
    internal void ValidateSystem() {
        Console.WriteLine("System is safe inside ShanLibrary.");
    }
}
```

* သင်ႁဝ်း သၢင်ႈထႅင်ႈ Project ၼိုင်ႈ ၸိုဝ်ႈဝႃႈ `ShanApp.exe` သေ "Reference" ၸူး `ShanLibrary.dll` ၵေႃႈယႃႇ... `ShanApp` တေ **ဢမ်ႇၸၢင်ႈႁၼ်** `InternalSecurityHelper` လႆႈၶႃႈ။

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `internal`?
* **Component Hiding:** မိူဝ်ႈႁဝ်းသၢင်ႈ Tool ဢမ်ႇၼၼ် Library (DLL) ပၼ်ပိူၼ်ႈၸႂ်ႉ၊ ႁဝ်းၶႂ်ႈႁႂ်ႈပိူၼ်ႈႁၼ် "Class လူင်" ဢၼ်ပဵၼ် `public`။ တွၼ်ႈဢၼ်ၸွႆးၵၢၼ် (Helper classes) ၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းသႂ်ႇပဵၼ် `internal` ဝႆႉ တႃႇဢမ်ႇႁႂ်ႈပိူၼ်ႈၸႂ်ႉလႆႈ။
* **Team Security:** ၸွႆးႁႂ်ႈၵူၼ်းၼႂ်းၸုမ်း (Team) လဵဝ်ၵၼ် ၸၢင်ႈၸႂ်ႉ Code ႁူမ်ႈၵၼ်လႆႈငၢႆႈငၢႆႈ။ ၵူၺ်းၵႃႈ ဢမ်ႇပၼ်သုၼ်ႇႁႂ်ႈ ၵူၼ်းၼွၵ်ႈ (Users) ၸုမ်းႁဝ်း ႁၼ်လႆႈၶႃႈ။

### 4. Default Modifier တႃႇ Class
ၼႂ်း C#... သင်ႁဝ်း **ဢမ်ႇတႅမ်ႈ** Access Modifier ဝႆႉၽၢႆႇၼႃႈ Class (ဢၼ်ယူႇၼွၵ်ႈ Namespace ဢမ်ႇၼၼ် တီႈ Top-level) ၸိုင်... System တေမၵ်းမၼ်ႈပဵၼ် **`internal`** ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Assembly:** Project ဢၼ် Compile ယဝ်ႉ (မိူၼ်ၼင်ႇ .dll ဢမ်ႇၼၼ် .exe)။
* **Internal Modifier:** Keyword ဢၼ်ပၼ်သုၼ်ႇၸႂ်ႉလႆႈ ၼႂ်း Assembly လဵဝ်ၵၼ်။
* **Library (DLL):** ႁွင်ႈ Code ဢၼ်မီး Class လၢႆဢၼ် တႃႇပၼ် Project တၢင်ႇဢၼ် Reference ၸႂ်ႉၸွမ်း။
* **Information Hiding:** ၵၢၼ်သိူင်ႇဝႆႉ တွၼ်ႈ Code တင်းၼႂ်းမၼ်း (Internal logic) လႄႈ ဢမ်ႇပၼ်ၵူၼ်းၼွၵ်ႈႁၼ်။

---