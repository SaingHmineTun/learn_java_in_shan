# Lesson 89: "Expression-Bodied Members: The => Shorthand"

မိူဝ်ႈႁဝ်းမီး Method ဢၼ်မီး Code **"ထႅဝ်လဵဝ်"** (Single Expression) ၵူၺ်းၼၼ်ႉ... 
ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈပဵၼ် Block ယႂ်ႇယႂ်ႇ ၵေႃႈလႆႈၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`=>`** လႆႈၶႃႈ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Method တႃႇၼပ်ႉႁူမ်ႈ (Add) ဢၼ်မီး Code ထႅဝ်လဵဝ်ၵူၺ်း မိူၼ်ၼင်ႇ `return a + b;` ၼႆၶႃႈ။ 
ႁဝ်းၸၢင်ႈပိၼ်ႇမၼ်းပဵၼ် Expression-Bodied လႆႈၸိူင်ႉၼႆၶႃႈ:

**လၢႆးၵဝ်ႇ (Classic Method):**
```csharp
public int Add(int a, int b) 
{
    return a + b;
}
```

**လၢႆးမႂ်ႇ (Expression-Bodied):**
```csharp
public int Add(int a, int b) => a + b;
```



### 2. ပိူင်ၵၢၼ် (Rules)
* **Single Expression:** ၸႂ်ႉလႆႈ တႃႇ Method ဢၼ်မီး Code "ထႅဝ်လဵဝ်" ၵူၺ်းၶႃႈ။ သင်မီး `if-else` ဢမ်ႇၼၼ် `loop` ၼႂ်းမၼ်း တေလႆႈၸႂ်ႉလၢႆး `{ }` မိူၼ်ၵဝ်ႇၶႃႈ။
* **Implicit Return:** မၢႆ **`=>`** ၼႆႉ မၼ်းတေ "သူင်ႇၵႃႈၶၼ်" (Return) ပၼ်ႁင်းၵူၺ်း (သင်ဝႃႈ Method ၼၼ်ႉဢမ်ႇပဵၼ် `void`) ၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၶေႃႈၵႂၢမ်း `return` ၶႃႈ။
* **Void Methods:** ၸႂ်ႉတင်း Method `void` ၵေႃႈလႆႈယူႇၶႃႈ။
    * `public void Greet() => Console.WriteLine("Hello!");`

### 3. တၢင်းလီ (Pros)
* **Concise:** Code တေပွတ်းသေ သႅၼ်ႈသႂ် (Clean) ၼႃႇၶႃႈ။
* **Readability:** ၸွႆးႁႂ်ႈႁဝ်းႁၼ် Logic ဢၼ်ငၢႆႈငၢႆႈ လႆႈဝႆးဝႆး လူၺ်းဢမ်ႇလူဝ်ႇဢၢၼ်ႇလူလၢႆထႅဝ်။
* **Modern Style:** ပဵၼ်လၢႆးတႅမ်ႈဢၼ် Developer မႂ်ႇမႂ်ႇ ၼႂ်း C# ၵႆႉၸႂ်ႉတႄႉတႄႉၶႃႈ။

### 4. တူဝ်ယင်ႇၼႂ်း Project "Learn Shan"
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Method တႃႇပိၼ်ႈၸိုဝ်ႈ "Muse" ႁႂ်ႈပဵၼ် "မူႇၸေႊ"။
```csharp
public string GetShanName(string city) => city == "Muse" ? "မူႇၸေႊ" : "ဢမ်ႇႁူႉ";
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Expression-Bodied Member:** Method ဢၼ်တႅမ်ႈ Body လူၺ်းၵၢၼ်ၸႂ်ႉ Expression တႅၼ်းတၢင်း Statement Block။
* **Lambda Operator (=>):** မၢႆဢၼ်ၸိၼႄၵႂႃႇၸူး Logic ၶွင် Method (ႁွင်ႉဝႃႈ "Fat Arrow" ၵေႃႈလႆႈၶႃႈ)။
* **Shorthand:** လၢႆးတႅမ်ႈ Code ႁႂ်ႈပွတ်းသေ တႅတ်ႈတေႃး။
* **Implicit Return:** ၵၢၼ်သူင်ႇၵႃႈၶၼ်ၶိုၼ်း လူၺ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၶေႃႈၵႂၢမ်း `return`။

---