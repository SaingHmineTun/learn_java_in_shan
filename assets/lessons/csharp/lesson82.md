# Lesson 82: "Method Overloading: Same Name, Different Params"

**Method Overloading** ပွင်ႇဝႃႈ ၵၢၼ်မီး Method လၢႆလၢႆဢၼ် ၼႂ်း Class လဵဝ်ၵၼ် 
ဢၼ်မီး **"ၸိုဝ်ႈမိူၼ်ၵၼ်"** ၵူၺ်းၵႃႈ **"Parameters ဢမ်ႇမိူၼ်ၵၼ်"** ၶႃႈ။

### 1. ပိူင်ၵၢၼ် (How it works)
Compiler တေတူၺ်း Arguments ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈမႃးသေ လိူၵ်ႈပၼ်ႁင်းၵူၺ်းဝႃႈ တေလႆႈလႅၼ်ႈ Method တူဝ်လႂ်ၶႃႈ။



### 2. လၢႆးၸႅၵ်ႇပႅၵ်ႇ (Ways to Overload)
Method တေလႆႈမီး **Signature** ဢၼ်ပႅၵ်ႇၵၼ် ၸွမ်းၼင်ႇ:
* **Number of parameters:** ႁူဝ်ၼပ်ႉ Parameter ဢမ်ႇမိူၼ်ၵၼ်။
* **Data types of parameters:** ပိူင်ၶေႃႈမုၼ်း ဢမ်ႇမိူၼ်ၵၼ်။
* **Order of parameters:** လွၵ်းလၢႆးၵၢၼ်ဝၢင်ႈ Type ဢမ်ႇမိူၼ်ၵၼ်။

> **မၢႆတွင်း:** ၵၢၼ်လႅၵ်ႈလၢႆႈ *Return Type* ၵူၺ်းတေႉ (မိူၼ်ၼင်ႇ void ၵႂႃႇပဵၼ် int ၼၼ်ႉ) **ဢမ်ႇၵုမ်ႇထူၼ်ႈ** တႃႇႁဵတ်း Overloading ၶႃႈ။

### 3. တူဝ်ယင်ႇ Code (Calculator Example)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈလေႃးမၢႆၼပ်ႉ (Add)။ မၢင်ပွၵ်ႈႁဝ်းသူင်ႇ 2 တူဝ်၊ မၢင်ပွၵ်ႈ 3 တူဝ်၊ မၢင်ပွၵ်ႈပဵၼ်မၢႆၼပ်ႉမီးၸူၵ်ႉ (Double)။

```csharp
class MathHelper {
    // 1. ႁပ်ႉ int 2 တူဝ်
    public int Add(int a, int b) {
        return a + b;
    }

    // 2. Overload: ႁပ်ႉ int 3 တူဝ် (ႁူဝ်ၼပ်ႉပႅၵ်ႇၵၼ်)
    public int Add(int a, int b, int c) {
        return a + b + c;
    }

    // 3. Overload: ႁပ်ႉ double (Type ပႅၵ်ႇၵၼ်)
    public double Add(double a, double b) {
        return a + b;
    }
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
MathHelper helper = new MathHelper();
helper.Add(10, 20);          // လႅၼ်ႈတူဝ်ထီႉ 1
helper.Add(10, 20, 30);      // လႅၼ်ႈတူဝ်ထီႉ 2
helper.Add(10.5, 20.5);      // လႅၼ်ႈတူဝ်ထီႉ 3
```

### 4. ႁဵတ်းသင်ၸင်ႇၸႂ်ႉ?
* **Consistency:** ႁဵတ်းႁႂ်ႈ User/Developer ဢမ်ႇလူဝ်ႇမၢႆတွင်းၸိုဝ်ႈၼမ် (မိူၼ်ၼင်ႇ `AddInt`, `AddDouble`, `AddThreeInts`)။
* **Flexibility:** ႁဵတ်းႁႂ်ႈ Method ႁဝ်းႁပ်ႉလႆႈၶေႃႈမုၼ်းလၢႆလၢႆပိူင်။
* **Clean Code:** Code တေတူၺ်းသႅၼ်ႈသႂ် လႄႈ မီးပိူင်မၼ်းလီၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Overloading:** ၵၢၼ်သၢင်ႈ Method လၢႆဢၼ်လူၺ်းၸိုဝ်ႈလဵဝ်ၵၼ်။
* **Method Signature:** ၸိုဝ်ႈ Method + Parameters (Type, Number, Order)။
* **Compile-time Polymorphism:** ၸိုဝ်ႈႁွင်ႉတၢင်းၵၢၼ် ၶွင် Overloading (ယွၼ်ႉ Compiler မၵ်ႉမၼ်ႈပၼ် မိူဝ်ႈတိုၵ်ႉ Build Code)။
* **Argument Matching:** ပိူင်ၵၢၼ်ဢၼ် Compiler ႁႃ Method ဢၼ်တႅတ်ႉတေႃးတင်း Arguments ဢၼ်သူင်ႇမႃး။

---