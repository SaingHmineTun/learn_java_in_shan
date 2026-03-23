# Lesson 175: "Priority and Naming Conflicts"

ပၵ်းၵၢၼ်လမ်ႇလွင်ႈသုတ်းဢၼ်ၶူးတေလႆႈမၢႆတွင်းၵေႃႈပဵၼ်: **"Instance Method တေယႂ်ႇလိူဝ် (Win) Extension Method တႃႇသေႇၶႃႈ။"**

### 1. လွင်ႈပႅၵ်ႇပိူင် ၸၼ်ႉထၢၼ်ႈ (Priority Rules)
C# Compiler တေႁႃ Method ၸွမ်းၼင်ႇလၢႆးၼႆႉၶႃႈ:
1.  **First Priority:** တေႁႃတူၺ်းၼႂ်း Class တူဝ်မၼ်းဢွၼ်တၢင်း (Instance Method)။ သင်ႁၼ်ၸိုဝ်ႈမိူၼ်ၵၼ် လႄႈ Parameter မိူၼ်ၵၼ်... မၼ်းတေလႅၼ်ႈတူဝ်ၼၼ်ႉၵမ်းလဵဝ်။
2.  **Second Priority:** သင်ၼႂ်း Class ဢမ်ႇမီး... မၼ်းၸင်ႇတေဢွၵ်ႇမႃးႁႃၼႂ်း Static Classes ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ (Extension Method)။



### 2. တူဝ်ယင်ႇ "ၸိုဝ်ႈတႅၵ်ႈၵၼ်" (Naming Conflict)
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးမီး Class **`ShanMember`** ဢၼ်မီး Method `Greet()` ဝႆႉယဝ်ႉ:

```csharp
public class ShanMember {
    public void Greet() {
        Console.WriteLine("Hello from Instance!");
    }
}

// ႁဝ်းသမ်ႉတႅမ်ႈ Extension Method ၸိုဝ်ႈမိူၼ်ၵၼ်ပႅတ်ႉ
public static class ShanExtensions {
    public static void Greet(this ShanMember member) {
        Console.WriteLine("Hello from Extension!");
    }
}
```

**ၽົນလႆႈ (Result):**
မိူဝ်ႈၶူးႁွင်ႉ `member.Greet();`... မၼ်းတေဢွၵ်ႇ **"Hello from Instance!"** တႃႇသေႇၶႃႈ။ Extension Method ၶွင်ၶူးတေ "ထုၵ်ႇလပ်ႉဝႆႉ" (Shadowed) သေ ဢမ်ႇလႅၼ်ႈသင်ၶႃႈ။

### 3. လၢႆးၵႄႈပၼ်ႁႃ
သင်ၶူးၶႂ်ႈႁွင်ႉၸႂ်ႉ Extension Method တူဝ်ၼၼ်ႉတႄႉတႄႉ... ၶူးတေလႆႈႁွင်ႉၸႂ်ႉမၼ်းၼင်ႇ **Static Method** ธรรมดา ၶႃႈ:
```csharp
// ႁွင်ႉၸႂ်ႉလၢႆးၼႆႉ ၸင်ႇတေလႅၼ်ႈ Extension Code ၶႃႈ
ShanExtensions.Greet(member); 
```

### 4. Best Practices (ပၵ်းၵၢၼ်ပၼ်ၸိုဝ်ႈ ဢၼ်လီ)
* **Unique Naming:** ယႃႇပၼ်ၸိုဝ်ႈ Extension Method မိူၼ်တင်း Built-in Method (တူဝ်ယင်ႇ: ယႃႇပၼ်ၸိုဝ်ႈဝႃႈ `ToString()` ဢမ်ႇၼၼ် `Equals()`)။
* **Specific Names:** ၸႂ်ႉၸိုဝ်ႈဢၼ် "ၸႅင်ႈလႅင်း" ၸွမ်းၼင်ႇၼႃႈၵၢၼ် (တူဝ်ယင်ႇ: ၸႂ်ႉ `ToShanFormat()` တႅၼ်း `Format()`)။
* **Avoid Overuse:** ယႃႇတႅမ်ႈ Extension Method ၼမ်လိူဝ်ပူၼ်ႉတီႈ ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈ IntelliSense ယုင်ႈယၢင်ႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Method Resolution:** လၢႆးဢၼ် Compiler တႅတ်ႉတေႃးဝႃႈ တေလႅၼ်ႈ Method တူဝ်လႂ်။
* **Shadowing:** ၵၢၼ်ဢၼ် Method ၼိုင်ႈတူဝ် လပ်ႉထႅင်ႈတူဝ်ၼိုင်ႈဝႆႉ။
* **Member Access:** ၵၢၼ်ၶဝ်ႈထိုင်တွၼ်ႈလိၵ်ႈၼႂ်း Class။
* **Ambiguity:** လွင်ႈယုင်ႈယၢင်ႈ ဢၼ်ဢမ်ႇႁူႉဝႃႈတေလိူၵ်ႈဢဝ်တူဝ်လႂ်။

---