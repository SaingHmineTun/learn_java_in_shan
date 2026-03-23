# Lesson 161: "Default Interface Methods"

**Default Interface Methods** ပဵၼ်လွင်ႈလႅတ်းသႅဝ်းမႂ်ႇ ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Interface မီး Method ဢၼ်မီး Code Block `{ }` ဝႆႉဢွၼ်တၢင်းၶႃႈ။ ၼႆႉၸွႆးႁႂ်ႈႁဝ်းထႅမ် "ၼႃႈတီႈမႂ်ႇ" သႂ်ႇၼႂ်း Interface လႆႈ လူၺ်းဢမ်ႇႁဵတ်းႁႂ်ႈ Class ၵဝ်ႇၸိူဝ်းဢၼ် Implement ဝႆႉၼၼ်ႉ ၸိူဝ်ႉ (Break) ၶႃႈ။



### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇမီး Default Method?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းမီး Interface **`ILogger`** ဢၼ်ပိူၼ်ႈၸႂ်ႉဝႆႉၼႂ်း 100 Classes။
* ဝၼ်းၼိုင်ႈ ၶူးၶႂ်ႈထႅမ် Method `LogStatus()` ၶဝ်ႈၵႂႃႇ။
* သင်ပဵၼ်မိူဝ်ႈၵဝ်ႇ: ၶူးတေလႆႈၵႂႃႇမႄး Code တင်း 100 Classes ၼၼ်ႉ ႁႂ်ႈ Implement Method မႂ်ႇၼႆႉၶႃႈ (ယုင်ႈၼႃႇ!)။
* ယၢမ်းလဵဝ်: ၶူးၸၢင်ႈတႅမ်ႈ Logic ဝႆႉၼႂ်း `ILogger` ၵမ်းလဵဝ်၊ သေ Class ၸိူဝ်းၼၼ်ႉ တေၸႂ်ႉလႆႈၵမ်းလဵဝ် လူၺ်းဢမ်ႇလူဝ်ႇမႄးသင်ၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတႅမ်ႈ Method ဢၼ်မီး `{ }` ဝႆႉၼႂ်း Interface ၼင်ႇၼႆၶႃႈ:

```csharp
public interface ISmartDevice {
    void TurnOn(); // Abstract Method (လူဝ်ႇတႅမ်ႈမႂ်ႇ)

    // Default Method (မီး Code ဝႆႉယဝ်ႉ)
    void Restart() {
        Console.WriteLine("Device is restarting... (Default)");
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (The Catch!)
လွင်ႈဢၼ်လူဝ်ႇၾၢင်ႉသုတ်းၵေႃႈပဵၼ်: Default Method ၼႆႉ **ႁွင်ႉၸႂ်ႉလုၵ်ႉတီႈ Class Object ၵမ်းလဵဝ်ဢမ်ႇလႆႈ** ၶႃႈ။ ၶူးတေလႆႈ **Upcast** ၸူး Interface ၵွၼ်ႇ ၸင်ႇတေႁၼ်မၼ်းၶႃႈ။

```csharp
public class ShanPhone : ISmartDevice {
    public void TurnOn() => Console.WriteLine("Phone is ON.");
    // ဢမ်ႇလူဝ်ႇ Implement Restart() ၵေႃႈလႆႈ
}

// --- Inside Main ---
ShanPhone myPhone = new ShanPhone();
// myPhone.Restart(); // Error! (ဢမ်ႇႁၼ်)

ISmartDevice device = myPhone; // Upcast ၸူး Interface
device.Restart(); // OK! (ႁွင်ႉၸႂ်ႉ Default Logic လႆႈယဝ်ႉ)
```

### 4. တေ `override` လႆႈႁႃႉ?
**လႆႈၶႃႈ!** သင် Class လုၵ်ႈ ၶႂ်ႈမီးလၢႆး Restart ႁင်းၵူၺ်းမၼ်း... မၼ်းၸၢင်ႈတႅမ်ႈ Method ၸိုဝ်ႈမိူၼ်ၵၼ်ၼၼ်ႉ တႅၼ်းလႆႈယူႇၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Default Implementation:** Logic ဢၼ်ပၼ်ဝႆႉဢွၼ်တၢင်း ၼႂ်း Interface။
* **Backward Compatibility:** ၵၢၼ်မႄး Code ႁႂ်ႈၸႂ်ႉၸွမ်း Code ၵဝ်ႇလႆႈ လူၺ်းဢမ်ႇမီးပၼ်ႁႃ။
* **Interface Inheritance:** ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း ၶွင် Interface။
* **Evolution of Interface:** ၵၢၼ်လႅၵ်ႈလၢႆႈ လႄႈ ၵၢၼ်ၶိုၼ်ႈသုင် ၶွင်ၵတိ (Contract)။

---