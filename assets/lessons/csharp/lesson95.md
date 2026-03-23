# Lesson 95: "The 'this' Keyword: Referencing the Current Instance"

**`this`** ၼႆႉ ပဵၼ် Reference ဢၼ်ၸိၼႄၵႂႃႇၸူး **Object တူဝ်ဢၼ်တိုၵ်ႉလႅၼ်ႈ Code ယူႇ** ၼၼ်ႉၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ? (Disambiguation)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Field ၸိုဝ်ႈဝႃႈ `name` သေယဝ်ႉ သမ်ႉမီး Parameter ၼႂ်း Method ၸိုဝ်ႈဝႃႈ `name` မိူၼ်ၵၼ်။ 
Compiler တေၵႂၢင်ၵႂႃႇလႄႈ ဢမ်ႇႁူႉၸႅင်ႈလႅင်းလီဝႃႈ တူဝ်လႂ်ပဵၼ်တူဝ်လႂ်ၶႃႈ။



```csharp
class Student {
    public string name; // Field

    public void SetName(string name) { // Parameter
        // name = name; // Compiler တေၵႂၢင်တီႈၼႆႈ (မၼ်းတေဢဝ် Parameter သႂ်ႇ Parameter)
        
        this.name = name; 
        // this.name -> မၢႆထိုင် Field
        // name      -> မၢႆထိုင် Parameter (တူဝ်ဢၼ်သူင်ႇမႃး)
    }
}
```

### 2. တၢင်းလီၶွင် `this`
* **Clarity:** ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၵမ်းလဵဝ်ဝႃႈ ၶေႃႈမုၼ်းၼႆႉပဵၼ်ၶွင် Class ဢမ်ႇၼၼ် ပဵၼ် Local။
* **Passing the current object:** ႁဝ်းၸၢင်ႈသူင်ႇ "တူဝ်ၵဝ်ႇ" (`this`) ၵႂႃႇပဵၼ် Argument ၼႂ်း Method တၢင်ႇဢၼ်ၵေႃႈလႆႈၶႃႈ။
* **Constructor Chaining:** ၸႂ်ႉတႃႇႁွင်ႉ Constructor တူဝ်ၼိုင်ႈ လုၵ်ႉတီႈထႅင်ႈတူဝ်ၼိုင်ႈ (ႁဝ်းတေႁဵၼ်းၼႂ်းတွၼ်ႈၼႃႈၶႃႈ)။

### 3. လွင်ႈလူဝ်ႇၾၢင်ႉ (The Static Rule)
ၶေႃႈၵႂၢမ်း **`this`** ၼႆႉ **ၸႂ်ႉၼႂ်း `static` method ဢမ်ႇလႆႈ** ၶႃႈ။
* **ယွၼ်ႉသင်?** ယွၼ်ႉ `static` မၼ်းပဵၼ်ၶွင် Class၊ မၼ်းဢမ်ႇမီး "တူဝ်ၵဝ်ႇ" (Instance) ၼၼ်ႉယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **this:** Keyword ဢၼ်မၢႆထိုင် Object Instance တူဝ်ဢၼ်တိုၵ်ႉလႅၼ်ႈယူႇ။
* **Current Instance:** Object တူဝ်တႄႉဢၼ်မီးယူႇၼႂ်း Memory ၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉ။
* **Disambiguation:** ၵၢၼ်ၸႅၵ်ႇၽႄ ၶေႃႈမုၼ်းသွင်ဢၼ် ဢၼ်ၸိုဝ်ႈမိူၼ်ၵၼ်။
* **Scope:** ၼႃႈတီႈ ဢၼ်ႁဝ်းႁၼ်/ၸႂ်ႉလႆႈ Variable (Local vs Field)။

---