# Lesson 174: "Extending Built-in Types"

ၵၢၼ်ထႅမ် Extension Methods ၸူး Built-in Types ၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈ Code လႆႈဝႆး လႄႈ လူလိၵ်ႈငၢႆႈလိူဝ်ၵဝ်ႇၶႃႈ။

### 1\. Extending `string` (ၵၢၼ်မႄးလိၵ်ႈ)

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈမီး Method တႃႇ "ၼပ်ႉတူဝ်လိၵ်ႈ" ၼႂ်း String ဢၼ်ဢမ်ႇၼပ်ႉပႃး "တီႈလွၵ်ႇ" (Spaces)။

```csharp
public static class StringExtensions {
    public static int CountNoSpaces(this string text) {
        return text.Replace(" ", "").Length;
    }
}

// Usage:
string msg = "Mai Sung Kha";
Console.WriteLine(msg.CountNoSpaces()); // ဢွၵ်ႇ: 10 (ဢမ်ႇၼပ်ႉ Space 2 တီႈ)
```

### 2\. Extending `int` (ၵၢၼ်ၼပ်ႉဢၢၼ်ႇ)

ႁဝ်းၸၢင်ႈထႅမ် Logic တႃႇၵူတ်ႇထတ်း တူဝ်ၼပ်ႉလႆႈငၢႆႈๆ ၶႃႈ။

```csharp
public static class IntExtensions {
    public static bool IsEven(this int number) {
        return number % 2 == 0;
    }
}

// Usage:
int age = 25;
if (age.IsEven()) { 
    Console.WriteLine("Even Number"); 
}
```

### 3\. Extending `List<T>` (ၵၢၼ်ၸတ်းၵၢၼ်သဵၼ်ႈမၢႆ)

ၼႆႉပဵၼ်တွၼ်ႈဢၼ် "Powerful" သုတ်းၶႃႈ။ ႁဝ်းၸၢင်ႈထႅမ် Method ၸူး List ၵူႈပိူင်လႆႈ (Generic Extension)။

```csharp
public static class ListExtensions {
    // ထႅမ် Method 'ShowAll' ၸူး List ၵူႈပိူင် <T>
    public static void ShowAll<T>(this List<T> list) {
        foreach (var item in list) {
            Console.WriteLine($"- {item}");
        }
    }
}

// Usage:
List<string> names = new List<string> { "Sai", "Nang", "Mao" };
names.ShowAll(); // ဢွၵ်ႇၼႄၸိုဝ်ႈတင်းမူတ်းၵမ်းလဵဝ်
```

-----

### 4\. ႁဵတ်းသင်ၸင်ႇလီလိူဝ် (Benefits)

1.  **Fluent API:** Code ႁဝ်းတေလႅၼ်ႈၵႂႃႇမိူၼ် "သၢႆၼမ်ႉ" (မိူၼ်ၼင်ႇ: `text.Clean().Format().Print()`)။
2.  **Domain Specific:** ႁဝ်းၸၢင်ႈမႄး Built-in Types ႁႂ်ႈမၼ်း "ၶဝ်ႈၵၼ်" တင်းၼႃႈၵၢၼ် (Shan Community) ႁဝ်းလႆႈၶႃႈ။
3.  **No Wrapper Needed:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Class မႂ်ႇတႃႇႁေႃႇ `string`၊ ႁဝ်းမႄး `string` တူဝ်မၼ်းၵမ်းလဵဝ်လႆႈယဝ်ႉၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Built-in Types:** Data Types ပိုၼ်ႉထၢၼ် ဢၼ်မီးဝႆႉယဝ်ႉၼႂ်း Language (int, string, bool)။
* **Generic Extension:** Extension Method ဢၼ်ၸႂ်ႉလႆႈတင်း Object လၢႆလၢႆပိူင် (`List<T>`)။
* **Fluent Syntax:** လၢႆးတႅမ်ႈ Code ဢၼ်ႁွင်ႉ Method သိုပ်ႇၵၼ်လႆႈငၢႆႈๆ။
* **Utility Library:** ႁေႃႇ Code ဢၼ်ၸွႆးထႅမ် "ၼႃႈတီႈပိုၼ်ႉထၢၼ်"။

-----