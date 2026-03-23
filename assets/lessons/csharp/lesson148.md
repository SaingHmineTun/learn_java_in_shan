# Lesson 148: "Sealed Classes and Methods"

Keyword **`sealed`** ၼႆႉ ၸႂ်ႉတႃႇၵတ်းၵၼ်ႉ (Restrict) ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း။ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းလႆႈ 2 တီႈၶႃႈ:
1. **Sealed Class:** ဢမ်ႇပၼ်ၽႂ်မႃး "သိုပ်ႇၸိူဝ်ႉၶိူဝ်း" (Inherit) လုၵ်ႉတီႈ Class ၼႆႉလႆႈထႅင်ႈ။
2. **Sealed Method:** ဢမ်ႇပၼ် Class လုၵ်ႈ "မႄးတႅၼ်း" (Override) Method ၼႆႉလႆႈထႅင်ႈ။



### 1. Sealed Class (Class ဢၼ်ပိတ်းဝႆႉ)
မိူဝ်ႈႁဝ်းတႅမ်ႈ `sealed` ဝႆႉၼႃႈ Class... မၼ်းတေပဵၼ် Class တူဝ်သုတ်းတွၼ်ႈ (Leaf Class) ၼႂ်းၸိူဝ်ႉၶိူဝ်းၼၼ်ႉယဝ်ႉ။

```csharp
public sealed class ShanSecretService {
    // Class ၼႆႉ ၽႂ်ၵေႃႈသိုပ်ႇမွေႇဢဝ်ဢမ်ႇလႆႈယဝ်ႉ
}

// public class MyService : ShanSecretService { } // Error! (Cannot inherit from sealed class)
```

### 2. Sealed Method (Method ဢၼ်လွၵ်ႉဝႆႉ)
ႁဝ်းၸၢင်ႈလွၵ်ႉ Method ဢၼ်ႁဝ်း `override` မႃးယဝ်ႉ ဢမ်ႇႁႂ်ႈလုၵ်ႈလၢၼ်တွၼ်ႈၼႃႈ မႃးမႄးလႆႈထႅင်ႈၶႃႈ။ (မၢႆတွင်း: ၸႂ်ႉလႆႈၸွမ်း `override` ၵူၺ်း)။

```csharp
public class Staff {
    public virtual void GetPaid() { Console.WriteLine("Getting basic pay."); }
}

public class Manager : Staff {
    // လွၵ်ႉဝႆႉ ဢမ်ႇပၼ်လုၵ်ႈလၢၼ် Manager မႄး GetPaid() လႆႈထႅင်ႈ
    public sealed override void GetPaid() { 
        Console.WriteLine("Getting manager salary + bonus."); 
    }
}
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `sealed`?
* **Security:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ်ပိူၼ်ႈမႃးမႄး Logic ဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇ ၵၢၼ်ၵူတ်ႇထတ်း Password)။
* **Performance:** Compiler ၸၢင်ႈႁဵတ်းႁႂ်ႈ Code လႅၼ်ႈဝႆလိူဝ်ၵဝ်ႇဢိတ်းၼိုင်ႈ ယွၼ်ႉမၼ်းႁူႉဝႃႈ ဢမ်ႇလူဝ်ႇၵႂႃႇႁႃ `override` တီႈလႂ်ထႅင်ႈယဝ်ႉ။
* **Design Intent:** တႃႇလၢတ်ႈၼႄ Programmer တၢင်ႇၵေႃႉဝႃႈ "Class ၼႆႉ ႁဵတ်းဝႆႉတႃႇၸႂ်ႉတူဝ်မၼ်းၵူၺ်း၊ ဢမ်ႇလႆႈဝူၼ်ႉဝႆႉတႃႇႁႂ်ႈၽႂ်မႃးသိုပ်ႇမွေႇၶႃႈ" ၼႆယဝ်ႉ။

### 4. တူဝ်ယင်ႇ ၼႂ်း C# Library
Class ဢၼ်ႁဝ်းၸႂ်ႉယူႇၵူႈဝၼ်း မိူၼ်ၼင်ႇ **`string`** ၼၼ်ႉ... မၼ်းပဵၼ် **`sealed`** ၶႃႈ။ ႁဝ်းဢမ်ႇၸၢင်ႈသၢင်ႈ `class MyString : string` လႆႈ ယွၼ်ႉ Microsoft ပိတ်းဝႆႉ တႃႇလွင်ႈ Security လႄႈ Speed ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Sealed:** Keyword ဢၼ်ၸႂ်ႉတႃႇပိတ်းၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း ဢမ်ႇၼၼ် ၵၢၼ် override။
* **Final Class:** ၸိုဝ်ႈႁွင်ႉၼႂ်း Programming တၢင်ႇပိူင် (မိူၼ် Java) ဢၼ်မိူၼ်တင်း sealed ၶႃႈ။
* **Restriction:** ၵၢၼ်ၵတ်းၵၼ်ႉသုၼ်ႇၼႂ်း Code။
* **Inheritance Break:** ၵၢၼ်ႁဵတ်းႁႂ်ႈသၢႆၸိူဝ်ႉၶိူဝ်း ယဝ်ႉတူဝ်ႈတီႈ Class ၼၼ်ႉ။

---