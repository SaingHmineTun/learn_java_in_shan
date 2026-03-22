# Lesson 48: "Pattern Matching in Switch"

မိူဝ်ႈၵွၼ်ႇ `switch` ၼႆႉ ၵူတ်ႇထတ်းလႆႈၵႃႈၶၼ် "တႅတ်ႉတေႃး" (Discrete Values) ၵူၺ်း၊ 
ၵူၺ်းၵႃႈ တႄႇဢဝ် C# 7.0+ မႃး ႁဝ်းၸၢင်ႈၸႂ်ႉ **Relational Patterns** (>, <, >=, <=) လႄႈ **`when` keyword** ယဝ်ႉၶႃႈ။

### 1. Relational Patterns (ၵူတ်ႇထတ်းသၢႆမၢႆၼပ်ႉ)
ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `case` ၼမ်ၼမ်ယဝ်ႉ၊ ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆတႅၵ်ႈၵၼ်ၼႂ်း Switch Expression လႆႈၵမ်းလဵဝ်ယဝ်ႉ။



```csharp
int score = 85;

string grade = score switch {
    >= 90 => "A",
    >= 80 => "B",
    >= 70 => "C",
    _     => "F"
};
```

### 2. The 'when' Keyword (ၵၢၼ်သႂ်ႇၶေႃႈထၢမ်ထႅင်ႈၸၼ်ႉၼိုင်ႈ)
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈၵူတ်ႇထတ်း Case ၼိုင်ႈဢၼ် ၵူၺ်းၵႃႈ "မီးၶေႃႈၵၼ်" (Condition) ပႅၵ်ႇၵၼ်။ ႁဝ်းၸႂ်ႉ `when` တႃႇတႅတ်ႉသႅတ်းထႅင်ႈၸၼ်ႉၼိုင်ႈၶႃႈ။

```csharp
int age = 20;
bool hasID = false;

switch (age) {
    case >= 18 when hasID == true:
        Console.WriteLine("Entry Allowed.");
        break;
    case >= 18 when hasID == false:
        Console.WriteLine("Please show your ID.");
        break;
    default:
        Console.WriteLine("Too young.");
        break;
}
```

### 3. Logical Patterns (`and`, `or`, `not`)
ၼႂ်း C# 9.0+ ႁဝ်းၸၢင်ႈၸႂ်ႉၶေႃႈၵႂၢမ်း "English" တႃႇႁူမ်ႈ Case လႆႈငၢႆႈငၢႆႈ။

```csharp
int temp = 25;

string weather = temp switch {
    < 0                  => "Freezing",
    >= 0 and <= 20       => "Cold",
    > 20 and <= 30       => "Comfortable",
    not 100              => "Not boiling",
    _                    => "Hot"
};
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Pattern Matching:** ၼမ်ႉၵတ်ႉၶွင် C# ဢၼ်ၸွႆးၵူတ်ႇထတ်း "ႁၢင်ႈၾၢင်" ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Type ဢမ်ႇၼၼ် Range)။
* **Relational Pattern:** ၵၢၼ်ၸႂ်ႉၶိူင်ႈမၢႆ Comparison (>, <) ၼႂ်း Switch။
* **Guard Clause (when):** ၶေႃႈထၢမ် ဢၼ်ထႅမ်သႂ်ႇၼႂ်း Case တႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ် ၸွမ်းၵၼ်။
* **Logical Pattern:** ၵၢၼ်ၸႂ်ႉ `and`, `or`, `not` တႃႇႁူမ်ႈ Patterns ၶဝ်ႈၵၼ်။

---