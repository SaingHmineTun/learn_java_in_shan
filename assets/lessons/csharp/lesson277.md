# Lesson 277: "One-to-Many Relationship in EF Core"

တွၼ်ႈတႃႇတေၵွင်ႉ "ဝၢၼ်ႈ" (One) ၸူး "လုၵ်ႈႁဵၼ်း" (Many) ၼႆ ႁဝ်းတေလႆႈမႄး Class (Model) ႁဝ်း ႁႂ်ႈမီးတူဝ်ၵွင်ႉ ၸိူင်ႉၼႆၶႃႈ:

### 1. ၵၢၼ်တႅမ်ႈ Class `Village` (The "One" side)
ဝၢၼ်ႈၼိုင်ႈဝၢၼ်ႈ တေလႆႈမီး "သဵၼ်ႈမၢႆ" (List) ၶွင်လုၵ်ႈႁဵၼ်းဢၼ်ယူႇၼႂ်းဝၢၼ်ႈၼၼ်ႉၶႃႈ။

```csharp
public class Village
{
    public int Id { get; set; }
    public string Name { get; set; }

    // Navigation Property: ဝၢၼ်ႈၼိုင်ႈဝၢၼ်ႈ မီးလုၵ်ႈႁဵၼ်းလႆႈတင်းၼမ် (List)
    public List<Student> Students { get; set; } = new List<Student>();
}
```

### 2. ၵၢၼ်တႅမ်ႈ Class `Student` (The "Many" side)
လုၵ်ႈႁဵၼ်းၵေႃႉၼိုင်ႈ တေလႆႈမီး "ဝၢၼ်ႈ" ဢၼ်မၼ်းယူႇ တႅတ်ႈတေႃးၼိုင်ႈဝၢၼ်ႈၶႃႈ။

```csharp
public class Student
{
    public int Id { get; set; }
    public string Name { get; set; }

    // Foreign Key: မၢႆ ID ၶွင်ဝၢၼ်ႈ ဢၼ်လုၵ်ႈႁဵၼ်းၵေႃႉၼႆႉယူႇ
    public int VillageId { get; set; }

    // Navigation Property: လုၵ်ႈႁဵၼ်းၵေႃႉၼႆႉ ယူႇၼႂ်းဝၢၼ်ႈ (Village) တူဝ်လႂ်?
    public Village Village { get; set; }
}
```



---

### 3. EF Core ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်? (Automatic Mapping)
မိူဝ်ႈႁဝ်းတႅမ်ႈ Property `VillageId` ၸွမ်တင်း `Village` ဝႆႉၼႂ်း Class `Student` ယဝ်ႉၼၼ်ႉ... EF Core တေႁူႉႁင်းၵူၺ်း (Convention) ဝႃႈ:
* `VillageId` ပဵၼ် **Foreign Key (FK)** ဢၼ်ၵွင်ႉၸူး Table `Villages`။
* မၼ်းတေၸွႆးႁႄႉၵၢင်ႈဢမ်ႇႁႂ်ႈႁဝ်းသႂ်ႇ ID ဝၢၼ်ႈဢၼ်ဢမ်ႇမီးယူႇတႄႉ ၶဝ်ႈၵႂႃႇၼႂ်း Student ၶႃႈ။

### 4. လၢႆးလူဢဝ် Data ဢၼ်ၵွင်ႉၵၢႆႇၵၼ် (Eager Loading)
မိူဝ်ႈႁဝ်းလူ (Read) ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၼၼ်ႉ ပိူင်ထမ်ႇမတႃႇ (Default) EF Core တေဢမ်ႇဢဝ်ၶေႃႈမုၼ်း "ဝၢၼ်ႈ" မႃးၸွမ်းၶႃႈ (တႃႇႁႂ်း App လႅၼ်ႈဝႆး)။ 
သင်ႁဝ်းၶႂ်ႈလႆႈၸိုဝ်ႈဝၢၼ်ႈမႃးၸွမ်ၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ **`.Include()`** ၶႃႈ။

```csharp
using (var context = new ShanCommunityContext())
{
    // လူဢဝ်လုၵ်ႈႁဵၼ်းတင်းမူတ်း "ၸွမ်တင်း" ၶေႃႈမုၼ်းဝၢၼ်ႈ (Village)
    var students = context.Students
                          .Include(s => s.Village) 
                          .ToList();

    foreach (var s in students)
    {
        Console.WriteLine($"လုၵ်ႈႁဵၼ်း: {s.Name}, ယူႇဝၢၼ်ႈ: {s.Village.Name}");
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Navigation Property:** Property ဢၼ်ၸႂ်ႉတႃႇ "ပၼ်ႇ" (Navigate) ၵႂႃႇၸူး Table ဢၼ်ၵွင်ႉၵၢႆႇၵၼ် (မိူၼ်ၼင်ႇ `student.Village`)။
* **Foreign Key (FK):** Property ဢၼ်သိမ်းမၢႆ ID ၶွင် Table ငဝ်ႈႁၢၵ်ႈ (မိူၼ်ၼင်ႇ `VillageId`)။
* **Eager Loading:** ၵၢၼ်သင်ႇႁႂ်ႈ EF Core ဢဝ် Data ဢၼ်ၵွင်ႉၵၢႆႇၵၼ် မႃးၸွမ်ၵမ်းလဵဝ် လူၺ်ႈၸႂ်ႉ `.Include()`။
* **One-to-Many:** ပိူင်သၢင်ႈၵၢၼ်ၵွင်ႉၵၢႆႇ ဢၼ်သုၼ်ႇၼိုင်ႈ (One) မီးလၢႆလၢႆဢၼ် (Many)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း One-to-Many Relationship ၼၼ်ႉ Table လႂ်ဢၼ်ထုၵ်ႇလီမီး **Foreign Key**? (Table "ဝၢၼ်ႈ" ႁႃႉ? ဢမ်ႇၼၼ် Table "လုၵ်ႈႁဵၼ်း"?)
2. သင် **ႁဝ်း** ၶႂ်ႈလူဢဝ်လုၵ်ႈႁဵၼ်းမႃး သေၶႂ်ႈႁူႉၸိုဝ်ႈဝၢၼ်ႈမၼ်းၸွမ်ပႃးၼၼ်ႉ... ႁဝ်းတေလႆႈၸႂ်ႉ Method LINQ ဢၼ်ၸိုဝ်ႈဝႃႈသင်?