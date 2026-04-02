# Lesson 216: "LINQ Syntax Styles: Query vs. Method"

LINQ မီးလၢႆးတႅမ်ႈသွင်ပိူင်လူင် ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Query Syntax** လႄႈ **Method Syntax** ၶႃႈ။

### 1. Query Syntax (လၢႆးတႅမ်ႈမိူၼ် SQL)
လၢႆးတႅမ်ႈၼႆႉ လူငၢႆႈလိူဝ် တွၼ်ႈတႃႇၵူၼ်းဢၼ်ႁူႉၸၵ်း SQL (Database) မႃးဢွၼ်တၢင်းၶႃႈ။ 
မၼ်းၸႂ်ႉ Keyword မိူၼ်ၼင်ႇ `from`, `where`, `select` ၶႃႈ။

* **ပိူင်သၢင်ႈ:**
```csharp
// ႁႃၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ဢၼ်တႄႇလူၺ်ႈတူဝ် "ၸ"
var query = from s in students
            where s.StartsWith("ၸ")
            select s;
```

### 2. Method Syntax (လၢႆးတႅမ်ႈၸႂ်ႉ Lambda)
လၢႆးတႅမ်ႈၼႆႉ ၵူၼ်းတႅမ်ႈ C# ၵႆႉၸႂ်ႉၼမ်သုတ်းၶႃႈ။ မၼ်းၸႂ်ႉ "Extension Methods" သိုပ်ႇၵၼ်ၵႂႃႇ လႄႈ ၸႂ်ႉ **Lambda Expression (`=>`)** ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Module ဢွၼ်တၢင်းၼၼ်ႉၶႃႈ။

* **ပိူင်သၢင်ႈ:**
```csharp
// ၸႂ်ႉ Method .Where()
var method = students.Where(s => s.StartsWith("ၸ"));
```



### 3. ပၵ်းၵၢၼ်တႅၵ်ႈၵၼ် (Comparison Table)

| Feature | Query Syntax | Method Syntax |
| :--- | :--- | :--- |
| **လၢႆးတႅမ်ႈ** | မိူၼ်လိၵ်ႈ SQL (Readable) | မိူၼ် C# Method (Fluent) |
| **ၵၢၼ်ၸႂ်ႉ Lambda** | ဢမ်ႇလူဝ်ႇၸႂ်ႉ | **တေလႆႈၸႂ်ႉ** |
| **တၢင်းငၢႆႈ** | ငၢႆႈမိူဝ်ႈလူဝ်ႇ Join လၢႆလၢႆ List | ငၢႆႈ လႄႈ ဝႆး တွၼ်ႈတႃႇၵၢၼ် Filtering |
| **Popularity** | ၵူၼ်းၸႂ်ႉဢေႇလိူဝ် | **ၵူၼ်းၸႂ်ႉၼမ်သုတ်း (Recommended)** |

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇႁူႉတင်းသွင်ပိူင်?
1.  **Readability:** မၢင်ပွၵ်ႈ Logic ႁဝ်းယုင်ႈယၢင်ႈၼႃႇ (မိူၼ်ၼင်ႇ Join 3-4 Table)... တႅမ်ႈ Query Syntax တေလူငၢႆႈလိူဝ်ၶႃႈ။
2.  **Compiler Logic:** မိူဝ်ႈႁဝ်းတႅမ်ႈ Query Syntax ယဝ်ႉ... Compiler တေပိၼ်ႇမၼ်းပဵၼ် Method Syntax ႁင်းၵူၺ်း ဢွၼ်တၢင်းတေလႅၼ်ႈၵၢၼ်ၶႃႈ။
3.  **Mixing:** ႁဝ်းၸၢင်ႈတႅမ်ႈ "ႁူမ်ႈၵၼ်" (Mixed) ၵေႃႈလႆႈၶႃႈ (တူဝ်ယင်ႇ: ႁႃ Query Syntax ယဝ်ႉသေ ႁွင်ႉ `.Count()` ဝၢႆးလင်)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Query Syntax:** လၢႆးတႅမ်ႈ LINQ ဢၼ်ၸႂ်ႉ Keyword မိူၼ် SQL။
* **Method Syntax (Fluent Syntax):** လၢႆးတႅမ်ႈ ဢၼ်ၸႂ်ႉ Extension Methods သိုပ်ႇၵၼ်ၽၢၼ်ႇ `.` (Dot)။
* **Extension Method:** Method ဢၼ်ထႅမ်ၶဝ်ႈၵႂႃႇၼႂ်း Class ဢၼ်မီးဝႆႉယဝ်ႉ (မိူၼ်ၼင်ႇ `.Where()`, `.Select()`)။
* **From Clause:** တွၼ်ႈဢၼ်မၵ်းမၼ်ႈ "ငဝ်ႈႁၢၵ်ႈၶေႃႈမုၼ်း" (Data Source)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅႅမ်ႈ Code 2 ပိူင်ၼႆႉ တႃႇ List **`prices = { 100, 500, 20, 800 }`**။
1.  ၸႂ်ႉ **Query Syntax** တႃႇႁႃ "ၵႃႈၶၼ် ဢၼ်ယႂ်ႇလိူဝ် 200"။
2.  ၸႂ်ႉ **Method Syntax** တႃႇႁႃ "ၵႃႈၶၼ် ဢၼ်ယႂ်ႇလိူဝ် 200"။
3.  တူၺ်းဝႃႈ လၢႆးတႅမ်ႈလႂ် ဢၼ်ၶူးသူင်ၸႂ်လိူဝ်?