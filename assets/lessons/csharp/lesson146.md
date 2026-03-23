# Lesson 146: "The 'override' Keyword"

မိူဝ်ႈ Class ပေႃး (Base Class) မၵ်းမၼ်ႈ Method ၼိုင်ႈဢၼ်ပဵၼ် `virtual` ယဝ်ႉ... Class လုၵ်ႈ (Derived Class) ၸၢင်ႈၸႂ်ႉ Keyword **`override`** တႃႇတႅမ်ႈ Logic မႂ်ႇ ဢၼ်မႅၼ်ႈၸွမ်းၼႃႈၵၢၼ်တူဝ်မၼ်းလိူဝ်ၵဝ်ႇၶႃႈ။



### 1. ပိူင်သၢင်ႈ (Syntax) ၼႂ်း Class လုၵ်ႈ
ႁဝ်းတေလႆႈၸႂ်ႉ Keyword `override` ဝႆႉၼႃႈ Return Type ၶႃႈ (ReturnType လႄႈ Name တေလႆႈမိူၼ် Class ပေႃးတႃႇသေႇ)။

```csharp
public class Teacher : Staff {
    // Override: တႅမ်ႈတႅၼ်း Work() ၶွင် Staff
    public override void Work() {
        Console.WriteLine("Teacher is teaching students.");
    }
}
```

### 2. မၼ်းႁဵတ်းၵၢၼ်ၸိင်ႉႁိုဝ်? (The Logic)
မိူဝ်ႈၶူးသၢႆမၢဝ်းႁွင်ႉၸႂ်ႉ `Work()`... C# တေၵူတ်ႇထတ်း (Runtime) ဝႃႈ Object တူဝ်ၼႆႉ ပဵၼ်ၸိူဝ်ႉၶိူဝ်းသင်တႄႉတႄႉ?
* သင်မၼ်းပဵၼ် `Teacher`... မၼ်းတေလႅၼ်ႈ Code ၼႂ်း `Teacher` (ဢၼ် override ဝႆႉ)။
* သင်မၼ်းပဵၼ် `Staff` ธรรมดา... မၼ်းတေလႅၼ်ႈ Code တူဝ်တႄႇ ၼႂ်း `Staff` (ဢၼ် virtual ဝႆႉ) ၶႃႈ။

### 3. ၵၢၼ်ၸႂ်ႉ `base` ႁူမ်ႈတင်း `override`
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈမႄး Logic မႂ်ႇ ၵူၺ်းၵႃႈ တိုၵ်ႉၶႂ်ႈႁႂ်ႈ Logic ၵဝ်ႇၶွင် Class ပေႃး လႅၼ်ႈၸွမ်းယူႇ... ႁဝ်းၸၢင်ႈၸႂ်ႉ **`base.MethodName()`** ၶဝ်ႈၸွႆးလႆႈၶႃႈ။

```csharp
public override void Work() {
    base.Work(); // ႁွင်ႉၸႂ်ႉ "Doing general work..." လုၵ်ႉတီႈ Staff ဢွၼ်တၢင်း
    Console.WriteLine("Also preparing lesson plans."); // ထႅမ် Logic မႂ်ႇသႂ်ႇ
}
```

### 4. ပိူင်ၵၢၼ်လမ်ႇလွင်ႈ (Key Rules)
* **Match Exactly:** ၸိုဝ်ႈ Method, Parameters, လႄႈ Return Type တေလႆႈမိူၼ် Class ပေႃးပႅတ်ႉတေႃး။
* **Virtual Required:** ႁဝ်း `override` လႆႈၵူၺ်း Method ဢၼ်ပဵၼ် `virtual`, `abstract`, ဢမ်ႇၼၼ် `override` မႃးယဝ်ႉၵူၺ်းၶႃႈ။
* **Static Error:** Method ဢၼ်ပဵၼ် `static` ၼၼ်ႉ `override` ဢမ်ႇလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Override:** ၵၢၼ်တႅမ်ႈတႅၼ်း Method ၶွင် Class ပေႃး လူၺ်းၸႂ်ႉ Logic မႂ်ႇ။
* **Method Signature:** ၸိုဝ်ႈ လႄႈ Parameter ၶွင် Method ဢၼ်တေလႆႈမိူၼ်ၵၼ် မိူဝ်ႈ override။
* **Runtime Binding:** ၵၢၼ်လိူၵ်ႈလႅၼ်း Code ၸွမ်းၼင်ႇ Object Type တႄႉတႄႉ မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈ။
* **Redefinition:** ၵၢၼ်မၵ်းမၼ်ႈ လၢႆးႁဵတ်းသၢင်ႈမႂ်ႇ ၼႂ်းၸိူဝ်ႉၶိူဝ်းလုၵ်ႈ။

---