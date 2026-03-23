# Lesson 159: "Implementing Multiple Interfaces"

ၼႂ်း C#... Class ၼိုင်ႈတူဝ် ၸၢင်ႈႁပ်ႉဢဝ် Interface မႃးၸႂ်ႉလႆႈ **လၢႆလၢႆဢၼ်** ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်ၶႃႈ။ ၼႆႉပဵၼ်လၢႆးၵႄႈပၼ်ႁႃ (Solution) မိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Object ႁဝ်းမီး "ၼႃႈတီႈလၢႆလႅၼ်း" ၼၼ်ႉယဝ်ႉ။



### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်း Class **`ShanSmartWatch`** (ၼႃႇလိၵႃႇ)။
* မၼ်းပဵၼ် **`IDigitalTime`** (ၼႄၶၢဝ်းယၢမ်းလႆႈ)။
* မၼ်းပဵၼ် **`IHeartRateMonitor`** (ၵူတ်ႇထတ်းသၢႆၸႂ်လႆႈ)။
* မၼ်းပဵၼ် **`IMusicPlayer`** (ပိုတ်ႇၵႂၢမ်းလႆႈ)။
  ၼႃႇလိၵႃႇတူဝ်ၼႆႉ တေလႆႈႁပ်ႉ "ၵတိ" (Contract) တင်း 3 ဢၼ်မႃးတႅမ်ႈ Code ႁႂ်ႈယဝ်ႉတူဝ်ႈၼႂ်းတူဝ်မၼ်းၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉမၢႆ **`,`** (Comma) တႃႇၸႅၵ်ႇ Interface ၼင်ႇၼႆၶႃႈ:

```csharp
public interface IPrintable { void Print(); }
public interface IScannable { void Scan(); }

// Class ၼႆႉ ႁပ်ႉဢဝ်တင်း 2 Interface
public class ShanMultiPrinter : IPrintable, IScannable {
    public void Print() {
        Console.WriteLine("Printing document...");
    }

    public void Scan() {
        Console.WriteLine("Scanning document...");
    }
}
```

### 3. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ
1.  **Inheritance First:** သင် Class ႁဝ်းမီး Class ပေႃး (Base Class) ၸွမ်... တေလႆႈတႅမ်ႈၸိုဝ်ႈ Class ပေႃးဝႆႉ **ထီႉၼိုင်ႈ** တႃႇသေႇ၊ ယဝ်ႉၸင်ႇၸႂ်ႉ `,` တႃႇထႅမ် Interface ၶႃႈ။
    * `public class SmartTV : ElectronicProduct, IWiFi, IBluetooth { ... }`
2.  **All or Nothing:** သင်ႁဝ်းႁပ်ႉ 3 Interfaces... ႁဝ်းတေလႆႈတႅမ်ႈ Code (Implement) ၵူႈ Method ဢၼ်မီးၼႂ်း 3 ဢၼ်ၼၼ်ႉ တင်းမူတ်းၶႃႈ။
3.  **Conflict Resolution:** သင် Interfaces သွင်ဢၼ် မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ်... ႁဝ်းၸၢင်ႈၸႅၵ်ႇလႅၼ်းလႆႈ (တေႁဵၼ်းၼႂ်း Lesson 163)။

### 4. တူဝ်ယင်ႇ ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Polymorphism)
ႁဝ်းၸၢင်ႈ "ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း" (Cast) Object ၵႂႃႇၸူး Interface လႂ်ၵေႃႈလႆႈ ဢၼ်မၼ်းႁပ်ႉဝႆႉၶႃႈ:

```csharp
ShanMultiPrinter machine = new ShanMultiPrinter();

IPrintable p = machine; // Upcasting ၸူး IPrintable
p.Print(); // OK

IScannable s = machine; // Upcasting ၸူး IScannable
s.Scan(); // OK
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Multiple Implementation:** ၵၢၼ်ႁပ်ႉဢဝ် Interface လၢႆဢၼ်မႃးၸႂ်ႉၼႂ်း Class လဵဝ်။
* **Separation of Concerns:** ၵၢၼ်ၸႅၵ်ႇၼႃႈတီႈ ႁႂ်ႈပဵၼ်တွၼ်ႈၽႅၼ်ႇၽႂ်မၼ်း။
* **Plug-and-Play Architecture:** ပိူင်သၢင်ႈ Code ဢၼ်ၸၢင်ႈထႅမ် "ၼႃႈတီႈ" မႂ်ႇๆ ၶဝ်ႈမႃးလႆႈငၢႆႈ။
* **Interface Cast:** ၵၢၼ်ပိၼ်ႇ Object Type ၵႂႃႇပဵၼ် Interface Type။

---