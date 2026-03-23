# Lesson 102: "Comparing Objects: Reference vs. Value Equality"

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး "ပပ်ႉလိၵ်ႈ" သွင်ပပ်ႉ ဢၼ်မီးတူဝ်လိၵ်ႈမိူၼ်ၵၼ်ၵူႈထႅဝ်။
* **Value Equality:** ပွင်ႇဝႃႈ "တူဝ်လိၵ်ႈၼႂ်းပပ်ႉ" မိူၼ်ၵၼ်။
* **Reference Equality:** ပွင်ႇဝႃႈ မၼ်းပဵၼ် "ပပ်ႉလဵဝ်ၵၼ်" (ဢမ်ႇၸႂ်ႉၵေႃႇပီႇ)။

### 1. Reference Equality (ပိူင်ၵဝ်ႇၶွင် Object)
မိူဝ်ႈႁဝ်းသၢင်ႈ Object လုၵ်ႉတီႈ Class (`new`) ၼႆ... 
မၼ်းတေၵႂႃႇယူႇၼႂ်း **Heap**။ 
မိူဝ်ႈႁဝ်းၸႂ်ႉ `==` ႁဝ်းတိုၵ်ႉထၢမ်ဝႃႈ: **"Variable သွင်တူဝ်ၼႆႉ ၸိၼႄၵႂႃႇၸူး တီႈယူႇ (Address) လဵဝ်ၵၼ်ၼႂ်း RAM ႁႃႉ?"**



```csharp
Student s1 = new Student { Name = "Mao" };
Student s2 = new Student { Name = "Mao" };

// ၽွၼ်းလႆႈတေပဵၼ်: False!
// ယွၼ်ႉ s1 လႄႈ s2 ယူႇၵေႃႉတီႈ (Different Memory Addresses)
Console.WriteLine(s1 == s2); 
```

### 2. Value Equality (ပိူင်ၶွင် String လႄႈ Struct)
တွၼ်ႈၼႆႉသမ်ႉ တေတူၺ်း "ၶေႃႈမုၼ်း" တႄႉတႄႉမၼ်း။ တူဝ်ယင်ႇမိူၼ်ၼင်ႇ `string`:
```csharp
string name1 = "Sai Mao";
string name2 = "Sai Mao";

// ၽွၼ်းလႆႈတေပဵၼ်: True!
// ယွၼ်ႉ C# ၸတ်းၵၢၼ် String ႁႂ်ႈတူၺ်းၵႃႈၶၼ် (Value) မၼ်းၶႃႈ။
Console.WriteLine(name1 == name2); 
```

### 3. လၢႆးတႅတ်ႈတေႃး Object ႁႂ်ႈမႅၼ်ႈ (The .Equals Method)
သင်ႁဝ်းၶႂ်ႈတူၺ်းဝႃႈ "လုၵ်ႈႁဵၼ်းသွင်ၵေႃႉၼႆႉ မီးၸိုဝ်ႈမိူၼ်ၵၼ်ႁႃႉ?" ႁဝ်းလူဝ်ႇတႅမ်ႈ Logic ႁင်းၵူၺ်း ဢမ်ႇၼၼ်ၸႂ်ႉ Method **`.Equals()`** ဢၼ်ႁဝ်းမႄးဝႆႉ (Override) ၼၼ်ႉၶႃႈ။

```csharp
Student s1 = new Student { Name = "Mao" };
Student s3 = s1; // s3 ၸိၼႄၸူးတီႈယူႇလဵဝ်ၵၼ်တင်း s1

// ၽွၼ်းလႆႈ: True! (Reference လဵဝ်ၵၼ်)
Console.WriteLine(s1 == s3); 
```

### 4. တူဝ်ယင်ႇၼႂ်းၸူဝ်ႈပၢၼ်တႄႉ
* **Reference Equality:** မိူၼ်တင်း "သေႃးသွင်ဢၼ် ဢၼ်ပိုတ်ႇႁိူၼ်းလဵဝ်ၵၼ်"။
* **Value Equality:** မိူၼ်တင်း "ႁိူၼ်းသွင်လင် ဢၼ်ႁၢင်ႈၾၢင်မိူၼ်ၵၼ်" (ၵူၺ်းၵႃႈ ယူႇၵေႃႉတီႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Reference Equality:** ထတ်းသၢင်ႈဝႃႈ Variable သွင်တူဝ် ၸိၼႄၸူး Object တူဝ်လဵဝ်ၵၼ်ၼႂ်း Memory ႁႃႉ။
* **Value Equality:** ထတ်းသၢင်ႈဝႃႈ ၶေႃႈမုၼ်းၼႂ်း Object သွင်တူဝ် မိူၼ်ၵၼ်ႁႃႉ။
* **Address / Pointer:** မၢႆၼပ်ႉတီႈယူႇၼႂ်း RAM ဢၼ် Object ၼၼ်ႉယူႇဝႆႉ။
* **Identity:** "တူဝ်တႄႉ" ၶွင် Object (မီးလႆႈတူဝ်လဵဝ်ၵူၺ်း)။

---