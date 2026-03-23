# Lesson 186: "The IEnumerable Interface"

**`IEnumerable<T>`** ပဵၼ် Interface ဢၼ်မၵ်းမၼ်ႈဝႃႈ Collection ၼိုင်ႈဢၼ် "ပၼ်ႇ Loop (Iterate) လႆႈ" ၼၼ်ႉယဝ်ႉ။ မၼ်းပဵၼ် Interface ပိုၼ်ႉထၢၼ် ဢၼ် `List<T>`, `Dictionary<K,V>`, `Queue<T>` လႄႈ `Stack<T>` တင်းမူတ်း Implement ဝႆႉၶႃႈ။

### 1\. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ? (The Abstraction)

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးတႅမ်ႈ Method တႃႇ "ၼႄၸိုဝ်ႈလုၵ်ႈႁဵၼ်း"။ သင်ၶူးမၵ်းမၼ်ႈ Parameter ပဵၼ် `List<string>`... ၶူးတေဢဝ် `string[]` (Array) သူင်ႇၶဝ်ႈၵႂႃႇဢမ်ႇလႆႈ။ ၵူၺ်းၵႃႈ သင်ၶူးၸႂ်ႉ **`IEnumerable<string>`**... ၶူးတေသူင်ႇ Collection ပိူင်လႂ်ၵေႃႈလႆႈ တင်းမူတ်းၶႃႈ။

```csharp
// Method ၼႆႉ ႁပ်ႉလႆႈၵူႈပိူင် ဢၼ်ပၼ်ႇ Loop လႆႈ
public static void PrintItems(IEnumerable<string> items) {
    foreach (var item in items) {
        Console.WriteLine(item);
    }
}
```

### 2\. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ (The Rules)

* **Read-Only:** `IEnumerable` မီးဝႆႉတႃႇ "လူ" (Read) ၵူၺ်း။ ၶူးဢမ်ႇၸၢင်ႈၸႂ်ႉ `.Add()` ဢမ်ႇၼၼ် `.Remove()` ၽၢၼ်ႇ IEnumerable လႆႈၶႃႈ။
* **Forward Only:** မၼ်းပၼ်ႇ Loop လုၵ်ႉတႄႇၼႃႈ ၵႂႃႇၽၢႆႇလင်လႆႈလၢႆးလဵဝ်ၵူၺ်း (ဢမ်ႇၸၢင်ႈၸႂ်ႉ Index `[i]` လႆႈ)။
* **Deferred Execution:** ၼႆႉပဵၼ်တွၼ်ႈ Advanced ဢၼ်မၼ်းတေပႆႇလႅၼ်ႈ Code တေႃႇႁဝ်းတေတႄႇ `foreach` တႄႉတႄႉၶႃႈ။

### 3\. တူဝ်ယင်ႇ ၵၢၼ်ၸႂ်ႉတႄႉ (Polymorphism)

```csharp
List<string> list = new List<string> { "Sai Mao", "Nang Mo" };
string[] array = { "Lashio", "Muse" };

// ႁွင်ႉၸႂ်ႉ Method လဵဝ်ၵၼ် လႆႈတင်းသွင်ပိူင်!
PrintItems(list);
PrintItems(array);
```

### 4\. ႁဵတ်းသင်ၸင်ႇလီလိူဝ်?

1.  **Flexibility:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းၸႂ်ႉလႆႈတင်း Collection ၵူႈပိူင် (Decoupled)။
2.  **LINQ Support:** `IEnumerable` ပဵၼ်ပိုၼ်ႉထၢၼ်ၶွင် LINQ (ၵၢၼ်ႁႃၶေႃႈမုၼ်း ဢၼ်ႁဝ်းတေႁဵၼ်းတွၼ်ႈလုၼ်း)။
3.  **Memory Efficiency:** မၼ်းၵႆႉၸႂ်ႉ Memory ဢေႇလိူဝ် တွၼ်ႈတႃႇၵၢၼ်လူၶေႃႈမုၼ်းယႂ်ႇๆ ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Iteration:** ၵၢၼ်ပၼ်ႇ Loop ၸူးၶေႃႈမုၼ်းၼိုင်ႈတူဝ်သေတူဝ်။
* **Enumerator:** တူဝ်ဢၼ်ႁဵတ်းၼႃႈတီႈ "မၢႆဝႆႉ" ဝႃႈ ယၢမ်းလဵဝ်ယူႇတီႈၶေႃႈမုၼ်းမၢႆၵမ်းလၢႆ။
* **Read-only Access:** ၵၢၼ်ၶဝ်ႈထိုင်ၶေႃႈမုၼ်း တႃႇလူၵူၺ်း ဢမ်ႇမႄးလႆႈ။
* **Abstraction Layer:** ၸၼ်ႉဢၼ်ႁႄႉဝႆႉ ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၽၢႆႇၼႂ်းမၼ်းပဵၼ် List ဢမ်ႇၼၼ် Array။

-----