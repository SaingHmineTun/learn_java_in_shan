# Lesson 114: "Destructors (Finalizers)"

**Destructor** ပဵၼ် Method ဢၼ်တေလႅၼ်ႈႁင်းၵူၺ်း မိူဝ်ႈ **Garbage Collector (GC)** တေမႃးယႃႉ (Destroy) Object ၼၼ်ႉပႅတ်ႈ တီႈၼႂ်း Memory ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉမၢႆ **Tilde (`~`)** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Class တႃႇတႅမ်ႈ Destructor ၶႃႈ။



```csharp
public class ShanDigitalLibrary {
    // Constructor (ၵိူတ်ႇ)
    public ShanDigitalLibrary() {
        Console.WriteLine("Library Connection Opened.");
    }

    // Destructor (တၢႆ)
    ~ShanDigitalLibrary() {
        // Code တႃႇပိၵ်ႉ Connection ဢမ်ႇၼၼ် Clear Memory
        Console.WriteLine("Library Connection Closed. Object Destroyed.");
    }
}
```

### 2. ပိူင်ၵၢၼ် ဢၼ်လႅၵ်ႈလၢႆႈ (Rules)
* **No Access Modifiers:** ဢမ်ႇပၼ်သႂ်ႇ `public` ဢမ်ႇၼၼ် `private`။
* **No Parameters:** ဢမ်ႇၸၢင်ႈႁပ်ႉ Parameter။
* **One per Class:** မီးလႆႈတူဝ်လဵဝ်ၵူၺ်း ၼႂ်း Class ၼိုင်ႈဢၼ်။
* **Cannot be Called:** ႁဝ်းဢမ်ႇၸၢင်ႈ "သင်ႇႁွင်ႉ" (Call) မၼ်းႁင်းၵူၺ်းလႆႈ။ System တေလိူၵ်ႈႁွင်ႉမၼ်းႁင်းၵူၺ်း မိူဝ်ႈ GC ႁဵတ်းၵၢၼ်ၶႃႈ။

### 3. မၼ်းလႅၼ်ႈမိူဝ်ႈလႂ်?
မၼ်းတေဢမ်ႇလႅၼ်ႈၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းတႅမ်ႈ `s1 = null;` ၶႃႈ။ မၼ်းတေမႃးလႅၼ်ႈ မိူဝ်ႈ **Garbage Collector** မႃးယႃႉပႅတ်ႈမၼ်းၵူၺ်း။ ယွၼ်ႉၼၼ် ႁဝ်းဢမ်ႇၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ မၼ်းတေတၢႆ "မိူဝ်ႈလႂ်" ၼႆၶႃႈ။

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ၵႆႉၸႂ်ႉတႃႇ Clear ၶူဝ်းၶွင်ဢၼ်ပဵၼ် **Unmanaged Resources** (ၶိူင်ႈမိုဝ်းဢၼ်ယူႇၼွၵ်ႈ .NET) မိူၼ်ၼင်ႇ:
* ၵၢၼ်ပိုတ်ႇ Files ယႂ်ႇယႂ်ႇ ဝႆႉ။
* ၵၢၼ်ၵွင်ႉၸူး Database ဢၼ်ဢမ်ႇလႆႈပိၵ်ႉ။
* ၵၢၼ်ၸႂ်ႉ Memory လုၵ်ႉတီႈ C++ ဢမ်ႇၼၼ် API ၽၢႆႇၼွၵ်ႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Destructor / Finalizer:** Method ဢၼ်လႅၼ်ႈ မိူဝ်ႈ Object တေထုၵ်ႇယႃႉပႅတ်ႈ။
* **Tilde (~):** မၢႆဢၼ်ၸႂ်ႉမၵ်းမၼ်ႈ Destructor။
* **Nondeterministic:** ၵၢၼ်ဢၼ်ႁဝ်း ဢမ်ႇၸၢင်ႈႁူႉ ၶၢဝ်းယၢမ်းတႅတ်ႉတေႃး (ယွၼ်ႉ GC ပဵၼ်ၵေႃႉၵုမ်း)။
* **Unmanaged Resources:** ၶေႃႈမုၼ်း ဢမ်ႇၼၼ် ၶိူင်ႈမိုဝ်း ဢၼ်ယူႇၼွၵ်ႈပိူင်ၸတ်းၵၢၼ်ၶွင် .NET။

---