# Lesson 131: "Read-Only Properties"

**Read-Only Property** ပွင်ႇဝႃႈ Property ဢၼ်မီးၵူၺ်း **`get`** accessor သေ ဢမ်ႇမီး `set` ၶႃႈ။

### 1. လၢႆးတႅမ်ႈ 2 ပိူင် (Manual vs Auto)

**ပိူင် 1: Manual Read-Only (ၸႂ်ႉတင်း Backing Field)**
ႁဝ်းၸႂ်ႉလၢႆးၼႆႉ မိူဝ်ႈႁဝ်းၶႂ်ႈပၼ်ၵႃႈၶၼ် လုၵ်ႉတီႈၼႂ်း Class ၵူၺ်း။

```csharp
public class ShanCitizen {
    private string _idNumber = "123-456"; // Backing Field

    public string IdNumber {
        get { return _idNumber; }
        // ဢမ်ႇမီး set!
    }
}
```

**ပိူင် 2: Auto-Implemented Read-Only (C# 6.0+)**
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈဢၼ်ပွတ်းသေပိူၼ်ႈ။ ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်တႄႇ (Initialize) ဝႆႉလႆႈၵမ်းလဵဝ်။

```csharp
public class AppConfig {
    public string Version { get; } = "v1.0.2"; 
}
```



### 2. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Data Integrity:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ် Code ၽၢႆႇၼွၵ်ႈ (External) မႃးမႄးၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇထုၵ်ႇလီလႅၵ်ႈလၢႆႈ (မိူၼ်ၼင်ႇ CreatedDate ဢမ်ႇၼင်ႇ ID)။
* **Security:** ပၼ်ပိူၼ်ႈႁူႉ (Access) ၵႃႈၶၼ်ၵူၺ်း၊ ၵူၺ်းၵႃႈ ဢမ်ႇပၼ်သုၼ်ႇၵုမ်းထိင်း (Control)။
* **Calculated Values:** မၢင်ပွၵ်ႈ Property ၼၼ်ႉ ပဵၼ်ၵႃႈၶၼ် ဢၼ်ၼပ်ႉဢၢၼ်ႇ (Calculate) ဢွၵ်ႇမႃးလုၵ်ႉတီႈ Fields တၢင်ႇဢၼ် (တေႁဵၼ်းလိုၵ်ႉၼႂ်း Lesson 134)။

### 3. ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Initialization)
တႃႇ Auto-Property ဢၼ်မီးၵူၺ်း `get` ၼၼ်ႉ... ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်လႆႈ 2 တီႈၵူၺ်းၶႃႈ:
1. **Property Initializer:** တႅမ်ႈဝႆႉၽၢႆႇလင် `get;` ၵမ်းလဵဝ်။
2. **Constructor:** ပၼ်ၵႃႈၶၼ်ၼႂ်း Constructor (မိူၼ်တင်း `readonly` field ၶႃႈ)။

```csharp
public class Student {
    public string StudentId { get; } // Read-only

    public Student(string id) {
        StudentId = id; // ပၼ်ၵႃႈၶၼ်လႆႈၼႂ်း Constructor ၵူၺ်း
    }
}
```

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
Student s = new Student("S-001");
Console.WriteLine(s.StudentId); // "S-001" (Read OK)
// s.StudentId = "S-999"; // Error! မႄးဢမ်ႇလႆႈ (Write Fail)
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Read-Only Property:** Property ဢၼ်မီးၵူၺ်း `get` accessor။
* **Immutability:** ပိူင်ၵၢၼ်ဢၼ်ၶေႃႈမုၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈ (သၢႆၸႂ်ၼိမ်)။
* **Getter-Only:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် Read-only property။
* **Accessibility:** ၸၼ်ႉသုၼ်ႇၶဝ်ႈၸူး (Read-only ႁဵတ်းႁႂ်ႈ Write-access ပဵၼ် 0)။

---