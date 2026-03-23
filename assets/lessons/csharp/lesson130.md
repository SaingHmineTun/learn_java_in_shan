# Lesson 130: "Auto-Implemented Properties"

မိူဝ်ႈႁဝ်းဢမ်ႇလူဝ်ႇ Validation (ၵၢၼ်ၵူတ်ႇထတ်း) ၶေႃႈမုၼ်းသေသင်၊ ႁဝ်းၵူၺ်းၶႂ်ႈလႆႈ Property ဢၼ်သိမ်း လႄႈ သူင်ႇၵႃႈၶၼ်ၵူၺ်းၼၼ်ႉ... ႁဝ်းၸႂ်ႉ **Auto Property** လႆႈၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတႅမ်ႈၵူၺ်းထႅဝ်လဵဝ် ၸိင်ႉၼႆၶႃႈ:

```csharp
public class ShanBook {
    // ၼႆႉပဵၼ် Auto-Implemented Property
    public string Title { get; set; }
    
    public double Price { get; set; }
}
```

### 2. မၼ်းႁဵတ်းၵၢၼ်ၸိင်ႉႁိုဝ်? (Behind the Scenes)
မိူဝ်ႈၶူးသၢႆမၢဝ်းတႅမ်ႈ `get; set;` ဝႆႉၼၼ်ႉ... **Compiler** တေတႅမ်ႈ Code ပၼ်ႁင်းၵူၺ်း (Automatically) ၼင်ႇၼႆၶႃႈ:
* မၼ်းတေသၢင်ႈ **Private Backing Field** ဝႆႉပၼ် (ၵူၺ်းၵႃႈႁဝ်းႁၼ်ဢမ်ႇလႆႈ)။
* မၼ်းတေတႅမ်ႈ Logic ၼႂ်း `get` တႃႇ `return` ၵႃႈၶၼ် လႄႈ `set` တႃႇသိမ်း `value` သႂ်ႇပၼ် ႁင်းၵူၺ်းမၼ်းမူတ်းၶႃႈ။



### 3. ၵၢၼ်ပၼ်ၵႃႈၶၼ်တႄႇ (Initialization)
ၼႂ်း C# တွၼ်ႈမႂ်ႇๆ ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ် Default ဝႆႉၼႃႈ Property ၼၼ်ႉၵမ်းလဵဝ်လႆႈၶႃႈ:

```csharp
public string Author { get; set; } = "Unknown Author";
public int Pages { get; set; } = 100;
```

### 4. မိူဝ်ႈလႂ်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* ၸႂ်ႉမိူဝ်ႈႁဝ်း **ဢမ်ႇလူဝ်ႇ Logic** ၼႂ်း `get` ဢမ်ႇၼၼ် `set`။
* ၸွႆးႁႂ်ႈ Code ႁဝ်း "ပွတ်း" လႄႈ "သႅၼ်ႈသႂ်" (Clean)။
* ပဵၼ်လၢႆးဢၼ်လီသေပိူၼ်ႈ (Best Practice) တႃႇသၢင်ႈ "Data Objects" ဢၼ်သိမ်းၶေႃႈမုၼ်းၵူၺ်း။

> **မၢႆတွင်း:** သင်ဝၢႆးၼႃႈမႃး ၶူးၶႂ်ႈထႅမ် Validation (မိူၼ်ၼင်ႇ ဢမ်ႇပၼ် Price < 0) ၼႆ... ၶူးၸၢင်ႈမႄးလႅၵ်ႈပဵၼ် **Manual Property** (Lesson 129) လႆႈၵူႈၶၢဝ်းယၢမ်း လူၺ်းဢမ်ႇတုမ်ႉတိူဝ်ႉ Code ၽၢႆႇၼွၵ်ႈ ဢၼ်ႁွင်ႉၸႂ်ႉ `obj.Price` ယူႇၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Auto-Implemented Property:** Property ဢၼ် Compiler သၢင်ႈ backing field လႄႈ accessors ပၼ်ႁင်းၵူၺ်း။
* **Shorthand:** လၢႆးတႅမ်ႈဢၼ်ပွတ်းသေၵဝ်ႇ။
* **Compiler-Generated:** Code ဢၼ် System တႅမ်ႈပၼ် မိူဝ်ႈႁဝ်း Compile။
* **Property Initializer:** ၵၢၼ်ပၼ်ၵႃႈၶၼ်တႄႇ ဝႆႉၽၢႆႇလင် `{ get; set; }`။

---