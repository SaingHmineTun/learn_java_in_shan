# Lesson 152: "Override vs. Overload"

ဝူၼ်ႉတူၺ်းငၢႆႈๆ ၼင်ႇၼႆၶႃႈ:
* **Overload** ပဵၼ် "ၵၢၼ်ထႅမ်" (Adding more options)။
* **Override** ပဵၼ် "ၵၢၼ်လႅၵ်ႈ" (Changing the behavior)။



### 1. Method Overloading (Lesson 78 ဢၼ်ႁဵၼ်းမႃးယဝ်ႉ)
* **တီႈလႂ်:** ႁဵတ်းၼႂ်း **Class လဵဝ်ၵၼ်** (ဢမ်ႇလူဝ်ႇ Inheritance)။
* **ပိူင်ၵၢၼ်:** ၸိုဝ်ႈ Method မိူၼ်ၵၼ်၊ ၵူၺ်းၵႃႈ **Parameters (Signatures) တေလႆႈပႅၵ်ႇၵၼ်** (တူဝ်ယင်ႇ: `Add(int a, int b)` လႄႈ `Add(double a, double b)`)။
* **ၶၢဝ်းယၢမ်း:** ပဵၼ် **Compile-time Polymorphism** (Compiler တေလိူၵ်ႈပၼ် ၸွမ်းၼင်ႇ Data ဢၼ်ႁဝ်းသူင်ႇမႃး)။

### 2. Method Overriding (Lesson 146 ဢၼ်ႁဵၼ်းမႃးယဝ်ႉ)
* **တီႈလႂ်:** ႁဵတ်းၼႂ်း **ၸိူဝ်ႉၶိူဝ်းပႅၵ်ႇၵၼ်** (တေလႆႈမီး Inheritance: Parent & Child)။
* **ပိူင်ၵၢၼ်:** ၸိုဝ်ႈ Method လႄႈ **Parameters တေလႆႈမိူၼ်ၵၼ်ပႅတ်ႉတေႃး**။ တေလႆႈၸႂ်ႉ Keyword `virtual` ၼႂ်း Parent လႄႈ `override` ၼႂ်း Child။
* **ၶၢဝ်းယၢမ်း:** ပဵၼ် **Runtime Polymorphism** (C# တေလိူၵ်ႈလႅၼ်း Code ၸွမ်းၼင်ႇ Object တႄႉတႄႉ မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈယူႇ)။

---

### 3. ပႅၵ်ႇပိူင်ၵၼ်ၼင်ႇႁိုဝ်? (Table Summary)

| Feature | Overloading | Overriding |
| :--- | :--- | :--- |
| **Inheritance** | ဢမ်ႇလူဝ်ႇ | **တေလႆႈမီး** |
| **Class** | ၼႂ်း Class လဵဝ်ၵၼ် | ၼႂ်း Class ပေႃး လႄႈ Class လုၵ်ႈ |
| **Method Signature** | **တေလႆႈပႅၵ်ႇၵၼ်** (Parameters) | **တေလႆႈမိူၼ်ၵၼ်** တင်းမူတ်း |
| **Keywords** | ဢမ်ႇၸႂ်ႉ Keyword ဝိသဵတ်ႇသင် | ၸႂ်ႉ `virtual` လႄႈ `override` |
| **Goal** | တႃႇမီးလၢႆလၢႆ "တၢင်းလိူၵ်ႈ" (Options) | တႃႇမႄး "လၢႆးႁဵတ်းသၢင်ႈ" (Behavior) |

---

### 4. တူဝ်ယင်ႇ Code တႃႇၸႅၵ်ႇလႅၼ်း

**Overloading (Options):**
```csharp
public class Calculator {
    public int Add(int a, int b) => a + b;
    public double Add(double a, double b) => a + b; // Overload
}
```

**Overriding (Behavior Change):**
```csharp
public class Animal {
    public virtual void MakeSound() => Console.WriteLine("Some Sound");
}

public class Dog : Animal {
    public override void MakeSound() => Console.WriteLine("Woof!"); // Override
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Signature:** ၸိုဝ်ႈ လႄႈ Parameters ၶွင် Method ဢၼ်ၸႂ်ႉတႃႇၸႅၵ်ႇပႅၵ်ႇ Method။
* **Compile-time Binding:** ၵၢၼ်လိူၵ်ႈ Method ဢွၼ်တၢင်းတေ Compile (တူဝ်ယင်ႇ Overload)။
* **Runtime Binding:** ၵၢၼ်လိူၵ်ႈ Method မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈ (တူဝ်ယင်ႇ Override)။
* **Polymorphism:** လွင်ႈလႅတ်းသႅဝ်း ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Method ၼိုင်ႈၸိုဝ်ႈ မီးလၢႆလၢႆ "တွၼ်ႈ Code"။

---