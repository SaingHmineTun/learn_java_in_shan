# Lesson 207: "Lambda Expressions: The Modern '=>' Syntax"

**Lambda Expression** ပဵၼ်လၢႆးတႅမ်ႈ "Method ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ" ဢၼ်ၸႂ်ႉ Syntax ပွတ်းပွတ်း။ 
ႁဝ်းၸႂ်ႉ Operator **`=>`** (ဢၼ်ႁွင်ႉဝႃႈ **Goes to**) တႃႇၸႅၵ်ႇ Parameter လႄႈ Logic ဢွၵ်ႇၵၼ်ၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Conciseness:** တႅမ်ႈ Code ဢေႇလိူဝ်ၵဝ်ႇၼမ်တႄႉတႄႉ (ဢမ်ႇလူဝ်ႇတႅမ်ႈ `delegate` keyword, `{ }`, ဢမ်ႇၼၼ် `return` တႃႇငဝ်းလၢႆးမၢင်လွင်ႈ)။
2.  **Readability:** ႁဵတ်းႁႂ်ႈ Code လူငၢႆႈ လႄႈ ပွင်ႇၸႂ်လွင်ႈတၢင်းမၼ်းလႆႈဝႆး။
3.  **LINQ Essential:** သင်ႁဝ်းဢမ်ႇမီး Lambda... ႁဝ်းတေဢမ်ႇၸၢင်ႈၸႂ်ႉ LINQ (ၵၢၼ်ႁႃၶေႃႈမုၼ်း) လႆႈလီၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax Evolution)

ဝူၼ်ႉတူၺ်းၵၢၼ်တႅမ်ႈ Method ဢၼ်ဢဝ်တူဝ်ၼပ်ႉမႃး "ႁဵတ်းပုၼ်ႈ" (Square) ၶႃႈ:

* **Standard Method:**
  ```csharp
  int Square(int x) { return x * x; }
  ```
* **Anonymous Method (C# 2.0):**
  ```csharp
  delegate(int x) { return x * x; }
  ```
* **Lambda Expression (C# 3.0+):**
  ```csharp
  x => x * x
  ```



### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႂ်ႉ Lambda တႄႉတႄႉ
ႁဝ်းမႃးတူၺ်းလၢႆးၸႂ်ႉတင်း **`Func`** လႄႈ **`Action`** ၶႃႈ:

```csharp
// 1. ၸႂ်ႉတင်း Func (မီး return)
Func<int, int> square = x => x * x;
Console.WriteLine(square(5)); // 25

// 2. ၸႂ်ႉတင်း Action (void)
Action<string> greet = name => Console.WriteLine($"မႂ်ႇသုင်, {name}!");
greet("တႆး"); // မႂ်ႇသုင်, တႆး!

// 3. ၸႂ်ႉတင်း Parameter လၢႆဢၼ်
Func<int, int, int> add = (a, b) => a + b;
Console.WriteLine(add(10, 5)); // 15
```

### 4. ပၵ်းၵၢၼ်တႅမ်ႈ Lambda ဢၼ်လူဝ်ႇတွင်း
* **Input Parameters:** ဝႆႉၽၢႆႇသၢႆႉၶွင် `=>`။ သင်မီးတူဝ်လဵဝ် ဢမ်ႇလူဝ်ႇသႂ်ႇ `( )` ၵေႃႈလႆႈ။
* **Lambda Operator:** `=>` (Goes to)။
* **Body:** ဝႆႉၽၢႆႇၶႂႃ။ သင်မီးထႅဝ်လဵဝ် ဢမ်ႇလူဝ်ႇသႂ်ႇ `{ }` လႄႈ `return` ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Lambda Expression:** ပိူင်သၢင်ႈ Code ပွတ်းပွတ်း ဢၼ်တႅၼ်းတူဝ် Anonymous Method။
* **Goes To Operator (`=>`):** တူဝ်ၸႅၵ်ႇ Parameter လႄႈ Expression။
* **Type Inference:** ၵၢၼ်ဢၼ် Compiler ႁူႉလႆႈႁင်းၵူၺ်းဝႃႈ Variable ၼၼ်ႉပဵၼ် Type သင် (ဢမ်ႇလူဝ်ႇတႅမ်ႈ `int x` ၵူၺ်းတႅမ်ႈ `x` ၵေႃႈလႆႈ)။
* **Expression Body:** တွၼ်ႈ Logic ဢၼ်မီးထႅဝ်လိၵ်ႈလဵဝ် ၽၢႆႇၶႂႃၶွင် lambda။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ Code **`ShanListFilter`**။
1.  သၢင်ႈ `List<int> numbers = new List<int> { 1, 5, 10, 15, 20 };`။
2.  ၸႂ်ႉ Method **`numbers.FindAll(...)`**။
3.  ၼႂ်း `(...)` ၼၼ်ႉ ႁႂ်ႈၸႂ်ႉ **Lambda Expression** တႃႇႁႃတူဝ်ၼပ်ႉဢၼ် "ယႂ်ႇလိူဝ် 10" ၶႃႈ။
