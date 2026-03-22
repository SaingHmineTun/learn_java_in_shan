# Lesson 81: "Static vs. Instance Methods"

ၼႂ်း C# Method မီးသွင်ပိူင်လူင် ဢၼ်ၸႅၵ်ႇၵၼ်ဝႆႉလူၺ်း "လၢႆးႁွင်ႉၸႂ်ႉ" ၶႃႈ။

### 1. Static Methods (Method ၶွင် Class)
**Static Method** ၼႆႉ ပဵၼ် Method ဢၼ်ၵိုၵ်းဝႆႉတင်း **Class** ၶႃႈ။ 
ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ် လူၺ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Object မႂ်ႇၶႃႈ။

* **Keyword:** `static`
* **လၢႆးႁွင်ႉ:** `ClassName.MethodName()`
* **တူဝ်ယင်ႇ:** `Math.Sqrt(16)` ဢမ်ႇၼၼ် `Console.WriteLine()`။ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `new Math()` တႃႇႁွင်ႉၸႂ်ႉမၼ်းၶႃႈ။



### 2. Instance Methods (Method ၶွင် Object)
**Instance Method** ၼႆႉ ပဵၼ် Method ဢၼ်လူဝ်ႇမီး **Object** ၸင်ႇတေႁဵတ်းၵၢၼ်လႆႈၶႃႈ။ မၼ်းၵိုၵ်းဝႆႉတင်း Object ဝႆႉလႄႈ Object ၼိုင်ႈဢၼ် တေမီးဝႆႉ Method ၼိုင်ႈဢၼ်ၶႃႈ။

* **Keyword:** ဢမ်ႇလူဝ်ႇသႂ်ႇ keyword သင် (Default)။
* **လၢႆးႁွင်ႉ:** `objectName.MethodName()`
* **တူဝ်ယင်ႇ:** ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `Student`။ လုၵ်ႈႁဵၼ်းၵေႃႉၼိုင်ႈ တေမီး Method `Study()` ႁင်းၵူၺ်းမၼ်းၶႃႈ။



### 3. ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်? (Comparison)

| Feature | Static Method                  | Instance Method |
| :--- |:-------------------------------| :--- |
| **Keyword** | `static`                       | (None) |
| **Owner** | Class                          | Object (Instance) |
| **Memory** | သိမ်းဝႆႉတီႈလဵဝ် တႃႇတင်း Class  | သိမ်းဝႆႉၸွမ်း Object ၵူႈတူဝ် |
| **How to Call** | လုၵ်ႉတီႈၸိုဝ်ႈ Class ႁွင်ႉၸႂ်ႉ | လူဝ်ႇၸႂ်ႉ `new` သၢင်ႈ Object ဢွၼ်တၢင်း |

### 4. တူဝ်ယင်ႇ Code

```csharp
class Calculator {
    // Static: ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ်
    public static void ShowInfo() {
        Console.WriteLine("I am a static method!");
    }

    // Instance: လူဝ်ႇသၢင်ႈ Object ဢွၼ်တၢင်း
    public void SayHello() {
        Console.WriteLine("Hello from an instance!");
    }
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
Calculator.ShowInfo(); // Static call

Calculator myCalc = new Calculator(); // သၢင်ႈ Object
myCalc.SayHello(); // Instance call
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static:** ၶေႃႈၵႂၢမ်းဢၼ်လၢတ်ႈဝႃႈ Method ၼႆႉ ၵိုၵ်းတင်း Class ဢမ်ႇၵိုၵ်းတင်း Object။
* **Instance:** တူဝ် Object ဢၼ်လုၵ်ႉတီႈ Class သေသၢင်ႈဢွၵ်ႇ။
* **Class:** "ၽႅၼ်ႇႁၢင်ႈ" (Blueprint) ဢၼ်ၸႂ်ႉသၢင်ႈ Object။
* **Object:** တူဝ်တႄႉမၼ်း ဢၼ်မီးယူႇၼႂ်း Memory။

---