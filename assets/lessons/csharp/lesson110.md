# Lesson 110: "Constructor Chaining"

**Constructor Chaining** ပွင်ႇဝႃႈ ၵၢၼ်ႁွင်ႉ Constructor တူဝ်ၼိုင်ႈ လုၵ်ႉတီႈၼႂ်း Constructor ထႅင်ႈတူဝ်ၼိုင်ႈ ၼႂ်း Class လဵဝ်ၵၼ် လူၺ်းၵၢၼ်ၸႂ်ႉ Keyword **`this`** ၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Constructor 3 ဢၼ်။ သင်ႁဝ်းတႅမ်ႈ `Name = n; Age = a;` သွၼ်ႉၵၼ်ၵူႈဢၼ်... ပေႃးဝၢႆးၼႃႈမႃး ႁဝ်းလူဝ်ႇမႄး Logic သေဢၼ်ဢၼ်ၼႆ ႁဝ်းတေလႆႈၵႂႃႇမႄးတင်း 3 တီႈၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၸႂ်ႉ **`: this(...)`** ဝႆႉၽၢႆႇလင် Signature ၶွင် Constructor ဢွၼ်တၢင်းပႆႇပိုတ်ႇ `{ }` ၶႃႈ။

```csharp
public class Student {
    public string Name;
    public int Age;

    // 1. Constructor လူင် (ဢၼ်ႁပ်ႉၵူႈယၢင်ႇ)
    public Student(string n, int a) {
        this.Name = n;
        this.Age = a;
        Console.WriteLine("Main Constructor called.");
    }

    // 2. Constructor ဢၼ်ႁပ်ႉ Name ၵူၺ်း
    // မၼ်းတေသူင်ႇ Name ၵႂႃႇပၼ် ၵေႃႉထီႉ 1 သေယဝ်ႉ မၵ်းမၼ်ႈ Age ပဵၼ် 18 ဝႆႉ
    public Student(string n) : this(n, 18) {
        Console.WriteLine("Name-only Constructor called.");
    }

    // 3. Default Constructor
    // မၼ်းတေသူင်ႇၵႃႈၶၼ် Default ၵႂႃႇပၼ် ၵေႃႉထီႉ 1
    public Student() : this("Unknown", 0) {
        Console.WriteLine("Default Constructor called.");
    }
}
```

### 3. မၼ်းလႅၼ်ႈၸိူင်ႉႁိုဝ်? (Execution Order)
မိူဝ်ႈႁဝ်းႁွင်ႉ `new Student()`:
1. မၼ်းတေၵႂႃႇႁွင်ႉ Constructor ဢၼ်မီး `: this(...)` ဢွၼ်တၢင်း။
2. ၵၢၼ်ႁဵတ်းသၢင်ႈ (Logic) ၼႂ်း `{ }` ၶွင် Constructor တူဝ်ဢၼ်ထုၵ်ႇသူင်ႇၵႂႃႇၸူး (Target) ၼၼ်ႉ တေလႅၼ်ႈယဝ်ႉဢွၼ်တၢင်း။
3. ယဝ်ႉယဝ်ႉၸင်ႇ လႅၼ်ႈ Logic ၼႂ်း `{ }` ၶွင်တူဝ်ဢၼ်ႁဝ်းႁွင်ႉၼၼ်ႉ ၸွမ်းလင်ၶႃႈ။

### 4. တၢင်းလီ
* **DRY (Don't Repeat Yourself):** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code သွၼ်ႉၵၼ်။
* **Centralized Logic:** ၵုမ်းထိင်း Code တီႈလဵဝ်ငၢႆႈๆ။
* **Clean Code:** ႁဵတ်းႁႂ်ႈ Code တူၺ်းငၢႆႈ လႄႈ ပွင်ႇၸႂ်ငၢႆႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constructor Chaining:** ၵၢၼ်ႁွင်ႉ Constructor ၼိုင်ႈဢၼ် ၸူးထႅင်ႈဢၼ်ၼိုင်ႈ။
* **this Keyword:** (ၼႂ်း Context ၼႆႉ) ၸႂ်ႉတႃႇယိူင်းၸူးထိုင် Constructor တၢင်ႇဢၼ် ဢၼ်မီးဝႆႉၼႂ်း Class လဵဝ်ၵၼ်။
* **Target Constructor:** Constructor တူဝ်ဢၼ်ထုၵ်ႇႁွင်ႉၸႂ်ႉ လုၵ်ႉတီႈ Chaining။

---