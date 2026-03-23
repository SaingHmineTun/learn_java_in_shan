# Lesson 124: "Classes vs. Members Access"

မၢင်ပွၵ်ႈလုၵ်ႈႁဵၼ်းၵႆႉၵႂၢင် (Confused) ဝႃႈ "ႁဵတ်းသင် ၼႂ်း Class ႁဝ်းသႂ်ႇ `protected` လႆႈ၊ ၵူၺ်းၵႃႈ ၼႃႈၸိုဝ်ႈ Class သမ်ႉသႂ်ႇဢမ်ႇလႆႈၶႃႈ?" ၼၼ်ႉယဝ်ႉ။

### 1. Access Modifiers တႃႇ Classes (Top-level)
မိူဝ်ႈႁဝ်းသၢင်ႈ Class ဝႆႉၼႂ်း Namespace (ဢၼ်ဢမ်ႇယူႇၼႂ်း Class တၢင်ႇဢၼ်) ၸိုင်... ႁဝ်းလိူၵ်ႈၸႂ်ႉလႆႈ **2 ပိူင်** တီႈတႂ်ႈၼႆႉၵူၺ်းၶႃႈ:
* **`public`:** Project ၵူႈဢၼ် ႁၼ်လႆႈတင်းမူတ်း။
* **`internal`:** ႁၼ်လႆႈၼႂ်း Project (Assembly) လဵဝ်ၵၼ်။ (**ၼႆႉပဵၼ် Default ၶႃႈ**)

> **မၢႆတွင်း:** ႁဝ်းဢမ်ႇၸၢင်ႈသႂ်ႇ `private` ဢမ်ႇၼၼ် `protected` တီႈၼႃႈၸိုဝ်ႈ Class (Top-level) လႆႈ၊ ယွၼ်ႉဝႃႈ Class ၼိုင်ႈဢၼ် ပဵၼ် private ၼႆ... မၼ်းတေဢမ်ႇမီးၽႂ်ၸႂ်ႉလႆႈသေၵေႃႉသေ မၼ်းတေဢမ်ႇမီးတီႈပွင်ႇ (Meaningless) ယဝ်ႉၶႃႈ။



### 2. Access Modifiers တႃႇ Members
Members ဢၼ်ယူႇၼႂ်း Class (Fields, Methods, Properties) သမ်ႉ လိူၵ်ႈၸႂ်ႉလႆႈ **တင်း 6 ပိူင်** ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼၼ်ႉၶႃႈ:
* `public`, `private`, `protected`, `internal`, `protected internal`, `private protected`.
* **Default** တႃႇ Members ပဵၼ် **`private`** တႃႇသေႇၶႃႈ။

### 3. Nested Classes (Class ၼႂ်း Class)
တီႈၼႆႈၵေႃႈ မီးလွင်ႈယုပ်ႈယွမ်းဝႆႉ (Exception) ၼိုင်ႈဢၼ်ၶႃႈ။ သင်ႁဝ်းသၢင်ႈ Class ဝႆႉ **"ၼႂ်း"** Class ထႅင်ႈဢၼ်ၼိုင်ႈ (Nested Class) ၸိုင်... မၼ်းတေသွၼ်ႇပဵၼ် "Member" ၼိုင်ႈဢၼ်လႄႈ မၼ်းၸၢင်ႈပဵၼ် **`private`** ဢမ်ႇၼၼ် **`protected`** လႆႈယဝ်ႉၶႃႈ။

```csharp
public class ShanApp { // Top-level: ၸႂ်ႉလႆႈ public/internal ၵူၺ်း
    
    private class SecretLogic { // Nested: ၸႂ်ႉ private လႆႈ
        // ...
    }
}
```

### 4. တူဝ်ယင်ႇ လွင်ႈၵွင်ႉၵၢႆႇၵၼ် (Dependency)
သင် Class ပဵၼ် **`internal`** ၵူၺ်းၵႃႈ Method ၼႂ်းမၼ်းပဵၼ် **`public`** ၼႆ... ၵူၼ်းၼွၵ်ႈ Project (External) ၵေႃႈတိုၵ်ႉ **ဢမ်ႇၸၢင်ႈ** ႁွင်ႉၸႂ်ႉ Method ၼၼ်ႉလႆႈၶႃႈ။ ယွၼ်ႉပိူဝ်း "ပေႃႈမၼ်းပေႃး (Class) ပိၵ်ႉဝႆႉယဝ်ႉ၊ လုၵ်ႈမၼ်း (Method) ၵေႃႈဢွၵ်ႇၵႂႃႇၼွၵ်ႈဢမ်ႇလႆႈ" ၼၼ်ႉယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Top-level Class:** Class ဢၼ်ယူႇၼႂ်း Namespace (ဢမ်ႇၸႂ်ႈ nested)။
* **Nested Class:** Class ဢၼ်သၢင်ႈဝႆႉၼႂ်း Class ထႅင်ႈတူဝ်ၼိုင်ႈ။
* **Default Access:** သုၼ်ႇၶဝ်ႈၸႂ်ႉ ဢၼ် System မၵ်းမၼ်ႈပၼ်ႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းဢမ်ႇတႅမ်ႈ modifier။

---