# Lesson 68: "The Array.Length and Boundary Safety"

မိူဝ်ႈႁဝ်းမီး Array ဢၼ်ၼိုင်ႈ၊ ႁဝ်းလူဝ်ႇႁူႉဝႃႈမၼ်းမီး "လၢႆလွၵ်း" တႃႇတေဢၢၼ်ႇလူၶေႃႈမုၼ်းလႆႈလီၶႃႈ။

### 1. Array.Length Property
ၼႂ်း C#၊ Array ၵူႈဢၼ်မီးၵႃႈၶၼ် **`.Length`** ဢၼ်တေလၢတ်ႈၼႄႁူဝ်ၼပ်ႉၶေႃႈမုၼ်း (Elements) တင်းမူတ်းဢၼ်မီးၼႂ်းမၼ်းၶႃႈ။

```csharp
string[] fruits = { "Apple", "Banana", "Cherry" };
int size = fruits.Length; 

Console.WriteLine(size); // ၽွၼ်းလႆႈ: 3
```

### 2. ၵၢၼ်ၼပ်ႉ Index လႄႈ Length (Boundary Safety)
ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လူဝ်ႇၾၢင်ႉသေပိူၼ်ႈၶႃႈ:
* **Length:** တေတႄႇၼပ်ႉလုၵ်ႉတီႈ **1** (မီး 3 ဢၼ်ၵေႃႈဝႃႈ 3)။
* **Index:** သမ်ႉတႄႇၼပ်ႉလုၵ်ႉတီႈ **0**။
* **လွင်ႈတၢတ်းၵၼ်:** မၢႆၼပ်ႉ (Index) ဢၼ်သုတ်းပၢႆမၼ်း တေပဵၼ် **`Length - 1`** တႃႇသေႇၶႃႈ။



### 3. Boundary Safety (ၵၢၼ်ၵႅတ်ႇၶႄ Error)
မိူဝ်ႈပႆႇႁွင်ႉၸႂ်ႉမၢႆၼပ်ႉ Index ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီၵူတ်ႇထတ်းဝႃႈ မၼ်းပူၼ်ႉၶွပ်ႇၵင်ႈ (Boundary) ႁႃႉ?

```csharp
int[] numbers = { 10, 20, 30 };
int i = 3; // ႁဝ်းၶႂ်ႈႁွင်ႉၸႂ်ႉ Index 3

if (i < numbers.Length) 
{
    Console.WriteLine(numbers[i]);
} 
else 
{
    Console.WriteLine("Error: Index is out of bounds!"); 
}
```
*(ၼႂ်းတူဝ်ယင်ႇၼႆႉ Index ဢၼ်မီးတႄႉပဵၼ် 0, 1, 2။ ပေႃးႁွင်ႉ 3 မၼ်းတေၼႄ Error ၶႃႈ)*

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Property:** ၵႃႈၶၼ်ဢၼ်ၵိုၵ်းဝႆႉတင်း Object (မိူၼ်ၼင်ႇ .Length)။
* **Boundary:** ၶွပ်ႇၵင်ႈ ဢမ်ႇၼၼ် တီႈသုတ်းၶွင် Array။
* **Out of Bounds:** ၵၢၼ်ႁွင်ႉၸႂ်ႉမၢႆၼပ်ႉဢၼ်ယူႇၽၢႆႇၼွၵ်ႈၶွပ်ႇၵင်ႈ။
* **Safety Check:** ၵၢၼ်ၵူတ်ႇထတ်း Logic ဢွၼ်တၢင်းပႆႇႁဵတ်းၵၢၼ် တႃႇၵႅတ်ႇၶႄ Error။
* **Index-Length Offset:** လွင်ႈပႅၵ်ႇၵၼ် 1 တူဝ် ၼႂ်းၵၢၼ်ၼပ်ႉ Index လႄႈ Length။

---