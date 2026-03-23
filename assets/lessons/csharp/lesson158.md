# Lesson 158: "Introduction to Interfaces"

**Interface** ပဵၼ်တွၼ်ႈ Code ဢၼ်မၵ်းမၼ်ႈဝႆႉၵူၺ်း **Methods** လႄႈ **Properties** ဢၼ် Class တေလႆႈမီး။ မၼ်းဢမ်ႇမီး Fields (Variables) သေ ဢမ်ႇမီး Logic ၽၢႆႇၼႂ်း (Implementation) ၶႃႈ။



### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉ Keyword **`interface`** သေ တေလႆႈတႄႇၸိုဝ်ႈမၼ်းလူၺ်ႈတူဝ် **`I`** (Capital I) တႃႇသေႇၶႃႈ:

```csharp
public interface IShannable {
    // မၵ်းမၼ်ႈၵူၺ်းၸိုဝ်ႈ (ဢမ်ႇလူဝ်ႇသႂ်ႇ public, private)
    void DisplayInfo(); 
    string GetCategory();
}
```

### 2. ပၵ်းၵၢၼ်ၶွင် Interface
1.  **Pure Contract:** မၼ်းမီးၵူၺ်း "ၶေႃႈပိုၼ်ၽၢဝ်ႇ" (Declarations)။
2.  **No Implementation:** ဢမ်ႇပၼ်သႂ်ႇ Code Block `{ }` ၼႂ်း Method (တေႃႇထိုင် C# 8.0)။
3.  **No Fields:** ဢမ်ႇပၼ်မီး Variable (မိူၼ်ၼင်ႇ `int x;`)။
4.  **All Public:** Members တင်းမူတ်းၼႂ်း Interface ပဵၼ် Public ႁင်းၵူၺ်းမၼ်း (Implicitly)။

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းတႅမ်ႈ Class **`Car`** လႄႈ **`SmartPhone`**။
* တင်းသွင်ဢၼ်ၼႆႉ "ဢမ်ႇၸႂ်ႉၸိူဝ်ႉၶိူဝ်းလဵဝ်ၵၼ်" (Car Is-Not-A SmartPhone)။
* ၵူၺ်းၵႃႈ တင်းသွင်ဢၼ်ၼႆႉ "ၸၢင်ႈၸาร์ၸ်ၾႆးလႆႈ" (Both can be Charged)။
* ႁဝ်းၸင်ႇသၢင်ႈ Interface **`IChargeable`** တႃႇမၵ်းမၼ်ႈဝႃႈ "ၽႂ်ၵေႃႈယဝ်ႉ ပေႃးပဵၼ် IChargeable ၼႆ... တေလႆႈမီး Method `Charge()`" ၼႆၶႃႈ။

### 4. ၵၢၼ်ၸႂ်ႉတႄႉ (Implementation)
မိူဝ်ႈ Class ၼိုင်ႈဢၼ် ၶႂ်ႈႁဵတ်းၸွမ်း Interface... ႁဝ်းၸႂ်ႉမၢႆ **`:`** (မိူၼ် Inheritance) ၵူၺ်းၵႃႈႁဝ်းႁွင်ႉဝႃႈ **Implementing** ၶႃႈ:

```csharp
public class ShanTablet : IShannable {
    public void DisplayInfo() {
        Console.WriteLine("This is a Shan Tablet.");
    }

    public string GetCategory() => "Electronics";
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Interface:** ၵတိ (Contract) ဢၼ်မၵ်းမၼ်ႈလၢႆးႁဵတ်းသၢင်ႈ။
* **Contract:** ၶေႃႈတူၵ်းလူင်ႇ ဢၼ် Class တေလႆႈႁဵတ်းၸွမ်း။
* **Implementation:** တွၼ်ႈ Code တႄႉတႄႉ ဢၼ်ယူႇၼႂ်း Class။
* **Naming Convention:** လၢႆးပၼ်ၸိုဝ်ႈ (တူဝ်ယင်ႇ: တႄႇလူၺ်ႈ 'I')။

---