
# Lesson 132: "Write-Only Properties"

**Write-Only Property** ပွင်ႇဝႃႈ Property ဢၼ်မီးၵူၺ်း **`set`** accessor သေ ဢမ်ႇမီး `get` ၶႃႈ။ ၼႆႉပဵၼ်လၢႆးဢၼ်ႁဝ်းၸႂ်ႉ တႃႇ "သူင်ႇၶေႃႈမုၼ်းၶဝ်ႈ" ၵူၺ်း၊ ၵူၺ်းၵႃႈ ဢမ်ႇၶႂ်ႈပၼ်ၽႂ်ႁၼ်ၵႃႈၶၼ်ၼၼ်ႉ ၸိူင်ႉၼင်ႇ Password ဢမ်ႇၼၼ် Secret Key ၶႃႈ။



### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတေလႆႈၸႂ်ႉ **Manual Property** တႃႇတႅမ်ႈ Write-only ၶႃႈ (Auto-property ဢမ်ႇၸၢင်ႈပဵၼ် write-only လႆႈ)။

```csharp
public class ShanUser {
    private string _password;

    public string Password {
        // ဢမ်ႇမီး get!
        set { 
            // ႁဝ်းၸၢင်ႈ Hash ၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေသိမ်း
            _password = value; 
            Console.WriteLine("Password has been updated securely.");
        }
    }
}
```

### 2. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Security:** ၸႂ်ႉတႃႇၶေႃႈမုၼ်းဢၼ်လမ်ႇလွင်ႈ (Sensitive Data) ဢၼ်ႁဝ်းလူဝ်ႇ "သိမ်း" ဝႆႉၼႂ်း Object ၵူၺ်း၊ ၵူၺ်းၵႃႈ ဢမ်ႇၶႂ်ႈပၼ် Code တွၼ်ႈတၢင်ႇဢၼ် ႁွင်ႉဢၢၼ်ႇဢွၵ်ႇမႃးၼႄ (Show) လႆႈ။
* **One-Way Interaction:** ၸႂ်ႉမိူဝ်ႈႁဝ်းလူဝ်ႇသူင်ႇ Command ဢမ်ႇၼၼ် Trigger သေပိူင်ပိူင် ၶဝ်ႈၵႂႃႇၼႂ်း Class ၵူၺ်း။
* **Data Processing:** ၸႂ်ႉတႃႇသူင်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇ တႃႇႁႂ်ႈ Class ၼၼ်ႉ "ၼပ်ႉဢၢၼ်ႇ" (Process) သေ သိမ်းဝႆႉၼႂ်း Fields တၢင်ႇဢၼ်။

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
ShanUser user = new ShanUser();

user.Password = "ShanState@2026"; // Write OK
// Console.WriteLine(user.Password); // Error! (Property has no get accessor)
```

### 4. လွင်ႈလူဝ်ႇၾၢင်ႉ
Write-only properties ၼႆႉ **ဢမ်ႇၵႆႉၸႂ်ႉ** (Rare) မိူၼ်တင်း Read-only ၶႃႈ။ တႃႇလွင်ႈ Security ၼၼ်ႉ... ၵႆႉလေႇၸႂ်ႉ **Methods** (မိူၼ်ၼင်ႇ `SetPassword()`) တႅၼ်းလိူဝ်ၶႃႈ။ ၵူၺ်းၵႃႈ ႁဝ်းတေလႆႈႁူႉဝႆႉ ယွၼ်ႉမၼ်းပဵၼ်တွၼ်ႈၼိုင်ႈ ၶွင် C# Properties ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Write-Only Property:** Property ဢၼ်မီးၵူၺ်း `set` accessor။
* **Sensitive Data:** ၶေႃႈမုၼ်းဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇ Password) ဢၼ်လူဝ်ႇလပ်ႉဝႆႉ။
* **Setter-Only:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် Write-only property။
* **One-Way Flow:** ၵၢၼ်လႅၼ်ႈၶေႃႈမုၼ်း ဢၼ်ၵႂႃႇၽၢႆႇလဵဝ် (Inbound ၵူၺ်း)။

---