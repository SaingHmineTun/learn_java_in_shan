# Lesson 153: "Exercise: Shan Community Roles"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေမီးပိူင်ၵၢၼ် (Business Rules) ၼင်ႇၼႆ:
1.  **`Person` (Base Class)**: မီး Property `Name` လႄႈ Method `GetRole()` ဢၼ်ပဵၼ် `virtual`။
2.  **`Teacher` (Derived Class)**: သိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃး သေ `override` Method `GetRole()`။
3.  **`Student` (Derived Class)**: သိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃး သေ `override` Method `GetRole()`။
4.  **`Monk` (Sealed Class)**: သိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃး၊ `override` Method သေ **`sealed`** ဝႆႉ ဢမ်ႇပၼ်ၽႂ်သိုပ်ႇမွေႇထႅင်ႈ။

### 1. ပိူင်သၢင်ႈ Code (The Implementation)

```csharp
using System;
using System.Collections.Generic;

// 1. Base Class (ပေႃးလူင်)
public class Person {
    public required string Name { get; init; }

    public virtual void GetRole() {
        Console.WriteLine($"{Name} is a general member of the Shan Community.");
    }
}

// 2. Teacher Class (သိုပ်ႇၸိူဝ်ႉၶိူဝ်း)
public class Teacher : Person {
    public string Subject { get; set; } = "General Studies";

    public override void GetRole() {
        Console.WriteLine($"{Name} is a Teacher teaching {Subject}.");
    }
}

// 3. Student Class (သိုပ်ႇၸိူဝ်ႉၶိူဝ်း)
public class Student : Person {
    public override void GetRole() {
        Console.WriteLine($"{Name} is a Student learning and growing.");
    }
}

// 4. Monk Class (ပိတ်းၸိူဝ်ႉၶိူဝ်း - Sealed)
public sealed class Monk : Person {
    public override void GetRole() {
        Console.WriteLine($"{Name} is a Monk providing spiritual guidance.");
    }
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Polymorphism in Action)

```csharp
class Program {
    static void Main() {
        // သၢင်ႈ List ၶွင် Person (Upcasting တေႁဵတ်းပၼ်ႁင်းၵူၺ်း)
        List<Person> community = new List<Person> {
            new Teacher { Name = "Kru Sai Mao", Subject = "C# Programming" },
            new Student { Name = "Sai Hla" },
            new Monk { Name = "U Kaw Wi Da" },
            new Person { Name = "Unknown Guest" }
        };

        Console.WriteLine("--- Shan Community Role Call ---");
        
        foreach (var p in community) {
            // Polymorphism: ႁွင်ႉၸိုဝ်ႈ Method မိူၼ်ၵၼ် ၵူၺ်းၵႃႈ လႅၼ်ႈ Code ဢမ်ႇမိူၼ်ၵၼ်
            p.GetRole(); 

            // ၸၢမ်းၸႂ်ႉ 'is' တႃႇၵူတ်ႇထတ်း Teacher တႅတ်ႉတေႃး
            if (p is Teacher t) {
                Console.WriteLine($"   (Special: {t.Name} uses a Whiteboard)");
            }
        }
    }
}
```



### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Inheritance:** ၸႂ်ႉ `:` တႃႇသိုပ်ႇၸိူဝ်ႉၶိူဝ်း `Name` လုၵ်ႉတီႈ `Person`။
* **Polymorphism:** ၸႂ်ႉ `virtual` လႄႈ `override` တႃႇႁဵတ်းႁႂ်ႈ `GetRole()` မီးလၢႆႁၢင်ႈ။
* **Sealed:** ၸႂ်ႉ `sealed` တႃႇမၵ်းမၼ်ႈဝႃႈ Class `Monk` ၼၼ်ႉ သုၼ်ႇတူဝ်မၼ်းယဝ်ႉတူဝ်ႈယဝ်ႉ။
* **Safe Casting:** ၸႂ်ႉ `is` တႃႇၵူတ်ႇထတ်းၸိူဝ်ႉၶိူဝ်း လုၵ်ႉတီႈ Variable ၶွင် Base Class။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **System Design:** ၵၢၼ်ဝၢင်းၽႅၼ်ပိူင်သၢင်ႈ Code ႁႂ်ႈမီးၸၼ်ႉ။
* **Code Reusability:** ၵၢၼ်ၸႂ်ႉ `Name` လႄႈ `GetRole()` ၶိုၼ်း ၼႂ်းၵူႈ Class။
* **Dynamic Dispatch:** လွင်ႈဢၼ် C# လိူၵ်ႈ Method ဢၼ်မႅၼ်ႈၸွမ်း Object Type တႄႉတႄႉ မိူဝ်ႈလႅၼ်ႈ Code။
* **Hierarchical Structure:** ၸၼ်ႉထၢၼ်ၶွင်ၸိူဝ်ႉၶိူဝ်း ၼႂ်းၼႃႈၵၢၼ်။

---