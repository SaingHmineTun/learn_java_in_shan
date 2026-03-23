# Lesson 116: "Exercise: Building a Shan Digital Library"

ၼႂ်း Project ၼႆႉ ႁဝ်းတေမီး Class **`Book`** ဢၼ်ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းပပ်ႉလိၵ်ႈ လႄႈ ၸႂ်ႉ **`IDisposable`** တႃႇပိၵ်ႉ Connection ၶွင် Database ၶႃႈ။

### 1. ပိူင်သၢင်ႈ Code (The Implementation)

```csharp
using System;

public class Book : IDisposable {
    public string Title;
    public string Author;
    public double Price;
    public bool IsOpen;

    // 1. Static Constructor: တႃႇပၼ်ၵႃႈၶၼ်တႃႇတင်း Library (ပွၵ်ႈလဵဝ်ၵူၺ်း)
    static Book() {
        Console.WriteLine(">> [SYSTEM] Shan Digital Library System Started.");
    }

    // 2. Main Constructor (ဢၼ်ႁပ်ႉၵူႈယၢင်ႇ)
    public Book(string title, string author, double price) {
        this.Title = title;
        this.Author = author;
        this.Price = price;
        this.IsOpen = true;
        Console.WriteLine($">> [OPEN] Book '{Title}' is now opened for reading.");
    }

    // 3. Constructor Chaining: ႁွင်ႉၸူး Main Constructor (သူင်ႇ Price = 0)
    public Book(string title, string author) : this(title, author, 0.0) { }

    // 4. Copy Constructor: ၵေႃႇပီႇပပ်ႉလိၵ်ႈလုၵ်ႉတီႈတူဝ်ၵဝ်ႇ
    public Book(Book other) : this(other.Title, other.Author, other.Price) {
        Console.WriteLine($">> [COPY] A copy of '{other.Title}' has been created.");
    }

    // 5. IDisposable: တႃႇပိတ်းပပ်ႉလိၵ်ႈၵမ်းလဵဝ်
    public void Dispose() {
        if (IsOpen) {
            IsOpen = false;
            Console.WriteLine($">> [CLOSE] Book '{Title}' closed and resources released.");
        }
        GC.SuppressFinalize(this);
    }

    // 6. Destructor: တႃႇ Backup (သင် Developer လိုမ်း Dispose)
    ~Book() {
        if (IsOpen) {
            Console.WriteLine($">> [GC] Destructor cleaned up '{Title}'.");
        }
    }
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main Program)

```csharp
class Program {
    static void Main() {
        // ၸႂ်ႉ 'using' တႃႇႁႂ်ႈမၼ်း Dispose ႁင်းၵူၺ်း
        using (Book b1 = new Book("ပိုၼ်းတႆး", "ၶူးၸၢႆးမၢဝ်း", 5500)) {
            Console.WriteLine($"Reading: {b1.Title} by {b1.Author}");
            
            // ၵေႃႇပီႇပပ်ႉလိၵ်ႈ
            Book b2 = new Book(b1);
        } // b1 လႄႈ b2 တေ Dispose တီႈၼႆႉၵမ်းလဵဝ်

        // ၸၢမ်း Constructor ဢၼ်မီး Chaining
        Book b3 = new Book("ၵႂၢမ်းၵျၢမ်းတႆး", "ၼၢင်းၶမ်း");
        
        Console.WriteLine("\n--- End of Program ---");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Constructors:** ႁဝ်းၸၢင်ႈသၢင်ႈ Object လၢႆလၢႆလၢႆး (Full data, Partial data, ဢမ်ႇၼၼ် Copy)။
* **Chaining:** ၸႂ်ႉ Code သွၼ်ႉၵၼ် ၼႂ်း Constructor လၢႆဢၼ်။
* **Memory Control:** ၸႂ်ႉ `using` လႄႈ `Dispose()` တႃႇပိၵ်ႉပပ်ႉလိၵ်ႈ ႁႂ်ႈတႅတ်ႉတေႃးၸွမ်းၶၢဝ်းယၢမ်း။

---