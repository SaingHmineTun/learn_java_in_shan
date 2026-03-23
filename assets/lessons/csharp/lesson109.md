# Lesson 109: "Constructor Overloading"

**Overloading** ပွင်ႇဝႃႈ ၵၢၼ်မီး Constructor လၢႆလၢႆဢၼ် ၼႂ်း Class လဵဝ်ၵၼ်၊ ၸိုဝ်ႈမိူၼ်ၵၼ် (ၸိုဝ်ႈ Class) ၵူၺ်းၵႃႈ **Parameters ပႅၵ်ႇၵၼ်** ၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇမီးလၢႆဢၼ်?
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Object ပဝ်ႇပဝ်ႇ၊ မၢင်ပွၵ်ႈသမ်ႉ ၶႂ်ႈသႂ်ႇၵႃႈၶၼ်ပၼ်မၼ်းၵမ်းလဵဝ်။ 
ၵၢၼ်မီး Overloading ႁဵတ်းႁႂ်ႈ Class ႁဝ်း "ၸႂ်ႉငၢႆႈ" (Flexible) လိူဝ်ၵဝ်ႇၶႃႈ။



### 2. တူဝ်ယင်ႇ Code

```csharp
public class Student {
    public string Name;
    public int Age;

    // 1. Default Constructor (ဢမ်ႇသူင်ႇသင်ၵေႃႈလႆႈ)
    public Student() {
        Name = "Unknown";
        Age = 0;
    }

    // 2. Overloaded Constructor (သူင်ႇၵူၺ်း Name)
    public Student(string n) {
        Name = n;
        Age = 18; // ပၼ်ၵႃႈၶၼ် Default ဝႆႉ
    }

    // 3. Overloaded Constructor (သူင်ႇတင်း Name လႄႈ Age)
    public Student(string n, int a) {
        Name = n;
        Age = a;
    }
}
```

### 3. ပိူင်ၵၢၼ် (Rules for Overloading)
တႃႇတေပဵၼ် Overloading လႆႈၼၼ်ႉ **Method Signature** (ပိူင် Parameters) တေလႆႈပႅၵ်ႇၵၼ် ၸိူင်ႉၼႆၶႃႈ:
* **Count:** ႁူဝ်ၼပ်ႉ Parameters ဢမ်ႇမိူၼ်ၵၼ် (မိူၼ်ၼင်ႇ 1 တူဝ် vs 2 တူဝ်)။
* **Type:** ဢႃႈမဵဝ်း Parameters ဢမ်ႇမိူၼ်ၵၼ် (မိူၼ်ၼင်ႇ `int` vs `string`)။
* **Order:** လၢႆးတမ်းဝၢင်း Parameters ဢမ်ႇမိူၼ်ၵၼ် (မိူၼ်ၼင်ႇ `string, int` vs `int, string`)။

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
Student s1 = new Student();              
Student s2 = new Student("Sai Mao");     
Student s3 = new Student("Nang Kham", 22);
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constructor Overloading:** ၵၢၼ်မီး Constructor လၢႆဢၼ် ဢၼ်မီး Parameters ပႅၵ်ႇၵၼ်။
* **Signature:** ပိူင်မၵ်းမၼ်ႈ (Type, Count, Order) ၶွင် Parameters။
* **Flexibility:** လွင်ႈငၢႆႈလူင် လႄႈ တၢင်းလိူၵ်ႈၼမ် ၼႂ်းၵၢၼ်ၸႂ်ႉ Code။
* **Call Site:** တီႈဢၼ်ႁဝ်းတႅမ်ႈ `new Class()` သေ Compiler တေလိူၵ်ႈပၼ်ဝႃႈ တေၸႂ်ႉ Constructor တူဝ်လႂ်။

---