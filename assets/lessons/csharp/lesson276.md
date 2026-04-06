
# Lesson 276: "CRUD Operations with EF Core"

ၵၢၼ်ႁဵတ်းၵၢၼ်ၸွမ် Database ၼႂ်း EF Core ၼၼ်ႉ ႁဝ်းတေလႆႈသၢင်ႈ Object ၶွင် `DbContext` ဢွၼ်တၢင်းတႃႇသေႇၶႃႈ။

### 1. CREATE (ၵၢၼ်ထႅမ် / Insert)
တွၼ်ႈတႃႇထႅမ်ၶေႃႈမုၼ်းမႂ်ႇၼၼ်ႉ ႁဝ်းၵူၺ်းလႆႈသၢင်ႈ Object မႂ်ႇသေ `Add` မၼ်းၶဝ်ႈၵႂႃႇၼႂ်း `DbSet` ၶႃႈ။

```csharp
using (var context = new ShanCommunityContext())
{
    var newStudent = new Student 
    { 
        FirstName = "ၸၢႆး", 
        LastName = "ၶိူဝ်း", 
        Age = 19 
    };

    context.Students.Add(newStudent); // ထႅမ်ဝႆႉၼႂ်း Memory ဢွၼ်တၢင်း
    context.SaveChanges();           // သူင်ႇၵႂႃႇသိမ်းၼႂ်း SQL Database တႄႉတႄႉ
}
```

### 2. READ (ၵၢၼ်လူ / Select)
ႁဝ်းၸၢင်ႈၸႂ်ႉ **LINQ** တႃႇသွၵ်ႈႁႃၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။

```csharp
using (var context = new ShanCommunityContext())
{
    // လူဢဝ်လုၵ်ႈႁဵၼ်းတင်းမူတ်း
    var allStudents = context.Students.ToList();

    // သွၵ်ႈႁႃလုၵ်ႈႁဵၼ်း ၵေႃႉဢၼ်မီး ID = 1
    var student = context.Students.Find(1);

    // သွၵ်ႈႁႃလုၵ်ႈႁဵၼ်း ၸိူဝ်းဢႃႇယုလိူဝ် 20
    var seniorStudents = context.Students.Where(s => s.Age > 20).ToList();
}
```



### 3. UPDATE (ၵၢၼ်မႄး / Update)
လၢႆးမႄးၼႂ်း EF Core ၼၼ်ႉငၢႆႈၼႃႇၶႃႈ။ ႁဝ်းၵူၺ်းလႆႈ "လူ" (Read) မၼ်းမႃးသေ "လႅၵ်ႈ" (Change) ၵႃႈၶၼ်မၼ်းၶႃႈ။

```csharp
using (var context = new ShanCommunityContext())
{
    var student = context.Students.Find(1);
    if (student != null)
    {
        student.Age = 20; // လႅၵ်ႈဢႃႇယုမၼ်း
        context.SaveChanges(); // EF Core တေမၢႆတွင်းဝႃႈမီးၵၢၼ်လႅၵ်ႈပိၼ်ႇ သေမႄးပၼ်ႁင်းၵူၺ်း
    }
}
```

### 4. DELETE (ၵၢၼ်ယႃႉ / Delete)
ႁဝ်းလူဢဝ် Object ၼၼ်ႉမႃး သေသင်ႇ `Remove` ၶႃႈဢေႃႈ။

```csharp
using (var context = new ShanCommunityContext())
{
    var student = context.Students.Find(1);
    if (student != null)
    {
        context.Students.Remove(student); // မၢႆဝႆႉဝႃႈတေယႃႉ
        context.SaveChanges();           // ယႃႉဢွၵ်ႇပႅတ်ႈၼႂ်း Database တႄႉတႄႉ
    }
}
```

---

### လွင်ႈလမ်ႇလွင်ႈ: `SaveChanges()`
သင်ႁဝ်း ၼဵၵ်း `Add`, `Remove`, ဢမ်ႇၼၼ် မႄး Property တၢင်ႇၸိူဝ်းယဝ်ႉၼႆ သင်ႁဝ်းဢမ်ႇသင်ႇ **`context.SaveChanges()`** ၼႆ ၶေႃႈမုၼ်းၼၼ်ႉ တေဢမ်ႇထုၵ်ႇသိမ်းၼႂ်း Database ၶႃႈၼႃ။ ၼႆႉမိူၼ်တင်းၵၢၼ် "Save File" ၼၼ်ႉယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Tracking:** ၵၢၼ်ဢၼ် EF Core မၢႆတွင်းဝႃႈ Object လႂ်ထုၵ်ႇလႅၵ်ႈပိၼ်ႇဝႆႉ။
* **LINQ (Language Integrated Query):** လၢႆးတႅမ်ႈ Code C# တႃႇသွၵ်ႈႁႃ Data (မိူၼ်ၼင်ႇ .Where, .ToList)။
* **Find():** Method ဢၼ်ဝႆးသုတ်းတွၼ်ႈတႃႇသွၵ်ႈႁႃ Primary Key (Id)။
* **ToList():** ၵၢၼ်သင်ႇႁႂ်ႈ EF Core သူင်ႇ SQL ၵႂႃႇထၢမ် Database တႄႉတႄႉ သေဢဝ် Data မႃးပဵၼ် List။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. မိူဝ်ႈႁဝ်း လႅၵ်ႈပိၼ်ႇ `student.Age = 25` ယဝ်ႉၼၼ်ႉ ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇသင်ႇ **`context.SaveChanges()`** ထႅင်ႈပွၵ်ႈၼိုင်ႈ?
2. Method **`.Find()`** လႄႈ **`.Where()`** ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ် ၼႂ်းၵၢၼ်သွၵ်ႈႁႃ Data?