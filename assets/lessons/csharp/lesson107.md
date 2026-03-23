# Lesson 107: "Default Constructors"

**Constructor** ၼႆႉ ပဵၼ် Method ဢၼ်တေ **"လႅၼ်ႈႁင်းၵူၺ်း"** မိူဝ်ႈႁဝ်းၸႂ်ႉ Keyword `new` တႃႇသၢင်ႈ Object မႂ်ႇၶႃႈ။

### 1. Default Constructor ပဵၼ်သင်?
သင်ဝႃႈ ၼႂ်း Class ႁဝ်းၼၼ်ႉ ႁဝ်း **ဢမ်ႇလႆႈတႅမ်ႈ** Constructor ဝႆႉသေဢၼ်ၸိုင်... 
C# Compiler တေၸွႆးတႅမ်ႈပၼ် **"Default Constructor"** ၼိုင်ႈဢၼ် ႁင်းၵူၺ်းမၼ်း (Implicitly) ၶႃႈ။

* **ပိူင်မၼ်း:** မၼ်းတေဢမ်ႇမီး Parameter သင်ဝႆႉ။
* **ၵၢၼ်မၼ်း:** မၼ်းတေပၼ်ၵႃႈၶၼ်တႄႇ (Default Values) ပၼ် Fields ၵူႈတူဝ် ၸိူင်ႉၼႆၶႃႈ:
    * `int`, `double` -> ပဵၼ် `0`
    * `bool` -> ပဵၼ် `false`
    * `string`, `object` -> ပဵၼ် `null`



### 2. ပိူင်သၢင်ႈ (Syntax)
Constructor မီးလွၵ်းလၢႆးတႅမ်ႈ ဢၼ်ပႅၵ်ႇပိူင်ႈတင်း Method ဝႆႉယူႇ 2 ယၢင်ႇၼႆႉၶႃႈ:
1. **ၸိုဝ်ႈမိူၼ် Class:** တေလႆႈမီးၸိုဝ်ႈမိူၼ်ၵၼ်တင်း ၸိုဝ်ႈ Class လီလီၶႃႈ။
2. **ဢမ်ႇမီး Return Type:** ဢမ်ႇလူဝ်ႇသႂ်ႇ `void`, `int` ၽၢႆႇၼႃႈၸိုဝ်ႈမၼ်းၶႃႈ။

```csharp
public class Student {
    // သင်ႁဝ်းဢမ်ႇတႅမ်ႈသင်... Compiler တေႁဵတ်းပၼ်ၸိူင်ႉၼႆ:
    // public Student() 
    // { 
    //    // ပဝ်ႇဝႆႉ
    // } 
}
```

### 3. လွင်ႈလူဝ်ႇၾၢင်ႉ (The Golden Rule)
သင်ႁဝ်းတႅမ်ႈ Constructor ႁင်းၵူၺ်းႁဝ်းၼႆၸိုင် (သၢင်ႈၼိုင်ႈဢၼ်ၵေႃႈယဝ်ႉ)... 
Compiler တေ **ဢမ်ႇသၢင်ႈ** Default Constructor ၼၼ်ႉပၼ်ႁဝ်းထႅင်ႈယဝ်ႉၶႃႈ။

> **မၢႆတွင်း:** သင်ႁဝ်းတႅမ်ႈ Constructor ဢၼ်ႁပ်ႉ `string name` ဝႆႉ၊ ဝၢႆးၼၼ်ႉ ႁဝ်းတေႁွင်ႉၸႂ်ႉ `new Student()` ဢမ်ႇလႆႈယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constructor:** Method ဢၼ်ၸႂ်ႉတႃႇပၼ်ၵႃႈၶၼ်တႄႇ (Initialize) ႁႂ်ႈ Object။
* **Default Constructor:** Constructor ဢၼ် Compiler ပၼ်မႃး "Free" သင်ႁဝ်းဢမ်ႇတႅမ်ႈဝႆႉ။
* **Implicit:** ၵၢၼ်ႁဵတ်းသၢင်ႈႁင်းမၼ်း (Compiler ႁဵတ်းပၼ်ႁင်းၵူၺ်း)။
* **Explicit:** ၵၢၼ်ႁဵတ်းသၢင်ႈ ဢၼ်ႁဝ်းတႅမ်ႈဢဝ် (Developer တႅမ်ႈႁင်းၵူၺ်း)။

---
