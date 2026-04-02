# Lesson 203: "Declaring and Instantiating Delegates"

ၵၢၼ်ၸႂ်ႉ Delegate မီး 3 တွၼ်ႈ လမ်ႇလွင်ႈၶႃႈ:

### 1. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ (Declaration)
ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ "ပိူင်ႁၢင်ႈ" (Signature) ဢွၼ်တၢင်းၶႃႈ။ ႁဝ်းၸႂ်ႉ Keyword **`delegate`** ၽၢႆႇၼႃႈ Return Type။

```csharp
// Delegate ၼႆႉ ႁပ်ႉလႆႈ Method ဢၼ်သူင်ႇ string ၶဝ်ႈ သေဢမ်ႇမီး return (void)
public delegate void ShanMessageDelegate(string message);
```

### 2. ၵၢၼ်သၢင်ႈတူဝ်တႅၼ်း (Instantiation)
မိူဝ်ႈႁဝ်းမီး Method ဢၼ်မီး Signature မိူၼ်ၵၼ်ယဝ်ႉ... ႁဝ်းၸၢင်ႈဢဝ်မၼ်းမႃး "သႂ်ႇ" ဝႆႉၼႂ်း Delegate ၶႃႈ။

```csharp
// Method ဢၼ်မီး Signature မႅၼ်ႈၵၼ်
static void DisplayInShan(string msg) {
    Console.WriteLine($"လိၵ်ႈတႆး: {msg}");
}

// သၢင်ႈ Object ၶွင် Delegate သေၸိၵႂႃႇတီႈ Method
ShanMessageDelegate del = new ShanMessageDelegate(DisplayInShan);

// ဢမ်ႇၼၼ် တႅမ်ႈလၢႆးပွတ်း (Method Group Conversion)
ShanMessageDelegate delShort = DisplayInShan;
```



### 3. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Invocation)
မိူဝ်ႈႁဝ်းႁွင်ႉ Variable ၶွင် Delegate... မၼ်းတေၵႂႃႇလႅၼ်ႈ Method ဢၼ်ႁဝ်းၸိဝႆႉၼၼ်ႉၶႃႈ။

```csharp
del("မႂ်ႇသုင်ၶႃႈ"); // ၼႄဢွၵ်ႇ: "လိၵ်ႈတႆး: မႂ်ႇသုင်ၶႃႈ"
```

---

### တူဝ်ယင်ႇ Code တင်းမူတ်း

```csharp
using System;

public delegate void MyDelegate(string text);

class Program {
    static void Main() {
        // 1. သၢင်ႈ Instance သေၸိၸူး Method
        MyDelegate del = PrintToConsole;

        // 2. ႁွင်ႉၸႂ်ႉ (Invoke)
        del("ႁဝ်းတိုၵ်ႉႁဵၼ်း Delegates ယူႇၶႃႈ!");
    }

    static void PrintToConsole(string message) {
        Console.WriteLine(message);
    }
}
```

### ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇႁဵတ်းၼႆ?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Method **`ProcessData`** ဢၼ်လူဝ်ႇ "ၼႄၽွၼ်းလႆႈ"။ ႁဝ်းၸၢင်ႈသူင်ႇ Delegate ၶဝ်ႈၵႂႃႇ သေလၢတ်ႈဝႃႈ:
* "သင်ပဵၼ် App ၼိူဝ်ၶွမ်း ႁႂ်ႈၸႂ်ႉ Method ၼႄၼိူဝ် Console"
* "သင်ပဵၼ် App ၼိူဝ်ၾူၼ်း ႁႂ်ႈၸႂ်ႉ Method ၼႄၼိူဝ် Popup"
  လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code ၼႂ်း `ProcessData` သေထႅဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Instantiation:** ၵၢၼ်သၢင်ႈ Object (Instance) ၶွင် Delegate မႃးၸႂ်ႉတႄႉ။
* **Invocation:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Method တီႈတူဝ် Delegate။
* **Method Group Conversion:** လၢႆးတႅမ်ႈပွတ်း ဢၼ်ဢဝ်ၸိုဝ်ႈ Method သႂ်ႇပၼ် Delegate လႆႈၵမ်းလဵဝ်။
* **Single-cast:** Delegate ဢၼ်ၸိၵႂႃႇတီႈ Method တူဝ်လဵဝ်ၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
တႅမ်ႈ Class **`ShanCalculator`**။
1.  ပိုၼ်ၽၢဝ်ႇ Delegate ၸိုဝ်ႈဝႃႈ **`MathOp`** ဢၼ်ႁပ်ႉ `int` 2 တူဝ် သေသူင်ႇ `int` ဢွၵ်ႇမႃး။
2.  သၢင်ႈ Method **`Add(int a, int b)`**။
3.  ၼႂ်း `Main` ၸၢမ်းသၢင်ႈ Instance ၶွင် Delegate သေႁွင်ႉၸႂ်ႉ `Add` ၶႃႈ။
