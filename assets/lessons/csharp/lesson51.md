# Lesson 51: "Shan Grade Calculator" (Project ၵူတ်ႇထတ်းၵေတ်ႉ)

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေတႅမ်ႈ Program ဢၼ်ႁပ်ႉဢဝ် "ၶေႃႈတွပ်ႇလိၵ်ႈ" (Score) သေယဝ်ႉ မၵ်းမၼ်ႈပၼ် Grade ၸွမ်းၼင်ႇပိူင် ႁူင်းႁဵၼ်း "ထုင်ႉမၢဝ်းၶမ်း" ႁဝ်းၶႃႈ။

### 1. ပိူင်သၢင်ႈ Program (Logic)
* **Input:** ႁပ်ႉဢဝ် Score (0-100)။
* **Validation:** ၵူတ်ႇထတ်းဝႃႈ မၢႆၼပ်ႉမႅၼ်ႈၸွမ်းပိူင် 0-100 ႁႃႉ? (ၸႂ်ႉ `if`)။
* **Grading:** ၸႅၵ်ႇ Grade A, B, C, D, F ၸႂ်ႉ **Switch Expression** တႃႇႁႂ်ႈ Code သႅၼ်ႈသႂ်။
* **Output:** ၼႄၽိူၼ်ဢွၵ်ႇတင်း ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း လႄႈ ၶေႃႈၵႂၢမ်းပၼ်ႁႅင်း။

### 2. တူဝ်ယင်ႇ Code (Step-by-Step)

```csharp
using System;

class Program {
    static void Main() {
        Console.WriteLine("=== Thung Mao Kham Grade System ===");
        
        // 1. ႁပ်ႉၸိုဝ်ႈလုၵ်ႈႁဵၼ်း
        Console.Write("Enter Student Name: ");
        string name = Console.ReadLine() ?? "Unknown Student";

        // 2. ႁပ်ႉၶေႃႈတွပ်ႇလိၵ်ႈ
        Console.Write("Enter Score (0-100): ");
        if (double.TryParse(Console.ReadLine(), out double score)) {
            
            // 3. Validation: ၵူတ်ႇထတ်းမၢႆၼပ်ႉ
            if (score < 0 || score > 100) {
                Console.WriteLine("Error: Score must be between 0 and 100!");
                return;
            }

            // 4. Grading with Pattern Matching (Switch Expression)
            string grade = score switch {
                >= 80 => "A",
                >= 70 => "B",
                >= 60 => "C",
                >= 50 => "D",
                _     => "F"
            };

            // 5. ၼႄၽိူၼ်ဢွၵ်ႇ
            Console.WriteLine("\n----------------------------");
            Console.WriteLine($"Student: {name}");
            Console.WriteLine($"Score:   {score:N1}");
            Console.WriteLine($"Grade:   {grade}");
            
            // 6. တႅမ်ႈပၼ်ၶေႃႈၵႂၢမ်းပၼ်ႁႅင်း (Ternary Operator)
            string status = (grade != "F") ? "Passed! ၸူမ်းသိူဝ်းၸွမ်းၶႃႈ!" : "Failed. ၶတ်းၸႂ်ထႅင်ႈပွၵ်ႈၼႃ!";
            Console.WriteLine($"Result:  {status}");
            Console.WriteLine("----------------------------");

        } else {
            Console.WriteLine("Invalid input! Please enter a number.");
        }

        Console.WriteLine("\nPress any key to exit...");
        Console.ReadKey();
    }
}
```

### 3. ဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **`double.TryParse`**: တႃႇၵႅတ်ႇၶႄ App Crash ပေႃး User တႅမ်ႈလိၵ်ႈၽိတ်း။
* **`Logical OR (||)`**: ၸႂ်ႉၵူတ်ႇထတ်းဝႃႈ Score လဵၵ်းသေ 0 **ဢမ်ႇၼၼ်** ယႂ်ႇသေ 100 ႁႃႉ?
* **`Switch Expression`**: ၸႂ်ႉလၢႆးမႂ်ႇ `score switch { ... }` တႃႇလိူၵ်ႈ Grade ႁႂ်ႈပွတ်းသေပိူၼ်ႈ။
* **`Ternary Operator`**: ၸႂ်ႉမၵ်ႉမၼ်ႈ Passed/Failed ၼႂ်းထႅဝ်လဵဝ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Refactoring:** ၵၢၼ်မႄး Code ဢၼ်မီးဝႆႉယဝ်ႉ ႁႂ်ႈမၼ်းလီၶိုၼ်ႈ သႅၼ်ႈသႂ်ၶိုၼ်ႈ ၵူၺ်းၵႃႈ ႁဵတ်းၵၢၼ်လႆႈမိူၼ်ၵဝ်ႇ။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း လုၵ်ႉတီႈ Keyboard ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင် ၵွၼ်ႇတေဢဝ်ၵႂႃႇၼပ်ႉသၢင်ႈ။
* **Pattern Matching:** လၢႆးတႅမ်ႈ Switch ဢၼ်ၸႂ်ႉ `>= 80` တႃႇလိူၵ်ႈတွၼ်ႈၶေႃႈမုၼ်း။
* **Control Flow Logic:** ၵၢၼ်ဢဝ် လွင်ႈထတ်းသိၼ် လၢႆလၢႆယၢင်ႇ (if, switch, ternary) မႃးႁူမ်ႈၵၼ်။

---