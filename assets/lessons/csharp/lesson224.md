# Lesson 224: "Grouping Data for Categorization"

**`.GroupBy()`** တေဢဝ်ၶေႃႈမုၼ်းဢၼ်မီး "ၵႃႈၶၼ်မိူၼ်ၵၼ်" မႃးဝႆႉယူႇၸွမ်းၵၼ်။ 
ၽွၼ်းလႆႈဢၼ်လႆႈမႃး တေပဵၼ် **`IEnumerable<IGrouping<TKey, TElement>>`** ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီးလုၵ်ႈႁဵၼ်းလၢႆလၢႆဝဵင်း သေႁဝ်းၶႂ်ႈၸႅၵ်ႇဝႃႈ "ဝဵင်းမူႇၸေႊ မီးလၢႆၵေႃႉ"၊ "ဝဵင်းလႃႈသဵဝ်ႈ မီးလၢႆၵေႃႉ" ၼႆၶႃႈ။

* **Key:** ပဵၼ် "ၸိုဝ်ႈၸုမ်း" (မိူၼ်ၼင်ႇ ၸိုဝ်ႈဝဵင်း)။
* **Elements:** ပဵၼ် "သဵၼ်ႈမၢႆၶေႃႈမုၼ်း" ၸိူဝ်းဢၼ်ယူႇၼႂ်းၸုမ်းၼၼ်ႉ။



### 2. တူဝ်ယင်ႇ Code: ၸႅၵ်ႇလုၵ်ႈႁဵၼ်းၸွမ်းဝဵင်း
```csharp
var students = new List<Student> {
    new Student { Name = "ၸၢႆးသႅင်", City = "Muse" },
    new Student { Name = "ၼၢင်းမိူင်း", City = "Lashio" },
    new Student { Name = "ၸၢႆးလႅင်း", City = "Muse" },
    new Student { Name = "ၼၢင်းၼုမ်ႇ", City = "Lashio" }
};

// ၸႅၵ်ႇၸုမ်းၸွမ်း City
var groupedByCity = students.GroupBy(s => s.City);

foreach (var group in groupedByCity) {
    Console.WriteLine($"\nဝဵင်း: {group.Key}"); // Key ပဵၼ်ၸိုဝ်ႈဝဵင်း
    foreach (var s in group) {
        Console.WriteLine($" - {s.Name}"); // ပၼ်ႇ Loop လူလုၵ်ႈႁဵၼ်းၼႂ်းၸုမ်း
    }
}
```

### 3. ၵၢၼ်ၸႂ်ႉ GroupBy တင်း Aggregation
ႁဝ်းၵႆႉၸႂ်ႉ `GroupBy` ႁူမ်ႈတင်း `Count` ဢမ်ႇၼၼ် `Sum` တႃႇႁဵတ်း Report ၶႃႈ။

```csharp
// ၼပ်ႉတၢင်းၼမ်လုၵ်ႈႁဵၼ်း ၼႂ်းၵူႈဝဵင်း
var cityStats = students.GroupBy(s => s.City)
                        .Select(g => new {
                            CityName = g.Key,
                            Count = g.Count()
                        });
```

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ GroupBy
* **Key Selector:** Lambda ဢၼ်ႁဝ်းပၼ်ၼၼ်ႉ တေပဵၼ်တူဝ်တတ်းသႅၼ်းဝႃႈ "တေဢဝ်သင်မႃးပဵၼ်ၸုမ်း"။
* **Two Loops:** မိူဝ်ႈလူၽွၼ်းလႆႈ... ႁဝ်းၵႆႉလႆႈၸႂ်ႉ **Nested Foreach** (Loop ၼႂ်း Loop)၊ ဢၼ်ၼိုင်ႈတႃႇလူၸုမ်း၊ ထႅင်ႈဢၼ်ၼိုင်ႈတႃႇလူၶေႃႈမုၼ်း ၼႂ်းၸုမ်းၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Grouping:** ၵၢၼ်ၸႅၵ်ႇၶေႃႈမုၼ်းပဵၼ်ၸုမ်း ၸွမ်းၼင်ႇၵႃႈၶၼ်ဢၼ်မိူၼ်ၵၼ်။
* **Key:** ၵႃႈၶၼ်ဢၼ်ၸႂ်ႉတႃႇမၵ်းမၼ်ႈၸုမ်း (မိူၼ်ၼင်ႇ Category ဢမ်ႇၼၼ် City)။
* **IGrouping:** Interface ဢၼ်သိမ်းဝႆႉတင်း Key လႄႈ သဵၼ်ႈမၢႆ Elements ၼႂ်းၸုမ်း။
* **Categorization:** ၵၢၼ်ၸတ်းပိူင်ၶေႃႈမုၼ်း ႁႂ်ႈလူငၢႆႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ LINQ တႃႇ List **`Product`** ဢၼ်မီး `Category` (မိူၼ်ၼင်ႇ "Fruit", "Drink") လႄႈ `Name` ၶႃႈ။
1.  ၸႂ်ႉ **`.GroupBy()`** တႃႇၸႅၵ်ႇၵုၼ်ႇၸိူဝ်းၼၼ်ႉ ၸွမ်းၼင်ႇ **`Category`**။
2.  ၼႄ "ၸိုဝ်ႈ Category" လႄႈ "သဵၼ်ႈမၢႆၵုၼ်ႇ" ၸိူဝ်းဢၼ်ယူႇၼႂ်း Category ၼၼ်ႉ ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။
