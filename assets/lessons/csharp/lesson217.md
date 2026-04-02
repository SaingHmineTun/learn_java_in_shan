# Lesson 217: "The 'IEnumerable' Foundation"

သင်ႁဝ်းၶႂ်ႈၸႂ်ႉ LINQ... ၶေႃႈမုၼ်းႁဝ်းတေလႆႈပဵၼ် **`IEnumerable<T>`** ဢွၼ်တၢင်းၶႃႈ။ 
ဝူၼ်ႉတူၺ်းဝႃႈ မၼ်းမိူၼ်ၼင်ႇ "သဵၼ်ႈတၢင်း" ဢၼ်ႁဝ်းၸၢင်ႈပႆၸႅတ်ႈၵႂႃႇလႆႈ ၵမ်းဢၼ်ဢၼ်ၼၼ်ႉယဝ်ႉ။

### 1. IEnumerable ပဵၼ်သင်?

**`IEnumerable<T>`** ပဵၼ် Interface ပိူင်ၼိုင်ႈ ၼႂ်း C# ဢၼ်မၵ်းမၼ်ႈဝႃႈ Collection ၼိုင်ႈဢၼ် "ၸၢင်ႈလူ (Read) လႆႈလၢႆးပၼ်ႇ Loop" ၶႃႈ။

* Array, List, Dictionary တင်းမူတ်း သိုပ်ႇၸိူဝ်ႉၶိူဝ်း (Inherit) လုၵ်ႉတီႈ IEnumerable တင်းမူတ်းၶႃႈ။

### 2. ႁဵတ်းသင် LINQ ၸင်ႇလူဝ်ႇမၼ်း?

LINQ Method တင်းၼမ် (မိူၼ်ၼင်ႇ `.Where()`, `.Select()`) ၸိူဝ်းၼၼ်ႉ မၼ်းပဵၼ် **Extension Methods** ဢၼ်တႅမ်ႈဝႆႉပၼ် **IEnumerable** ၶႃႈ။

* ပွင်ႇဝႃႈ: သင် Object ၼၼ်ႉပဵၼ် IEnumerable... မၼ်းတေၸၢင်ႈၸႂ်ႉ LINQ လႆႈၵမ်းလဵဝ်ၶႃႈ။

### 3. လွင်ႈပႅၵ်ႇပိူင် ဢၼ်လူဝ်ႇတွင်း

မၢင်ပွၵ်ႈ ႁဝ်းတေႁၼ်တင်း `List<T>` လႄႈ `IEnumerable<T>`။ ၶႃႈတေၸႅၵ်ႇၼႄငၢႆႈငၢႆႈ ၼင်ႇၼႆၶႃႈ:

| Feature | IEnumerable<T>                                              | List<T>                                |
| :--- |:------------------------------------------------------------|:----------------------------------------|
| **ၵၢၼ်ၸႂ်ႉ** | တႃႇ "လူ" (Read-only) လႄႈ ပၼ်ႇ Loop                          | တႃႇ "ၸတ်းၵၢၼ်" (Add, Remove, Sort)      |
| **Memory** | ၵိၼ် Memory ဢေႇ (ယွၼ်ႉမၼ်းဢမ်ႇသိမ်း Data တင်းမူတ်းၵမ်းလဵဝ်) | ၵိၼ် Memory ၼမ်လိူဝ်                    |
| **LINQ Support** | **ပဵၼ်ငဝ်ႈႁၢၵ်ႈ LINQ**                                      | ၸႂ်ႉ LINQ လႆႈ ယွၼ်ႉမၼ်းပဵၼ် IEnumerable |

### 4. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႂ်ႉ IEnumerable တႅၼ်း List

မိူဝ်ႈႁဝ်းတႅမ်ႈ Method တႃႇ "ႁႃၶေႃႈမုၼ်း"... ႁဝ်းထုၵ်ႇလီသူင်ႇၽွၼ်းလႆႈဢွၵ်ႇမႃးပဵၼ် **IEnumerable** ၶႃႈ။

```csharp
// လၢႆးတႅမ်ႈဢၼ်လီ (Flexible)
public IEnumerable<string> GetShanStudents(List<string> allStudents) {
    // LINQ တေသူင်ႇၽွၼ်းလႆႈဢွၵ်ႇမႃးပဵၼ် IEnumerable
    return allStudents.Where(s => s.Contains("တႆး"));
}

// --- ၵၢၼ်ၸႂ်ႉတႄႉ ---
var results = GetShanStudents(myList);
foreach (var name in results) {
    Console.WriteLine(name);
}
```

### 5. Deferred Execution (ၵၢၼ်ယၼ်ႇၶၢဝ်းယၢမ်း)

ၼႆႉပဵၼ်လွင်ႈဢၼ်လမ်ႇလွင်ႈသုတ်းၶႃႈ။ 
**IEnumerable** တေဢမ်ႇ "လႅၼ်ႈ" (Execute) Code ၼႂ်း LINQ ၵမ်းလဵဝ်ၶႃႈ။ မၼ်းတေပႂ်ႉ မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းၼႂ်း **`foreach`** ဢမ်ႇၼၼ် **`.ToList()`** ၶႃႈ။ 
မၼ်းတေႁဵတ်းၵၢၼ်လူၺ်ႈ "ၵမ်ႉၸင်ႇႁဵတ်း" (Lazy loading) လႄႈ ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်းဝႆးၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **IEnumerable:** Interface ပိုၼ်ႉထၢၼ် ဢၼ်ၸွႆးႁႂ်ႈပၼ်ႇ Loop လူၶေႃႈမုၼ်းလႆႈ။
* **Iterator:** တူဝ်ဢၼ်ၸွႆႈ ပႆၶၢမ်ႈၵႂႃႇၼႂ်း Collection (MoveNext, Current)။
* **Lazy Loading / Deferred Execution:** ၵၢၼ်ဢၼ်ဢမ်ႇႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် တေႃႇမိူဝ်ႈလူဝ်ႇၸႂ်ႉတႄႉတႄႉ။
* **ReadOnly:** ၵၢၼ်လူလႆႈၵူၺ်း ဢမ်ႇၸၢင်ႈမႄး (Modify) ၶေႃႈမုၼ်း။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်းဝႃႈ:

1.  သင်ႁဝ်းမီး `int[] numbers = {1, 2, 3}`။ ၸွင်ႇႁဝ်းၸၢမ်းၸႂ်ႉ `.Where()` လႆႈႁႃႉ? ယွၼ်ႉသင်?
2.  လွင်ႈပႅၵ်ႇပိူင်ၵႄႈ `List` လႄႈ `IEnumerable` ဢၼ်ႁဝ်းတွင်းလႆႈမီးသင်လၢႆလၢႆ?
