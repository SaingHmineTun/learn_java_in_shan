# Lesson 92: "Defining a Class: The Blueprint"

**Class** ၼႆႉ ပဵၼ် "ပိူင်သၢင်ႈ" (Template) ဢၼ်မၵ်းမၼ်ႈဝႆႉဝႃႈ Object ဢၼ်တေၵူတ်ႇဢွၵ်ႇမႃးၼၼ်ႉ တေမီးၶေႃႈမုၼ်း (Properties) သင် လႄႈ တေႁဵတ်းၵၢၼ် (Methods) သင်လႆႈ ၼႆယဝ်ႉ။

### 1. ပိူင်သၢင်ႈ Class (Syntax)
ႁဝ်းၸႂ်ႉ Keyword **`class`** သေ ပၼ်ၸိုဝ်ႈမၼ်း ၸွမ်းပိူင် (PascalCase) ၶႃႈ။



```csharp
// ၼႆႉပဵၼ် "ၽႅၼ်ႇႁၢင်ႈ" တႃႇလုၵ်ႈႁဵၼ်း
class Student 
{
    // 1. Data (Fields) - သိမ်းၶေႃႈမုၼ်း
    public string Name;
    public int Age;

    // 2. Action (Methods) - ၵၢၼ်ႁဵတ်း
    public void Study() 
    {
        Console.WriteLine($"{Name} is studying C#!");
    }
}
```

### 2. တွၼ်ႈလုမ်းၼႂ်း Class
ၼႂ်း Class ၼိုင်ႈဢၼ် ၵႆႉမီးတွၼ်ႈလူင် 2 ယၢင်ႇ:
* **Fields / Properties:** ပဵၼ် Variable ဢၼ်ယူႇၼႂ်း Class တႃႇသိမ်း "ၵႃႈၶၼ်" (State) ၶွင် Object။ (တူဝ်ယင်ႇ: ၸိုဝ်ႈ၊ သီ၊ ၼမ်ႉၼၵ်း)။
* **Methods:** ပဵၼ် "ၵၢၼ်ႁဵတ်း" (Behavior) ဢၼ် Object ၼၼ်ႉႁဵတ်းလႆႈ။ (တူဝ်ယင်ႇ: လႅၼ်ႈ၊ ၵိၼ်၊ ၼပ်ႉမၢႆ)။

### 3. ႁဵတ်းသင်ၸင်ႇႁွင်ႉဝႃႈ Blueprint?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ Class `Student` ဝႆႉပွၵ်ႈလဵဝ်ၵူၺ်း။ ဝၢႆးၼၼ်ႉ ႁဝ်းၸၢင်ႈဢဝ် Class ၼႆႉၵႂႃႇသၢင်ႈပဵၼ် "လုၵ်ႈႁဵၼ်းတႄႉတႄႉ" (Objects) လၢႆလၢႆၵေႃႉ မိူၼ်ၼင်ႇ:
* Object 1: Sai Mao, 25
* Object 2: Nang Kham, 22
* Object 3: Sai Tun, 20

ၵူႈၵေႃႉမီး "ပိူင်" (Structure) မိူၼ်ၵၼ် ယွၼ်ႉလုၵ်ႉတီႈ **Class** လဵဝ်ၵၼ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Class:** ၽႅၼ်ႇႁၢင်ႈ (Blueprint) ဢၼ်မၵ်းမၼ်ႈ Data လႄႈ Behavior။
* **Member:** ၶေႃႈၵႂၢမ်းႁွင်ႉႁူမ်ႈ Variables လႄႈ Methods ဢၼ်ယူႇၼႂ်း Class။
* **Field:** Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Class တႃႇသိမ်းၶေႃႈမုၼ်း။
* **State:** ၵႃႈၶၼ် (Value) ၶွင်ၶေႃႈမုၼ်းၼႂ်း Object ၼိုင်ႈဢၼ် ၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉ။
* **Behavior:** ၵၢၼ်ႁဵတ်းသၢင်ႈ ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Methods။

---