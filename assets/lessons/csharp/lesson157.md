# Lesson 157: "Rules of Abstraction"

မိူဝ်ႈၶူးသၢႆမၢဝ်းတႅမ်ႈ Code ဝႃႈ `public abstract class Animal` ယဝ်ႉ... သင်ၶူးၵႂႃႇတႅမ်ႈ `Animal a = new Animal();` ၼႂ်း `Main` ၸိုင်၊ Compiler တေလၢတ်ႈ Error ၵမ်းလဵဝ်ဝႃႈ: *"Cannot create an instance of the abstract type or interface 'Animal'"*။



### 1. ႁဵတ်းသင်ၸင်ႇ 'new' ဢမ်ႇလႆႈ? (The Logic)
ဝူၼ်ႉတူၺ်းငၢႆႈๆ ၶႃႈ:
* Abstract Class မၼ်းပဵၼ် **"လွင်ႈဝူၼ်ႉဢၼ်ပႆႇတႅတ်ႉတေႃး"** (Incomplete concept)။
* မၼ်းၸၢင်ႈမီး **Abstract Methods** ဢၼ်ဢမ်ႇပႆႇမီးတွၼ်ႈ Code (No Body)။
* သင် C# ပၼ်ႁဝ်းသၢင်ႈ Object `Animal` မႃးတႄႉတႄႉ... သေႁဝ်းႁွင်ႉၸႂ်ႉ `a.MakeSound()` ၼႆ... **မၼ်းတေလႅၼ်ႈ Code တီႈလႂ်?** (ယွၼ်ႉၼႂ်း Animal ၼၼ်ႉ `MakeSound` ဢမ်ႇမီး Code သင်ဝႆႉၶႃႈ)။
* တႃႇႁႄႉၵၢင်ႈပၼ်ႁႃၼႆႉ... C# ၸင်ႇႁၢမ်ႈဢမ်ႇပၼ်သၢင်ႈ Object ဢၼ် "ဢမ်ႇပႆႇတူဝ်ႈတႅတ်ႉ" ၼၼ်ႉယဝ်ႉၶႃႈ။

### 2. ပၵ်းၵၢၼ် 5 ၶေႃႈ ဢၼ်လူဝ်ႇမၢႆတွင်း
1.  **No Instantiation:** ဢမ်ႇၸၢင်ႈၸႂ်ႉ Keyword `new` တေႃႈ Abstract Class ၵမ်းလဵဝ်။
2.  **Can have Constructors:** တိုၵ်ႉမီး Constructor လႆႈယူႇ! (မၼ်းတေလႅၼ်ႈ မိူဝ်ႈ Class လုၵ်ႈ ႁွင်ႉ `base()` ၵႂႃႇၶႃႈ)။
3.  **Abstract Members:** သင် Class ၼိုင်ႈမီး Abstract Method ၼိုင်ႈတူဝ်... Class တင်းမူတ်း **တေလႆႈ** ပဵၼ် `abstract` ၶႃႈ။
4.  **Inheritance Required:** Abstract Class မီးဝႆႉတႃႇပဵၼ် "တူဝ်ပေႃး" (Base Class) ၵူၺ်း။
5.  **Polymorphism Support:** ႁဝ်းသၢင်ႈ **Variable** ၶွင် Abstract Class လႆႈယူႇ! ၵူၺ်းၵႃႈ တေလႆႈဢဝ် Object ၶွင် Class လုၵ်ႈ (Concrete Class) မႃးသိမ်းဝႆႉၶႃႈ။

### 3. တူဝ်ယင်ႇ Code (What's Possible?)

```csharp
public abstract class ShanFood {
    public string Name { get; set; }
    public abstract void Eat();
}

public class PapayaSalad : ShanFood {
    public override void Eat() => Console.WriteLine("Eating spicy salad!");
}

// --- Inside Main ---
// ShanFood f1 = new ShanFood(); // ERROR! (ဢမ်ႇလႆႈ)

ShanFood f2 = new PapayaSalad(); // OK! (Polymorphism - သိမ်းတူဝ်လုၵ်ႈလႆႈ)
f2.Eat(); // OK! (လႅၼ်ႈ Code ၼႂ်း PapayaSalad)
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Instantiation:** ၵၢၼ်သၢင်ႈ Object (Instance) လုၵ်ႉတီႈ Class။
* **Concrete Class:** Class ဢၼ်ဢမ်ႇၸႂ်ႈ abstract (သၢင်ႈ Object လႆႈတႄႉတႄႉ)။
* **Incomplete Type:** ၸိူဝ်ႉၶိူဝ်းဢၼ်ပႆႇတူဝ်ႈတႅတ်ႉ (တူဝ်ယင်ႇ Abstract class)။
* **Reference Variable:** Variable ဢၼ်ၸႂ်ႉတႃႇ "ၸီႉ" ၸူး Object ၼႂ်း Memory။

---