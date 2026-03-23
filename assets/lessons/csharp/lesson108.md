# Lesson 108: "Parameterized Constructors"

မိူဝ်ႈႁဝ်းၸႂ်ႉ Default Constructor (Lesson 107) ၼၼ်ႉ... 
Field ၵူႈဢၼ် ဢၼ်မီးဝႆႉတီႈ Object ႁဝ်း တေမီးၵႃႈၶၼ်ပဝ်ႇဝႆႉယဝ်ႉ။ 
သင်ႁဝ်းၶႂ်ႈႁႂ်ႈလုၵ်ႈႁဵၼ်းမီး "ၸိုဝ်ႈ" လႄႈ "ဢႃႇယု" ၵမ်းလဵဝ် မိူဝ်ႈတႄႉၶူင်သၢင်ႈ Object ၸႂ်ႉတိုဝ်း `new` ၼၼ်ႉ 
ႁဝ်းလူဝ်ႇၸႂ်ႉ **Parameterized Constructor** ၶႃႈ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
မၼ်းမိူၼ်တင်း Method ဢၼ်မီး **Parameters** ဝႆႉၼႂ်း `()` ၼၼ်ႉယဝ်ႉၶႃႈ။ 
မိူဝ်ႈႁဝ်းသၢင်ႈ Object ႁဝ်းတေလႆႈသူင်ႇ Arguments ၶဝ်ႈၵႂႃႇ ၸွမ်းၼင်ႇပိူင်မၼ်းၶႃႈ။



### 2. တူဝ်ယင်ႇ Code

```csharp
public class Student {
    public string Name;
    public int Age;

    // ၼႆႉပဵၼ် Parameterized Constructor
    public Student(string n, int a) {
        Name = n; // ဢဝ်ၵႃႈၶၼ်လုၵ်ႉတီႈ Parameter မႃးသႂ်ႇၼႂ်း Field
        Age = a;
    }
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
Student s1 = new Student("Sai Mao", 25); 
// ယၢမ်းလဵဝ် s1 မီးၸိုဝ်ႈ လႄႈ ဢႃႇယု တႅတ်ႉတေႃးယဝ်ႉ ၼႂ်းထႅဝ်လဵဝ်!
```

### 3. တၢင်းလီ (Why use it?)
* **Efficiency:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code လၢႆလၢႆထႅဝ် (မိူၼ်ၼင်ႇ `s1.Name = ...; s1.Age = ...;`) ဝၢႆးသေ `new` ယဝ်ႉ။
* **Enforced Data:** ႁဝ်းၸၢင်ႈဢီးသူၼ်း (Force) ႁႂ်ႈ Object တေလႆႈမီးၶေႃႈမုၼ်းဢၼ်လူဝ်ႇ (Required Data) ၵွၼ်ႇၸင်ႇတေသၢင်ႈမၼ်းဢွၵ်ႇမႃးလႆႈၶႃႈ။
* **Security:** ၸွႆးႁႂ်ႈႁဝ်းၵူတ်ႇထတ်း (Validate) ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Constructor ၼၼ်ႉလႆႈၵမ်းလဵဝ်။


### 4. လွင်ႈလူဝ်ႇၾၢင်ႉ (The Loss of Default)
မိူဝ်ႈႁဝ်း တႅမ်ႈ `public Student(string n, int a)` ယဝ်ႉၼၼ်ႉ... ႁဝ်းတေ **ဢမ်ႇၸၢင်ႈ** ႁွင်ႉၸႂ်ႉ `new Student()` (Empty Parameter) လႆႈထႅင်ႈယဝ်ႉၶႃႈ။ Compiler တေႁူႉဝႃႈ ႁဝ်းလူဝ်ႇလၢႆးတႅတ်ႈတေႃးၵူၺ်းယဝ်ႉၼႆၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parameterized Constructor:** Constructor ဢၼ်မီး Parameters တႃႇႁပ်ႉၶေႃႈမုၼ်း။
* **Argument Passing:** ၵၢၼ်သူင်ႇၵႃႈၶၼ်ၶဝ်ႈၵႂႃႇ ၼႂ်း Constructor မိူဝ်ႈၸႂ်ႉ `new`။
* **Initialization:** ၵၢၼ်ပၼ်ၵႃႈၶၼ်တႄႇ ႁႂ်ႈ Fields ၼႂ်း Object။
* **Field Assignment:** ၵၢၼ်ဢဝ်ၵႃႈၶၼ်တီႈ Parameter မႃးသိမ်းဝႆႉၼႂ်း Field ၶွင် Class။

---