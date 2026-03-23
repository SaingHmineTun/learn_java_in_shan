# Lesson 180: "List Operations"

C# ပၼ် Method ၸွႆးထႅမ် (Built-in Methods) မႃးၼမ်ၼႃႇ ဢၼ်ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Algorithm ယုင်ႈယၢင်ႈႁင်းၵူၺ်းၶႃႈ။

### 1. ၵၢၼ်ၸတ်းထႅဝ် (Sorting and Reversing)
* **`.Sort()`**: ၸတ်းၶေႃႈမုၼ်း ၸွမ်းၼင်ႇတူဝ်လိၵ်ႈ (A-Z) ဢမ်ႇၼၼ် တူဝ်ၼပ်ႉ (0-9)။
* **`.Reverse()`**: ပိၼ်ႇသဵၼ်ႈမၢႆ ဢဝ်တူဝ်လင်သုတ်း မႃးဝႆႉတူဝ်ၼႃႈသုတ်း။

```csharp
List<string> fruits = new List<string> { "Mango", "Apple", "Banana" };

fruits.Sort();    // ယၢမ်းလဵဝ်ပဵၼ်: Apple, Banana, Mango
fruits.Reverse(); // ယၢမ်းလဵဝ်ပဵၼ်: Mango, Banana, Apple
```

### 2. ၵၢၼ်ႁႃၶေႃႈမုၼ်း (Finding Elements)
* **`.Contains(value)`**: ၵူတ်ႇထတ်းဝႃႈ မီးၶေႃႈမုၼ်းတူဝ်ၼၼ်ႉယူႇႁႃႉ? (True/False)
* **`.IndexOf(value)`**: ႁႃဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ ယူႇတီႈ Index မၢႆၵမ်းလၢႆ? (သင်ဢမ်ႇႁၼ် တေသူင်ႇ -1)

```csharp
bool hasApple = fruits.Contains("Apple"); // true
int position = fruits.IndexOf("Banana");  // 1
```

### 3. ၵၢၼ်ႁႃလူၺ်ႈမီး "ပၵ်းၵၢၼ်" (Find with Lambda)
ၼႆႉပဵၼ်လၢႆးဢၼ် "Advanced" လိူဝ်ၵဝ်ႇ၊ ႁဝ်းၸႂ်ႉ **Lambda Expression `=>`** တႃႇမၵ်းမၼ်ႈဝႃႈ ႁဝ်းၶႂ်ႈႁႃၶေႃႈမုၼ်းဢၼ်မီး "ပိူင်ႁၢင်ႈ" ၸိူင်ႉႁိုဝ်ၶႃႈ။

* **`.Find()`**: ႁႃဢဝ်တူဝ်ဢွၼ်တၢင်းသုတ်း ဢၼ်မႅၼ်ႈၸွမ်းပၵ်းၵၢၼ်။
* **`.FindAll()`**: ႁႃဢဝ် "တင်းမူတ်း" ဢၼ်မႅၼ်ႈၸွမ်းပၵ်းၵၢၼ် သေသူင်ႇပဵၼ် List မႂ်ႇမႃး။

```csharp
List<int> numbers = new List<int> { 10, 25, 5, 40, 15 };

// ႁႃတူဝ်ဢၼ်ယႂ်ႇလိူဝ် 20 (တူဝ်ထီႉၼိုင်ႈၵူၺ်း)
int bigNumber = numbers.Find(n => n > 20); // 25

// ႁႃတူဝ်ဢၼ်ယႂ်ႇလိူဝ် 20 (တင်းမူတ်း)
List<int> allBigNumbers = numbers.FindAll(n => n > 20); // { 25, 40 }
```



---

### 4. ႁဵတ်းသင်ၸင်ႇလီလိူဝ်? (The Developer Choice)
1.  **Readability**: တႅမ်ႈ Code ထႅဝ်လဵဝ် ၵႄႈပၼ်ႁႃလႆႈ (ဢမ်ႇလူဝ်ႇ `for` loop ယၢဝ်းๆ)။
2.  **Accuracy**: ၸႂ်ႉ Standard Algorithm ဢၼ် Microsoft မၼ်ႈၸႂ်ဝႃႈမႅၼ်ႈ။
3.  **Flexibility**: ၸၢမ်းႁႃၶေႃႈမုၼ်း လူၺ်ႈပၵ်းၵၢၼ်လၢႆလၢႆပိူင်လႆႈငၢႆႈ (Domain Specific)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Lambda Expression (`=>`)**: လၢႆးတႅမ်ႈ Function ဢၼ်ပွတ်း လႄႈ ဢမ်ႇမီးၸိုဝ်ႈ (Anonymous)။
* **Predicate**: ပၵ်းၵၢၼ် ဢၼ်သူင်ႇ True ဢမ်ႇၼၼ် False တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်း။
* **In-place Sorting**: ၵၢၼ်ၸတ်းထႅဝ် တီႈၼႂ်း List တူဝ်ၵဝ်ႇၵမ်းလဵဝ် (ဢမ်ႇသၢင်ႈ List မႂ်ႇ)။
* **Linear Search**: လၢႆးႁႃၶေႃႈမုၼ်း လုၵ်ႉတႄႇၼႃႈ တေႃႇလင်။

---