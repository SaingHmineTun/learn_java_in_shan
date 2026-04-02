# Lesson 227: "Exercise: Shan Student Record Search Engine"

### 1. ဝၢင်းၽႅၼ် (The Plan)
ႁဝ်းတေမႃးသၢင်ႈပိူင်သၢင်ႈ ဢၼ်ၸၢင်ႈ:
* **Filter:** ႁႃလုၵ်ႈႁဵၼ်းၸွမ်းဝဵင်း (City)။
* **Order:** ၸတ်းၸိုဝ်ႈ (Name) ၸွမ်းတူဝ်လိၵ်ႈ A-Z။
* **Project:** လိူၵ်ႈဢဝ် ၸိုဝ်ႈ လႄႈ မၢႆတွၼ်ႈ (Select) ၵူၺ်း။
* **Aggregate:** ၼပ်ႉတၢင်းၼမ် (Count) လႄႈ ႁႃၵႃႈၶၼ်ၵၢင် (Average)။

### 2. တႅမ်ႈ Code (The Implementation)

```csharp
using System;
using System.Collections.Generic;
using System.Linq;

public class Student {
    public string Name { get; set; }
    public string City { get; set; }
    public int Score { get; set; }
}

class Program {
    static void Main() {
        // 1. ငဝ်ႈႁၢၵ်ႈၶေႃႈမုၼ်း (Data Source)
        var students = new List<Student> {
            new Student { Name = "ၸၢႆးသႅင်", City = "Muse", Score = 85 },
            new Student { Name = "ၼၢင်းမိူင်း", City = "Lashio", Score = 92 },
            new Student { Name = "ၸၢႆးလႅင်း", City = "Muse", Score = 74 },
            new Student { Name = "ၼၢင်းၼုမ်ႇ", City = "Taunggyi", Score = 88 },
            new Student { Name = "ၸၢႆးၶူဝ်း", City = "Lashio", Score = 60 }
        };

        // 2. သၢင်ႈ Search Logic (Deferred Execution)
        string searchCity = "Muse";
        var searchResult = students
            .Where(s => s.City == searchCity)          // Filtering
            .OrderBy(s => s.Name)                      // Ordering
            .Select(s => new { s.Name, s.Score });     // Projection

        // 3. ၼႄၽွၼ်းလႆႈ (Execution starts here)
        Console.WriteLine($"--- လုၵ်ႈႁဵၼ်းတီႈဝဵင်း: {searchCity} ---");
        foreach (var s in searchResult) {
            Console.WriteLine($"ၸိုဝ်ႈ: {s.Name} | မၢႆတွၼ်ႈ: {s.Score}");
        }

        // 4. Aggregation (Statistics)
        int totalCount = students.Count();
        double avgScore = students.Average(s => s.Score);
        var topStudent = students.OrderByDescending(s => s.Score).First();

        Console.WriteLine("\n--- သဵၼ်ႈမၢႆႁူမ်ႈ (Statistics) ---");
        Console.WriteLine($"လုၵ်ႈႁဵၼ်းတင်းမူတ်း: {totalCount} ၵေႃႉ");
        Console.WriteLine($"မၢႆတွၼ်ႈၵၢင် (Average): {avgScore:F2}");
        Console.WriteLine($"ၵေႃႉဢၼ်လႆႈမၢႆတွၼ်ႈၼမ်သုတ်း: {topStudent.Name} ({topStudent.Score})");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈၸႂ်ႉ
* **Method Chaining:** ႁဝ်းဢဝ် `.Where()`, `.OrderBy()`, `.Select()` မႃးၵွင်ႉၵၼ်ပဵၼ်ထႅဝ်လဵဝ်။
* **Anonymous Types:** ႁဝ်းၸႂ်ႉ `new { s.Name, s.Score }` တႃႇလိူၵ်ႈဢဝ် ၶေႃႈမုၼ်းဢၼ်လူဝ်ႇၼႄ။
* **Aggregate Functions:** ႁဝ်းၸႂ်ႉ `.Average()` လႄႈ `.Count()` တႃႇႁဵတ်း Report ပွတ်းပွတ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Search Engine:** ပိူင်သၢင်ႈတႃႇႁႃၶေႃႈမုၼ်း ၸွမ်းၼင်ႇပၵ်းၵၢၼ်။
* **Method Chaining:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ LINQ Method သိုပ်ႇၵၼ်ၽၢၼ်ႇ `.` (Dot)။
* **Fluent Interface:** လၢႆးတႅမ်ႈ Code ဢၼ်လူငၢႆႈ မိူၼ်ၼင်ႇလၢတ်ႈၵႂၢမ်း။
* **Data Transformation:** ၵၢၼ်ပိၼ်ႇႁၢင်ႈၶေႃႈမုၼ်း လုၵ်ႉတီႈ List ယႂ်ႇๆ ႁႂ်ႈပဵၼ် Report ဢၼ်လူငၢႆႈ။

---