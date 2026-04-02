# Lesson 205: "Built-in Delegates"

ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `public delegate ...` ႁင်းၵူၺ်းယဝ်ႉ၊ ႁဝ်းလိူၵ်ႈၸႂ်ႉသၢမ်ပိူင်ၼႆႉ ၸွမ်းၼင်ႇၼႃႈၵၢၼ်မၼ်းၶႃႈ။

### 1. Action (တႃႇ Method ဢၼ်ဢမ်ႇသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇ)

**`Action`** ၸႂ်ႉတႃႇ Method ဢၼ်ပဵၼ် **`void`** ၵူၺ်းၶႃႈ။ မၼ်းၸၢင်ႈႁပ်ႉ Parameter လႆႈတႄႇတီႈ 0 တေႃႇ 16 တူဝ်ၶႃႈ။

* **ပိူင်သၢင်ႈ:** `Action<int, string>` (ႁပ်ႉ int လႄႈ string၊ သူင်ႇဢွၵ်ႇ void)။


```csharp
// တႅၼ်းဢၼ်တေတႅမ်ႈ delegate void... ႁဝ်းၸႂ်ႉ Action လႆႈၵမ်းလဵဝ်
Action<string> printShan = msg => Console.WriteLine($"Shan: {msg}");
printShan("မႂ်ႇသုင်ၶႃႈ");
```

### 2. Func<T, TResult> (တႃႇ Method ဢၼ်သူင်ႇၵႃႈၶၼ်ဢွၵ်ႇ)

**`Func`** ၸႂ်ႉတႃႇ Method ဢၼ်မီး **`return`** ၶႃႈ။ တူဝ်လင်သုတ်းၼႂ်း `< >` တေပဵၼ် Return Type တႃႇသေႇၶႃႈ။

* **ပိူင်သၢင်ႈ:** `Func<int, int, int>` (ႁပ်ႉ int 2 တူဝ်၊ သူင်ႇဢွၵ်ႇ int 1 တူဝ်)။


```csharp
// ႁပ်ႉ int 2 တူဝ်၊ သူင်ႇဢွၵ်ႇ int (တူဝ်လင်သုတ်း)
Func<int, int, int> addFunc = (a, b) => a + b;
int result = addFunc(10, 20); // 30
```

### 3. Predicate<T> (တႃႇၵူတ်ႇထတ်း True/False)

**`Predicate`** ပဵၼ် Func ပိူင်ၼိုင်ႈ ဢၼ်သူင်ႇဢွၵ်ႇ **`bool`** တႃႇသေႇၶႃႈ။ 
ၵႆႉၸႂ်ႉတႃႇ "ၵူတ်ႇထတ်း" (Validation) ဢမ်ႇၼၼ် "ႁႃၶေႃႈမုၼ်း" (Filtering) ၶႃႈ။

* **ပိူင်သၢင်ႈ:** `Predicate<int>` (ႁပ်ႉ int၊ သူင်ႇဢွၵ်ႇ bool)။


```csharp
Predicate<int> isAdult = age => age >= 18;
Console.WriteLine(isAdult(20)); // True
```

-----

### ပၵ်းၵၢၼ်တႅၵ်ႈၵၼ် (Comparison Table)

| Built-in Delegate | Return Type | Usage (ၵၢၼ်ၸႂ်ႉ)                                        |
| :--- | :--- |:--------------------------------------------------------|
| **Action** | `void` (ဢမ်ႇမီး) | ႁဵတ်းၼႃႈၵၢၼ်လႄႈ ဢမ်ႇသူင်ႇသင်ပၼ်ၶိုၼ်း (မိူၼ်ၼင်ႇ Print) |
| **Func** | မီး (TResult) | ၼပ်ႉသွၼ်ႇ သေသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃး                         |
| **Predicate** | `bool` | ၵူတ်ႇထတ်းငဝ်းလၢႆး (True/False)                          |

### ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?

1.  **Readability:** Code ႁဝ်းလူငၢႆႈလိူဝ်ၵဝ်ႇ ယွၼ်ႉ Developer ၵူႈၵေႃႉႁူႉၸၵ်းပၵ်းၵၢၼ် 3 တူဝ်ၼႆႉဝႆႉယဝ်ႉ။
2.  **Less Code:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Custom Delegate လၢႆလၢႆထႅဝ်။
3.  **LINQ Support:** ပဵၼ်ပိုၼ်ႉထၢၼ် ဢၼ်ၸႂ်ႉၼႂ်းၵၢၼ်ႁႃၶေႃႈမုၼ်း (LINQ) ဢၼ်ႁဝ်းတေႁဵၼ်းတွၼ်ႈၼႃႈၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Built-in Delegate:** Delegate ဢၼ်မီးဝႆႉၼႂ်း System Namespace ယဝ်ႉတူဝ်ႈ။
* **Encapsulation:** ၵၢၼ်ႁေႃႇ Method ဝႆႉၼႂ်း Delegate ဢၼ်မီးပၵ်းၵၢၼ်တႅတ်ႉတေႃး။
* **TResult:** တူဝ်တႅၼ်း Type ဢၼ်တေသူင်ႇဢွၵ်ႇမႃး (Output)။
* **Predicate Logic:** လၢႆးဝူၼ်ႉဢၼ်ၵူတ်ႇထတ်းဝႃႈ "မႅၼ်ႈ" ဢမ်ႇၼၼ် "ၽိတ်း"။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanShopLogic`**။

1.  ၸႂ်ႉ **`Func<int, double>`** တႃႇတႅမ်ႈ Method ဢၼ်ႁပ်ႉ "ၵႃႈၶၼ်" (int) သေသူင်ႇ "Discount 10%" (double) ဢွၵ်ႇမႃး။
2.  ၸႂ်ႉ **`Action<string>`** တႃႇၼႄၶေႃႈၵႂၢမ်း "Promotion Applied: [Name]"။
3.  ၸႂ်ႉ **`Predicate<int>`** တႃႇၵူတ်ႇထတ်းဝႃႈ "ၵႃႈၶၼ် ယႂ်ႇလိူဝ် 1000 ႁႃႉ?"။
