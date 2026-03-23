# Lesson 126: "The 'readonly' Modifier"

**`readonly`** ပွင်ႇဝႃႈ "တူၺ်းလႆႈၵူၺ်း (မႄးဢမ်ႇလႆႈ)" ၶႃႈ။ 
မၼ်းပဵၼ် Keyword ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၽၢႆႇၼႃႈ Field တႃႇမၵ်းမၼ်ႈဝႃႈ ၶေႃႈမုၼ်းတူဝ်ၼႆႉ တေလႆႈပၼ်ၵႃႈၶၼ် **"ပွၵ်ႈလဵဝ်ၵူၺ်း"** ၶႃႈ။

### 1. ပၼ်ၵႃႈၶၼ်လႆႈတီႈလႂ်?
ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ် `readonly` field လႆႈ 2 တီႈၵူၺ်းၶႃႈ:
1.  **မိူဝ်ႈတႅမ်ႈ Variable (Declaration):** `private readonly string _id = "123";`
2.  **ၼႂ်း Constructor:** ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ၶႅမ်ႉသေပိူၼ်ႈၶႃႈ။ ယွၼ်ႉပိူဝ်ႈ ႁဝ်းၸၢင်ႈႁပ်ႉၶေႃႈမုၼ်းတီႈ `new` သေ သႂ်ႇဝႆႉပၼ်တီႈၼႂ်း Object လႆႈၶႃႈ။



### 2. တူဝ်ယင်ႇ Code

```csharp
public class ShanStudent {
    // ID ၼႆႉ ပဵၼ် readonly ယွၼ်ႉၵိူတ်ႇမႃးယဝ်ႉ ဢမ်ႇလူဝ်ႇလႅၵ်ႈလၢႆႈထႅင်ႈ
    private readonly string _studentId;
    public string Name;

    public ShanStudent(string id, string name) {
        _studentId = id; // ပၼ်ၵႃႈၶၼ်လႆႈၼႂ်း Constructor
        Name = name;
    }

    public void UpdateId() {
        // _studentId = "999"; // Error! မႄးၼွၵ်ႈ Constructor ဢမ်ႇလႆႈယဝ်ႉ
    }
}
```

### 3. ပိူင်ႈၵၼ်တင်း `const` ၸိူင်ႉႁိုဝ်?
လုၵ်ႈႁဵၼ်းၵႆႉၵႂၢင်ၼႂ်းၵႄႈ `const` (Lesson 43) လႄႈ `readonly` ၶႃႈ:
* **`const` (Compile-time):** တေလႆႈပၼ်ၵႃႈၶၼ် တင်ႈတႄႇမိူဝ်ႈတႅမ်ႈ Code ၵူၺ်း။
* **`readonly` (Runtime):** ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ် **"ဢမ်ႇမိူၼ်ၵၼ်"** တႃႇ Object ၵူႈတူဝ် လုၵ်ႉတီႈ Constructor ၶႃႈ (မိူၼ်ၼင်ႇ Student ၵေႃႉၼိုင်ႈ မီး ID ဢၼ်ၼိုင်ႈ ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ)။

### 4. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Security:** ၵႅတ်ႇၶႄဢမ်ႇပၼ် Logic ၼႂ်း App ႁဝ်း ၵႂႃႇမႄးၶေႃႈမုၼ်းဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇ Account Number, CreatedDate) လူၺ်းဢမ်ႇတင်ႈၸႂ်။
* **Immutability:** ၸွႆးႁႂ်ႈ Code ႁဝ်း "ၼိမ်" (Stable) လႄႈ ႁႃတီႈၽိတ်း (Debug) ငၢႆႈ ယွၼ်ႉႁဝ်းႁူႉဝႃႈ ၵႃႈၶၼ်ၼႆႉ တေဢမ်ႇလႅၵ်ႈလၢႆႈလႆႈယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Readonly Modifier:** Keyword ဢၼ်ပၼ်ပိူၼ်ႈမႄးၵႃႈၶၼ်လႆႈၼႂ်း Constructor ၵူၺ်း။
* **Immutability:** ပိူင်ၵၢၼ်ဢၼ် Object ဢမ်ႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (သၢႆၸႂ်ၼိမ်)။
* **Runtime Constant:** ၵႃႈၶၼ်ဢၼ်မၵ်းမၼ်ႈမိူဝ်ႈ App လႅၼ်ႈယူႇ ၵူၺ်းၵႃႈဝၢႆးၼၼ်ႉ လႅၵ်ႈဢမ်ႇလႆႈယဝ်ႉ။
* **Defensive Programming:** ၵၢၼ်တႅမ်ႈ Code တႃႇၵႅတ်ႇၶႄပၼ်ႁႃ ဢၼ်ၸၢင်ႈၵိူတ်ႇမႃး ဝၢႆးၼႃႈ။

---