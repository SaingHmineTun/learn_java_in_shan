# Lesson 223: "Aggregation Methods"

Method ၸိူဝ်းၼႆႉ လမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇႁဵတ်း Report ဢမ်ႇၼၼ် ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇ လွင်ႈသဵၼ်ႈမၢႆ (Statistics) ၶႃႈ။

### 1. Count (ၼပ်ႉတၢင်းၼမ်)
ၸႂ်ႉတႃႇႁူႉဝႃႈ တင်းမူတ်း မီးၶေႃႈမုၼ်းဝႆႉလၢႆဢၼ်။ ႁဝ်းၸၢင်ႈသႂ်ႇ Lambda တႃႇၼပ်ႉတူဝ် ဢၼ်မႅၼ်ႈၸွမ်း ပၵ်းၵၢၼ်ၵေႃႈလႆႈၶႃႈ။
```csharp
int totalStudents = students.Count();
int passedStudents = scores.Count(s => s >= 50); // ၼပ်ႉၵူၼ်းဢွင်ႇၵူၺ်း
```

### 2. Sum (ႁူမ်ႈၵႃႈၶၼ်)
ၸႂ်ႉတႃႇဢဝ်တူဝ်ၼပ်ႉတင်းမူတ်းမႃး "လေႃး" (Add) ၸွမ်းၵၼ်ၶႃႈ။
```csharp
int totalPoints = scores.Sum();
// သင်ပဵၼ် Object ႁဝ်းလႆႈလိူၵ်ႈ Property ဢၼ်တေ Sum
double totalRevenue = sales.Sum(s => s.Amount);
```

### 3. Min လႄႈ Max (ဢေႇသုတ်း လႄႈ ၼမ်သုတ်း)
* **`.Min()`**: ႁႃၵႃႈၶၼ်ဢၼ် "ဢေႇသုတ်း" ၼႂ်း List။
* **`.Max()`**: ႁႃၵႃႈၶၼ်ဢၼ် "ၼမ်သုတ်း" ၼႂ်း List။
```csharp
int lowestScore = scores.Min();
int highestScore = scores.Max();
```



### 4. Average (ၵႃႈၶၼ်ၵၢင်)
ၸႂ်ႉတႃႇႁႃ "ၵႃႈၶၼ်ၵၢင်" ၶွင်တူဝ်ၼပ်ႉတင်းမူတ်းၶႃႈ။
```csharp
double averageScore = scores.Average();
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Aggregation
* **Empty Collection:** သင်ႁဝ်းၸႂ်ႉ `.Sum()` ၼႂ်း List ဢၼ်ဢမ်ႇမီးသင် (Empty)... မၼ်းတေသူင်ႇ `0`။ ၵူၺ်းၵႃႈ သင်ၸႂ်ႉ `.Average()`, `.Min()`, ဢမ်ႇၼၼ် `.Max()`... မၼ်းတေပဵၼ် **Exception (Crash)** ၶႃႈ။
* **Performance:** Method ၸိူဝ်းၼႆႉ တေလႆႈပၼ်ႇ Loop တူၺ်းၶေႃႈမုၼ်း "ၵူႈတူဝ်" (Full Scan) ၸင်ႇတေလႆႈၽွၼ်းလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Aggregation:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလၢႆလၢႆတူဝ် မႃးၼပ်ႉသွၼ်ႇႁူမ်ႈၵၼ် ႁႂ်ႈပဵၼ်ၽွၼ်းလႆႈတူဝ်လဵဝ်။
* **Numeric Value:** ၵႃႈၶၼ်ဢၼ်ပဵၼ်တူဝ်ၼပ်ႉ (int, double, decimal)။
* **Full Scan:** ၵၢၼ်ဢၼ် Compiler တေလႆႈလူၶေႃႈမုၼ်းတႄႇတေႃႇသုတ်း ၼႂ်း Collection။
* **Average (Mean):** ၵႃႈၶၼ်ၵၢင် ဢၼ်လႆႈမႃးလုၵ်ႉတီႈ (Sum / Count)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ LINQ တႃႇ List **`double[] expenses = { 120.50, 45.00, 2500.00, 300.75 };`**။
1.  ႁႃ **`Sum`** ၶွင်ၵႃႈၸၢႆႇတင်းမူတ်း။
2.  ႁႃ **`Average`** ၶွင်ၵႃႈၸၢႆႇ။
3.  ႁႃ **`Max`** ၶွင်ၵႃႈၸၢႆႇ ဢၼ်ယႂ်ႇသုတ်း။
4.  ၼႄၽွၼ်းလႆႈတင်းမူတ်း ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။