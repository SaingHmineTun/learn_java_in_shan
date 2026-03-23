# Lesson 142: "Constructor Inheritance"

မိူဝ်ႈႁဝ်းသၢင်ႈ Object ၶွင် Class လုၵ်ႈ... C# တေႁွင်ႉၸႂ်ႉ Constructor ၶွင် **Class ပေႃး** ဢွၼ်တၢင်းတႃႇသေႇ၊ ယဝ်ႉၸင်ႇမႃးႁွင်ႉ Constructor ၶွင် **Class လုၵ်ႈ** ၶႃႈ။ သင် Class ပေႃးလူဝ်ႇလႆႈ Data... ႁဝ်းတေလႆႈၸႂ်ႉမၢႆ **`:`** တင်း Keyword **`base`** တႃႇသူင်ႇ Data ၼၼ်ႉၶႃႈ။



### 1. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတႅမ်ႈ `base(...)` ဝႆႉၽၢႆႇလင် Constructor ၶွင် Class လုၵ်ႈ ၼင်ႇၼႆၶႃႈ:

```csharp
public class BaseClass {
    public BaseClass(string message) {
        Console.WriteLine($"Base says: {message}");
    }
}

public class DerivedClass : BaseClass {
    // သူင်ႇ message ၵႂႃႇပၼ် Base Constructor
    public DerivedClass(string msg) : base(msg) {
        Console.WriteLine("Derived constructor executed.");
    }
}
```

### 2. တူဝ်ယင်ႇ Code တႄႉ (Shan Student System)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `Person` ဢၼ်လူဝ်ႇလႆႈ `Name` တႃႇသေႇၶႃႈ။

```csharp
public class Person {
    public string Name { get; set; }

    // Constructor ၶွင် Class ပေႃး
    public Person(string name) {
        Name = name;
    }
}

public class Student : Person {
    public int StudentID { get; set; }

    // Constructor ၶွင် Class လုၵ်ႈ
    public Student(string name, int id) : base(name) {
        // 'name' ထုၵ်ႇသူင်ႇၵႂႃႇပၼ် Person ယဝ်ႉ
        // ႁဝ်းမႄးၵူၺ်း ID ၼႂ်း Class ၼႆႉ
        StudentID = id;
    }
}
```

### 3. ပိူင်ၵၢၼ်လမ်ႇလွင်ႈ (Key Rules)
1.  **Execution Order:** Constructor ၶွင် Class **ပေႃး** တေလႅၼ်ႈဢွၼ်တၢင်း (ယွၼ်ႉလူဝ်ႇသၢင်ႈပိုၼ်ႉထၢၼ် Object ႁႂ်ႈယဝ်ႉ)၊ ယဝ်ႉၸင်ႇပဵၼ်ၶွင် Class **လုၵ်ႈ** ၶႃႈ။
2.  **Explicit Call:** သင် Class ပေႃးဢမ်ႇမီး Default Constructor (ဢၼ်ဢမ်ႇမီး parameter)... Class လုၵ်ႈ **"တေလႆႈ"** ႁွင်ႉ `base(...)` တႃႇသေႇ၊ ဢမ်ႇၼၼ် Compiler တေလၢတ်ႈ Error ၶႃႈ။
3.  **Data Passing:** ႁဝ်းၸၢင်ႈသူင်ႇ Parameter လုၵ်ႉတီႈလုၵ်ႈ ၵႂႃႇပၼ်ပေႃးလႆႈလၢႆๆ တူဝ်ၶႃႈ။

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
Student s = new Student("Sai Mao", 101);
Console.WriteLine($"Student: {s.Name}, ID: {s.StudentID}");
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constructor Inheritance:** ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း ၼႂ်းတွၼ်ႈၵၢၼ်သၢင်ႈ Object။
* **Base Constructor:** Constructor ၶွင် Class ပေႃး (Parent)။
* **Constructor Chaining:** ၵၢၼ်ၵွင်ႉသၢႆလႅၼ်း Constructor တူဝ်ၼိုင်ႈ ၸူးထႅင်ႈတူဝ်ၼိုင်ႈ။
* **Parameter Passing:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇၼႂ်း Constructor။

---