# Lesson 185: "Collection Initializers"

မိူဝ်ႈၵဝ်ႇၼၼ်ႉ သင်ႁဝ်းၶႂ်ႈသႂ်ႇၶေႃႈမုၼ်း 5 တူဝ်... ႁဝ်းတေလႆႈတႅမ်ႈ `.Add()` 5 ပွၵ်ႈ။ ၵူၺ်းၵႃႈ ယၢမ်းလဵဝ်ႁဝ်းၸႂ်ႉ **Curly Braces `{ }`** တႃႇသႂ်ႇၶေႃႈမုၼ်းလႆႈငၢႆႈๆ ၶႃႈ။

### 1\. ၸႂ်ႉတင်း List\<T\>

တႅၼ်းဢၼ်တေတႅမ်ႈ `.Add()`... ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းဝႆႉၼႂ်း `{ }` ၽၢႆႇလင် Constructor လႆႈၵမ်းလဵဝ်ၶႃႈ။

```csharp
// လၢႆးၵဝ်ႇ (Verbose)
List<string> colors = new List<string>();
colors.Add("Red");
colors.Add("Green");

// လၢႆးမႂ်ႇ (Shorthand)
List<string> shanFruits = new List<string> { "Mango", "Pineapple", "Orange" };
```

### 2\. ၸႂ်ႉတင်း Dictionary\<K, V\>

တွၼ်ႈတႃႇ Dictionary မၼ်းမီးလၢႆးတႅမ်ႈ 2 ပိူင်ၶႃႈ:

* **လၢႆးထီႉ 1:** ၸႂ်ႉ Nested Braces `{ {key, value} }`
* **လၢႆးထီႉ 2:** ၸႂ်ႉ Indexer Syntax `[key] = value` (ၼႆႉပဵၼ်လၢႆးဢၼ်လူငၢႆႈလိူဝ်ၶႃႈ)

<!-- end list -->

```csharp
// လၢႆးထီႉ 1
Dictionary<string, string> dict1 = new Dictionary<string, string> {
    { "MM", "Myanmar" },
    { "TH", "Thailand" }
};

// လၢႆးထီႉ 2 (C# 6.0+) - Recommended!
Dictionary<int, string> zipCodes = new Dictionary<int, string> {
    [60101] = "Muse",
    [60201] = "Namkham",
    [01011] = "Lashio"
};
```

### 3\. ၸႂ်ႉတင်း Custom Objects

ႁဝ်းၸၢင်ႈၸႂ်ႉ **Object Initializer** ၸွမ်တင်း **Collection Initializer** တႃႇသၢင်ႈသဵၼ်ႈမၢႆ Object ဢၼ်မီးၶေႃႈမုၼ်းတူဝ်ႈတႅတ်ႉယဝ်ႉ ၼႂ်း Code ထႅဝ်လဵဝ်လႆႈၶႃႈ။

```csharp
List<ShanStudent> classroom = new List<ShanStudent> {
    new ShanStudent { Name = "Sai Mao", Age = 25 },
    new ShanStudent { Name = "Nang Mo", Age = 22 }
};
```

### 4\. ၽွၼ်းလီ (Benefits)

1.  **Readability:** Code လူလိၵ်ႈငၢႆႈ (Cleaner)။ ႁၼ်ၵမ်းလဵဝ်ၵေႃႈႁူႉဝႃႈ ၼႂ်း List ၼၼ်ႉမီးသင်ဝႆႉ။
2.  **Less Typing:** ဢမ်ႇလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Variable သိုပ်ႇၵၼ်လၢႆလၢႆထႅဝ်။
3.  **Declarative Style:** မၼ်းပဵၼ်လၢႆးတႅမ်ႈ Code ဢၼ်မၵ်းမၼ်ႈဝႃႈ "ႁဝ်းၶႂ်ႈလႆႈသင်" တႅၼ်း "ႁဝ်းတေႁဵတ်းလၢႆးလႂ်" ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Collection Initializer:** လၢႆးသႂ်ႇၶေႃႈမုၼ်း ၵမ်းလဵဝ်မိူဝ်ႈသၢင်ႈ Object။
* **Shorthand:** လၢႆးတႅမ်ႈ Code ဢၼ်ပွတ်း လႄႈ ငၢႆႈ။
* **Indexer Syntax:** ၵၢၼ်ၸႂ်ႉ `[key]` တႃႇသႂ်ႇၵႃႈၶၼ်ၼႂ်း Dictionary။
* **Object Initializer:** ၵၢၼ်သႂ်ႇ Property values ၵမ်းလဵဝ်မိူဝ်ႈ `new` object။

-----