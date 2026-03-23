# Lesson 111: "Static Constructors"

**Static Constructor** ၸႂ်ႉတႃႇပၼ်ၵႃႈၶၼ်တႄႇ (Initialize) ၶေႃႈမုၼ်း ဢၼ်ပဵၼ် **`static`** ၼႂ်း Class ၼၼ်ႉၶႃႈ။

### 1. ပႅၵ်ႇတင်း Instance Constructor ၼင်ႇႁိုဝ်?
* **Instance Constructor:** ႁဵတ်းၵၢၼ် ၵူႈပွၵ်ႈ မိူဝ်ႈႁဝ်းၸႂ်ႉ `new` (တႃႇသၢင်ႈ Object ၼိုင်ႈတူဝ်)။
* **Static Constructor:** ႁဵတ်းၵၢၼ်မိူဝ်ႈ Class ထုၵ်ႇႁွင်ႉၸႂ်ႉပွၵ်ႈၵမ်းဢွၼ်တၢင်းသုတ်း ပွၵ်ႈလဵဝ်ၵူၺ်း (တႃႇ Class-level)။



### 2. ပိူင်သၢင်ႈ (Syntax Rules)
Static Constructor မီးပိူင်မၵ်းမၼ်ႈ ဢၼ်ၶႅင်လႅင်းၼႃႇၶႃႈ:
1. **Keyword:** တေလႆႈသႂ်ႇ `static` ဝႆႉၽၢႆႇၼႃႈ။
2. **No Access Modifier:** ဢမ်ႇပၼ်သႂ်ႇ `public` ဢမ်ႇၼၼ် `private` (မၼ်းပဵၼ် private ႁင်းၵူၺ်းမၼ်း)။
3. **No Parameters:** ဢမ်ႇၸၢင်ႈႁပ်ႉ Parameter သင်။
4. **One per Class:** မီးလႆႈတူဝ်လဵဝ်ၵူၺ်း ၼႂ်း Class ၼိုင်ႈဢၼ်။


```csharp
public class ShanDigitalLibrary {
    public static string LibraryName;
    public static int BookCount;

    // Static Constructor
    static ShanDigitalLibrary() {
        LibraryName = "Shan Community Digital Library";
        BookCount = 0;
        Console.WriteLine("Static Constructor: Library initialized!");
    }

    // Instance Constructor
    public ShanDigitalLibrary() {
        Console.WriteLine("Instance Constructor: New connection created!");
    }
}
```

### 3. မၼ်းႁဵတ်းၵၢၼ်မိူဝ်ႈလႂ်?
မၼ်းတေႁဵတ်းႁင်းၵူၺ်း (Automatically) မိူဝ်ႈ:
* ႁဝ်းသၢင်ႈ Object တူဝ်ဢွၼ်တၢင်းသုတ်း ၸႂ်ႉတိုဝ်း (`new`).
* ႁဝ်းႁွင်ႉၸႂ်ႉ Static Field ဢမ်ႇၼၼ် Static Method သေတူဝ်တူဝ်။

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* တႃႇလူတ်ႇ (Load) ၶေႃႈမုၼ်းတီႈ Files ဢမ်ႇၼၼ် Database မႃးဝႆႉၼႂ်း Static fields။
* တႃႇမၵ်းမၼ်ႈၵႃႈၶၼ် ဢၼ်သုၵ်ႉယုင်ႈ (Complex initialization) ဢၼ်ဢမ်ႇၸၢင်ႈတႅမ်ႈထႅဝ်လဵဝ်လႆႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static Constructor:** Constructor ဢၼ်လႅၼ်ႈပွၵ်ႈလဵဝ် တႃႇပၼ်ၵႃႈၶၼ်တီႈ Class။
* **Class-Level Data:** ၶေႃႈမုၼ်းဢၼ်ၵိုၵ်းဝႆႉတင်း Class (ဢမ်ႇၸႂ်ႉၵိုၵ်း Object)။
* **Automatic Execution:** ၵၢၼ်လႅၼ်ႈ Code ႁင်းၵူၺ်း လူၺ်းဢမ်ႇလူဝ်ႇသင်ႇ။
* **Thread-Safe:** C# ႁဵတ်းႁႂ်ႈ Static Constructor လႅၼ်ႈလႆႈပွၵ်ႈလဵဝ်ၵူၺ်း (ၵႅတ်ႇၶႄပၼ်ႁႃ Thread သွၼ်ႉၵၼ်)။

---