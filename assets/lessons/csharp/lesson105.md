# Lesson 105: "Exercise: Designing a Shan Village"

ၼႂ်း Project ၼႆႉ ႁဝ်းတေမီး Class သွင်ဢၼ် ဢၼ်ႁဵတ်းၵၢၼ်ၸွမ်းၵၼ်:
1.  **Class `Villager`**: တႃႇသိမ်းၶေႃႈမုၼ်းၵူၼ်းဝၢၼ်ႈ (ၸိုဝ်ႈ၊ ဢႃႇယု၊ ၵၢၼ်ႁဵတ်း)။
2.  **Class `Village`**: တႃႇသိမ်းၸိုဝ်ႈဝၢၼ်ႈ လႄႈ သဵၼ်ႈၸိုဝ်ႈ (List) ၵူၼ်းဝၢၼ်ႈတင်းမူတ်း။

### 1. ပိူင်သၢင်ႈ Code (The Blueprint)



```csharp
using System;
using System.Collections.Generic;

// 1. Class တႃႇၵူၼ်းဝၢၼ်ႈ
public class Villager {
    public string Name;
    public int Age;
    public string Job;

    public void Introduce() {
        Console.WriteLine($"[ၵူၼ်းဝၢၼ်ႈ] ၸိုဝ်ႈ: {Name}, ဢႃႇယု: {Age}, ႁဵတ်းၵၢၼ်: {Job}");
    }
}

// 2. Class တႃႇဝၢၼ်ႈ
public class Village {
    public string VillageName;
    public List<Villager> Residents = new List<Villager>();

    public void ShowVillageInfo() {
        Console.WriteLine($"\n=== ဝၢၼ်ႈ: {VillageName} ===");
        Console.WriteLine($"ႁူဝ်ၼပ်ႉၵူၼ်း: {Residents.Count} ၵေႃႉ");
        foreach (var person in Residents) {
            person.Introduce();
        }
    }
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main Program)

```csharp
class Program {
    static void Main() {
        // သၢင်ႈဝၢၼ်ႈမႂ်ႇ
        Village myVillage = new Village { VillageName = "ဝၢၼ်ႈၼမ်ႉၶမ်း" };

        // သၢင်ႈၵူၼ်းဝၢၼ်ႈ (Object Initializer)
        Villager v1 = new Villager { Name = "ၸၢႆးမၢဝ်း", Age = 25, Job = "ၶူးသွၼ်" };
        Villager v2 = new Villager { Name = "ၼၢင်းၶမ်း", Age = 22, Job = "မေႃယႃ" };

        // ဢဝ်ၵူၼ်းဝၢၼ်ႈသႂ်ႇၼႂ်းဝၢၼ်ႈ
        myVillage.Residents.Add(v1);
        myVillage.Residents.Add(v2);

        // ၼႄၽွၼ်းလႆႈ
        myVillage.ShowVillageInfo();
        
        // ၸၢမ်းၸႂ်ႉ Null-Conditional
        Villager v3 = null;
        Console.WriteLine($"\nChecking V3: {v3?.Name ?? "No person found"}");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Composition:** Class ဢၼ်ၼိုင်ႈ (Village) ၸၢင်ႈမီး Object ၶွင် Class တၢင်ႇဢၼ် (Villager) ဝႆႉၼႂ်းမၼ်း။
* **Encapsulation:** ႁဝ်းၸႅၵ်ႇ Logic ၵၢၼ်ၼႄ "Introduce" ဝႆႉၼႂ်းတူဝ် Villager ႁင်းၵူၺ်းမၼ်း။
* **Real-world Mapping:** ႁဝ်းတႅမ်ႈ Code ႁႂ်ႈမိူၼ်တင်း "ဝၢၼ်ႈ" တႄႉတႄႉ ဢၼ်မီးၵူၼ်းယူႇဝႆႉၼႂ်းမၼ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Class Library:** ႁွင်ႈ Code ဢၼ်မီး Class ဝႆႉလၢႆလၢႆဢၼ် ဢၼ်ၸၢင်ႈဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်း App တၢင်ႇဢၼ်လႆႈ။
* **Collection:** တီႈသိမ်း Object လၢႆလၢႆတူဝ် (မိူၼ်ၼင်ႇ `List<T>`)။
* **Object Relationship:** ၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ် ၼႂ်းၵႄႈ Object သွင်တူဝ် (Has-A relationship: ဝၢၼ်ႈ "မီး" ၵူၼ်းဝၢၼ်ႈ)။
* **Initialization:** ၵၢၼ်သၢင်ႈ Object လႄႈ ပၼ်ၵႃႈၶၼ်တႄႇ ႁႂ်ႈတႅတ်ႉတေႃး။

---