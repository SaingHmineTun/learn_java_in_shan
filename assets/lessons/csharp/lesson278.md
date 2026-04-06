# Lesson 278: Project - "Shan Community Registry"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေႁဵတ်း 4 ၸၼ်ႉ ၼႆႉၶႃႈ:

### 1. တႅမ်ႈ Models (Defining Entities)

ႁဝ်းလူဝ်ႇမီး 2 Class ဢၼ်မီးလွင်ႈၵွင်ႉၵၢႆႇ **One-to-Many** ၶႃႈ။

```csharp
public class Village
{
    public int Id { get; set; }
    public string VillageName { get; set; }
    public string Township { get; set; } // မိူၼ်ၼင်ႇ: Muse, Namkham

    // ဝၢၼ်ႈၼိုင်ႈဝၢၼ်ႈ မီးၵူၼ်းယူႇလႆႈတင်းၼမ်
    public List<Resident> Residents { get; set; } = new List<Resident>();
}

public class Resident
{
    public int Id { get; set; }
    public string FullName { get; set; }
    public int Age { get; set; }

    // Foreign Key ၵွင်ႉၸူးဝၢၼ်ႈ
    public int VillageId { get; set; }
    public Village Village { get; set; }
}
```

### 2. သၢင်ႈ DbContext (The Heart)

မၵ်းမၼ်ႈ `DbSet` လႄႈ `Connection String` ၶႃႈ။

```csharp
public class CommunityContext : DbContext
{
    public DbSet<Village> Villages { get; set; }
    public DbSet<Resident> Residents { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder options)
    {
        options.UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=ShanRegistryDB;Trusted_Connection=True;");
    }
}
```

### 3. သင်ႇ Migration (Creating the Database)

ပိုတ်ႇ **Package Manager Console** သေတႅမ်ႈၶေႃႈသင်ႇ:

1.  `Add-Migration InitialRegistry`
2.  `Update-Database`

### 4. တႅမ်ႈ Code ၸၢမ်းၸႂ်ႉ (Main Logic)

ႁဝ်းတေမႃးထႅမ် "ဝၢၼ်ႈ" လႄႈ "ၵူၼ်းယူႇ" သေလူဢဝ်ၶေႃႈမုၼ်းမႃးၼႄၶႃႈ။

```csharp
using (var db = new CommunityContext())
{
    // 1. ထႅမ်ဝၢၼ်ႈမႂ်ႇ
    var myVillage = new Village { VillageName = "ဝဵင်းမႂ်ႇ", Township = "မူႇၸေႊ" };
    db.Villages.Add(myVillage);
    db.SaveChanges();

    // 2. ထႅမ်ၵူၼ်းယူႇ ၶဝ်ႈၼႂ်းဝၢၼ်ႈၼၼ်ႉ
    var person = new Resident { 
        FullName = "ၸၢႆးသႅင်မိူင်း", 
        Age = 25, 
        VillageId = myVillage.Id 
    };
    db.Residents.Add(person);
    db.SaveChanges();

    // 3. လူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း (Include ဝၢၼ်ႈမႃးၸွမ်)
    var allPeople = db.Residents.Include(r => r.Village).ToList();

    foreach (var r in allPeople)
    {
        Console.WriteLine($"ၸိုဝ်ႈ: {r.FullName}, ဝၢၼ်ႈ: {r.Village.VillageName}");
    }
}
```

-----

### လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း (Summary)

* **Modeling:** ၵၢၼ်ၸႅၵ်ႇ Table ႁႂ်ႈမီးပိူင်သၢင်ႈ (Village & Resident)။
* **Relationships:** ၵၢၼ်ၸႂ်ႉ `VillageId` တႃႇၵွင်ႉၵၢႆႇၶေႃႈမုၼ်း ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင် Relational Database။
* **EF Core Power:** ႁဝ်းသၢင်ႈ System တင်းမူတ်းၼႆႉ လူၺ်ႈဢမ်ႇလႆႈတႅမ်ႈ SQL Code သေထႅဝ်ၶႃႈ\!

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Registry:** ပပ်ႉသဵၼ်ႈမၢႆ ဢမ်ႇၼၼ် တီႈၵဵပ်းမၢႆၾၢင်ၶေႃႈမုၼ်း။
* **Eager Loading:** ၵၢၼ်ၸႂ်ႉ `.Include()` တႃႇဢဝ် Data ဢၼ်ၵွင်ႉၵၢႆႇၵၼ်မႃးၼႄၵမ်းလဵဝ်။
* **Schema Update:** ၵၢၼ်မႄးပိူင်သၢင်ႈ Database ၽၢၼ်ႇ Migrations။
* **Identity Column:** Column ဢၼ်မီးမၢႆ ID ၼပ်ႉၶိုၼ်းႁင်းၵူၺ်း (Default ၶွင် EF Core PK)။

-----