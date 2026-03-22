# Lesson 71: "Multidimensional Arrays (2D)"

ၼႂ်း C# ႁဝ်းႁွင်ႉဝႃႈ **Rectangular Array** ၵေႃႈလႆႈၶႃႈ၊ 
ယွၼ်ႉမၼ်းမီး "ထႅဝ်" (Rows) လႄႈ "လႅၼ်း" (Columns) ဢၼ်တႅတ်ႉတေႃးၵၼ်ဝႆႉတႃႇသေႇ။

### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉမၢႆ **`,`** (Comma) ဝႆႉၼႂ်း `[]` တႃႇလၢတ်ႈဝႃႈ မၼ်းမီးလၢႆၼႃႈ (Dimensions) ၶႃႈ။



```csharp
// 1. ပိုၼ်ၽၢဝ်ႇ 2D Array (2 ထႅဝ်၊ 3 တႅဝ်း)
int[,] matrix = new int[2, 3];

// 2. ပၼ်ၵႃႈၶၼ်ၵမ်းလဵဝ်
int[,] grid = {
    { 1, 2, 3 }, // ထႅဝ် 0
    { 4, 5, 6 }  // ထႅဝ် 1
};
```

### 2. ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးၸႂ်ႉ (Accessing)
ႁဝ်းတေလႆႈၸႂ်ႉမၢႆၼပ်ႉ Index **2 တူဝ်** (Row Index လႄႈ Column Index) ၶႃႈ။

```csharp
Console.WriteLine(grid[0, 1]); // ၽွၼ်းလႆႈ: 2 (ထႅဝ် 0, တႅဝ်း 1)
grid[1, 2] = 99;              // လႅၵ်ႈလၢႆႈ 6 ႁႂ်ႈပဵၼ် 99
```

### 3. ၵၢၼ်ပၼ်ႇတူင်ႇ (Iterating) ၼႂ်း 2D Array
တႃႇတေဢၢၼ်ႇလူ 2D Array ႁဝ်းတေလႆႈၸႂ်ႉ **Nested Loops** (Loop သွၼ်ႉ Loop) ၶႃႈ။

```csharp
int[,] table = { { 1, 2 }, { 3, 4 } };

// GetLength(0) ၼႆႉပဵၼ် ႁူဝ်ၼပ်ႉ ထႅဝ် (Rows)
for (int i = 0; i < table.GetLength(0); i++) 
{
    // GetLength(1) ၼႆႉပဵၼ် ႁူဝ်ၼပ်ႉ လႅၼ်း (Columns)
    for (int j = 0; j < table.GetLength(1); j++) 
    {
        Console.Write(table[i, j] + " ");
    }
    Console.WriteLine(); // ပေႃးယဝ်ႉၼိုင်ႈထႅဝ် ႁႂ်ႈလူင်းထႅဝ်မႂ်ႇ
}
```

### 4. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ?
* **Excel Sheet:** ၶေႃႈမုၼ်းဢၼ်မီး ထႅဝ် လႄႈ တႅဝ်း။
* **Game Map:** တီႈယူႇၶွင် Player ၼႂ်းလွၵ်း 2D (x, y)။
* **Image Processing:** ႁၢင်ႈၾၢင်ဢၼ်မီး မၢႆသီ (Pixel) လၢႆထႅဝ် လၢႆတႅဝ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **2D Array:** Array ဢၼ်မီး 2 Dimensions (Rows & Columns)။
* **Row:** ထႅဝ် (ၼႃႈၼွၼ်း)။
* **Column:** တႅဝ်း (ၼႃႈတင်ႈ)။
* **Matrix:** ၸိုဝ်ႈတၢင်းပၢႆးၼပ်ႉ တႃႇႁွင်ႉၸုမ်းမၢႆၼပ်ႉ ဢၼ်မီးႁၢင်ႈၾၢင်သီႇၸဵင်ႇ။
* **GetLength():** Method ဢၼ်ၸႂ်ႉတႃႇထၢမ်ႁူဝ်ၼပ်ႉ Elements ၼႂ်း Dimension ဢၼ်ႁဝ်းလူဝ်ႇ။

---