# Lesson 189: "Exercise: Shan Digital Dictionary"

### 1. ဝၢင်းၽႅၼ် (The Plan)
ႁဝ်းတေၸႂ်ႉ `Dictionary<string, string>` ဢၼ်မီး:
* **Key (K):** ၶေႃႈၵႂၢမ်းတႆး (Shan Word)
* **Value (V):** တီႈပွင်ႇပဵၼ်လိၵ်ႈဢင်းၵိတ်း (English Meaning)

### 2. တႅမ်ႈ Code (The Implementation)

```csharp
using System;
using System.Collections.Generic;

class ShanDictionaryApp {
    static void Main() {
        // 1. သၢင်ႈ Dictionary လူၺ်ႈၸႂ်ႉ Initializer
        Dictionary<string, string> dictionary = new Dictionary<string, string> {
            ["ၵိၼ်"] = "To eat",
            ["ၼွၼ်း"] = "To sleep",
            ["ၵႂႃႇ"] = "To go",
            ["မႃး"] = "To come",
            ["ႁဵၼ်း"] = "To learn / To study"
        };

        Console.WriteLine("--- မႂ်ႇသုင်ၶႃႈ! Welcome to Shan Digital Dictionary ---");
        
        while (true) {
            Console.Write("\nEnter a Shan word to search (or 'exit' to quit): ");
            string input = Console.ReadLine();

            if (input.ToLower() == "exit") break;

            // 2. ၸႂ်ႉ TryGetValue တႃႇႁႃၶေႃႈမုၼ်း ႁႂ်ႈလွတ်ႈၽေး (Safe Lookup)
            if (dictionary.TryGetValue(input, out string meaning)) {
                Console.WriteLine($"Result: {input} means '{meaning}'");
            } else {
                Console.WriteLine("Sorry, this word is not in our dictionary yet.");
                
                // 3. ထႅမ်ၶေႃႈၵႂၢမ်းမႂ်ႇ (Adding New Data)
                Console.Write("Would you like to add its meaning? (y/n): ");
                if (Console.ReadLine().ToLower() == "y") {
                    Console.Write($"Enter meaning for {input}: ");
                    string newMeaning = Console.ReadLine();
                    dictionary[input] = newMeaning; // Update/Add method
                    Console.WriteLine("Thank you! Word added successfully.");
                }
            }
        }

        // 4. ၼႄၶေႃႈၵႂၢမ်းတင်းမူတ်း (Looping through Keys)
        Console.WriteLine("\n--- All Words in Dictionary ---");
        foreach (var word in dictionary.Keys) {
            Console.WriteLine($"- {word}");
        }
    }
}
```



---

### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Fast Lookup:** ဢမ်ႇဝႃႈပပ်ႉသပ်းႁဝ်းတေမီးၶေႃႈၵႂၢမ်း 10,000 တူဝ်ၵေႃႈယဝ်ႉ... Dictionary တေႁႃတီႈပွင်ႇလႆႈဝႆးၼႃႇ (O(1) complexity)။
* **Safe Search:** ၵၢၼ်ၸႂ်ႉ **`TryGetValue`** ႁဵတ်းႁႂ်ႈ App ႁဝ်းဢမ်ႇ Crash မိူဝ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈလိၵ်ႈၽိတ်း။
* **Dynamic Content:** ႁဝ်းၸၢင်ႈထႅမ် (**Add**) ဢမ်ႇၼၼ် မႄး (**Update**) တီႈပွင်ႇလႆႈၵူႈၶၢဝ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Search Complexity:** တၢင်းဝႆးၼႂ်းၵၢၼ်ႁႃၶေႃႈမုၼ်း။
* **KVP (Key-Value Pair):** ၵူပ်းၶေႃႈမုၼ်း (တႆး-ဢင်းၵိတ်း)။
* **Out Parameter:** ၵၢၼ်သူင်ႇ Value ဢွၵ်ႇမႃးတီႈ Method `out string meaning`။
* **User Interaction:** ၵၢၼ်ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈၵူၼ်းၸႂ်ႉ (User)။

---