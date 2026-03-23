# Lesson 155: "Defining Abstract Classes"

Keyword **`abstract`** ၼႆႉ ၸႂ်ႉတႃႇမၵ်းမၼ်ႈဝႃႈ Class ၼႆႉ "တိုၵ်ႉပဵၼ်ဝူၼ်ႉဝႆႉၵူၺ်း" (Incomplete)။ မၼ်းမီးဝႆႉတႃႇပဵၼ် **Base Class** ႁႂ်ႈ Class တၢင်ႇဢၼ်မႃးထႅမ်သႂ်ႇ တွၼ်ႈဢၼ်လိုဝ်ႈဝႆႉၼၼ်ႉၶႃႈ။



### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းသႂ်ႇ Keyword `abstract` ဝႆႉၼႃႈ `class` ၼင်ႇၼႆၶႃႈ:

```csharp
public abstract class ShanShape {
    // 1. Regular Property (မီးလႆႈမိူၼ် Class ธรรมดา)
    public string Color { get; set; }

    // 2. Abstract Method (မၵ်းမၼ်ႈၵူၺ်းၸိုဝ်ႈ၊ ဢမ်ႇမီး Code { })
    public abstract double GetArea();

    // 3. Regular Method (မီး Code { } လႆႈၸွမ်)
    public void DisplayColor() {
        Console.WriteLine($"The color is {Color}");
    }
}
```

### 2. လွင်ႈပႅၵ်ႇပိူင် ဢၼ်လမ်ႇလွင်ႈ
* **Cannot Instantiate:** ၶူးဢမ်ႇၸၢင်ႈတႅမ်ႈ `new ShanShape()` လႆႈၶႃႈ (Compiler တေလၢတ်ႈ Error ၵမ်းလဵဝ်)။
* **Contains Abstract Members:** မၼ်းၸၢင်ႈမီး Method ဢၼ် "ဢမ်ႇမီး Code" (Abstract Methods) ဢၼ် Class လုၵ်ႈ **တေလႆႈ** (Must) မႃးတႅမ်ႈတႅၼ်း (Override) ၶႃႈ။
* **Partial Implementation:** မၼ်းၸၢင်ႈမီးတင်း Methods ဢၼ်မီး Code ယဝ်ႉ လႄႈ ဢၼ်ဢမ်ႇပႆႇမီး Code ႁူမ်ႈၵၼ်ၶႃႈ။

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းသၢင်ႈ Class **`Animal`**။
* `Animal` ၵူႈတူဝ် လူဝ်ႇမီး Method `MakeSound()`။
* ၵူၺ်းၵႃႈ "သတ်း" ธรรมဒါ ၼႆႉ... မၼ်းတေဢွၵ်ႇသဵင်ၸိူင်ႉႁိုဝ်? (ႁဝ်းဢမ်ႇႁူႉ!)
* ႁဝ်းၸင်ႇမၵ်းမၼ်ႈ `Animal` ပဵၼ် **Abstract** သေ ဝႆႉ `MakeSound()` ပဵၼ် **Abstract Method** ဝႆႉၶႃႈ။
* ပွင်ႇဝႃႈ: "ၽႂ်ၵေႃႈယဝ်ႉ ပေႃးတေသိုပ်ႇၸိူဝ်ႉၶိူဝ်း `Animal` ၼႆ... ၸဝ်ႈၵဝ်ႇ **တေလႆႈ** လၢတ်ႈၼႄဝႃႈ မၼ်းဢွၵ်ႇသဵင်ၸိူင်ႉႁိုဝ်" ၼႆယဝ်ႉ။

### 4. တူဝ်ယင်ႇ ၵၢၼ်သိုပ်ႇမွေႇ
မိူဝ်ႈ Class လုၵ်ႈမႃးသိုပ်ႇ... မၼ်းတေလႆႈၸႂ်ႉ Keyword **`override`** တႃႇထႅမ် Logic ၶႃႈ:

```csharp
public class Circle : ShanShape {
    public double Radius { get; set; }

    // တေလႆႈ Override Method ဢၼ်ပဵၼ် Abstract တႃႇသေႇ
    public override double GetArea() {
        return Math.PI * Radius * Radius;
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Abstract Class:** Class ဢၼ်သၢင်ႈ Object ဢမ်ႇလႆႈ၊ မီးဝႆႉတႃႇပဵၼ် Template။
* **Abstract Method:** Method ဢၼ်မီးၵူၺ်း Signature (ၸိုဝ်ႈ) သေ ဢမ်ႇမီး Body ({ })။
* **Instantiate:** ၵၢၼ်သၢင်ႈ Object လုၵ်ႉတီႈ Class (မိူၼ်ၼင်ႇ ၸႂ်ႉ `new`)။
* **Contract Enforcement:** ၵၢၼ်บังคับ (Force) ႁႂ်ႈ Class လုၵ်ႈ တေလႆႈမီး Logic ၸွမ်းၼင်ႇဢၼ်မၵ်းမၼ်ႈဝႆႉ။

---