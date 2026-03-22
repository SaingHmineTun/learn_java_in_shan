# Lesson 79: "Method Parameters: Passing Data"

**Parameters** ၼႆႉ ပဵၼ် Variable ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼႂ်း ၶွပ်ႇမူၼ်း **`()`** ဢၼ်မီးဝႆႉ ၽၢႆႇလင်ၸိုဝ်ႈ Method တႃႇႁပ်ႉၶေႃႈမုၼ်း တီႈၽူႈႁွင်ႉၸႂ်ႉမၼ်းယဝ်ႉ။

### 1. ပိူင်သၢင်ႈ (Syntax)
မိူဝ်ႈႁဝ်း "သၢင်ႈ" (Define) Method၊ ႁဝ်းတေလႆႈလၢတ်ႈဝႃႈ မၼ်းတေႁပ်ႉၶေႃႈမုၼ်းပိူင်လႂ် (Type) လႄႈ ပၼ်ၸိုဝ်ႈမၼ်းဝႆႉၶႃႈ။



```csharp
// Method ၼႆႉ ႁပ်ႉဢဝ် string ၼိုင်ႈဢၼ် (Parameter)
public void GreetUser(string name) 
{
    Console.WriteLine("မႂ်ႇသုင်ၶႃႈ၊ " + name);
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Arguments)
မိူဝ်ႈႁဝ်း "ႁွင်ႉၸႂ်ႉ" (Call) Method ၼၼ်ႉ၊ ႁဝ်းတေလႆႈသူင်ႇၶေႃႈမုၼ်း ၶဝ်ႈၵႂႃႇၶႃႈ။ ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ **Arguments** ၶႃႈ။

```csharp
// ႁွင်ႉၸႂ်ႉ Method သေသူင်ႇ Argument ၶဝ်ႈၵႂႃႇ
GreetUser("Sai Mao"); 
GreetUser("Nang Kham");
```

### 3. ၸႂ်ႉတိုဝ်း Parameters လၢႆလၢႆဢၼ်
ႁဝ်းၸၢင်ႈသူင်ႇၶေႃႈမုၼ်း လၢႆလၢႆဢၼ် ႁူမ်ႈၵၼ်လႆႈ လူၺ်းၵၢၼ်ၸႂ်ႉမၢႆ **`,`** (Comma) ၶႃႈ။

```csharp
public void AddNumbers(int a, int b) 
{
    int sum = a + b;
    Console.WriteLine("Sum is: " + sum);
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
AddNumbers(10, 25); // ၽွၼ်းလႆႈ: Sum is: 35
```

### 4. လွင်ႈလူဝ်ႇၾၢင်ႉ (Strict Rules)
* **Type Matching:** သင်မၵ်းမၼ်ႈဝႆႉဝႃႈႁပ်ႉ `int`၊ ႁဝ်းသူင်ႇ `string` ၶဝ်ႈၵႂႃႇ **ဢမ်ႇလႆႈ** ၶႃႈ။
* **Order (လွင်ႈၶပ်ႉထႅဝ်):** ၶေႃႈမုၼ်းတေလႆႈသူင်ႇၸွမ်းၼင်ႇ လွၵ်းလၢႆးဢၼ်ႁဝ်း မၵ်ႉမၼ်ႈဝႆ့ (Position) ၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parameter:** Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Method Definition (တွၼ်ႈႁပ်ႉ)။
* **Argument:** ၵႃႈၶၼ်တႄႉ (Value) ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ မိူဝ်ႈႁွင်ႉၸႂ်ႉ Method (တွၼ်ႈသူင်ႇ)။
* **Signature:** ၸုမ်း Parameter (Type လႄႈ Order) ဢၼ်မၵ်းမၼ်ႈဝႃႈ Method ၼၼ်ႉပဵၼ်သင်။
* **Call / Invoke:** ၵၢၼ်သင်ႇႁႂ်ႈ Method ႁဵတ်းၵၢၼ်။

---

**Homework တႃႇလုၵ်ႈႁဵၼ်း:**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Method ၸိုဝ်ႈဝႃႈ `ShowStudentInfo` ဢၼ်ႁပ်ႉဢဝ်:
1. `string name` (ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း)
2. `int age` (ဢႃႇယု)
   သေယဝ်ႉ ႁႂ်ႈမၼ်းၼႄလိၵ်ႈပဵၼ်: "Student Name: ..., Age: ..." ၶႃႈ။

တွၼ်ႈၼႆႉယဝ်ႉယဝ်ႉၶႃႈ၊ တေၵႂႃႇ **Lesson 80: The Return Statement** တႃႇတူၺ်းလၢႆး "သူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇမႃး" ႁႃႉၶႃႈ?

1. Continue to Lesson 80
2. Review Parameters vs Arguments
3. Ask a Question about Multiple Parameters

Which path for our modular programming, Kru Sai Mao?