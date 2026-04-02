# Lesson 204: "Multicast Delegates"

**Multicast Delegate** ပဵၼ် Delegate ဢၼ်မီး "သဵၼ်ႈမၢႆ Method" (Invocation List) ဝႆႉၼႂ်းတူဝ်မၼ်း။ 
မိူဝ်းႁဝ်းႁွင်ႉၸႂ်ႉမၼ်း... မၼ်းတေၵႂႃႇလႅၼ်ႈ Method တင်းမူတ်း ဢၼ်မီးဝႆႉၼႂ်းမၼ်း ၸွမ်းၼင်ႇ လႆႈၶပ်ႉထႅဝ်ဝႆႉၼၼ်ႉၶႃႈ။

### 1. လၢႆးထႅမ် လႄႈ လၢႆးလူတ်ႇ (Operators)

ႁဝ်းၸႂ်ႉ Operator ငၢႆႈငၢႆႈ တႃႇၸတ်းၵၢၼ် Method ၼႂ်း Delegate ၶႃႈ:

* **`+=`**: တႃႇထႅမ် Method ၶဝ်ႈၵႂႃႇၼႂ်းသဵၼ်ႈမၢႆ။
* **`-=`**: တႃႇလူတ်ႇ Method ဢွၵ်ႇပႅတ်ႈ။

### 2. တူဝ်ယင်ႇ Code: ၵၢၼ်သူင်ႇၶေႃႈၵႂၢမ်းလၢႆလၢႆတၢင်း

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး App ၶေႃႈမုၼ်းတႆး ဢၼ်ၶႂ်ႈသူင်ႇ "ၶေႃႈၵႂၢမ်းတိူၼ်း" (Notification) ၵႂႃႇတင်း SMS လႄႈ Email ႁူမ်ႈၵၼ်ၶႃႈ။

```csharp
public delegate void Notifier(string message);

class Program {
    static void Main() {
        // 1. သၢင်ႈ Instance ဢွၼ်တၢင်း
        Notifier notifyAll = SendSMS;

        // 2. ထႅမ် Method ထႅင်ႈဢၼ်ၼိုင်ႈ (Multicast)
        notifyAll += SendEmail;

        // 3. ႁွင်ႉၸႂ်ႉၵမ်းလဵဝ်... မၼ်းတေလႅၼ်ႈတင်းသွင် Method!
        Console.WriteLine("--- တႄႇသူင်ႇၶေႃႈၵႂၢမ်း ---");
        notifyAll("မႂ်ႇသုင် ဝၼ်းပီႊမႂ်ႇတႆးၶႃႈ!");

        // 4. လူတ်ႇ SMS ဢွၵ်ႇပႅတ်ႈ
        notifyAll -= SendSMS;
        
        Console.WriteLine("\n--- ဝၢႆးလင်လူတ်ႇ SMS ---");
        notifyAll("သိုပ်ႇႁဵၼ်း C# ၵၼ်ၶႃႈ!");
    }

    static void SendSMS(string msg) => Console.WriteLine($"သူင်ႇ SMS: {msg}");
    static void SendEmail(string msg) => Console.WriteLine($"သူင်ႇ Email: {msg}");
}
```

### 3. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ ဢၼ်လူဝ်ႇတွင်း

1.  **Return Type:** တွၼ်ႈတႃႇ Multicast... Delegate ဢဝ်ႁဵတ်းပဵၼ် **`void`** ၼႆ တေလီသုတ်းၶႃႈ။ (သင်မၼ်းမီး return value... မၼ်းတေဢဝ်ၵႃႈၶၼ်ၶွင် Method **တူဝ်လင်သုတ်း** မႃးၼႄၵူၺ်းၶႃႈ)။
2.  **Order:** Method ၸိူဝ်းၼၼ်ႉ တေလႅၼ်ႈၸွမ်းၼင်ႇ "ထႅဝ်" ဢၼ်ႁဝ်း `+=` ၶဝ်ႈၵႂႃႇ။
3.  **Error Handling:** သင် Method ၼိုင်ႈဢၼ်မီးပၼ်ႁႃ (Exception)... Method ၸိူဝ်းၵိုတ်းဝႆႉၼႂ်းထႅဝ်ၼၼ်ႉ တေဢမ်ႇလႆႈလႅၼ်ႈၶႃႈ (ႁဝ်းတေလႆႈၵႄႈလၢႆးၼႆႉ ၼႂ်းတွၼ်ႈ Advanced)။

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?

* **Logging:** တႃႇသိမ်း Log ဝႆႉၼႂ်း File လႄႈ ၼႄၼိူဝ် Console ႁူမ်ႈၵၼ်။
* **Event Broadcasting:** တႃႇတိူၼ်းပၼ်ၵူၼ်းလၢႆလၢႆၵေႃႉ (Subscribers) မိူဝ်ႈမီးလွင်ႈတၢင်းမႂ်ႇၵဵတ်းၶိုၼ်း။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Multicast Delegate:** Delegate ဢၼ်ၵဵပ်း Reference ၶွင် Method လၢႆဢၼ်။
* **Invocation List:** သဵၼ်ႈမၢႆၶွင် Method ၸိူဝ်းဢၼ်ယူႇၼႂ်း Delegate။
* **Method Chaining:** ၵၢၼ်ဢဝ် Method မႃးၵွင်ႉသိုပ်ႇၵၼ်။
* **Broadcasting:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ဢွၵ်ႇၵႂႃႇၸူးလၢႆလၢႆတီႈ ၼႂ်းၵမ်းလဵဝ်။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းမႃးတႅမ်ႈ Class **`ShanNewsStation`**။

1.  သၢင်ႈ Delegate **`NewsUpdate`** ဢၼ်ႁပ်ႉ `string newsTitle`။
2.  သၢင်ႈ Method 3 ဢၼ်: `PostToFacebook`, `PostToTelegram`, `PostToWebsite`။
3.  ၸႂ်ႉ **`+=`** တႃႇၵွင်ႉတင်း 3 Method သေ ႁွင်ႉၸႂ်ႉၵမ်းလဵဝ် ႁႂ်ႈမၼ်းၼႄဢွၵ်ႇတင်း 3 တီႈၶႃႈ။