# Lesson 145: "Virtual Methods"

မိူဝ်ႈႁဝ်းသၢင်ႈ **ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း** (Inheritance) ၼၼ်ႉ... ၵႆႉလေႇ Class ပေႃး (Base Class) တေမီး Method ဢၼ်ပဵၼ် "လၢႆးႁဵတ်းသၢင်ႈၵူႈလွင်ႈ" (General Behavior)။ သင်ႁဝ်းၶႂ်ႈပၼ်သုၼ်ႇ Class လုၵ်ႈ (Derived Class) လႅၵ်ႈလၢႆႈ Logic ၼၼ်ႉ... ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ Method ၼၼ်ႉပဵၼ် **`virtual`** ၶႃႈ။

### 1. Keyword `virtual` ပဵၼ်သင်?
**`virtual`** ပဵၼ် Modifier ဢၼ်သႂ်ႇဝႆႉၼႃႈ Method ၼႂ်း Class ပေႃး။ မၼ်းပွင်ႇဝႃႈ:
* Method ၼႆႉ မီးတွၼ်ႈ Code (Implementation) ႁင်းၵူၺ်းမၼ်းယူႇ။
* ၵူၺ်းၵႃႈ မၼ်းပိုတ်ႇ "ၽၵ်းတူ" ပၼ် Class လုၵ်ႈ မႃးတႅမ်ႈတႅၼ်း (Override) လႆႈၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax) ၼႂ်း Class ပေႃး
ႁဝ်းတႅမ်ႈ Keyword `virtual` ဝႆႉၼႃႈ Return Type ၶႃႈ:

```csharp
public class ShanMember {
    public string Name { get; set; }

    // Virtual Method: ပၼ်သုၼ်ႇလုၵ်ႈလၢၼ်မႄးလႆႈ
    public virtual void GetBenefit() {
        Console.WriteLine("Basic member benefit: 5% Discount.");
    }
}
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `virtual`?
1.  **Default Behavior:** ပၼ်လၢႆးႁဵတ်းသၢင်ႈပိုၼ်ႉထၢၼ် ဝႆႉဢွၼ်တၢင်း (Default)။
2.  **Customization:** ပၼ်သုၼ်ႇ Class လုၵ်ႈ ဢၼ်မီး "ၼႃႈတီႈဝိသဵတ်ႇ" (Specialized roles) လႅၵ်ႈလၢႆႈ Logic ႁႂ်ႈမႅၼ်ႈၸွမ်းတူဝ်မၼ်း။
3.  **Polymorphism:** ၼႆႉပဵၼ် "ၶၼ်ၵတ်း" (Step) ထီႉၼိုင်ႈ တႃႇႁဵတ်းႁႂ်ႈ Object မီးလၢႆႁၢင်ႈ (Dynamic Polymorphism) ၶႃႈ။

### 4. တူဝ်ယင်ႇ ဝူၼ်ႉတူၺ်း (The Logic)
ဝူၼ်ႉတူၺ်း Class **`Printer`** ဢၼ်မီး Method `virtual void Print()`။
* `Printer` ธรรมดา တေဢွၵ်ႇလိၵ်ႈ "Black and White"။
* သင်ႁဝ်းမီး `PhotoPrinter` (Class လုၵ်ႈ)... မၼ်းတေၶႂ်ႈမႄး `Print()` ႁႂ်ႈဢွၵ်ႇ "High Quality Color" ၼႆ... `Print()` ၼႂ်းတူဝ်ပေႃး တေလႆႈပဵၼ် **virtual** ၵွၼ်ႇၶႃႈ။

> **မၢႆတွင်း:** သင် Method ဢမ်ႇၸႂ်ႉ `virtual`... Class လုၵ်ႈတေလႅၵ်ႈလၢႆႈ Logic မၼ်း "တႅတ်ႉတေႃး" ဢမ်ႇလႆႈ (တေပဵၼ် Method Hiding ဢၼ်တေႁဵၼ်းၼႂ်း Lesson 147)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Virtual Method:** Method ဢၼ်ပၼ်သုၼ်ႇ Class လုၵ်ႈ မႃးတႅမ်ႈတႅၼ်း (Override)။
* **Base Implementation:** Logic တူဝ်တႄႇ ဢၼ်ယူႇၼႂ်း Class ပေႃး။
* **Subclassing:** ၵၢၼ်သၢင်ႈ Class လုၵ်ႈ လုၵ်ႉတီႈ Class ပေႃး။
* **Overrideability:** လွင်ႈလႅတ်းသႅဝ်း ဢၼ်ပၼ်သုၼ်ႇမႄး Code လႆႈ။

---