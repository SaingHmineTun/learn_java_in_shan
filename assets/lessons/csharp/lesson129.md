# Lesson 129: "The Traditional Manual Property"

မိူဝ်ႈႁဝ်းတႅမ်ႈ Manual Property ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး 2 တွၼ်ႈၶႃႈ:
1.  **Backing Field:** Private variable ဢၼ်သိမ်းၶေႃႈမုၼ်းတႄႉ (ၵႆႉတႅမ်ႈ `_variableName`)။
2.  **Property:** တၢင်းၶဝ်ႈ Public ဢၼ်မီး `get` လႄႈ `set`။



### 1. The 'value' Keyword ပဵၼ်သင်?
ၼႂ်းတွၼ်ႈ `set { ... }` ၼၼ်ႉ C# ပၼ် Keyword ၶူးဝိသဵတ်ႇဢၼ်ၸိုဝ်ႈဝႃႈ **`value`** မႃးၶႃႈ။ မၼ်းပွင်ႇဝႃႈ **"ၵႃႈၶၼ်ဢၼ်ၵူၼ်းၸႂ်ႉ (User) သူင်ႇမႃးပၼ်"** ၼၼ်ႉယဝ်ႉ။
* Type ၶွင် `value` တေမိူၼ်တင်း Type ၶွင် Property ၼၼ်ႉတႃႇသေႇၶႃႈ (သင် Property ပဵၼ် `int`... `value` ၵေႃႈတေပဵၼ် `int`)။

### 2. တူဝ်ယင်ႇ Code (Manual Implementation)

```csharp
public class ShanStudent {
    // 1. Backing Field (လပ်ႉဝႆႉ)
    private string _name;

    // 2. Property (တၢင်းၶဝ်ႈ)
    public string Name {
        get { 
            return _name; // သူင်ႇၵႃႈၶၼ်ဢွၵ်ႇၵႂႃႇ
        }
        set { 
            // 'value' ၼႆႉ ပဵၼ်လိၵ်ႈဢၼ်ပိူၼ်ႈတႅမ်ႈ "=" မႃးပၼ်
            if (!string.IsNullOrEmpty(value)) {
                _name = value; 
            }
        }
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
မိူဝ်ႈႁဝ်းၸႂ်ႉ Property... မၼ်းတေတူၺ်းမိူၼ် Variable ၵူၺ်းၶႃႈ:

```csharp
ShanStudent s = new ShanStudent();

s.Name = "Sai Mao"; // ၼႆႉတေၵႂႃႇႁွင်ႉ 'set' သေ "Sai Mao" တေပဵၼ် 'value'
Console.WriteLine(s.Name); // ၼႆႉတေၵႂႃႇႁွင်ႉ 'get' သေ ဢဝ် _name မႃးၼႄ
```

### 4. ႁဵတ်းသင်ၸင်ႇလမ်ႇလွင်ႈ?
* **Intercepting Access:** ႁဝ်းၸၢင်ႈ "သုတ်ႉ" (Intercept) ၵႃႈၶၼ် ဢွၼ်တၢင်းတေသိမ်း ဢမ်ႇၼၼ် ဢွၼ်တၢင်းတေသူင်ႇဢွၵ်ႇ။
* **Lazy Initialization:** ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ `get` ၵႂႃႇလူတ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ Database မိူဝ်ႈမီးၵူၼ်းမႃးႁွင်ႉၸႂ်ႉ "ပွၵ်ႈၵမ်းဢွၼ်တၢင်း" ၵူၺ်းၵေႃႈလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Backing Field:** Private variable ဢၼ်ယူႇၽၢႆႇလင် Property။
* **value Keyword:** Implicit parameter ၼႂ်း `set` accessor ဢၼ်ႁပ်ႉၵႃႈၶၼ်မႂ်ႇ။
* **Getter:** တွၼ်ႈ Code ဢၼ် `return` ၵႃႈၶၼ်။
* **Setter:** တွၼ်ႈ Code ဢၼ်မႄး (Assign) ၵႃႈၶၼ်။

---