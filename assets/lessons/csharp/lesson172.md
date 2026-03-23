# Lesson 172: "Introduction to Extension Methods"

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းၶႂ်ႈႁႂ်ႈ `string` ၵူႈတူဝ် မီး Method **`SayMaiSungKha()`**။ ပၵ်းၵၢၼ်တႄႉမၼ်း... ၶူးဢမ်ႇၸၢင်ႈၵႂႃႇမႄး Code ၶွင် Microsoft `string` class လႆႈ။ ၵူၺ်းၵႃႈ **Extension Method** ၸွႆးႁႂ်ႈႁဝ်း "ၵွင်ႉထႅမ်" မၼ်းၶဝ်ႈၵႂႃႇလႆႈၶႃႈ။



### 1. ပိူင်သၢင်ႈ (The 'this' Parameter)
တႃႇတေတႅမ်ႈ Extension Method ၼိုင်ႈဢၼ်... ႁဝ်းတေလႆႈတႅမ်ႈမၼ်းဝႆႉၼႂ်း **Static Class** သေ သႂ်ႇ Keyword **`this`** ဝႆႉၼႃႈ Parameter တူဝ်ထီႉၼိုင်ႈၶႃႈ။

* **`this`** ပွင်ႇဝႃႈ: "Method ၼႆႉ တေၵႂႃႇၵွင်ႉၸွမ်ၸိူဝ်ႉၶိူဝ်း (Type) ဢၼ်ယူႇၽၢႆႇလင်မၼ်းၼၼ်ႉယဝ်ႉ"။

### 2. တူဝ်ယင်ႇ Code: "The Shan String Extension"

```csharp
// 1. တေလႆႈပဵၼ် Static Class
public static class ShanExtensions {
    
    // 2. တေလႆႈပဵၼ် Static Method
    // 3. ၸႂ်ႉ 'this' တႃႉ 'string' (Type ဢၼ်ႁဝ်းၶႂ်ႈထႅမ်သႂ်ႇ)
    public static void GreetShan(this string name) {
        Console.WriteLine($"Mai Sung Kha, {name}!");
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Usage)
ယၢမ်းလဵဝ်... `string` ၵူႈတူဝ်ၼႂ်း Project ၶူး တေမိူၼ်မီး Method မႂ်ႇမႃးၵမ်းလဵဝ်ၶႃႈ:

```csharp
string myName = "Sai Mao";

// ႁွင်ႉၸႂ်ႉမိူၼ် Instance Method ธรรมดา
myName.GreetShan(); // ဢွၵ်ႇ: "Mai Sung Kha, Sai Mao!"

// ဢမ်ႇၼၼ် ႁွင်ႉၸႂ်ႉတင်း String ၵမ်းလဵဝ်ၵေႃႈလႆႈ
"Community".GreetShan(); // ဢွၵ်ႇ: "Mai Sung Kha, Community!"
```

### 4. ႁဵတ်းသင်ၸင်ႇလီလိူဝ်?
1.  **Clean Code:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူလိၵ်ႈငၢႆႈ (Readable)။ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `ShanHelper.GreetShan(name)`၊ တႅမ်ႈ `name.GreetShan()` ၵေႃႈယဝ်ႉယဝ်ႉ။
2.  **No Modification:** ႁဝ်းထႅမ် "ၼႃႈတီႈ" သႂ်ႇၼႂ်း Class ပိူၼ်ႈလႆႈ လူၺ်းဢမ်ႇလူဝ်ႇမီး Source Code မၼ်း။
3.  **IntelliSense:** မိူဝ်ႈၶူးတႅမ်ႈ `.` ၽၢႆႇလင် string... Method မႂ်ႇဢၼ်ၶူးတႅမ်ႈၼၼ်ႉ တေဢွၵ်ႇမႃးၼႄၸွမ် ၸိူဝ်း Method ၶွင် Microsoft ၵမ်းလဵဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Extension Method:** Method ဢၼ်ထႅမ်သႂ်ႇၼႂ်း Type ဢၼ်မီးဝႆႉယဝ်ႉ။
* **This Parameter:** Parameter ဢၼ်မၵ်းမၼ်ႈဝႃႈ Method ၼႆႉပဵၼ်ၶွင် Type လႂ်။
* **Syntactic Sugar:** လၢႆးတႅမ်ႈ Code ဢၼ်ႁဵတ်းႁႂ်ႈလူငၢႆႈ ၵူၺ်းၵႃႈၽၢႆႇၼႂ်းလႅၼ်းမိူၼ်ၵဝ်ႇ။
* **Static Context:** တီႈယူႇ (Class) ဢၼ် Extension Method တေလႆႈယူႇ။

---