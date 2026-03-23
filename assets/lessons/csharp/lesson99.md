# Lesson 99: "Static vs. Instance Classes"

ၼႂ်း C# ႁဝ်းမီးလၢႆးသၢင်ႈ Class သွင်ပိူင် ဢၼ်မီးၵၢၼ်ၸႂ်ႉတူဝ် (Behavior) ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

### 1. Static Classes (Class ဢၼ်လဵဝ်)
**Static Class** ၼႆႉ ပဵၼ် Class ဢၼ်ႁဝ်း **ဢမ်ႇၸၢင်ႈ** ဢဝ်မၼ်းမႃးသၢင်ႈ Object (`new`) လႆႈၶႃႈ။ 

* **Keyword:** `static class`
* **Members:** ၵူႈယၢင်ႇၼႂ်းမၼ်း (Fields, Methods) တေလႆႈပဵၼ် **`static`** တင်းမူတ်း။
* **လၢႆးႁွင်ႉ:** လုၵ်ႉတီႈၸိုဝ်ႈ Class ႁွင်ႉၸႂ်ႉ ၵမ်းလဵဝ် (မိူၼ်ၼင်ႇ `Math.Abs(-5)` )။



### 2. Instance Classes (Class သၢင်ႈ Object)
**Instance Class** ၼႆႉ ပဵၼ် Class "ပိူင်ၵဝ်ႇ" ဢၼ်ႁဝ်းၸႂ်ႉမႃးတႃႇသေႇ။ 
ႁဝ်းလူဝ်ႇၸႂ်ႉ **`new`** တႃႇသၢင်ႈ Object ဢွၵ်ႇမႃး ၸင်ႇတေၸႂ်ႉလႆႈၶႃႈ။

* **Owner:** ၶေႃႈမုၼ်း (Data) ၵိုၵ်းဝႆႉတင်း Object ၵေႃႉတူဝ် ၵေႃႉဢၼ်။
* **လၢႆးႁွင်ႉ:** လူဝ်ႇသၢင်ႈ Instance ဢွၼ်တၢင်း (မိူၼ်ၼင်ႇ `Student s = new Student();`)။

### 3. ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်? (The Big Comparison)

| Feature | Static Class | Instance Class                             |
| :--- | :--- |:-------------------------------------------|
| **Instantiable?** | No (`new` ဢမ်ႇလႆႈ) | Yes (`new` လႆႈ)                            |
| **Storage** | ယူႇတီႈလဵဝ်ၼႂ်း Memory | သၢင်ႈမႂ်ႇၵူႈပွၵ်ႈ ၸႂ်ႉတိုဝ်း `new`         |
| **State** | သိမ်းၶေႃႈမုၼ်းႁူမ်ႈၵၼ် (Global) | သိမ်းၶေႃႈမုၼ်းၸႅၵ်ႇၵၼ် (Private to Object) |
| **Use Case** | Helper methods, Math, Constants | Real-world objects (Student, Car)          |

### 4. တူဝ်ယင်ႇ Code ၼႄလွင်ႈပႅၵ်ႇၵၼ်

```csharp
// Static Class: တႃႇပိၼ်ႈမၢႆၼပ်ႉတႆး (Helper)
public static class ShanMath {
    public static double SokToFeet(double sok) => sok * 1.5;
}

// Instance Class: တႃႇသိမ်းလုၵ်ႈႁဵၼ်း (Real Object)
public class Student {
    public string Name;
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
double feet = ShanMath.SokToFeet(2); // OK! ႁွင်ႉၵမ်းလဵဝ်

// ShanMath m = new ShanMath(); // Error! Static class သၢင်ႈ object ဢမ်ႇလႆႈ

Student s1 = new Student(); s1.Name = "Mao"; // OK!
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static Class:** Class ဢၼ်ဢမ်ႇပၼ်သုၼ်ႇသၢင်ႈ Instance သေမီးဝႆႉ static members လၢႆလၢႆၵူၺ်း။
* **Instance Class:** Class ဢၼ်မီးဝႆႉတႃႇသၢင်ႈ Object။
* **Utility / Helper Class:** Class ဢၼ်မီး Method တႃႇႁွင်ႉၸႂ်ႉတိုဝ်းလႆႈငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ Math Class)။
* **Singleton:** (Advanced) လွၵ်းလၢႆးတႅမ်ႈ Class ႁႂ်ႈမီး Object လႆႈတူဝ်လဵဝ် (ပႅၵ်ႇတင်း Static ယူႇဢိတ်းၼိုင်ႈၶႃႈ)။

---