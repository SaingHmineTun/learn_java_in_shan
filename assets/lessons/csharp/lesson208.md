# Lesson 208: "Statement Lambdas vs. Expression Lambdas"

Lambda Expressions ၼႂ်း C# မီးသွင်ပိူင်လူင် ၸွမ်းၼင်ႇတၢင်းၼမ်ၶွင် Code ဢၼ်ႁဝ်းတႅမ်ႈၼၼ်ႉၶႃႈ။

### 1. Expression Lambdas (လၢႆးတႅမ်ႈပွတ်း)
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ ဢၼ်မီး Logic **ၼိုင်ႈထႅဝ် (Single Expression)** ၵူၺ်းၶႃႈ။ 
ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `{ }` လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `return` ၶႃႈ။

* **ပိူင်သၢင်ႈ:** `(input) => expression`
* **တူဝ်ယင်ႇ:** `x => x * 2` (မၼ်းတေ Return ၽွၼ်းလႆႈဢွၵ်ႇမႃးႁင်းၵူၺ်း)

### 2. Statement Lambdas (လၢႆးတႅမ်ႈယၢဝ်း)
ၼႆႉသမ်ႉ ၸႂ်ႉမိူဝ်ႈႁဝ်းမီး Logic **လၢႆလၢႆထႅဝ် (Multiple Statements)** ၶႃႈ။ 
ႁဝ်းတေလႆႈၸႂ်ႉ **Curly Braces `{ }`** သေ တေလႆႈတႅမ်ႈ **`return`** ႁင်းၵူၺ်း (သင်မၼ်းပဵၼ် Func) ၶႃႈ။

* **ပိူင်သၢင်ႈ:** `(input) => { statements; }`
* **တူဝ်ယင်ႇ:**
  ```csharp
  (x) => {
      int result = x * 2;
      Console.WriteLine($"Result is {result}");
      return result;
  }
  ```



### 3. ပၵ်းၵၢၼ်တႅၵ်ႈၵၼ် (Comparison Table)

| Feature | Expression Lambda | Statement Lambda |
| :--- | :--- | :--- |
| **တၢင်းၼမ် Code** | ၼိုင်ႈထႅဝ်ၵူၺ်း | လၢႆလၢႆထႅဝ် |
| **Braces `{ }`** | ဢမ်ႇလူဝ်ႇၸႂ်ႉ | **တေလႆႈၸႂ်ႉ** |
| **Return Keyword** | ဢမ်ႇလူဝ်ႇတႅမ်ႈ (Implicit) | **တေလႆႈတႅမ်ႈ** (သင်မီး return) |
| **ၵၢၼ်ၸႂ်ႉတႄႉ** | ၸႂ်ႉၼမ်ၼႂ်း LINQ | ၸႂ်ႉမိူဝ်ႈလူဝ်ႇႁဵတ်း Logic ယုင်ႈယၢင်ႈ |

### 4. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႅၵ်ႇသွင်ပိူင်
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ App **"Shan Messenger"** တႃႇၵူတ်ႇထတ်းၶေႃႈၵႂၢမ်းၶႃႈ။

```csharp
// 1. Expression Lambda (ပွတ်း)
Func<string, bool> isShort = msg => msg.Length < 5;

// 2. Statement Lambda (ယၢဝ်း)
Func<string, bool> isValidShan = msg => {
    Console.WriteLine($"Checking: {msg}");
    if (string.IsNullOrWhiteSpace(msg)) return false;
    return msg.Length > 2;
};

Console.WriteLine(isShort("တႆး")); // True
Console.WriteLine(isValidShan("မိူင်းတႆး")); // True
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Expression Body:** တွၼ်ႈ Logic ဢၼ်ပွတ်းသေ မီးထႅဝ်လဵဝ်ၵူၺ်း။
* **Statement Block:** တွၼ်ႈ Logic ဢၼ်ယူႇၼႂ်း `{ }` သေမီးလၢႆလၢႆထႅဝ်။
* **Implicit Return:** ၵၢၼ်ဢၼ် Compiler ႁူႉလႆႈဝႃႈ တေလႆႈသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃး ဢဝ်ႁင်းၵူၺ်း။
* **Explicit Return:** ၵၢၼ်ဢၼ်ႁဝ်းတေလႆႈတႅမ်ႈ `return` ပၼ်မၼ်းတႅတ်ႉတေႃး။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁၸၢမ်းတႅမ်ႈ Code **`ShanCalculatorComplex`**။
1.  သၢင်ႈ **`Func<int, int, int>`** ၸိုဝ်ႈဝႃႈ `complexAdd`။
2.  ၸႂ်ႉ **Statement Lambda** (ၸႂ်ႉ `{ }`)။
3.  ၼႂ်းၼၼ်ႉ ႁႂ်ႈ `Console.WriteLine` ၼႄတူဝ်ၼပ်ႉတင်းသွင်တူဝ် ဢွၼ်တၢင်း သေၸင်ႇၵွႆႈ `return` ၽွၼ်းလႆႈ (a + b) ဢွၵ်ႇမႃးၶႃႈ။
