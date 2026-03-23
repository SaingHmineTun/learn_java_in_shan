# Lesson 176: "Exercise: Shan String Utility"

### 1. ဝၢင်းၽႅၼ် Toolkit (The Plan)
ႁဝ်းတေထႅမ် Method ၸူး `string` 3 ဢၼ်:
1.  **`ToShanGreeting()`**: ဢဝ်ၸိုဝ်ႈမႃး သေထႅမ် "မႂ်ႇသုင်ၶႃႈ၊ " ဝႆႉၽၢႆႇၼႃႈ။
2.  **`RemoveNumbers()`**: လူတ်ႇပႅတ်ႈတူဝ်ၼပ်ႉ (0-9) တင်းမူတ်းၼႂ်းလိၵ်ႈ။
3.  **`IsLongText()`**: ၵူတ်ႇထတ်းဝႃႈ လိၵ်ႈၼၼ်ႉယၢဝ်းလိူဝ် 20 တူဝ်လိၵ်ႈႁႃႉ?

### 2. တႅမ်ႈ Code (The Library)

```csharp
using System;
using System.Text.RegularExpressions;

namespace Shan.Utilities {
    // 1. တေလႆႈပဵၼ် static class
    public static class ShanStringExtensions {
        
        // Extension Method 1: Greeting
        public static string ToShanGreeting(this string name) {
            if (string.IsNullOrWhiteSpace(name)) return "မႂ်ႇသုင်ၶႃႈ!";
            return $"မႂ်ႇသုင်ၶႃႈ၊ {name}!";
        }

        // Extension Method 2: Clean numbers
        public static string RemoveNumbers(this string text) {
            // ၸႂ်ႉ Regex တႃႇႁႃတူဝ်ၼပ်ႉသေတႅၼ်းလူၺ်ႈ "" (ဢမ်ႇမီးသင်)
            return Regex.Replace(text, @"\d", "");
        }

        // Extension Method 3: Length check
        public static bool IsLongText(this string text, int limit = 20) {
            return text.Length > limit;
        }
    }
}
```

### 3. ၵၢၼ်ၸႂ်ႉတႄႉ (The Implementation)

```csharp
using System;
using Shan.Utilities; // 2. တေလႆႈ 'using' namespace ၸင်ႇတေႁၼ် Extension

class Program {
    static void Main() {
        string userName = "Sai Mao 2026";
        
        // ၸၢမ်းၸႂ်ႉ RemoveNumbers
        string cleanedName = userName.RemoveNumbers().Trim();
        
        // ၸၢမ်းၸႂ်ႉ ToShanGreeting (Fluent Style)
        string greeting = cleanedName.ToShanGreeting();
        
        Console.WriteLine($"Original: {userName}");
        Console.WriteLine($"Result: {greeting}");

        // ၸၢမ်းၸႂ်ႉ IsLongText
        string post = "ၼႆႉပဵၼ်လိၵ်ႈတႆး ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ တႃႇၸၢမ်းတူၺ်း Extension Methods ၶႃႈဢေႃႈ။";
        if (post.IsLongText()) {
            Console.WriteLine("Warning: This post is too long!");
        }
    }
}
```



---

### လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Code Reuse**: ႁဝ်းတႅမ်ႈ Logic တႃႇ `RemoveNumbers` ၵမ်းလဵဝ်ၵူၺ်း၊ သေၸႂ်ႉလႆႈတင်း `string` ၵူႈတူဝ်ၼႂ်း App ၶႃႈ။
* **Readability**: Code မိူၼ်ၼင်ႇ `userName.RemoveNumbers().ToShanGreeting()` ၼၼ်ႉ လူလိၵ်ႈငၢႆႈလိူဝ် `ShanHelper.Greet(ShanHelper.Clean(userName))` ၼမ်ၶႃႈ။
* **Namespace Isolation**: ႁဝ်းၸၢင်ႈႁပ်ႉဢဝ် (Import) "ၶိူင်ႈမိုဝ်း" ၸိူဝ်းၼႆႉမႃးၸႂ်ႉ ၵူၺ်းတီႈဢၼ်ႁဝ်းလူဝ်ႇၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **String Manipulation**: ၵၢၼ်မႄး/လႅၵ်ႈလၢႆႈ တူဝ်လိၵ်ႈ။
* **Regular Expressions (Regex)**: ပိူင်ႁႃတူဝ်လိၵ်ႈ ၸွမ်းၼင်ႇပၵ်းၵၢၼ်ဢၼ်မၵ်းမၼ်ႈဝႆႉ။
* **Namespace Import**: ၵၢၼ်ႁွင်ႉ Namespace မႃးၸႂ်ႉလူၺ်ႈ Keyword `using`။
* **Parameter Default Value**: ၵႃႈၶၼ်ဢၼ်ပၼ်ဝႆႉဢွၼ်တၢင်း (`limit = 20`)။

---