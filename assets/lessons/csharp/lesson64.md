# Lesson 64: "Exercise: Building a 'Shan Lucky Number' Game"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေတႅမ်ႈ Program ဢၼ်သိမ်းဝႆႉ "မၢႆၼပ်ႉလပ်ႉသိင်ႇ" (Secret Number) ဢၼ်ၼိုင်ႈ။ 
User တေလႆႈလၢမ်းတူၺ်း၊ သင်လၢမ်းၽိတ်း Program တေပၼ် "ၶေႃႈၼႄတၢင်း" (Hint) ဝႃႈ ယႂ်ႇပူၼ်ႉ ဢမ်ႇၼၼ် လဵၵ်းပူၼ်ႉ ၼႆၶႃႈ။

### 1. ပိူင်သၢင်ႈ Program (Logic)
* **Secret Number:** မၵ်းမၼ်ႈမၢႆၼပ်ႉလပ်ႉသိင်ႇ (တူဝ်ယင်ႇ: 77)။
* **Loop (while):** ပၼ်ႇတူင်ႇထၢမ်တိၵ်းတိၵ်း တေႃႇထိုင် User လၢမ်းမႅၼ်ႈ။
* **Hint:** ၸႂ်ႉ `if-else` တႃႇလၢတ်ႈၼႄဝႃႈ မၢႆၼပ်ႉဢၼ်လၢမ်းၼၼ်ႉ သုင်ပူၼ်ႉ ဢမ်ႇၼၼ် တႅမ်ႇပူၼ်ႉ။
* **Exit:** ပေႃးမႅၼ်ႈယဝ်ႉ ၸႂ်ႉ `break` တႃႇဢွၵ်ႇ Loop။

### 2. တူဝ်ယင်ႇ Code (The Game)



```csharp
using System;

class Program {
    static void Main() {
        int luckyNumber = 77; // မၢႆၼပ်ႉလပ်ႉသိင်ႇ
        int guess = 0;
        int attempts = 0;

        Console.WriteLine("=== Welcome to Shan Lucky Number Game! ===");
        Console.WriteLine("I am thinking of a number between 1 and 100.");

        // ၸႂ်ႉ while loop တေႃႇပေႃးလၢမ်းမႅၼ်ႈ
        while (guess != luckyNumber) {
            Console.Write("\nEnter your guess: ");
            
            if (int.TryParse(Console.ReadLine(), out guess)) {
                attempts++; // ၼပ်ႉဝႃႈလၢမ်းၵႂႃႇလၢႆပွၵ်ႈယဝ်ႉ

                if (guess < luckyNumber) {
                    Console.WriteLine("Too Low! (တႅမ်ႇပူၼ်ႉယဝ်ႉ) Try again.");
                } else if (guess > luckyNumber) {
                    Console.WriteLine("Too High! (သုင်ပူၼ်ႉယဝ်ႉ) Try again.");
                } else {
                    Console.WriteLine($"\nCONGRATULATIONS! (ၸူမ်းၸပ်းလွင်ႈၵတ်ႉၶႅၼ်ႇ!)");
                    Console.WriteLine($"The lucky number was {luckyNumber}.");
                    Console.WriteLine($"You guessed it in {attempts} attempts.");
                    break; // လၢမ်းမႅၼ်ႈယဝ်ႉ ဢွၵ်ႇ Loop ၵမ်းလဵဝ်
                }
            } else {
                Console.WriteLine("Invalid input! Please enter a number.");
            }
        }

        Console.WriteLine("\nPress any key to exit...");
        Console.ReadKey();
    }
}
```

### 3. ဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **`while` loop:** ၸွႆးႁႂ်ႈ App ႁဵတ်းၵၢၼ်တိၵ်းတိၵ်း ၸွမ်းၼင်ႇ "ၶေႃႈထၢမ်" ဢၼ်ႁဝ်းဢမ်ႇႁူႉႁူဝ်ၼပ်ႉမၼ်းတႅတ်ႉတေႃး (User ၸၢင်ႈလၢမ်း 1 ပွၵ်ႈ ဢမ်ႇၼၼ် 100 ပွၵ်ႈ)။
* **State Management:** ၵၢၼ်ၸႂ်ႉ variable `attempts` တႃႇၼပ်ႉႁွပ်ႈၵၢၼ်လၢမ်း။
* **User Interaction:** ၵၢၼ်ပၼ်ၽွၼ်းလႆႈ (Hint) ၵမ်းလဵဝ် တႃႇႁႂ်ႈ User မီးလွင်ႈမူၼ်ႈသိူဝ်းၸွမ်း App။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Secret Number:** ၵႃႈၶၼ်ဢၼ်သိမ်းဝႆႉ ဢမ်ႇပၼ်ၽႂ်ႁူႉႁၼ် တႃႇတႅၵ်ႈၵၼ်တင်း User Input။
* **Attempt:** ၵၢၼ်လၢမ်း ဢမ်ႇၼၼ် ၵၢၼ်ၸၢမ်းႁဵတ်း ၼိုင်ႈႁွပ်ႈ။
* **Break Statement:** ၶေႃႈသင်ႇတတ်းၶၢတ်ႇ Loop မိူဝ်ႈလႆႈ "ၶေႃႈတွပ်ႇ" ဢၼ်မႅၼ်ႈယဝ်ႉ။
* **Input Validation:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ User တႅမ်ႈမၢႆၼပ်ႉတႄႉႁႃႉ တႃႇၵႅတ်ႇၶႄ App ၶမ်။

---