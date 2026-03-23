# Lesson 100: "Partial Classes: Splitting Large Class Files"

**Partial Class** ပွင်ႇဝႃႈ ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Class ဢၼ်လဵဝ် ဝႆႉၼႂ်း File လၢႆလၢႆဢၼ်။ 
မိူဝ်ႈႁဝ်း Build (Compile) Code ၼၼ်ႉ... C# တေဢဝ်တွၼ်ႈၸိူဝ်းၼၼ်ႉ မႃးႁူမ်ႈၵၼ်ပဵၼ် Class ဢၼ်လဵဝ် ႁင်းၵူၺ်းမၼ်းၶႃႈ။

### 1. Keyword `partial`
တႃႇတေၸႅၵ်ႇ Class လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Keyword **`partial`** ဝႆႉၽၢႆႇၼႃႈ `class` တႃႇသေႇ တႃႇၵူႈ File ၶႃႈ။



### 2. တူဝ်ယင်ႇ Code (File 1 လႄႈ File 2)

**File: Student_Data.cs**
```csharp
public partial class Student {
    public string Name;
    public int Age;
}
```

**File: Student_Logic.cs**
```csharp
public partial class Student {
    public void Study() {
        Console.WriteLine($"{Name} is studying.");
    }
}
```

**ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main Program):**
```csharp
Student s = new Student();
s.Name = "Sai Mao"; // လုၵ်ႉတီႈ File 1
s.Study();           // လုၵ်ႉတီႈ File 2
```

### 3. ႁဵတ်းသင်ၸင်ႇၸႂ်ႉ?
* **Large Projects:** မိူဝ်ႈ Class ၼိုင်ႈဢၼ်မီး Code ပဵၼ်ႁဵင်ထႅဝ်၊ ၵၢၼ်ၸႅၵ်ႇ File တေၸွႆးႁႂ်ႈႁႃ Code ငၢႆႈၶိုၼ်း။
* **Multiple Developers:** ၸွႆးႁႂ်ႈ Developer သွင်ၵေႃႉ တႅမ်ႈ Code ၼႂ်း Class လဵဝ်ၵၼ် ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ် လႆႈ (ၵေႃႉၼိုင်ႈတႅမ်ႈ Data, ၵေႃႉၼိုင်ႈတႅမ်ႈ Methods)။
* **Auto-generated Code:** ၼႂ်း **Windows Forms** ဢမ်ႇၼၼ် **WPF**... Visual Studio တေတႅမ်ႈ Code တႃႇ "ႁၢင်ႈၾၢင် Screen" ဝႆႉၼႂ်း File ၼိုင်ႈဢၼ် (Designer.cs) သေ တႃႇပၼ်ႁဝ်းတႅမ်ႈ Logic ၼၼ်ႉ တေႁဵတ်းပၼ်ဝႆ့ထႅင်ႈ File ၼိုင်ႈဢၼ်ယဝ်ႉ။ လၢႆးၼႆႉ ႁဵတ်းႁႂ်ႈ Code ဢၼ်ၸၢၵ်ႈတႅမ်ႈပၼ် ဢမ်ႇမႃးလေႃးၵၼ်တင်း Code ဢၼ်ႁဝ်းတႅမ်ႈႁင်းၵူၺ်းၶႃႈ။

### 4. ပိူင်ၵၢၼ် (Rules)
* **Same Namespace:** ၵူႈတွၼ်ႈ (Part) တေလႆႈယူႇၼႂ်း **Namespace** လဵဝ်ၵၼ်။
* **Same Access Modifier:** သင် File ဢၼ်ၼိုင်ႈပဵၼ် `public`... File ထႅင်ႈဢၼ်ၼိုင်ႈ တေလႆႈပဵၼ် `public` မိူၼ်ၵၼ်။
* **Inheritance:** သင် File ၼိုင်ႈ "သိုပ်ႇၶိူဝ်း" (Inherit) တီႈ Class သေဢၼ်ဢၼ်... Partial File ၵူႈဢၼ်ၵေႃႈ တေလႆႈႁဵတ်း မိူၼ်မၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Partial Class:** Class ဢၼ်ပိုၼ်ၽၢဝ်ႇဝႆႉလၢႆလၢႆတွၼ်ႈ ၼႂ်း File လၢႆလၢႆဢၼ်။
* **Separation of Concerns:** လွၵ်းလၢႆးၸႅၵ်ႇ Code ၸွမ်းၼင်ႇၵၢၼ်ႁဵတ်း (မိူၼ်ၼင်ႇ ၸႅၵ်ႇ UI လႄႈ Logic)။
* **Auto-generated:** Code ဢၼ် Tool (မိူၼ် Visual Studio) တႅမ်ႈပၼ်ႁင်းၵူၺ်း။
* **Compile-time Merger:** ၵၢၼ်ဢၼ် Compiler ဢဝ် Code ၵူႈ File မႃးႁူမ်ႈၵၼ် မိူဝ်ႈ Build App။

---