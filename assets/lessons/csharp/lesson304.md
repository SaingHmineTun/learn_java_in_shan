# Lesson 304: "SQLite and EF Core for Mobile"

### 1. SQLite ပဵၼ်သင်?
**SQLite** ပဵၼ် Database Engine ဢၼ်သိမ်းၶေႃႈမုၼ်းပဵၼ် "ၾၢႆႇလဵဝ်" ဝႆႉၼႂ်းၾူၼ်းၶႃႈ။ 
မၼ်းဢမ်ႇလူဝ်ႇမီး Server တၢင်ႇဢၼ်၊ မၼ်းယူႇၸွမ်း App ႁဝ်းၵမ်းလဵဝ်။

### 2. Entity Framework Core (EF Core) ၼိူဝ် Mobile
ယွၼ်ႉႁဝ်း လႆႈႁဵၼ်း EF Core ဝႆႉယဝ်ႉ ၼႆလႄႈ ၵၢၼ်ၸႂ်ႉ SQLite တေငၢႆႈၼႃႇၶႃႈ။ ႁဝ်းၵူၺ်းလူဝ်ႇလႅၵ်ႈပိၼ်ႇတူဝ် Provider ၵူၺ်း:
* ၼႂ်း Desktop/Server: `.UseSqlServer()`
* ၼႂ်း Mobile (SQLite): `.UseSqlite("Filename=shan_data.db")`



### 3. Setup SQLite ၼႂ်း .NET MAUI
တွၼ်ႈတႃႇတႄႇၸႂ်ႉၼႆ ႁဝ်းလူဝ်ႇထႅမ် NuGet Packages ၸိူဝ်းၼႆႉၶႃႈ:
* `Microsoft.EntityFrameworkCore.Sqlite`
* `Microsoft.EntityFrameworkCore.Tools`

**တူဝ်ယင်ႇ Code ၵွင်ႉ Database:**
```csharp
public class MyDbContext : DbContext
{
    public DbSet<Student> Students { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder options)
    {
        // မၵ်းမၼ်ႈတီႈယူႇၾၢႆႇ Database ၼႂ်းၾူၼ်း
        string dbPath = Path.Combine(FileSystem.AppDataDirectory, "shan_community.db3");
        options.UseSqlite($"Filename={dbPath}");
    }
}
```

---

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇ Local Storage?
1.  **Offline Access:** User ၸၢင်ႈလူ "လိၵ်ႈတႆး" ဢမ်ႇၼၼ် "သဵၼ်ႈမၢႆပွႆး" လႆႈ လူၺ်ႈဢမ်ႇမီး Internet ၶႃႈ။
2.  **Performance:** ၵၢၼ်လူ Data လုၵ်ႉၼႂ်းၾူၼ်းၼႆႉ ဝႆးသေ (Faster) ၵၢၼ်ၵႂႃႇလူဢဝ်မႃးတီႈ Internet ၼမ်ၼႃႇၶႃႈ။
3.  **Data Persistence:** မိူဝ်ႈ User ပိၵ်ႉ App သေပိုတ်ႇမႃးၶိုၼ်းၼၼ်ႉ ၶေႃႈမုၼ်းဢၼ်ၶဝ်သိမ်းဝႆႉၼၼ်ႉ တိုၵ်ႉတေမီးယူႇမိူၼ်ၵဝ်ႇၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Offline-First:** ပိူင်သၢင်ႈ App ဢၼ်မၵ်းမၼ်ႈႁႂ်းၸႂ်ႉၵၢၼ်လႆႈ ဢွၼ်တၢင်းသုတ်းလူၺ်ႈဢမ်ႇလူဝ်ႇ Internet။
* **AppDataDirectory:** Folder လပ်ႉၼႂ်းၾူၼ်း ဢၼ် App ႁဝ်းမီးသုၼ်ႇသိမ်းၾၢႆႇလႆႈ (User တၢင်ႇၵေႃႉတေႁၼ်ဢမ်ႇလႆႈ)။
* **Migration:** ၵၢၼ် Update ပိူင်သၢင်ႈ Database (Schema) မိူဝ်ႈႁဝ်းထႅမ် Property မႂ်ႇၼႂ်း Model။
* **Connection String:** လိၵ်ႈဢၼ်မၵ်းမၼ်ႈ တီႈယူႇ လႄႈ ၸိုဝ်ႈၾၢႆႇ Database။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈမၵ်းမၼ်ႈတီႈယူႇၾၢႆႇ Database ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင် Android/iOS ၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Property လႂ်ၼႂ်း `FileSystem`?
2. လွင်ႈလီၶွင်ၵၢၼ်ၸႂ်ႉ **EF Core** ၸွမ်တင်း **SQLite** ပဵၼ်သင် တွၼ်ႈတႃႇ C# Developer?

ႁဝ်းတေသိုပ်ႇၵႂႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်း "မၢႆတွင်းၶေႃႈမုၼ်း" လႆႈတႃႇသေႇယဝ်ႉႁႃႉၶႃႈ?