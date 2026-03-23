# Lesson 140: "Base Classes and Derived Classes: The ':' Syntax"

ၼႂ်း C# ၵၢၼ်ႁဵတ်း **ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း** (Inheritance) ၼႆႉ တႅမ်ႈငၢႆႈၼႃႇၶႃႈ။ ႁဝ်းၸႂ်ႉမၢႆ **`:`** (Colon) တႃႇမၵ်းမၼ်ႈဝႃႈ Class လုၵ်ႈ တေသူင်ႇသၢႆၸႂ်သိုပ်ႇလုၵ်ႉတီႈ Class ပေႃးတူဝ်လႂ်မႃးၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)
လၢႆးတႅမ်ႈမၼ်းပဵၼ်: `class ChildClass : ParentClass { ... }`



### 2. တူဝ်ယင်ႇ Code တႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းသၢင်ႈၸိူဝ်ႉၶိူဝ်းၵူၼ်းႁဵတ်းၵၢၼ် ၼႂ်း **Shan Community Project** ႁဝ်းၶႃႈ:

```csharp
// 1. Base Class (ၸိူဝ်ႉၶိူဝ်းတူဝ်ပေႃး)
public class Staff {
    public string Name { get; set; }
    
    public void CheckIn() {
        Console.WriteLine($"{Name} has checked in.");
    }
}

// 2. Derived Class (ၸိူဝ်ႉၶိူဝ်းတူဝ်လုၵ်ႈ)
// Teacher "သိုပ်ႇၸိူဝ်ႉၶိူဝ်း" လုၵ်ႉတီႈ Staff
public class Teacher : Staff {
    public string Subject { get; set; }
    
    public void Teach() {
        Console.WriteLine($"{Name} is teaching {Subject}.");
    }
}
```

### 3. မၼ်းႁဵတ်းၵၢၼ်ၸိင်ႉႁိုဝ်?
မိူဝ်ႈႁဝ်းသၢင်ႈ Object လုၵ်ႉတီႈ `Teacher`... မၼ်းတေမီးသုၼ်ႇၸႂ်ႉ `Name` လႄႈ `CheckIn()` လႆႈၵမ်းလဵဝ် ယွၼ်ႉမၼ်းလႆႈႁပ်ႉမွေႇမႃးယဝ်ႉၶႃႈ။

```csharp
Teacher t = new Teacher();
t.Name = "Kru Sai Mao"; // ၸႂ်ႉမွေႇလုၵ်ႉတီႈ Staff
t.Subject = "C# Programming";
t.CheckIn(); // ၸႂ်ႉမွေႇလုၵ်ႉတီႈ Staff
t.Teach();   // ၸႂ်ႉလၢႆးႁဵတ်းသၢင်ႈ ၶွင်တူဝ်မၼ်းႁင်းၵူၺ်း
```

### 4. ပိူင်ၵၢၼ်လမ်ႇလွင်ႈ (Key Rules)
* **Single Inheritance:** ၼႂ်း C#... Class လုၵ်ႈၼိုင်ႈတူဝ် သိုပ်ႇၸိူဝ်ႉၶိူဝ်းလႆႈလုၵ်ႉတီႈ Class ပေႃး **တူဝ်လဵဝ်** ၵူၺ်းၶႃႈ (ဢမ်ႇပၼ်မီးပေႃးလၢႆၵေႃႉ)။
* **Transitive:** သင် Class C သိုပ်ႇ B၊ သေ B သိုပ်ႇ A... ၸိုင် C ၵေႃႈတေလႆႈႁပ်ႉမွေႇတင်းမူတ်း လုၵ်ႉတီႈ A မႃးၸွမ်းၶႃႈ။
* **Access:** တွၼ်ႈဢၼ်ပဵၼ် `private` ၼႂ်း Class ပေႃးၼၼ်ႉ... Class လုၵ်ႈတေႁၼ်ဢမ်ႇလႆႈၶႃႈ (တေလႆႈၸႂ်ႉ `protected` ဢၼ်တေႁဵၼ်းၼႂ်း Lesson 143)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Base Class:** Class ပိုၼ်ႉထၢၼ် ဢၼ်သူင်ႇၸိူဝ်ႉမွေႇ (Parent)။
* **Derived Class:** Class ဢၼ်ႁပ်ႉသိုပ်ႇၸိူဝ်ႉမွေႇ (Child)။
* **Colon Operator (`:`):** မၢႆဢၼ်ၸႂ်ႉတႃႇတႅမ်ႈၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း။
* **Reusability:** ၵၢၼ်ဢဝ် Code ၵဝ်ႇမႃးၸႂ်ႉၶိုၼ်း လူၺ်းဢမ်ႇတႅမ်ႈမႂ်ႇ။

---