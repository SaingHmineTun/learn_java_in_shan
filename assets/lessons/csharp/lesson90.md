# Lesson 90: "Exercise: Building a Shan Unit Converter"

ၼႂ်း Project ၼႆႉ ႁဝ်းတေပိၼ်ႈမၢႆၼပ်ႉလုၵ်ႉတီႈ **"ပေႇ" (Feet)** ႁႂ်ႈပဵၼ် **"သွၵ်ႇ" (Cubits)** လႄႈ **"ထတ်း" (Inches)** ၸိူင်ႉၼႆၶႃႈ။

### 1. ပိူင်သၢင်ႈ Program (Logic)
* **Method 1:** တႃႇပိၼ်ႇ ပေႇ -> သွၵ်ႇ (1 ပေႇ = 0.66 သွၵ်ႇ)။
* **Method 2:** တႃႇပိၼ်ႇ ပေႇ -> ထတ်း (1 ပေႇ = 12 ထတ်း)။
* **Method 3:** တႃႇၼႄၽွၼ်းလႆႈ (Display) ႁႂ်ႈတူၺ်းငၢႆႈ။
* **Main Method:** ႁပ်ႉၶေႃႈမုၼ်းတီႈ User သေ ႁွင်ႉၸႂ်ႉ Method တၢင်ႇၸိူဝ်း။

### 2. တူဝ်ယင်ႇ Code (Modular Design)

```csharp
using System;

class ShanConverter {
    static void Main() {
        Console.WriteLine("=== Shan Unit Converter (TMK Version) ===");
        Console.Write("Enter length in Feet: ");
        double feet = double.Parse(Console.ReadLine());

        // ႁွင်ႉၸႂ်ႉ Methods ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ
        double cubits = FeetToCubits(feet);
        double inches = FeetToInches(feet);

        ShowResult(feet, cubits, "Sok (သွၵ်း)");
        ShowResult(feet, inches, "Meuk (မိူၵ်ႈ)");
    }

    // 1. Expression-bodied method တႃႇပိၼ်ႈပဵၼ် သွၵ်း
    static double FeetToCubits(double f) => f * 0.666;

    // 2. Expression-bodied method တႃႇပိၼ်ႈပဵၼ် မိူၵ်ႈ
    static double FeetToInches(double f) => f * 12;

    // 3. Method တႃႇၼႄၽွၼ်းလႆႈ (void)
    static void ShowResult(double original, double converted, string unitName) {
        Console.WriteLine($"{original} Feet is equal to {converted:F2} {unitName}.");
    }
}
```

### 3. ဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Single Responsibility:** Method ၼိုင်ႈဢၼ် ႁဵတ်းၵၢၼ်ၼိုင်ႈလွင်ႈ (ၼပ်ႉၵေႃႈၼပ်ႉ၊ ၼႄၵေႃႈၼႄ)။
* **Expression-bodied Syntax:** တႅမ်ႈ Code ၼပ်ႉသွၼ်ႇႁႂ်ႈပွတ်းသေ သႅၼ်ႈသႂ်။
* **Reusability:** ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ `ShowResult` လၢႆလၢႆပွၵ်ႈ လူၺ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `Console.WriteLine` သွၼ်ႉၵၼ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Modular Design:** လွၵ်းလၢႆးတႅမ်ႈ App လူၺ်းၵၢၼ်ၸႅၵ်ႇပဵၼ် Method ဢွၼ်ႇ။
* **Unit Conversion:** ၵၢၼ်ပိၼ်ႇၵႃႈၶၼ် လုၵ်ႉတီႈပိူင်ၼိုင်ႈ ၵႂႃႇၸူးထႅင်ႈပိူင်ၼိုင်ႈ။
* **Formatting (:F2):** ၵၢၼ်ၸတ်းမၢႆၼပ်ႉၸုတ်ႇ (Decimal) ႁႂ်ႈၼႄမၢႆၸုတ်ႇ တီႈၼမ်သုတ်ႉ 2 တူဝ်။
* **Clean Code:** Code ဢၼ်ၸတ်းဝႆႉလီလီ၊ ဢၢၼ်ႇလူငၢႆႈ လႄႈ မႄးလႆႈငၢႆႈ။

---