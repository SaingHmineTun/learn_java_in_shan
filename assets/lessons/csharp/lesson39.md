# Lesson 39: "Building a Basic Shan Currency Converter"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေတႅမ်ႈ Program ဢၼ်ႁပ်ႉဢဝ်ၵႃႈငိုၼ်းၿၢတ်ႇ (Baht) ယဝ်ႉပိၼ်ႇပဵၼ်ငိုၼ်းၵျပ်ႉ (Kyats) 
ၸွမ်းၼင်ႇ ၶၼ်လႅၵ်ႈလၢႆႈ (Exchange Rate) ဢေႃႈ။

### 1. ပိူင်သၢင်ႈ Program (Logic)
* **Input:** ႁပ်ႉဢဝ် ၵႃႈငိုၼ်းၿၢတ်ႇ တီႈ Keyboard။
* **Calculation:** ဢဝ်ငိုၼ်းၿၢတ်ႇ ၵုမ်းပၼ် (Multiply) တင်းၵႃႈလႅၵ်ႈ (တူဝ်ယင်ႇ: 1 THB = 120 MMK)။
* **Output:** ၼႄၽွၼ်းလႆႈ ႁႂ်ႈမီး Comma လႄႈ ၸတ်း Alignment ႁႂ်ႈႁၢင်ႈလီ။

### 2. တူဝ်ယင်ႇ Code (Step-by-Step)

```csharp
using System;

class Program {
    static void Main() {
        // 1. တင်ႈၵႃႈလႅၵ်ႈငိုၼ်း (Exchange Rate)
        const double exchangeRate = 120.5; // 1 Baht = 120.5 Kyats

        Console.WriteLine("=== Shan Currency Converter ===");
        
        // 2. ႁပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈ User
        Console.Write("Enter amount in Thai Baht (THB): ");
        string input = Console.ReadLine();
        
        // 3. Parsing (ပိၼ်ႇလိၵ်ႈပဵၼ်မၢႆၼပ်ႉ)
        if (double.TryParse(input, out double baht)) {
            
            // 4. Calculation (ၼပ်ႉသၢင်ႈ)
            double kyats = baht * exchangeRate;

            // 5. Formatting Output (ၼႄၽိူၼ်ႁၢင်ႈလီ)
            Console.WriteLine("\n--- Conversion Result ---");
            Console.WriteLine($"{"Thai Baht:",-15} {baht,15:N2} THB");
            Console.WriteLine($"{"Exchange Rate:",-15} {exchangeRate,15:N2}");
            Console.WriteLine(new string('-', 35));
            Console.WriteLine($"{"Myanmar Kyats:",-15} {kyats,15:N2} MMK");
            
        } else {
            Console.WriteLine("Invalid input! Please enter a valid number.");
        }

        Console.WriteLine("\nPress any key to exit...");
        Console.ReadKey();
    }
}
```

### 3. လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **`const`**: ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ Exchange Rate ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈၼႂ်း Program။
* **`TryParse`**: တႃႇၵႅတ်ႇၶႄ App Crash မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈ ဢၼ်ဢမ်ႇၸႂ်မၢႆၼပ်ႉ။
* **`Arithmetic (*)`**: ၸႂ်ႉတႃႇၼပ်ႉသၢင်ႈၵႃႈငိုၼ်း။
* **`String Alignment`**: ၸႂ်ႉ `,-15` လႄႈ `,15` တႃႇႁဵတ်းႁႂ်ႈလိၵ်ႈ လႄႈ မၢႆၼပ်ႉ လႅပ်ႈပဵၼ်ထႅဝ်လဵဝ်ၵၼ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Currency Converter:** App ဢၼ်ၸႂ်ႉ တႃႇပိၼ်ႇၶၼ်ငိုၼ်း။
* **Exchange Rate:** ၶၼ်ငိုၼ်း ဢၼ်ပဵၼ်မၢႆၼပ်ႉ တႃႇဢဝ်မႃးၼပ်ႉသၢင်ႈ။
* **User Input Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်းလုၵ်ႉတီႈ User (ၸႂ်ႉ `if` လႄႈ `TryParse`)။
* **Formatting Specifier (`:N2`):** ၵၢၼ်သင်ႇႁႂ်ႈမၢႆၼပ်ႉဢွၵ်ႇမႃးမီး Comma လႄႈ ပၢႆၸုၵ်း 2 တူဝ်။

---