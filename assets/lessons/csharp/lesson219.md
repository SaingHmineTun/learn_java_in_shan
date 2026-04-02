# Lesson 219: "Selecting and Transforming Data with 'Select'"

**Projection** ပွင်ႇဝႃႈ ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Object ၼိုင်ႈဢၼ် သေလိူၵ်ႈဢဝ် "မၢင်တွၼ်ႈ" သေဢၼ်ဢၼ် ဢမ်ႇၼၼ် ပိၼ်ႇမၼ်းပဵၼ် "Type မႂ်ႇ" ၶႃႈ။

### 1. ၵၢၼ်လိူၵ်ႈဢဝ် Property ဢၼ်လဵဝ်ၵူၺ်း (Selecting)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး List ၶွင် `Student` ဢၼ်မီးတင်း ၸိုဝ်ႈ, ဢႃႇယု, ဝဵင်း... ၵူၺ်းၵႃႈ ႁဝ်းၶႂ်ႈလႆႈ "ၸိုဝ်ႈ" (Name) ၵူၺ်း တႃႇၼႄၼိူဝ် User Interface ၶႃႈ။

```csharp
// လုၵ်ႉတီႈ List<Student> ပိၼ်ႇပဵၼ် IEnumerable<string> (ၸိုဝ်ႈၵူၺ်း)
var studentNames = students.Select(s => s.Name);
```



### 2. ၵၢၼ်ပိၼ်ႇႁၢင်ႈၶေႃႈမုၼ်း (Transformation)
ႁဝ်းၸၢင်ႈၸႂ်ႉ `.Select()` တႃႇၼပ်ႉသွၼ်ႇ ဢမ်ႇၼၼ် မႄးပိၼ်ႇၶေႃႈမုၼ်း ၼႂ်းၵမ်းလဵဝ်ၵၼ်လႆႈၶႃႈ။

```csharp
// ဢဝ်ၵႃႈၶၼ်ၵဝ်ႇ (Price) သေထႅမ် Tax 7% ၶဝ်ႈၵႂႃႇ
var finalPrices = products.Select(p => p.Price * 1.07);
```

### 3. ၵၢၼ်သၢင်ႈ Object မႂ်ႇ (Anonymous Types)
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈလႆႈ 2-3 Property ႁူမ်ႈၵၼ် ၵူၺ်းၵႃႈ ဢမ်ႇၶႂ်ႈသၢင်ႈ Class မႂ်ႇ... ႁဝ်းၸၢင်ႈၸႂ်ႉ **`new { }`** လႆႈၶႃႈ။

```csharp
// လိူၵ်ႈဢဝ် ၸိုဝ်ႈ လႄႈ ဝဵင်း ႁူမ်ႈၵၼ်ပဵၼ် Object မႂ်ႇ
var simplifiedStudents = students.Select(s => new {
    StudentName = s.Name,
    HomeCity = s.City
});

foreach (var item in simplifiedStudents) {
    Console.WriteLine($"{item.StudentName} ယူႇတီႈ {item.HomeCity}");
}
```

### 4. လွင်ႈပႅၵ်ႇပိူင်ၵႄႈ Where လႄႈ Select
* **`.Where()`**: ႁဵတ်းႁႂ်ႈ "တၢင်းၼမ်" ၶွင်ၶေႃႈမုၼ်း ဢေႇလူင်း (လိူၵ်ႈထႅဝ်)။
* **`.Select()`**: ႁဵတ်းႁႂ်ႈ "ႁၢင်ႈၽၢင်" ၶွင်ၶေႃႈမုၼ်း လႅၵ်ႈလၢႆႈၵႂႃႇ (လိူၵ်ႈလွၵ်း)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Projection:** ၵၢၼ်ပိၼ်ႇႁၢင်ႈၶေႃႈမုၼ်း လုၵ်ႉတီႈပိူင်ၼိုင်ႈ ၵႂႃႇပဵၼ်ထႅင်ႈပိူင်ၼိုင်ႈ။
* **Transformation:** ၵၢၼ်မႄးလႅၵ်ႈလၢႆႈၵႃႈၶၼ် ၼႂ်းၶၼ်တွၼ်ႈၵၢၼ်ထၢမ်ႁႃ (Query)။
* **Anonymous Type:** Object ဢၼ်သၢင်ႈၶိုၼ်ႈမႃးၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇမီးၸိုဝ်ႈ Class။
* **Mapping:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းတီႈ A ၵႂႃႇသႂ်ႇဝႆႉတီႈ B။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ LINQ တႃႇ List **`int[] numbers = { 1, 2, 3, 4, 5 };`**။
1.  ၸႂ်ႉ **`.Select()`** တႃႇပိၼ်ႇတူဝ်ၼပ်ႉၸိူဝ်းၼၼ်ႉ ႁႂ်ႈပဵၼ် "လိၵ်ႈ" (String) ဢၼ်မီးၶေႃႈၵႂၢမ်းဝႃႈ `"Number: [Value]"` (တူဝ်ယင်ႇ: `"Number: 1"`)။
2.  ၼႄၽွၼ်းလႆႈတင်းမူတ်း ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။