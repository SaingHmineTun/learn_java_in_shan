# Lesson 179: "The List\<T\> Collection"

**`List<T>`** ယူႇၼႂ်း Namespace `System.Collections.Generic` ၶႃႈ။ တူဝ် **`T`** ၼၼ်ႉ ၶူးတေလႆႈပဵၼ်ၵေႃႉမၵ်းမၼ်ႈဝႃႈ တေသိမ်း Data Type သင်ၶႃႈ။

### 1\. ၵၢၼ်သၢင်ႈ (Declaration)

```csharp
// သၢင်ႈ List တႃႇသိမ်းၸိုဝ်ႈ (string)
List<string> shanCrops = new List<string>();
```

### 2\. ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်း (Adding Data)

ႁဝ်းၸႂ်ႉ Method **`.Add()`** တႃႇထႅမ်ၶဝ်ႈၵႂႃႇၽၢႆႇလင် သေၸႂ်ႉ **`.Insert()`** တႃႇသႂ်ႇဝႆႉတီႈ Index ဢၼ်ႁဝ်းလိူၵ်ႈၶႃႈ။

```csharp
shanCrops.Add("Rice");         // [0]
shanCrops.Add("Orange");       // [1]
shanCrops.Insert(1, "Tea");    // ယၢမ်းလဵဝ် Tea တေယူႇတီႈ [1] သေ Orange တေၵႂႃႇယူႇ [2]
```

### 3\. ၵၢၼ်ၶဝ်ႈထိုင်ၶေႃႈမုၼ်း (Accessing Data)

ႁဝ်းၸႂ်ႉ **`[index]`** မိူၼ်ၼင်ႇ Array ၵူၺ်းၶႃႈ။ မၢႆတွင်းဝႃႈ မၼ်းတႄႇၼပ်ႉတီႈ **0** တႃႇသေႇ။

```csharp
string firstCrop = shanCrops[0]; // "Rice"
int total = shanCrops.Count;     // ၸႂ်ႉ .Count တႅၼ်း .Length တႃႇႁူႉတၢင်းၼမ်
```

### 4\. ၵၢၼ်လူတ်ႇပႅတ်ႈ (Removing Data)

* **`.Remove()`**: လုၵ်ႉတူၺ်း "ၵႃႈၶၼ်" (Value) သေလူတ်ႇပႅတ်ႈ။
* **`.RemoveAt()`**: လုၵ်ႉတူၺ်း "တီႈယူႇ" (Index) သေလူတ်ႇပႅတ်ႈ။
* **`.Clear()`**: လူတ်ႇပႅတ်ႈတင်းမူတ်းၼႂ်း List။

<!-- end list -->

```csharp
shanCrops.Remove("Tea");    // ႁႃတူဝ် "Tea" သေလူတ်ႇပႅတ်ႈ
shanCrops.RemoveAt(0);      // လူတ်ႇပႅတ်ႈတူဝ်ယူႇတီႈ Index 0 (Rice)
```

-----

### 5\. တူဝ်ယင်ႇ ၵၢၼ်ၸႂ်ႉတႄႉ (The Shan Teacher Context)

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းတႅမ်ႈ App တႃႇၵဵပ်းသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း:

```csharp
List<string> students = new List<string> { "Sai Hla", "Sai Hseng" }; // Collection Initializer

students.Add("Nang Mo"); // ထႅမ်လုၵ်ႈႁဵၼ်းမႂ်ႇ
students.Remove("Sai Hla"); // လုၵ်ႈႁဵၼ်းဢွၵ်ႇႁူင်းႁဵၼ်း

foreach (string s in students) {
    Console.WriteLine($"Student: {s}");
}
```

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Dynamic Array:** Array ဢၼ်တၢင်းယၢဝ်းမၼ်း လႅၵ်ႈလၢႆႈလႆႈၸွမ်း Data။
* **Index:** တီႈယူႇၶွင် Data ၼႂ်း List (တႄႇၼပ်ႉ 0)။
* **Count:** Property ဢၼ်သူင်ႇတၢင်းၼမ် Data တင်းမူတ်းၼႂ်း List။
* **Capacity:** တၢင်းၵႂၢင်ႈ Memory ဢၼ် List ၵဵပ်းဝႆႉ (ပႅၵ်ႇၵၼ်တင်း Count)။

-----