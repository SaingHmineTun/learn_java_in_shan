# Lesson 206: "Anonymous Methods"

**Anonymous Method** ပွင်ႇဝႃႈ "Method ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ" ၶႃႈ။ 
ႁဝ်းၸႂ်ႉ Keyword **`delegate`** တႃႇတႅမ်ႈ Logic ၼၼ်ႉသႂ်ႇဝႆႉ ၼႂ်းတွၼ်ႈဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်းၵမ်းလဵဝ်ၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Reduce Code Bloat:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Method တၢင်းၼမ် တႃႇၼႃႈၵၢၼ်ဢၼ်ပွတ်းပွတ်း။
2.  **Locality:** တႅမ်ႈ Code ဝႆႉတီႈလဵဝ်ၵၼ် တင်းတွၼ်ႈ ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉလႄႈ ႁဵတ်းႁႂ်ႈလူငၢႆႈ။
3.  **Access to Variables:** မၼ်းၸၢင်ႈ "ႁၼ်" (Access) Variable ၸိူဝ်းဢၼ်ယူႇၼွၵ်ႈ Method ၼၼ်ႉလႆႈၶႃႈ (Outer Variables)။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတေဢမ်ႇမီးၸိုဝ်ႈ Method၊ ႁဝ်းတေၸႂ်ႉ `delegate` သေတႅမ်ႈ `{ }` ၵမ်းလဵဝ်ၶႃႈ။

```csharp
// လၢႆးတႅမ်ႈ Standard Delegate (မီးၸိုဝ်ႈ)
// Action<string> del = DisplayMessage; 

// လၢႆးတႅမ်ႈ Anonymous Method (ဢမ်ႇမီးၸိုဝ်ႈ)
Action<string> del = delegate (string msg) {
    Console.WriteLine($"Anonymous Shan: {msg}");
};

del("မႂ်ႇသုင်ၶႃႈ");
```

### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႂ်ႉတင်း Built-in Delegate
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး List ၶေႃႈၵႂၢမ်းတႆး သေႁဝ်းၶႂ်ႈႁႃၶေႃႈၵႂၢမ်းဢၼ် "ယၢဝ်းလိူဝ် 5 တူဝ်" ၶႃႈ။

```csharp
List<string> words = new List<string> { "တႆး", "မိူင်းတႆး", "လိၵ်ႈတႆး", "ၵတ်းယဵၼ်" };

// ၸႂ်ႉ Anonymous Method ၼႂ်း FindAll
List<string> longWords = words.FindAll(delegate (string w) {
    return w.Length > 5;
});

foreach (var word in longWords) {
    Console.WriteLine(word); // ၼႄဢွၵ်ႇ: "မိူင်းတႆး", "လိၵ်ႈတႆး"
}
```

### 4. လွင်ႈပႅၵ်ႇပိူင် ဢၼ်လူဝ်ႇတွင်း
* Anonymous Method ပဵၼ်လၢႆးတႅမ်ႈ "ၵဝ်ႇ" (ၼႂ်း C# 2.0)။
* ယၢမ်းလဵဝ် ၵူၼ်းၵႆႉၸႂ်ႉ **Lambda Expressions (`=>`)** တႅၼ်းလိူဝ်ၶႃႈ (ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson ၼႃႈၵႂႃႇ)။
* ၵူၺ်းၵႃႈ ႁဝ်းတေလႆႈႁူႉဝႆႉ ယွၼ်ႉမၢင်ပွၵ်ႈ ႁဝ်းတေလႆႈၵႂႃႇလူ Code ၵဝ်ႇၵဝ်ႇ ဢၼ်ပိူၼ်ႈတႅမ်ႈဝႆႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Anonymous Method:** Method ဢၼ်ဢမ်ႇလႆႈပၼ်ၸိုဝ်ႈမၼ်းဝႆႉ။
* **Inline Code:** ၵၢၼ်တႅမ်ႈ Logic သႂ်ႇဝႆႉၼႂ်းထႅဝ်လိၵ်ႈ ဢၼ်တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။
* **Outer Variable:** Variable ဢၼ်ယူႇၼွၵ်ႈ Anonymous Method သေမၼ်းႁွင်ႉၸႂ်ႉလႆႈ (Captured Variable)။
* **Delegate Keyword:** ၸႂ်ႉတႃႇပိုၼ်ၽၢဝ်ႇ Anonymous Method ၼႂ်း C# 2.0။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ Code **`ShanScoreTest`**။
1.  သၢင်ႈ **`Predicate<int>`** ဢၼ်ၸိုဝ်ႈဝႃႈ `isPass`။
2.  ၸႂ်ႉ **Anonymous Method** (တႅမ်ႈ `delegate(int score) { ... }`) တႃႇၵူတ်ႇထတ်းဝႃႈ "သင် Score ယႂ်ႇလိူဝ် 50 ႁႂ်ႈပဵၼ် True"။
3.  ၸၢမ်းသူင်ႇမၢႆ 75 ၶဝ်ႈၵႂႃႇ သေၼႄၽွၼ်းလႆႈၶႃႈ။
