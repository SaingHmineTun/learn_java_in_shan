# Lesson 83: "Optional and Named Arguments"

တွၼ်ႈၼႆႉ တေၸွႆးႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Method Overloading ၼမ်ပူၼ်ႉတီႈၶႃႈ။

### 1. Optional Arguments (ၵႃႈၶၼ် Default)
ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ "ၵႃႈၶၼ်တႄႇ" ဝႆႉၼႂ်း Parameter ၵမ်းလဵဝ်။ သင် User ဢမ်ႇသူင်ႇ Argument မႃး၊ Method တေၸႂ်ႉၵႃႈၶၼ်ၼၼ်ႉၵႂႃႇၶႃႈ။

* **ပိူင်သၢင်ႈ:** `Type parameter = defaultValue`



```csharp
// မၵ်းမၼ်ႈဝႃႈ သင်ဢမ်ႇသူင်ႇ 'message' မႃး ႁႂ်ႈပဵၼ် "Hello"
public void Greet(string name, string message = "Hello") 
{
    Console.WriteLine($"{message}, {name}!");
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
Greet("Sai Mao");            // ၽွၼ်းလႆႈ: Hello, Sai Mao! (ၸႂ်ႉ Default)
Greet("Nang Kham", "Hi");    // ၽွၼ်းလႆႈ: Hi, Nang Kham! (ၸႂ်ႉ Argument မႂ်ႇ)
```

### 2. Named Arguments (ၵၢၼ်ႁွင်ႉၸွမ်းၸိုဝ်ႈ)
မိူဝ်ႈႁဝ်းမီး Parameter ၼမ်၊ ႁဝ်းၵႆႉလိုမ်းဝႃႈ တူဝ်လႂ်ပဵၼ်တူဝ်လႂ်။ **Named Arguments** ၸွႆးႁႂ်ႈႁဝ်း သူင်ႇၶေႃႈမုၼ်းလူၺ်းၵၢၼ် "ႁွင်ႉၸိုဝ်ႈ" မၼ်းၶႃႈ။

* **တၢင်းလီ:** ႁဝ်းၸၢင်ႈသူင်ႇ Arguments ၸိူင်ႉႁိုဝ်ၵေႃႈလႆႈ (ဢမ်ႇလူဝ်ႇၸွမ်းလွၵ်းလၢႆး Order မၼ်း)။

```csharp
public void DisplayInfo(string name, int age, string city) {
    Console.WriteLine($"{name} is {age} years old from {city}.");
}

// ႁွင်ႉၸွမ်းၸိုဝ်ႈ (ဢမ်ႇလူဝ်ႇၸွမ်း Order)
DisplayInfo(city: "Muse", name: "Sai Mao", age: 25);
```



### 3. လွင်ႈလူဝ်ႇၾၢင်ႉ (Rules)
* **Optional Position:** တူဝ်ဢၼ်ပဵၼ် Optional တေလႆႈယူႇ **ၽၢႆႇလင်သုတ်း** တီႈၼႂ်း Parameter တႃႇသေႇၶႃႈ။
* **Mixing:** သင်ႁဝ်းၸႂ်ႉ Named Argument ႁူမ်ႈတင်း Positional (လၢႆးၵဝ်ႇ)၊ တူဝ်ဢၼ်ပဵၼ် Named တေလႆႈယူႇၽၢႆႇလင်ၶႃႈ (ၼႂ်း C# Version မႂ်ႇမႂ်ႇ တႄႉ လႅၵ်ႈလၢႆႈလႆႈယူႇ ၵူၺ်းၵႃႈ လူဝ်ႇဝၢင်ႈတႅတ်ႈတေႃးၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Optional Parameter:** Parameter ဢၼ်မီးၵႃႈၶၼ် Default ဝႆႉယဝ်ႉ။
* **Default Value:** ၵႃႈၶၼ်ဢၼ် Method တေၸႂ်ႉ၊ သင်ဝႃႈ User ဢမ်ႇသူင်ႇ Argument မႃး။
* **Named Argument:** ၵၢၼ်သူင်ႇ Arguments လူၺ်းၵၢၼ်မၵ်းမၼ်ႈၸိုဝ်ႈ Parameter ၵိုၵ်းၵၼ်။
* **Flexibility:** လွင်ႈယိုတ်ႈယၢပ်ႈ ၼႂ်းၵၢၼ်ႁွင်ႉၸႂ်ႉ Code။

---