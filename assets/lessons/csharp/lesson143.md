# Lesson 143: "Protected Access: Sharing Data"

မိူဝ်ႈႁဝ်းႁဵၼ်းလွင်ႈ **Encapsulation** (Module 10) ၼၼ်ႉ... ႁဝ်းႁူႉဝႃႈ `private` ၼႆႉ လပ်ႉဝႆႉၼႂ်း Class လဵဝ်ၵူၺ်း။ ၵူၺ်းၵႃႈ ပၼ်ႁႃမီးဝႃႈ: "သင်ႁဝ်းၶႂ်ႈလပ်ႉပိူၼ်ႈ (Public) ၵူၺ်းၵႃႈ ၶႂ်ႈပၼ်လုၵ်ႈလၢၼ် (Child Class) ႁဝ်းၸႂ်ႉလႆႈၼႆ... တေႁဵတ်းၸိူင်ႉႁိုဝ်?"

ၶေႃႈတွပ်ႇၵေႃႈပဵၼ် Keyword **`protected`** ၼၼ်ႉယဝ်ႉၶႃႈ။

### 1. လႅၼ်းႁၼ် (Visibility Scope)
* **Inside the Class:** ၸႂ်ႉလႆႈ (မိူၼ် private)။
* **Derived Class (Child):** **ၸႂ်ႉလႆႈ** (ၼႆႉပဵၼ်လွင်ႈဝိသဵတ်ႇမၼ်းၶႃႈ)။
* **External Code (Other classes):** **ဢမ်ႇႁၼ်** (မိူၼ် private)။



### 2. တူဝ်ယင်ႇ Code (Shan Community Roles)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `Staff` ဢၼ်မီး "မၢႆလပ်ႉၵူၼ်းႁဵတ်းၵၢၼ်"။

```csharp
public class Staff {
    // ၸႂ်ႉ protected တႃႇပၼ်လုၵ်ႈလၢၼ်ၸႂ်ႉ
    protected string InternalCode = "SHAN-INTERNAL-001";
    
    private string _personalPhone = "09-123456"; // လုၵ်ႈၵေႃႈႁၼ်ဢမ်ႇလႆႈ
}

public class Teacher : Staff {
    public void DisplayInfo() {
        // Teacher ၸၢင်ႈၸႂ်ႉ InternalCode လႆႈ ယွၼ်ႉမၼ်းသိုပ်ႉၸိူဝ်ႉၶိူဝ်းမႃး
        Console.WriteLine("Internal ID: " + InternalCode);
        
        // Console.WriteLine(_personalPhone); // Error! private တေႃႈလုၵ်ႈၵေႃႈၸႂ်ႉဢမ်ႇလႆႈ
    }
}
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `protected`?
1.  **Security with Flexibility:** ႁဝ်းတိုၵ်ႉၵႅတ်ႇၶႄၶေႃႈမုၼ်း လုၵ်ႉတီႈၵူၼ်းၼွၵ်ႈ (External Classes) ယူႇ၊ ၵူၺ်းၵႃႈ ႁဝ်းပၼ်သုၼ်ႇလုၵ်ႈလၢၼ် ဢဝ် Logic ၼၼ်ႉၵႂႃႇၸႂ်ႉသိုပ်ႇလႆႈ လူၺ်းဢမ်ႇတုမ်ႉတိူဝ်ႉ Encapsulation ၶႃႈ။
2.  **Code Sharing:** ၸွႆးႁႂ်ႈ Class ပေႃး ၸၢင်ႈသူင်ႇ "ၶိူင်ႈမိုဝ်း" (Tools/Fields) ပၼ်လုၵ်ႈလၢၼ် ဢဝ်ၵႂႃႇသၢင်ႈလွင်ႈလႅတ်းသႅဝ်းမႂ်ႇๆ လႆႈငၢႆႈၶႃႈ။

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
Teacher t = new Teacher();
t.DisplayInfo(); // OK: Teacher ၸႂ်ႉ protected data ၼႂ်းတူဝ်မၼ်းလႆႈ

// Console.WriteLine(t.InternalCode); // Error! (Protected member ႁွင်ႉၸႂ်ႉလုၵ်ႉတီႈၼွၵ်ႈဢမ်ႇလႆႈ)
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Protected Access:** Access modifier ဢၼ်ပၼ်သုၼ်ႇ Class တူဝ်မၼ်း လႄႈ လုၵ်ႈလၢၼ်မၼ်းၵူၺ်း။
* **Family Access:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် protected (ၸိုဝ်ႈဢၼ်ပၼ်သုၼ်ႇၼႂ်းမုင်ႉႁိူၼ်း)။
* **Information Hiding:** ၵၢၼ်လပ်ႉၶေႃႈမုၼ်း ဢမ်ႇပၼ်ၵူၼ်းၼွၵ်ႈႁၼ်။
* **Member Accessibility:** ၸၼ်ႉသုၼ်ႇၶဝ်ႈၸူး Variable ဢမ်ႇၼၼ် Method။

---