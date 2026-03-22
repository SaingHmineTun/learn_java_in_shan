# Lesson 6: "The Anatomy of a Modern C# File" (ပွင်ႇၸႂ်ပိူင်သၢင်ႈ Code C# သႅၼ်းမႂ်ႇ)

မိူဝ်ႈလုၵ်ႈႁဵၼ်းပိုတ်ႇ File `Program.cs` မႃးၼၼ်ႉ တေႁၼ်ဝႃႈမၼ်းမီး Code ဢေတ်းလဵဝ်ၵူၺ်း။ ၼႆႉပဵၼ်ယွၼ်ႉ **Top-Level Statements** ဢၼ်ပဵၼ်လၢႆးတႅမ်ႈသႅၼ်းမႂ်ႇၼၼ်ႉယဝ်ႉ။

### 1. ပိူင်သၢင်ႈသႅၼ်းၵဝ်ႇ (Classic Structure)
မိူဝ်ႈၵွၼ်ႇ ပေႃးတေတႅမ်ႈ "Hello World" ၼိုင်ႈထႅဝ် လူဝ်ႇတႅမ်ႈ Code ၼမ်ၼႃႇ:
```csharp
using System;

namespace MyFirstApp {
    class Program {
        static void Main(string[] args) {
            Console.WriteLine("Hello World");
        }
    }
}
```
* **Namespace:** မိူၼ်ၼင်ႇ "Folder" ဢၼ်ႁူမ်ႈ Code ဝႆႉၸွမ်းၵၼ်။
* **Class:** မိူၼ်ၼင်ႇ "ၵွင်" ဢၼ်သိမ်း Code ႁဝ်း။
* **Main Method:** ပဵၼ် "ၽၵ်းတူ" ဢၼ် App ႁဝ်းတေတႄႇႁဵတ်းၵၢၼ်။

### 2. ပိူင်သၢင်ႈသႅၼ်းမႂ်ႇ (Top-Level Statements)
တေႃႈလဵဝ် ၼႂ်း .NET 8/9 ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Class ဢမ်ႇၼၼ် Main ၵေႃႈလႆႈယဝ်ႉ။ ႁဝ်းတႅမ်ႈ Code ႁဝ်းၵမ်းလဵဝ်လႆႈယူႇ:
```csharp
// ၼႆႉပဵၼ် Top-Level Statement
Console.WriteLine("မႂ်ႇသုင် Mao App Academy!");
```
* **ငၢႆႈ (Simple):** ဢမ်ႇလူဝ်ႇမီး Brackets `{ }` ၼမ်။
* **ၽႂ်း (Fast):** တႃႇလုၵ်ႈႁဵၼ်းတႄႇႁဵၼ်းမႂ်ႇမႂ်ႇ မၼ်းဢမ်ႇသုၵ်ႉယုင်ႈ။



### 3. Keywords ဢၼ်လူဝ်ႇႁူႉ
* **using:** တႃႇႁွင်ႉဢဝ် "ၶိူင်ႈမိုဝ်း" (Namespace) ပိူၼ်ႈမႃးၸႂ်ႉ။
* **Console:** ပဵၼ် "Object" ဢၼ်ၸွႆးႁဝ်းလၢတ်ႈတေႃႇၼႃႈလိၵ်ႈသီလမ်။
* **WriteLine:** ပဵၼ် "Method" (ၵၢၼ်ႁဵတ်း) ဢၼ်သင်ႇႁႂ်ႈတႅမ်ႈလိၵ်ႈဢွၵ်ႇမႃး။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Syntax:** ပိူင်လၢႆးတႅမ်ႈ Code ဢၼ်မၢၼ်ႇမႅၼ်ႈ (မိူၼ်ၼင်ႇ "သတ်ႉတႃႇ" ၵႂၢမ်းလၢတ်ႈ)။
* **Top-Level Statements:** လၢႆးတႅမ်ႈ Code ဢၼ်ဢမ်ႇလူဝ်ႇသႂ်ႇ Class ဢမ်ႇၼၼ် Main Method ၼႂ်း File ႁူဝ်ၼိုင်ႈ။
* **Boilerplate Code:** ၶူတ်ႉ (Code) ဢၼ်လူဝ်ႇတႅမ်ႈသႂ်ႇၵူႈပွၵ်ႈ တေႃႉတႄႉမၼ်းဢမ်ႇပႆႇႁဵတ်းၵၢၼ်သင်တႄႉ (Top-level statements ၸွႆးယွမ်းယွမ်းပႅတ်ႇတွၼ်ႈၼႆႉ)။
* **Statement:** ၶေႃႈသင်ႇ (Line of code) ၼိုင်ႈထႅဝ် ဢၼ်တေလႆႈသုတ်းတူဝ်တင်း မၢႆသီႇမီႇၶူဝ်ႇလူင် `;` (Semicolon)။

---