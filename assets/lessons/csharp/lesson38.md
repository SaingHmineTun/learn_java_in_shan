# Lesson 38: "Null-Coalescing Operators" (ၶိူင်ႈမၢႆပၼ်ၵႃႈၶၼ်တႅၼ်းတၢင်း)

ၼႂ်း C# မီးၶိူင်ႈမၢႆ 2 ဢၼ် ဢၼ်ၸွႆးႁဝ်းၸတ်းၵၢၼ်လွင်ႈ Null ၶႃႈ။

### 1. Null-Coalescing Operator (`??`)
ၶိူင်ႈမၢႆၼႆႉ တေလိူၵ်ႈဢဝ်ၵႃႈၶၼ်ၽၢႆႇသၢႆႉ **သင်မၼ်းဢမ်ႇၸႂ်ႈ Null**၊ 
ၵူၺ်းၵႃႈ သင်မၼ်းပဵၼ် **Null** သမ်ႉ မၼ်းတေလိူၵ်ႈဢဝ်ၵႃႈၶၼ်ၽၢႆႇၶႂႃ။

* **ပိူင်သၢင်ႈ:** `variable ?? default_value;`

**တူဝ်ယင်ႇ Code:**
```csharp
string? userNickname = null;
string displayName = userNickname ?? "Guest User";

Console.WriteLine(displayName); // Output: Guest User
```


### 2. Null-Coalescing Assignment Operator (`??=`)
ၼႆႉပဵၼ်ၶိူင်ႈမၢႆ ဢၼ်တေႇပႃးမႃးတီႈ C# 8.0 ၶိုၼ်ႈလိူဝ်ၶႃႈ။ 
မၼ်းတေ "ဢဝ်ၵႃႈၶၼ်" (Assign) သႂ်ႇၼႂ်း Variable သင်မၼ်းပဵၼ်ဝႆႉ **null** ၼႆၶႃႈ။ 
သင်မၼ်းမီးၵႃႈၶၼ်ဝႆႉယဝ်ႉ မၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈသင်ၶႃႈ။

* **ပိူင်သၢင်ႈ:** `variable ??= value;`

**တူဝ်ယင်ႇ Code:**
```csharp
List<string>? students = null;

// သင် students ပဵၼ် null, ႁႂ်ႈသၢင်ႈ List မႂ်ႇသႂ်ႇပၼ်ၵမ်းလဵဝ်
students ??= new List<string>(); 

students.Add("Sai Mao");
```

### 3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ?
* ၸႂ်ႉမိူဝ်ႈႁပ်ႉၶေႃႈမုၼ်းတီႈ Database ဢမ်ႇၼၼ် API ဢၼ်ၸၢင်ႈပဵၼ် Null။
* ၸႂ်ႉတႃႇႁဵတ်း "Safety Net" ႁႂ်ႈ Variable ႁဝ်းမီးၶေႃႈမုၼ်း ဝႆႉယူႇတႃႇသေႇ။
* ၸွႆးႁႂ်ႈ Code ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `if (x == null)` ၼမ်ၼႃႇဢေႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Coalesce:** ၵၢၼ်ႁူမ်ႈၵၼ် ဢမ်ႇၼၼ် ၵၢၼ်လိူၵ်ႈဢဝ်ဢၼ်မီးၵႃႈၶၼ် (Non-null)။
* **Default Value:** ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ် ဢၼ်ႁဝ်းပၼ်ဝႆႉ တႃႇၸႂ်ႉမိူဝ်ႈဢမ်ႇမီးၶေႃႈမုၼ်းတႄႉ။
* **Assignment:** ၵၢၼ်ဢဝ်ၵႃႈၶၼ်ၵႂႃႇသိမ်းဝႆႉၼႂ်း Variable (ၸႂ်ႉမၢႆ `=`)။
* **Null Safety:** လွင်ႈတၢင်းတႅမ်ႈ Code ႁႂ်ႈလွတ်ႈၽေးတီႈ NullReferenceException (Error လူင်ၼႂ်း C#)။

---