# Lesson 113: "Copy Constructors"

**Copy Constructor** ပွင်ႇဝႃႈ Constructor ဢၼ်ႁပ်ႉ **Parameter ပဵၼ် Object ၶွင် Class လဵဝ်ၵၼ်** တႃႇဢဝ်ၶေႃႈမုၼ်းၼႂ်းမၼ်း မႃးၵေႃႇပီႇ (Copy) သႂ်ႇပၼ်တူဝ်မႂ်ႇၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈလႆႈ "ၵေႃႇပီႇ" ၶွင် Object ဢၼ်ပဵၼ် **တူဝ်မႂ်ႇ (New Instance)** တႅတ်ႉတေႃး၊ ဢမ်ႇၸႂ်ႈၵူၺ်းပဵၼ် Reference ဢၼ်ၸိၼႄၸူးတီႈလဵဝ်ၵၼ် (Lesson 102)။



### 2. ပိူင်သၢင်ႈ (Syntax)

```csharp
public class Student {
    public string Name;
    public int Age;

    // 1. Parameterized Constructor ပုံမှန်
    public Student(string name, int age) {
        this.Name = name;
        this.Age = age;
    }

    // 2. Copy Constructor
    // မၼ်းႁပ်ႉ Student တူဝ်ထႅင်ႈတူဝ်ၼိုင်ႈ (other) မႃးပဵၼ် Parameter
    public Student(Student other) {
        this.Name = other.Name;
        this.Age = other.Age;
    }
}
```

### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
// သၢင်ႈ Object တူဝ်တႄႇ (Original)
Student s1 = new Student("Sai Mao", 25);

// သၢင်ႈ Object တူဝ်မႂ်ႇ လူၺ်းၵၢၼ် "ၵေႃႇပီႇ" လုၵ်ႉတီႈ s1
Student s2 = new Student(s1);

// ယၢမ်းလဵဝ် s1 လႄႈ s2 မီးၶေႃႈမုၼ်းမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ ပဵၼ်ၵေႃႉတူဝ်တူဝ် (Different Memory)
s2.Name = "Nang Kham"; 

Console.WriteLine(s1.Name); // "Sai Mao" (ဢမ်ႇလႅၵ်ႈလၢႆႈၸွမ်း)
Console.WriteLine(s2.Name); // "Nang Kham"
```

### 4. တၢင်းလီ
* **Data Preservation:** ႁဝ်းၸၢင်ႈၵေႃႇပီႇ Object ဝႆႉ (Backup) မိူဝ်းပႆႇမူၼ်ႉမႄး တႃႇၵႅတ်ႇၶႄၶေႃႈမုၼ်းႁၢႆ။
* **Deep Copying:** ၸွႆးႁႂ်ႈႁဝ်းၵုမ်းထိင်းလႆႈဝႃႈ တေၵေႃႇပီႇၶေႃႈမုၼ်းတွၼ်ႈလႂ် ႁႂ်ႈပဵၼ်တူဝ်မႂ်ႇတႄႉတႄႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Copy Constructor:** Constructor ဢၼ်သၢင်ႈ Object မႂ်ႇ လုၵ်ႉတီႈ Object တူဝ်ဢၼ်မီးဝႆႉယဝ်ႉ။
* **Shallow Copy:** ၵၢၼ်ၵေႃႇပီႇဢဝ် Reference ၵူၺ်း (ၸိၼႄၸူးတီႈလဵဝ်ၵၼ်)။
* **Deep Copy:** ၵၢၼ်ၵေႃႇပီႇဢဝ် ၶေႃႈမုၼ်းတႄႉတႄႉ ႁႂ်ႈပဵၼ် Object မႂ်ႇမႂ်ႇ (Copy Constructor ၸွႆႈႁဵတ်းလၢႆးၼႆႉၶႃႈ)။
* **Cloning:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင်ၵၢၼ်သၢင်ႈ Object ဢၼ်မိူၼ်ၵၼ်။

---