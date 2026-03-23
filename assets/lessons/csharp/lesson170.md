# Lesson 170: "Static Constructors"

**Static Constructor** ၸႂ်ႉတႃႇ Initialize (ပၼ်ၵႃႈၶၼ်တႄႇဢွၼ်) ၶေႃႈမုၼ်း ဢၼ်ပဵၼ် `static` တင်းမူတ်း ၼႂ်း Class ၼိုင်ႈဢၼ်။ မၼ်းတေႁဵတ်းၵၢၼ် **ၵမ်းလဵဝ်ၵူၺ်း** တႃႇသေႇၶႃႈ။

### 1. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ ဢၼ်လူဝ်ႇမၢႆတွင်း
1.  **Automatic Call:** ၶူးဢမ်ႇၸၢင်ႈႁွင်ႉၸႂ်ႉမၼ်းလႆႈႁင်းၵူၺ်း။ .NET တေႁွင်ႉၸႂ်ႉမၼ်းပၼ် မိူဝ်ႈ Class ၼၼ်ႉ ထုၵ်ႇၸႂ်ႉၵမ်းဢွၼ်တၢင်းသုတ်း (မိူၼ်ၼင်ႇ `new` Object တူဝ်ဢွၼ်တၢင်းသုတ်း ဢမ်ႇၼၼ် ႁွင်ႉၸႂ်ႉ Static Member ၼိုင်ႈဢၼ်)။
2.  **No Parameters:** မၼ်းႁပ်ႉ Parameter ဢမ်ႇလႆႈၶႃႈ (ယွၼ်ႉပိူၼ်ႈႁွင်ႉၸႂ်ႉပၼ်ႁင်းၵူၺ်း၊ ႁဝ်းဢမ်ႇၸၢင်ႈသူင်ႇ Data ၶဝ်ႈၵႂႃႇ)။
3.  **No Access Modifiers:** ဢမ်ႇပၼ်သႂ်ႇ `public` ဢမ်ႇၼၼ် `private` ၼႃႈမၼ်းၶႃႈ။
4.  **Runs Only Once:** ဢမ်ႇဝႃႈတေ `new` Object 1,000 တူဝ်ၵေႃႈယဝ်ႉ... Static Constructor တေႁဵတ်းၵၢၼ် **ၵမ်းလဵဝ်ၵူၺ်း** မိူဝ်ႈ App တိုၵ်ႉပိုတ်ႇမႃးၼၼ်ႉၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတႅမ်ႈ Keyword `static` ဝႆႉၼႃႈၸိုဝ်ႈ Class ၼင်ႇၼႆၶႃႈ:

```csharp
public class ShanDatabase {
    public static string ConnectionString;

    // Static Constructor: ပၼ်ၵႃႈၶၼ် Class
    static ShanDatabase() {
        ConnectionString = "Server=ShanServer;Database=Main;";
        Console.WriteLine("Static Constructor: Database Configured!");
    }

    // Instance Constructor: ပၼ်ၵႃႈၶၼ် Object
    public ShanDatabase() {
        Console.WriteLine("Instance Constructor: Object Created!");
    }
}
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Complex Initialization:** မိူဝ်ႈ Static Field ႁဝ်းလူဝ်ႇလႅၼ်း Code ဢၼ်ယုင်ႈယၢင်ႈ ၸင်ႇတေလႆႈၵႃႈၶၼ်မၼ်းမႃး (မိူၼ်ၼင်ႇ လူလိၵ်ႈလုၵ်ႉတီႈ File ဢမ်ႇၼၼ် Config)။
* **Safety:** ႁဵတ်းႁႂ်ႈႁဝ်းမၼ်ႈၸႂ်ဝႃႈ Static Data တင်းမူတ်း "တူဝ်ႈတႅတ်ႉယဝ်ႉ" ဢွၼ်တၢင်းတေမီးၽႂ်မႃးၸႂ်ႉ Class ၼၼ်ႉၶႃႈ။

### 4. တူဝ်ယင်ႇ ၵၢၼ်လႅၼ်း Code
```csharp
// မိူဝ်ႈတႅမ်ႈထႅဝ်ၼႆႉ... 
// 1. Static Constructor တေလႅၼ်ႈ (ၵမ်းလဵဝ်ၵူၺ်း)
// 2. Instance Constructor တေလႅၼ်ႈ (တူဝ်ထီႉ 1)
ShanDatabase db1 = new ShanDatabase(); 

// မိူဝ်ႈတႅမ်ႈထႅဝ်ၼႆႉ...
// 1. Instance Constructor တေလႅၼ်ႈ (တူဝ်ထီႉ 2)
// (Static Constructor ဢမ်ႇလႅၼ်ႈထႅင်ႈယဝ်ႉ)
ShanDatabase db2 = new ShanDatabase(); 
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static Constructor:** Constructor ဢၼ်ၸႂ်ႉတႃႇ Initialize Class-level data။
* **Initialization:** ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းတႄႇဢွၼ်။
* **Global State:** ၶေႃႈမုၼ်း ဢၼ်မီးၽွၼ်းတုမ်ႉတိူဝ်ႉၵူႈတီႈ။
* **One-time Execution:** ၵၢၼ်ႁဵတ်းၵၢၼ် ၵမ်းလဵဝ်ၵူၺ်း တႃႇသေႇ။

---