# Lesson 273: "The DbContext - The Heart of EF Core"

**`DbContext`** ပဵၼ် Class ပိူင်လူင် ဢၼ်ႁဝ်းတေလႆႈသၢင်ႈ (Inherit) လုၵ်ႉတီႈ EF Core မႃး 
တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ "Database ႁဝ်းတေမီး Table သင်ပႃး?" ၶႃႈ။

### 1. ၼႃႈၵၢၼ်ၶွင် DbContext
* **Manage Connections:** ပိုတ်ႇ လႄႈ ပိၵ်ႉ ၵၢၼ်ၵွင်ႉၸူး SQL Server ႁင်းၵူၺ်းမၼ်း။
* **Querying:** ပိၼ်ႇ LINQ Query ႁဝ်းႁႂ်ႈပဵၼ် SQL သေသူင်ႇၵႂႃႇ။
* **Change Tracking:** မၢႆတွင်းဝႃႈ ႁဝ်းမႄး (Update) ဢမ်ႇၼၼ် ထႅမ် (Insert) Data သင်ဝႆႉႁႃႉ?
* **Saving:** မိူဝ်ႈႁဝ်းသင်ႇ `SaveChanges()` ၼၼ်ႉ မၼ်းတေဢဝ် ၵၢၼ်လႅၵ်ႈပိၼ်ႇတင်းမူတ်း သူင်ႇၵႂႃႇသိမ်းၼႂ်း Database ၵမ်းလဵဝ်ၶႃႈ။



### 2. လၢႆးတႅမ်ႈ DbContext (Template)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Database ၸိုဝ်ႈဝႃႈ **ShanCommunityContext** ၶႃႈ:

```csharp
using Microsoft.EntityFrameworkCore;

public class ShanCommunityContext : DbContext
{
    // 1. မၵ်းမၼ်ႈ Tables ဢၼ်ႁဝ်းၶႂ်ႈမီး (DbSet)
    public DbSet<Student> Students { get; set; }
    public DbSet<Village> Villages { get; set; }

    // 2. မၵ်းမၼ်ႈ "သဵၼ်ႈတၢင်းၵွင်ႉ" (Connection String)
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        // သင်ႇႁႂ်ႈၵွင်ႉၸူး SQL Server ၼႂ်းၶွမ်းႁဝ်း
        optionsBuilder.UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=ShanCommunityDB;Trusted_Connection=True;");
    }
}
```

### 3. DbSet ပဵၼ်သင်?
**`DbSet<T>`** ပဵၼ်တူဝ်တႅၼ်းၶွင် **Table** ၼႂ်း Database ၶႃႈ။
* `DbSet<Student> Students` ပွင်ႇဝႃႈ: "ၼႂ်း Database ႁဝ်း တေလႆႈမီး Table ၸိုဝ်ႈဝႃႈ **Students** ဢၼ်မီး Column မိူၼ်တင်း Class **Student**" ၼၼ်ႉၶႃႈဢေႃႈ။

---

### 4. လၢႆးၸႂ်ႉတူဝ်တႄႉ (Usage Example)
မိူဝ်ႈႁဝ်းၶႂ်ႈၸႂ်ႉ Database ၼႂ်း Program ၼၼ်ႉ ႁဝ်းတေႁဵတ်းၸိူင်ႉၼႆၶႃႈ:

```csharp
using (var context = new ShanCommunityContext())
{
    // ၼႆႉပဵၼ်ၵၢၼ် "လူ" (Read) လုၵ်ႈႁဵၼ်းတင်းမူတ်း
    var allStudents = context.Students.ToList();
}
```
*(ၵၢၼ်ၸႂ်ႉ `using` ၸွႆးႁႂ်ႈ `DbContext` ပိၵ်ႉၵၢၼ်ၵွင်ႉၸူး Database ႁင်းၵူၺ်းမၼ်း မိူဝ်ႈႁဝ်းၸႂ်ႉယဝ်ႉ ၶႃႈဢေႃႈ)*

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **DbContext:** Class ပိူင်လူင် တွၼ်ႈတႃႇၸတ်းၵၢၼ် Database ၼႂ်း EF Core။
* **DbSet:** တူဝ်တႅၼ်းၶွင် Table ၼႂ်း Database ဢၼ်ႁဝ်းၸၢင်ႈ CRUD ၸွမ်းလႆႈ။
* **Connection String:** လိၵ်ႈဢၼ်လၢတ်ႈၼႄဝႃႈ "Database Server ယူႇတီႈလႂ်? ၸိုဝ်ႈသင်?"။
* **OnConfiguring:** Method ဢၼ်ႁဝ်း Override တႃႇမၵ်းမၼ်ႈလွင်ႈ Setup Database။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈမီး Table ၸိုဝ်ႈဝႃႈ `Products` ၼႂ်း Database ၼႆ ႁဝ်းထုၵ်ႇလီထႅမ် Code **`DbSet`** ၸိူင်ႉႁိုဝ် ၼႂ်း `DbContext`?