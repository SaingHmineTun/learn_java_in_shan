# Lesson 134: "Computed Properties"

**Computed Property** ပွင်ႇဝႃႈ Property ဢၼ်မီးၵူၺ်း Logic ၼႂ်း `get` သေ သူင်ႇၵႃႈၶၼ်ဢၼ်လႅၵ်ႈလၢႆႈၸွမ်း Fields တၢင်ႇဢၼ်ၼၼ်ႉဢွၵ်ႇမႃးၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းမီး `FirstName` လႄႈ `LastName`။ သင်ၶူးၶႂ်ႈလႆႈ `FullName`... ၶူးဢမ်ႇလူဝ်ႇသၢင်ႈ Field မႂ်ႇတႃႇသိမ်း `FullName` ဝႆႉႁင်းၵူၺ်းၶႃႈ (ယွၼ်ႉသင်မႄး FirstName ယဝ်ႉ လိုမ်းမႄး FullName ၼႆ ၶေႃႈမုၼ်းတေၽိတ်းယဝ်ႉ)။ ႁဝ်းၸႂ်ႉ Computed Property တႃႇၼပ်ႉဢၢၼ်ႇဢဝ်ၵမ်းလဵဝ် တေလီလိူဝ်ၶႃႈ။



### 2. တူဝ်ယင်ႇ Code (Expression-Bodied Syntax)
ၼႂ်း C# တွၼ်ႈမႂ်ႇๆ ႁဝ်းၸၢင်ႈတႅမ်ႈ Computed Property ႁႂ်ႈပွတ်းသေပိူၼ်ႈ လူၺ်းၵၢၼ်ၸႂ်ႉမၢႆ **`=>`** (Lambda) ၶႃႈ။

```csharp
public class ShanPerson {
    public string FirstName { get; set; }
    public string LastName { get; set; }

    // Computed Property (Read-only ႁင်းၵူၺ်းမၼ်း)
    public string FullName => $"{FirstName} {LastName}";

    // ဢမ်ႇၼၼ် တႅမ်ႈလၢႆးၵဝ်ႇ (Manual)
    /*
    public string FullName {
        get { return FirstName + " " + LastName; }
    }
    */
}
```

### 3. ပိူင်ၵၢၼ် (Rules)
* **No Storage:** မၼ်းဢမ်ႇမီးတီႈသိမ်း (Backing Field) ၼႂ်း Memory ႁင်းၵူၺ်းမၼ်း။
* **Dynamic:** ၵႃႈၶၼ်မၼ်းတေလႅၵ်ႈလၢႆႈၸွမ်း "တူဝ်တႄႇ" (Source fields) တႃႇသေႇ။
* **Read-Only (Usually):** ၵႆႉလေႇမီးၵူၺ်း `get` ယွၼ်ႉမၼ်းပဵၼ်ၵႃႈၶၼ်ဢၼ် "ဢွၵ်ႇမႃး" (Derived)၊ ဢမ်ႇၸႂ်ႈၵႃႈၶၼ်ဢၼ် "သိမ်းၶဝ်ႈ"။

### 4. တူဝ်ယင်ႇ ၵၢၼ်ၼပ်ႉဢၢၼ်ႇ (Math)
```csharp
public class Rectangle {
    public double Width { get; set; }
    public double Height { get; set; }

    // Area တေလႅၵ်ႈလၢႆႈၸွမ်း Width လႄႈ Height တႃႇသေႇ
    public double Area => Width * Height;
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Computed Property:** Property ဢၼ်ၼပ်ႉဢၢၼ်ႇၵႃႈၶၼ် ၵူႈပွၵ်ႈဢၼ်ႁွင်ႉၸႂ်ႉ။
* **Derived Data:** ၶေႃႈမုၼ်းဢၼ်လုၵ်ႉတီႈ ၶေႃႈမုၼ်းတၢင်ႇဢၼ်မႃး (ဢမ်ႇၸႂ်ႈတူဝ်တႄႇ)။
* **Expression-Bodied Member:** လၢႆးတႅမ်ႈ Code ပွတ်းๆ လူၺ်းၸႂ်ႉမၢႆ `=>`။
* **State Dependency:** လွင်ႈဢၼ် Property ၼိုင်ႈဢၼ် တေလႆႈပိုင်ႈဢိင် (Depend) ၸွမ်း Fields တၢင်ႇဢၼ်။

---