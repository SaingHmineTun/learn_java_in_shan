# Lesson 86: "The 'out' Parameter: Returning Multiple Values"

မိူဝ်ႈႁဝ်းႁဵၼ်းလွင်ႈ `return` ၼၼ်ႉ ႁဝ်းႁူႉယဝ်ႉဝႃႈ Method ၼိုင်ႈဢၼ် သူင်ႇၵႃႈၶၼ်ၶိုၼ်းမႃးလႆႈ "ဢၼ်လဵဝ်" ၵူၺ်း။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈလႆႈၽွၼ်းလႆႈ 2-3 ဢၼ်ၼႆၸိုင် ႁဝ်းၸၢင်ႈၸႂ်ႉ **`out`** လႆႈၶႃႈ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?

**`out`** ၼႆႉ မၼ်းလၢတ်ႈၼႄ Method ၼၼ်ႉဝႃႈ: "Variable ဢၼ်ၵဝ်ပၼ်မႂ်းၵႂႃႇၼႆႉ ပဵၼ်တူဝ်ပဝ်ႇၵူၺ်း၊ ၵူၺ်းၵႃႈ သင်မႂ်းယဝ်ႉၵၢၼ်ယဝ်ႉ **မႂ်းတေလႆႈသႂ်ႇၵႃႈၶၼ်ပၼ်မၼ်း** ၼႆၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)

ႁဝ်းတေလႆႈသႂ်ႇၶေႃႈၵႂၢမ်း **`out`** ဝႆႉၽၢႆႇၼႃႈ Parameter လႄႈ Argument ၶႃႈ။

```csharp
class Program {
    static void Main() {
        int sum;
        int product;

        // ႁွင်ႉၸႂ်ႉ Method သေႁပ်ႉဢဝ်ၽွၼ်းလႆႈ 2 ဢၼ်
        Calculate(10, 5, out sum, out product);

        Console.WriteLine("Sum: " + sum);       // ၽွၼ်းလႆႈ: 15
        Console.WriteLine("Product: " + product); // ၽွၼ်းလႆႈ: 50
    }

    static void Calculate(int a, int b, out int s, out int p) {
        s = a + b; // တေလႆႈပၼ်ၵႃႈၶၼ်ပၼ် 's' ဢွၼ်တၢင်းတေယဝ်ႉ
        p = a * b; // တေလႆႈပၼ်ၵႃႈၶၼ်ပၼ် 'p' ဢွၼ်တၢင်းတေယဝ်ႉ
    }
}
```

### 3. 'ref' vs 'out' ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်?

| Feature | `ref`                                             | `out` |
| :--- |:--------------------------------------------------| :--- |
| **Initial Value** | လူဝ်ႇပၼ်ၵႃႈၶၼ်တႄႇ (Initialize) ဢွၼ်တၢင်း ပႆႇသူင်ႇ | ဢမ်ႇလူဝ်ႇပၼ်ၵႃႈၶၼ်တႄႇၵေႃႈလႆႈ |
| **Inside Method** | မႄးလႅၵ်ႈလၢႆႈၵေႃႈလႆႈ ဢမ်ႇမႄးၵေႃႈလႆႈ                | **တေလႆႈ** ပၼ်ၵႃႈၶၼ်မႂ်ႇ ၵွၼ်ႇ Method တေယဝ်ႉ |
| **Direction** | Two-way (သူင်ႇၶဝ်ႈ လႄႈ မႄးဢွၵ်ႇ)                  | One-way (သူင်ႇဢွၵ်ႇမႃးၵူၺ်း) |

### 4. တူဝ်ယင်ႇၼႂ်း C#

ႁဝ်းၵႆႉႁၼ် `out` ၼႂ်း Method ဢၼ်ႁွင်ႉဝႃႈ **`int.TryParse()`** ၶႃႈ။

```csharp
string input = "123";
int result;
if (int.TryParse(input, out result)) {
    // ပေႃးပိၼ်ႈပဵၼ်မၢႆၼပ်ႉလႆႈ 'result' တေမီးၵႃႈၶၼ်
}
```

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Output Parameter:** Parameter ဢၼ်မီးဝႆႉတႃႇသူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇမႃး တီႈ Method။
* **out Keyword:** ၶေႃႈၵႂၢမ်းမၵ်းမၼ်ႈ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇလူၺ်း Reference။
* **TryParse:** Method ဢၼ်ပိၼ်ႇ မဵဝ်းၶေႃႈမုၼ်း (Type) လူၺ်ႈ ဢမ်ႇပၼ်ပဵၼ် Error။
* **Multiple Return Values:** လၢႆးလႆႈၽွၼ်းလႆႈၼမ်လိူဝ် 1 ဢၼ် တီႈ Method ဢၼ်လဵဝ်။

-----