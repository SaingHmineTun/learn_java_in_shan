# Lesson 138: "Exercise: Shan Product Inventory"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေမီးပိူင်ၵၢၼ် (Business Rules) ၼင်ႇၼႆ:
1.  **`Id`**: တေလႆႈပဵၼ် `required` လႄႈ `init` (တေလႆႈပၼ်မိူဝ်ႈၵိူတ်ႇ သေ လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)။
2.  **`Name`**: ပဵၼ် Auto-Property ธรรมดา။
3.  **`Price`**: တေလႆႈမီး Validation (ဢမ်ႇပၼ် Price တိတ်းလပ်း)။
4.  **`Stock`**: ပၼ် `get` ပဵၼ် Public ၵူၺ်းၵႃႈ `set` ပဵၼ် Private (မႄးလႆႈၼႂ်း Class ၵူၺ်း)။
5.  **`TotalValue`**: ပဵၼ် Computed Property (ၼပ်ႉဢၢၼ်ႇ Price * Stock ႁင်းၵူၺ်း)။

### 1. ပိူင်သၢင်ႈ Code (The Implementation)

```csharp
using System;

public class ShanProduct {
    // 1. Required & Init: တေလႆႈပၼ်ၵႃႈၶၼ်မိူဝ်ႈ new သေ လႅၵ်ႈဢမ်ႇလႆႈယဝ်ႉ
    public required string Id { get; init; }
    
    public string Name { get; set; }

    // 2. Manual Property with Validation
    private double _price;
    public double Price {
        get => _price;
        set {
            if (value >= 0) _price = value;
            else Console.WriteLine($">> [Error] Invalid price for {Name}!");
        }
    }

    // 3. Public Get, Private Set: ပိူၼ်ႈမႄး Stock ၵမ်းလဵဝ်ဢမ်ႇလႆႈ
    public int Stock { get; private set; }

    // 4. Computed Property: ၼပ်ႉဢၢၼ်ႇၵႃႈၶၼ်တင်းမူတ်းၼႂ်း Stock
    public double TotalValue => Price * Stock;

    public void Restock(int amount) {
        if (amount > 0) Stock += amount;
    }

    public void Sell(int amount) {
        if (amount > 0 && amount <= Stock) {
            Stock -= amount;
            Console.WriteLine($">> [Sold] {amount} units of {Name}.");
        } else {
            Console.WriteLine(">> [Error] Out of stock or invalid amount!");
        }
    }
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main Program)

```csharp
class Program {
    static void Main() {
        // ၸၢမ်းသၢင်ႈ Object (တေလႆႈပၼ် Id ယွၼ်ႉမၼ်းပဵၼ် required)
        var p1 = new ShanProduct { Id = "PROD-101", Name = "Shan Tea", Price = 25.50 };

        p1.Restock(100); // Stock တေပဵၼ် 100 (မႄးလုၵ်ႉတီႈ Method)
        p1.Price = -10;  // တေဢွၵ်ႇ Error (Validation လႅၼ်ႈ)
        p1.Sell(20);     // Stock တေၵိုတ်း 80

        // p1.Id = "PROD-999"; // Error! (init-only)
        // p1.Stock = 500;     // Error! (private set)

        Console.WriteLine($"\n--- Product Info ---");
        Console.WriteLine($"ID: {p1.Id}");
        Console.WriteLine($"Product: {p1.Name}");
        Console.WriteLine($"Price: {p1.Price} MMK");
        Console.WriteLine($"In Stock: {p1.Stock}");
        Console.WriteLine($"Total Inventory Value: {p1.TotalValue} MMK");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Data Integrity:** ၸႂ်ႉ `required` တႃႇႁႄႉၵၢင်ႈ Null Data။
* **Immutability:** ၸႂ်ႉ `init` တႃႇလွၵ်ႉ ID ဢမ်ႇပၼ်လႅၵ်ႈလၢႆႈ။
* **Encapsulation:** ၸႂ်ႉ `private set` တႃႇၵုမ်းထိင်း Stock လူၺ်း Methods။
* **Logic Hiding:** ၸႂ်ႉ `Computed Property` တႃႇၼပ်ႉဢၢၼ်ႇ ႁႂ်ႈ Code သႅၼ်ႈသႂ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Inventory Management:** ပိူင်ၸတ်းၵၢၼ်ၶူဝ်းၵုၼ်ႇ။
* **Business Rules:** ပၵ်းၵၢၼ်တၢင်းၵၢၼ် ဢၼ်တႅမ်ႈသႂ်ႇၼႂ်း Setter။
* **Derived State:** ၵႃႈၶၼ် (မိူၼ် TotalValue) ဢၼ်လုၵ်ႉတီႈ Fields တၢင်ႇဢၼ်မႃး။
* **Robustness:** လွင်ႈၵႅၼ်ႇၶႅင်ၶွင် Code ဢၼ်ႁႄႉၵၢင်ႈ Error လႆႈၵူႈလႅၼ်း။

---