# Lesson 115: "IDisposable vs. Destructors"

မိူဝ်ႈႁဝ်းၸႂ်ႉၶူဝ်းၶွင်ယႂ်ႇယႂ်ႇ မိူၼ်ၼင်ႇ Database ဢမ်ႇၼၼ် Files၊
ႁဝ်းဢမ်ႇထုၵ်ႇလီ ပႂ်ႉထႃႈႁႂ်ႈ Garbage Collector (GC) မႃးၵဵပ်းပႅတ်ႈ ႁင်းၵူၺ်းၶႃႈ။ 
ႁဝ်းလူဝ်ႇမေႃႇ "ယႃႉပႅတ်ႈမၼ်း" တႃႇဢဝ် Memory ၶိုၼ်းၶႃႈ။

### 1. IDisposable Interface ပဵၼ်သင်?
မၼ်းပဵၼ် "ၶေႃႈတူၵ်းလူင်း" (Contract) ဢၼ်လၢတ်ႈဝႃႈ Class ၼႆႉ တေလႆႈမီး Method ၸိုဝ်ႈဝႃႈ **`Dispose()`** တႃႇၸႂ်ႉယႃႉၶေႃႈမုၼ်း (Clean up) ၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)

```csharp
using System;

public class MyFileHandler : IDisposable {
    public void UseFile() {
        Console.WriteLine("File is being used...");
    }

    // ၼႆႉပဵၼ် Method ဢၼ်တေလႅၼ်ႈ မိူဝ်ႈႁဝ်းသင်ႇပိတ်း
    public void Dispose() {
        Console.WriteLine("Resource cleaned up immediately!");
        GC.SuppressFinalize(this); // လၢတ်ႈၼႄ GC ဝႃႈ ဢမ်ႇလူဝ်ႇလႅၼ်ႈ Destructor ထႅင်ႈယဝ်ႉ
    }
}
```

### 3. The `using` Statement (သဵၼ်ႈတၢင်းပွတ်း)
တႃႇတေႁႂ်ႈမၼ်း `Dispose()` ႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းၸႂ်ႉယဝ်ႉ၊ 
ႁဝ်းၸႂ်ႉ Keyword **`using`** ၶႃႈ။ မၼ်းတေႁွင်ႉ `Dispose()` ပၼ်ႁင်းၵူၺ်း တင်ႈတႄႇပိုတ်ႇ `{ }` တေႃႇပေႃးယဝ်ႉၶႃႈ။

```csharp
// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
using (MyFileHandler handler = new MyFileHandler()) {
    handler.UseFile();
} 
// ပေႃးထိုင်တီႈၼႆႉ... handler.Dispose() တေလႅၼ်ႈႁင်းၵူၺ်းၵမ်းလဵဝ်!
```

### 4. တႅၵ်ႈၼိူင်းၵၼ် (Comparison)

| Feature | Destructor (`~`) | IDisposable (`Dispose`)                       |
| :--- | :--- |:----------------------------------------------|
| **Control** | GC ပဵၼ်ၵေႃႉၵုမ်း (ႁဝ်းၵုမ်းဢမ်ႇလႆႈ) | Developer ပဵၼ်ၵေႃႉၵုမ်း (သင်ႇလႆႈၵမ်းလဵဝ်)     |
| **Timing** | လႅၼ်ႈမိူဝ်ႈလႂ်ၵေႃႈဢမ်ႇႁူႉ | လႅၼ်ႈၵမ်းလဵဝ် မိူဝ်ႈၵၢၼ်ၼႂ်း `using` ယဝ်ႉတူဝ် |
| **Use Case** | တႃႇ Unmanaged Resources (Backup) | တႃႇ Database, Files, Network Streams          |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **IDisposable:** Interface ဢၼ်မၵ်းမၼ်ႈ Method `Dispose()`။
* **Deterministic Cleanup:** ၵၢၼ်ယႃႉၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ ဢၼ်ႁဝ်းမၵ်းမၼ်ႈ။
* **using Statement:** Block ဢၼ်ၸွႆးႁွင်ႉ `Dispose()` ႁင်းၵူၺ်း မိူဝ်ႈယဝ်ႉၵၢၼ်။
* **Resource Leak:** ပၼ်ႁႃ Memory သဵင်ႈပႅတ်ႈလၢႆလၢႆ ယွၼ်ႉဢမ်ႇလႆႈ `Dispose()` ၶူဝ်းၶွင်ဢၼ်ၸႂ်ႉယဝ်ႉ။

---