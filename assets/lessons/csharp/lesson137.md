# Lesson 137: "Required Properties"

မိူဝ်ႈႁဝ်းၸႂ်ႉ **Object Initializer** (Lesson 136) ၼၼ်ႉ... မၢင်ပွၵ်ႈလုၵ်ႈႁဵၼ်းၵႆႉလိုမ်းပၼ်ၵႃႈၶၼ် Property ဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇ ၸိုဝ်ႈၵူၼ်း)။ C# ၸင်ႇပၼ် Keyword **`required`** မႃး တႃႇႁႄႉၵၢင်ႈပၼ်ႁႃၼႆႉၶႃႈ။



### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းသၢင်ႈ Class `ShanMember`။ သင်ပိူၼ်ႈသၢင်ႈ Object မႃးသေ ဢမ်ႇပၼ် `Name` ၸိုင်... App ႁဝ်းတေမီးပၼ်ႁႃ (Null) ၶႃႈ။ `required` တေၸွႆးႁႂ်ႈ Compiler လၢတ်ႈၼႄ Error ၵမ်းလဵဝ် သင်ပိူၼ်ႈဢမ်ႇပၼ်ၵႃႈၶၼ်မႃးၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းသႂ်ႇ Keyword **`required`** ဝႆႉၽၢႆႇၼႃႈ Property ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ:

```csharp
public class ShanMember {
    // ၼႆႉပဵၼ် Property ဢၼ် "တေလႆႈမီး" ၵႃႈၶၼ်တႃႇသေႇ
    public required string FullName { get; set; }
    
    // ၼႆႉသမ်ႉ ပဵၼ် Property ဢၼ် "မီးၵေႃႈလႆႈ ဢမ်ႇမီးၵေႃႈလႆႈ"
    public string? PhoneNumber { get; set; }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
မိူဝ်ႈႁဝ်း `new` Object ၼၼ်ႉ... Compiler တေၵူတ်ႇထတ်း (Force) ႁႂ်ႈႁဝ်းပၼ်ၵႃႈၶၼ်ၶႃႈ:

```csharp
// 1. ၼႆႉပဵၼ်လၢႆးဢၼ်မႅၼ်ႈ (OK)
var member1 = new ShanMember { FullName = "Sai Hla" };

// 2. ၼႆႉပဵၼ်လၢႆးဢၼ်ၽိတ်း (Error!)
// var member2 = new ShanMember(); 
// ^ Compiler တေလၢတ်ႈဝႃႈ: 'FullName' must be set in object initializer.
```

### 4. `required` တင်း `init` ၸႂ်ႉႁူမ်ႈၵၼ်လႆႈႁႃႉ?
**လႆႈၶႃႈ!** ၼႆႉပဵၼ်လၢႆးဢၼ်လီသေပိူၼ်ႈ (Best Practice) တႃႇသၢင်ႈ Object ဢၼ် "တေလႆႈပၼ်ၵႃႈၶၼ်မိူဝ်ႈၵိူတ်ႇ" သေ "မႄးဢမ်ႇလႆႈထႅင်ႈ" ၶႃႈ။

```csharp
public required string NationalID { get; init; }
```

---

### ၶေႃႈၵႂမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Required Modifier:** Keyword ဢၼ်မၵ်းမၼ်ႈဝႃႈ Property တေလႆႈမီးၵႃႈၶၼ် မိူဝ်ႈသၢင်ႈ Object။
* **Data Integrity:** လွင်ႈတႅတ်ႉတေႃး လႄႈ လွင်ႈၵႅၼ်ႇၶႅင် ၶွင်ၶေႃႈမုၼ်း။
* **Compile-time Enforcement:** ၵၢၼ်ၵူတ်ႇထတ်းပိူင်မီႈ လုၵ်ႉတီႈ Compiler (ဢမ်ႇၸႂ်ႈ Runtime)။
* **Null Safety:** ၵၢၼ်ႁႄႉၵၢင်ႈဢမ်ႇပၼ်ၶေႃႈမုၼ်းပဵၼ် Null လူၺ်းဢမ်ႇတင်ႈၸႂ်။

---