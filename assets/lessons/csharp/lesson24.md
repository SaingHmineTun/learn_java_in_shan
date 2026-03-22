# Lesson 24: "Implicit Type Casting" (ၵၢၼ်ပိၼ်ႇ Type ႁင်းမၼ်း)

**Type Casting** ၼႆႉပဵၼ်ၵၢၼ်ဢဝ်ၵႃႈၶၼ် (Value) တီႈ Data Type ၼိုင်ႈဢၼ် ပိၼ်ႇႁႂ်ႈပဵၼ် Data Type ၼိုင်ႈဢၼ်ယဝ်ႉ။ 
**Implicit Casting** သမ်ႉပဵၼ်ၵၢၼ်ပိၼ်ႇဢၼ် "မၢၼ်ႇမႅၼ်ႈတႃႇသေႇ" သေ Compiler ႁဵတ်းပၼ်ႁင်းမၼ်း (Automatically) ဢေႃႈ။

### 1. Widening Conversion (ၵၢၼ်လၢၵ်ႈၵႂၢင်ႈ)
မိူဝ်ႈႁဝ်းဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ **"ၵွၵ်းလဵၵ်း"** ၵႂႃႇသႂ်ႇၼႂ်း **"ၵွၵ်းယႂ်ႇ"** ၼၼ်ႉ
ယွၼ်ႉဝႃႈၶေႃႈမုၼ်းတေဢမ်ႇႁၢႆလႄႈ (No data loss)
Compiler တေႁဵတ်းပၼ်ႁင်းမၼ်းယဝ်ႉ။
လွင်ႈၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ Implicit Casting ၼႆယဝ်ႉ။


* **ပိူင်လၢႆးမၼ်း:** `byte` -> `short` -> `int` -> `long` -> `float` -> `double`

### 2. တူဝ်ယင်ႇ Code
မိူဝ်ႈႁဝ်းဢဝ် `int` (4 bytes) ၵႂႃႇသႂ်ႇၼႂ်း `double` (8 bytes)၊ C# တေႁပ်ႉဢဝ်ၵမ်းလဵဝ် သေဢမ်ႇလူဝ်ႇသင်ႇသင်ၶႃႈ။

```csharp
int myInt = 100;
double myDouble = myInt; // Automatic casting: int to double

Console.WriteLine(myInt);    // Output: 100
Console.WriteLine(myDouble); // Output: 100
```


### 3. ႁဵတ်းသင်လႄႈမၼ်းႁဵတ်းပၼ်ႁင်းမၼ်း?
ယွၼ်ႉဝႃႈ `double` မၼ်းယႂ်ႇသေ `int`။ မၢႆၼပ်ႉ 100 ၼၼ်ႉ ယူႇၼႂ်း `int` ၵေႃႈလႆႈ၊ ယူႇၼႂ်း `double` ၵေႃႈလႆႈ။ မၼ်းဢမ်ႇမီးၶေႃႈမုၼ်းသင်တေႁၢႆ (Safe)၊ လႄႈ Compiler ၸင်ႇႁဵတ်းပၼ်ႁင်းမၼ်းဢေႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Type Casting:** ၵၢၼ်ပိၼ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ Type ၼိုင်ႈ ၵႂႃႇၸူးထႅင်ႈ Type ၼိုင်ႈ။
* **Implicit:** လွင်ႈဢၼ်ႁဵတ်းပၼ်ႁင်းမၼ်း (Automatic) သေ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code သင်ႇမၼ်းတႅတ်ႉတႅတ်ႉ။
* **Widening:** ၵၢၼ်လၢၵ်ႈၵႂၢင်ႈ (ဢဝ်တီႈလဵၵ်း ၵႂႃႇသႂ်ႇတီႈယႂ်ႇ)။
* **Data Loss:** လွင်ႈႁၢႆလၢႆၶွင်ၶေႃႈမုၼ်း (Implicit casting တေဢမ်ႇႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းႁၢႆ)။

---