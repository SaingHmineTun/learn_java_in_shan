# Lesson 123: "Protected Internal and Private Protected"

မၢင်ပွၵ်ႈ `protected` ၵူၺ်းၵေႃႈ ဢမ်ႇပေႃး၊ `internal` ၵူၺ်းၵေႃႈ ဢမ်ႇၵုမ်ႇ။ C# ၸင်ႇပၼ်လၢႆးႁူမ်ႈၵၼ် (Combinations) မႃး 2 ယၢင်ႇၶႃႈ။

### 1. Protected Internal (Protected OR Internal)
ၼႆႉပဵၼ်ၵၢၼ်ပၼ်သုၼ်ႇ **"ၵူၼ်းၼႂ်း Project (Internal) **ဢမ်ႇၼၼ်** ၵူၼ်းၼႂ်းမုင်ႉႁိူၼ်း (Protected)"** ၶႃႈ။
* **ၼႃႈတီႈဢၼ်ႁၼ်မၼ်းလႆႈ:**
    * ၵူႈတီႈၼႂ်း **Assembly (Project)** လဵဝ်ၵၼ် (မိူၼ် internal)။
    * ၼႂ်း **Derived Class (လုၵ်ႈလၢၼ်)** တူဝ်ဢၼ်ယူႇၼွၵ်ႈ Project ၵေႃႈႁၼ်လႆႈ (မိူၼ် protected)။



```csharp
public class BaseSystem {
    protected internal string TechSupportCode = "999";
}
```

### 2. Private Protected (Protected AND Internal)
ၼႆႉသမ်ႉ **ၵႅၼ်ႇၶႅင်လိူဝ်ၵဝ်ႇ** ၶႃႈ။ မၼ်းပွင်ႇဝႃႈ **"တေလႆႈပဵၼ်လုၵ်ႈလၢၼ် **သေ** တေလႆႈယူႇၼႂ်း Project လဵဝ်ၵၼ်ၵူၺ်း"** ၸင်ႇတေႁၼ်လႆႈၶႃႈ။
* **ၼႃႈတီႈဢၼ်ႁၼ်မၼ်းလႆႈ:**
    * ၼႂ်း **Derived Class (လုၵ်ႈလၢၼ်)** ဢၼ်ယူႇၼႂ်း **Assembly (Project)** လဵဝ်ၵၼ်ၵူၺ်း။
    * သင်ပဵၼ်လုၵ်ႈလၢၼ် ၵူၺ်းၵႃႈယူႇၼွၵ်ႈ Project (External DLL) ၸိုင်... **ဢမ်ႇႁၼ်** ယဝ်ႉၶႃႈ။



```csharp
public class SecretEngine {
    private protected string CorePassword = "ABC";
}
```

### 3. တႅတ်ႉတေႃးၵၼ် (Comparison Table)

| Modifier | Logic                                                 | တူဝ်ယင်ႇၵၢၼ်ၸႂ်ႉ |
| :--- |:------------------------------------------------------| :--- |
| **`protected internal`** | **OR** (ၵူၼ်းၼႂ်းႁိူၼ်း **ဢမ်ႇၼၼ်** ၵူၼ်းၼႂ်းဝၢၼ်ႈ)   | ပၼ်လုၵ်ႈလၢၼ်တီႈၼွၵ်ႈ ၸႂ်ႉ Code ႁဝ်းလႆႈ |
| **`private protected`** | **AND** (ၵူၼ်းၼႂ်းႁိူၼ်း **လႄႈ** ယူႇၼႂ်းဝၢၼ်ႈလဵဝ်ၵၼ်) | ၵႅတ်ႇၶႄ Code လုၵ်ႈလၢၼ် ဢမ်ႇပၼ်ၵူၼ်းၼွၵ်ႈႁၼ် |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Combination Access:** ၵၢၼ်ႁူမ်ႈၵၼ်ၶွင် Access Modifiers တႃႇမၵ်းမၼ်ႈသုၼ်ႇ။
* **Protected Internal:** ႁၼ်လႆႈၼႂ်း Assembly ဢမ်ႇၼၼ် ၼႂ်းလုၵ်ႈလၢၼ်။
* **Private Protected:** ႁၼ်လႆႈၵူၺ်းၼႂ်းလုၵ်ႈလၢၼ် ဢၼ်ယူႇၼႂ်း Assembly လဵဝ်ၵၼ်။
* **Scope Restriction:** ၵၢၼ်ႁႄႉၵၢင်ႈလႅၼ်းႁၼ် ႁႂ်ႈၵႅၼ်ႇၶႅင်လိူဝ်ၵဝ်ႇ။

---