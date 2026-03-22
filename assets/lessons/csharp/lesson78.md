# Lesson 78: "Defining a Method: Access, Return, and Name"

ပိူင်သၢင်ႈ Method ၼႂ်း C# မီးတွၼ်ႈ 3 ဢၼ် ဢၼ်ႁဝ်းလူဝ်ႇႁူႉၶႃႈ။



### 1. Access Modifiers (ၵၢၼ်ပၼ်သုၼ်ႇၶဝ်ႈၸႂ်ႉ)
ၼႆႉပဵၼ်ၶေႃႈၵႂၢမ်း ဢၼ်လၢတ်ႈဝႃႈ "ၵေႃႉလႂ်ၸၢင်ႈႁွင်ႉၸႂ်ႉ Method ၼႆႉလႆႈ?"
* **public:** ၵူႈၵေႃႉ၊ ၵူႈ Class ႁွင်ႉၸႂ်ႉလႆႈတင်းမူတ်း။
* **private:** ႁွင်ႉၸႂ်ႉလႆႈ ၼႂ်း Class ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း (ၼႆႉပဵၼ် Default ၶႃႈ)။

### 2. Return Type (ပိူင်ၶေႃႈမုၼ်းဢၼ်တေသူင်ႇၶိုၼ်း)
မိူဝ်ႈ Method ႁဵတ်းၵၢၼ်ယဝ်ႉ မၼ်းတေ "သူင်ႇၽွၼ်းလႆႈ" သင်ၶိုၼ်းမႃးပၼ်ႁဝ်း?
* **int, string, bool:** သင်ႁဝ်းၶႂ်ႈလႆႈမၢႆၼပ်ႉ ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈၶိုၼ်း။
* **void:** သင် Method ၼၼ်ႉ ႁဵတ်းၵၢၼ်ၵူၺ်း (မိူၼ်ၼင်ႇ ၼႄလိၵ်ႈၼိူဝ် Screen) သေ **ဢမ်ႇသူင်ႇ** ၶေႃႈမုၼ်းသင်ၶိုၼ်း။

### 3. Method Name (ၸိုဝ်ႈ Method)
ၼႂ်း C# ႁဝ်းတေၸႂ်ႉ **PascalCase** (တႄႇလူၺ်းတူဝ်လိၵ်ႈလူင်) တႃႇသေႇၶႃႈ။
* **Example:** `CalculateTotal()`, `PrintReport()`, `SaveData()`.

### 4. တူဝ်ယင်ႇၵၢၼ်တႅမ်ႈ (Syntax)
```csharp
// [Access Modifier] [Return Type] [Method Name]
public void ShowWelcomeMessage()
{
    Console.WriteLine("Welcome to Muse Computer Center!");
    Console.WriteLine("Let's learn C# together.");
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Method Signature:** ပိူင်ႁၢင်ႈၾၢင်တင်းမူတ်းၶွင် Method (ၸိုဝ်ႈ + ပိူင်သူင်ႇၶိုၼ်း + Parameters)။
* **Access Modifier:** ၶေႃႈၵႂၢမ်းၵုမ်းထိင်း လွင်ႈပၼ်သုၼ်ႇၶဝ်ႈၸႂ်ႉ Code။
* **Return Type:** ပိူင်ၶေႃႈမုၼ်း ဢၼ် Method တေသူင်ႇဢွၵ်ႇမႃး မိူဝ်ႈယဝ်ႉတူဝ်ႈ။
* **void Keyword:** ၶေႃႈၵႂၢမ်းဢၼ်လၢတ်ႈဝႃႈ Method ၼႆႉ ဢမ်ႇသူင်ႇၵႃႈၶၼ်သင်ၶိုၼ်း။
* **PascalCase:** လၢႆးပၼ်ၸိုဝ်ႈဢၼ်တႄႇတူဝ်လိၵ်ႈလူင် ၵူႈၶေႃႈၵႂၢမ်း။

---