# Lesson 94: "Fields vs. Variables"

တင်းသွင်ယၢင်ႇၼႆႉ ၸႂ်ႉတႃႇ "သိမ်းၶေႃႈမုၼ်း" မိူၼ်ၵၼ်၊ ၵူၺ်းၵႃႈ "ဢႃႇယု" (Lifetime) လႄႈ "တီႈယူႇ" (Scope) မၼ်းဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

### 1. Fields (ၶေႃႈမုၼ်းၶွင် Class)
**Field** ၼႆႉ ပဵၼ် Variable ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း **Body ၶွင် Class** (ၼွၵ်ႈ Method)။ 
မၼ်းမီးဝႆႉတႃႇသိမ်း "ၵႃႈၶၼ်" (State) ၶွင် Object ၼၼ်ႉၶႃႈ။

* **Scope:** ၸႂ်ႉလႆႈၵူႈ Method ၼႂ်း Class ၼၼ်ႉ။
* **Lifetime:** မၼ်းတေမီးသၢႆၸႂ်ယူႇ တေႃႇ Object ၼၼ်ႉ ထုၵ်ႇယႃႇပႅတ်ႈ (Delete) ယဝ်ႉ။
* **Default Value:** မၼ်းတေမီးၵႃႈၶၼ်တႄႇပၼ်ႁင်းၵူၺ်း (မိူၼ်ၼင်ႇ `int` ပဵၼ် 0)။



### 2. Local Variables (ၶေႃႈမုၼ်းၼႂ်း Method)
**Local Variable** ၼႆႉ ပဵၼ် Variable ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ **ၼႂ်း Body ၶွင် Method** ၼိုင်ႈဢၼ်ၼၼ်ႉၵူၺ်း။

* **Scope:** ၸႂ်ႉလႆႈ ၼႂ်း Method ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။
* **Lifetime:** မၼ်းတေတၢႆၵႂႃႇ မိူဝ်ႈ Method ၼၼ်ႉႁဵတ်းၵၢၼ်ယဝ်ႉ။
* **Initialization:** တေလႆႈပၼ်ၵႃႈၶၼ် (Initialize) ဢွၼ်တၢင်း မိူဝ်ႈပႆႇၸႂ်ႉတိုဝ်းမၼ်း တႃႇသေႇ။

### 3. တူဝ်ယင်ႇ Code ၼႄလွင်ႈပႅၵ်ႇၵၼ်

```csharp
class Student {
    // ၼႆႉပဵၼ် Field (ၵူႈ Method ႁၼ်မၼ်း)
    public string Name; 

    public void Study() {
        // ၼႆႉပဵၼ် Local Variable (ႁၼ်ၵူၺ်းၼႂ်း Study)
        int hours = 2; 
        Console.WriteLine($"{Name} studies for {hours} hours.");
    }

    public void Play() {
        // Console.WriteLine(hours); // Error! Play ဢမ်ႇႁၼ် hours
        Console.WriteLine($"{Name} is playing."); // OK! Play ႁၼ် Name
    }
}
```

### 4. တူဝ်ယင်ႇၼႂ်းၸူဝ်ႈပၢၼ်တႄႉ
* **Field:** မိူၼ်တင်း "ၸိုဝ်ႈ" ၶွင်လုၵ်ႈႁဵၼ်း (ၵိုၵ်းတူဝ်ၵႂႃႇတႃႇသေႇ)။
* **Local Variable:** မိူၼ်တင်း "ၸေႈတႅမ်ႈၵႂၢမ်း" ဢၼ်လုၵ်ႈႁဵၼ်းၸႂ်ႉၼႂ်းႁွင်ႈႁဵၼ်း (ယဝ်ႉၵၢၼ်ယဝ်ႉၵေႃႈ ထိုမ်ႈပႅတ်ႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Field:** Variable ဢၼ်ပိုၼ်ၽၢဝ်ႇဝႆႉၼႂ်း Class (Class-level scope)။
* **Local Variable:** Variable ဢၼ်ပိုၼ်ၽၢဝ်ႇဝႆႉၼႂ်း Method (Method-level scope)။
* **Lifetime:** ၶၢဝ်းယၢမ်းဢၼ် Variable ၼၼ်ႉ မီးယူႇၼႂ်း Memory။
* **Default Value:** ၵႃႈၶၼ်တႄႇ ဢၼ် Compiler ပၼ်ဝႆႉတီႈ Fields။
* **Scope:** ၼႃႈတီႈဢၼ် Code ၸၢင်ႈ "ႁၼ်" လႄႈ "ၸႂ်ႉ" Variable ၼၼ်ႉလႆႈ။

---