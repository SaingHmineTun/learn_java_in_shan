# Lesson 225: "Joining Data (Inner Join)"

**`.Join()`** တေဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ သွင် Collection မႃးတူၺ်းဝႃႈ "ၸွင်ႇမီး Key ဢၼ်မိူၼ်ၵၼ်ႁႃႉ?"။ 
သင်မီး... မၼ်းတေဢဝ်မႃးႁူမ်ႈၵၼ်ပဵၼ် Object မႂ်ႇ ဢၼ်မီးၶေႃႈမုၼ်း လုၵ်ႉတီႈတင်းသွင်ၽၢႆႇၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး:
* **Outer List:** List ၶွင် `Student` (မီး StudentID, Name)
* **Inner List:** List ၶွင် `Score` (မီး StudentID, Grade)
* **Join Key:** ႁဝ်းၸႂ်ႉ **`StudentID`** တႃႇၵွင်ႉသွင် List ၼႆႉၶဝ်ႈၵၼ်ၶႃႈ။



### 2. တူဝ်ယင်ႇ Code: ၵွင်ႉလုၵ်ႈႁဵၼ်း တင်း မၢႆတွၼ်ႈ
```csharp
var students = new List<Student> {
    new Student { ID = 1, Name = "ၸၢႆးသႅင်" },
    new Student { ID = 2, Name = "ၼၢင်းမိူင်း" }
};

var scores = new List<Score> {
    new Score { StudentID = 1, Grade = "A" },
    new Score { StudentID = 2, Grade = "B" }
};

// လၢႆးတႅမ်ႈ Join
var studentGrades = students.Join(
    scores,                          // 1. Inner List
    student => student.ID,           // 2. Outer Key (ID လုၵ်ႈႁဵၼ်း)
    score => score.StudentID,        // 3. Inner Key (ID ၼႂ်း Score)
    (student, score) => new {        // 4. Result Selector (ဢဝ်သင်မႃးၼႄ)
        StudentName = student.Name,
        Grade = score.Grade
    }
);

foreach (var item in studentGrades) {
    Console.WriteLine($"{item.StudentName} လႆႈမၢႆတွၼ်ႈ: {item.Grade}");
}
```

### 3. တွၼ်ႈဢၼ်လူဝ်ႇတွင်း (Key Rules)
* **Inner Join Only:** သင်လုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉ ဢမ်ႇမီးမၢႆတွၼ်ႈ (ဢမ်ႇၼၼ် မၢႆတွၼ်ႈဢမ်ႇမီးၸိုဝ်ႈလုၵ်ႈႁဵၼ်း)... မၼ်းတေ **ဢမ်ႇၼႄ** ၽွၼ်းလႆႈဢွၵ်ႇမႃးၶႃႈ။ တေၼႄၵူၺ်းတူဝ်ဢၼ် "မီးတင်းသွင်ၽၢႆႇ" (Matched) ၶႃႈ။
* **Complexity:** လၢႆးတႅမ်ႈ Join ၼႂ်း Method Syntax မၢင်ပွၵ်ႈတေလူယၢပ်ႇဢိတ်းၼိုင်ႈ။ ၵူၼ်းတႅမ်ႈ Code တၢင်းၼမ် ၵႆႉၸႂ်ႉ **Query Syntax** တႃႇႁဵတ်း Join ယွၼ်ႉမၼ်းလူငၢႆႈလိူဝ်ၶႃႈ။

### 4. လၢႆးတႅမ်ႈ Query Syntax (လူငၢႆႈလိူဝ်)
```csharp
var query = from s in students
            join sc in scores on s.ID equals sc.StudentID
            select new { s.Name, sc.Grade };
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Inner Join:** ၵၢၼ်ၵွင်ႉၶေႃႈမုၼ်း ဢၼ်ၼႄၵူၺ်းတူဝ်ဢၼ်မီး Key မိူၼ်ၵၼ် တင်းသွင်ၽၢႆႇ။
* **Outer/Inner List:** သွင် Collection ဢၼ်ႁဝ်းဢဝ်မႃးၵွင်ႉၵၼ်။
* **Key Selector:** Lambda ဢၼ်လိူၵ်ႈဢဝ် Property တႃႇၸႂ်ႉၵွင်ႉ (မိူၼ်ၼင်ႇ ID)။
* **Result Selector:** တွၼ်ႈဢၼ်မၵ်းမၼ်ႈဝႃႈ တေဢဝ်ၶေႃႈမုၼ်းလႂ် လုၵ်ႉတီႈ List တင်းသွင်မႃးသၢင်ႈပဵၼ် Object မႂ်ႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်း List **`Category`** (ID, Name) လႄႈ List **`Product`** (Name, CategoryID)။
1.  ၸႂ်ႉ **`.Join()`** တႃႇၵွင်ႉၵုၼ်ႇ ၶဝ်ႈၸွမ်တင်း ၸိုဝ်ႈ Category မၼ်း။
2.  ၼႄ "ၸိုဝ်ႈၵုၼ်ႇ" လႄႈ "ၸိုဝ်ႈ Category" ႁူမ်ႈၵၼ် ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။
