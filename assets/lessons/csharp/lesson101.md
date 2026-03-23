# Lesson 101: "Object Initializers: Setting Properties on the Fly"

မိူဝ်ႈႁဝ်းႁဵၼ်းၼႂ်း Lesson 93 ၼၼ်ႉ ႁဝ်းသၢင်ႈ Object သေယဝ်ႉ ၸင်ႇသႂ်ႇၶေႃႈမုၼ်းပၼ်မၼ်းလၢႆလၢႆထႅဝ်။ 
**Object Initializer** တေမႃးႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇၶႃႈ။

### 1. လၢႆးၵဝ်ႇ vs လၢႆးမႂ်ႇ (Comparison)

**လၢႆးၵဝ်ႇ (Multiple Lines):**
```csharp
Student s1 = new Student();
s1.Name = "Sai Mao";
s1.Age = 25;
s1.City = "Muse";
```

**လၢႆးမႂ်ႇ (Object Initializer):**
ႁဝ်းၸႂ်ႉ `{ }` ဝႆႉၽၢႆႇလင် `new Student()` သေ သႂ်ႇၵႃႈၶၼ်ပၼ်မၼ်းလႆႈၵမ်းလဵဝ်ၶႃႈ။

```csharp
Student s1 = new Student { 
    Name = "Sai Mao", 
    Age = 25, 
    City = "Muse" 
};
```



### 2. တၢင်းလီ (Pros)
* **Readability:** Code တူၺ်းငၢႆႈ ႁူႉၵမ်းလဵဝ်ဝႃႈ Object တူဝ်ၼႆႉ မီးၶေႃႈမုၼ်းသင်ဝႆႉလၢႆလၢႆ။
* **Concise:** လူတ်းယွမ်းၵၢၼ်တႅမ်ႈၸိုဝ်ႈ Variable (`s1.`) သွၼ်ႉၵၼ်လၢႆလၢႆပွၵ်ႈ။
* **Flexibility:** ႁဝ်းလိူၵ်ႈသႂ်ႇၶေႃႈမုၼ်း တွၼ်ႈဢၼ်ႁဝ်းလူဝ်ႇၵူၺ်းၵေႃႈလႆႈ (ဢမ်ႇလူဝ်ႇသႂ်ႇၵူႈ Field ၵေႃႈလႆႈ)။


### 3. ပိူင်ၵၢၼ် (Rules)
* **Public Access:** Fields ဢမ်ႇၼၼ် Properties ၸိူဝ်းၼၼ်ႉ တေလႆႈပဵၼ် **`public`** ၸင်ႇတေၸႂ်ႉလၢႆးၼႆႉလႆႈၶႃႈ (ယွၼ်ႉမၼ်းပဵၼ်ၵၢၼ် Assignment လုၵ်ႉၽၢႆႇၼွၵ်ႈ Class)။
* **Parentheses ( ) is Optional:** မိူဝ်ႈႁဝ်းၸႂ်ႉ `{ }` ၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ `()` ဝႆႉၽၢႆႇၼႃႈမၼ်းၵေႃႈလႆႈ (မိူၼ်ၼင်ႇ `new Student { ... }`)။
* **Comma Separated:** ၵႃႈၶၼ်ၵူႈဢၼ် တေလႆႈၸႅၵ်ႇၵၼ်လူၺ်း **Comma (,)** ၶႃႈ။

### 4. တူဝ်ယင်ႇၼႂ်း Project "Learn Shan"
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `ShanWord` တႃႇသိမ်းၶေႃႈၵႂၢမ်းတႆး:
```csharp
var word = new ShanWord {
    ShanText = "မႂ်ႇသုင်",
    EnglishMeaning = "Hello",
    Category = "Greeting"
};
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Object Initializer:** လၢႆးတႅမ်ႈပွတ်း တႃႇသၢင်ႈ Object လႄႈ ပၼ်ၵႃႈၶၼ် Fields ၼႂ်း Statement လဵဝ်ၵၼ်။
* **Declarative Style:** လၢႆးတႅမ်ႈ Code ဢၼ်လၢတ်ႈဝႃႈ "ႁဝ်းၶႂ်ႈလႆႈသင်" (တႅၼ်းတၢင် တေလၢတ်ႈဝႃႈ "ႁဵတ်းၸိူင်ႉၼႆ ၸိူင်ႉၼၼ်")။
* **Property Assignment:** ၵၢၼ်ဢဝ်ၵႃႈၶၼ် (Value) သႂ်ႇပၼ်ၼႂ်း Property ၶွင် Object။
* **Shorthand:** လွၵ်းလၢႆးတႅမ်ႈ Code ႁႂ်ႈပွတ်းသေ တႅတ်ႉတေႃးလိူဝ်ၵဝ်ႇ။

---