# Lesson 93: "Instantiating Objects: Bringing the Blueprint to Life"

မိူဝ်ႈႁဝ်းတႅမ်ႈ Class ဝႆႉၼၼ်ႉ မၼ်းတိုၵ်ႉပဵၼ်တူဝ်လိၵ်ႈဝႆႉယူႇၵူၺ်း။ 
တႃႇတေဢဝ်မၼ်းမႃးၸႂ်ႉလႆႈတႄႉတႄႉၼၼ်ႉ ႁဝ်းလူဝ်ႇသၢင်ႈ **Instance** (တူဝ်တႄႉမၼ်း) ဢွၵ်ႇမႃးၶႃႈ။

### 1. Keyword `new`
ၼႂ်း C# ႁဝ်းၸႂ်ႉ Keyword **`new`** တႃႇသင်ႇႁႂ်ႈ Computer ပၼ်တီႈယူႇ (Memory) သေယဝ်ႉ သၢင်ႈ Object မႂ်ႇဢွၵ်ႇမႃး ၸွမ်းၼင်ႇ Class ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
လၢႆးသၢင်ႈ Object မၼ်းမီး 3 တွၼ်ႈၶႃႈ:
1.  **Declaration:** လၢတ်ႈဝႃႈ Variable ၼႆႉပဵၼ် Type သင် (ၸိုဝ်ႈ Class)။
2.  **Assignment:** ၸႂ်ႉမၢႆ `=` တႃႇပၼ်ၵႃႈၶၼ်။
3.  **Instantiation:** ၸႂ်ႉ `new` ၸွမ်းၼင်ႇၸိုဝ်ႈ Class တႃႇသၢင်ႈတူဝ်တႄႉမၼ်း။

```csharp
// 1. Declaration & Instantiation
Student s1 = new Student();

// 2. Accessing Fields - သႂ်ႇၶေႃႈမုၼ်း
s1.Name = "Sai Mao";
s1.Age = 25;

// 3. Calling Methods - သင်ႇႁဵတ်းၵၢၼ်
s1.Study();
```

### 3. Objects လၢႆလၢႆတူဝ် ၸၢင်ႈလုၵ်ႉတီႈ Class ဢၼ်လဵဝ်မႃး
ႁဝ်းၸၢင်ႈၸႂ်ႉ Class လဵဝ်ၵၼ် သၢင်ႈ Object လၢႆဢၼ်ၵေႃႈလႆႈ။ 
ၵူႈတူဝ်တေမီး "ၶေႃႈမုၼ်း" (Data) ႁင်းၽႂ်မၼ်းဝႆႉယဝ်ႉ။

```csharp
Student s2 = new Student();
s2.Name = "Nang Kham";
s2.Age = 22;

s1.Study(); // ၼႄဝႃႈ "Sai Mao is studying..."
s2.Study(); // ၼႄဝႃႈ "Nang Kham is studying..."
```

### 4. မၼ်းၵႂႃႇယူႇတီႈလႂ်? (Memory Reference)
မိူဝ်ႈႁဝ်းတႅမ်ႈ `Student s1 = new Student();`:
* **`s1`** (Variable) : ယူႇၼႂ်း **Stack** (သိမ်းဝႆႉပၼ် "မၢႆၼပ်ႉတီႈယူႇ" ၵူၺ်း)။
* **`new Student()`** (Object) : ယူႇၼႂ်း **Heap** (သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉဝႆႉ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Instantiation:** ၵၢၼ်သၢင်ႈ Object (Instance) ဢွၵ်ႇမႃး လုၵ်ႉတီႈ Class။
* **new Keyword:** ၶေႃႈၵႂၢမ်းဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ Object မႂ်ႇၼႂ်း Memory။
* **Constructor:** Method ဢၼ်တေလႅၼ်ႈႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းၸႂ်ႉ `new` (ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson ၼႃႈၶႃႈ)။
* **Reference:** "သၢႆၵွင်ႉ" ဢၼ် Variable (Stack) ၸိၼႄၵႂႃႇၸူး Object (Heap)။
* **Member Access Operator (.):** မၢႆ "ၸုတ်ႇ" (.) ဢၼ်ၸႂ်ႉတႃႇၶဝ်ႈၵႂႃႇၸႂ်ႉ Fields ဢမ်ႇၼၼ် Methods ၼႂ်း Object။

---