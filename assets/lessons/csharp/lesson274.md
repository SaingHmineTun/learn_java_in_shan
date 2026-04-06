# Lesson 274: "Modeling Data with C# Classes"

မိူဝ်ႈႁဝ်းတႅမ်ႈ Class ၼိုင်ႈဢၼ်သေ သႂ်ႇဝႆႉၼႂ်း `DbSet<T>` ၶွင် `DbContext` ယဝ်ႉၼၼ်ႉ EF Core တေမၢႆတွင်း Property ၼႂ်း Class ၼၼ်ႉပဵၼ် Column ၼႂ်း Table ၵမ်းလဵဝ်ၶႃႈ။

### 1. ပၵ်းၵၢၼ်ၵၢၼ်တႅမ်ႈ Entity (Conventions)
EF Core မီးပိူင်သၢင်ႈဢၼ်မၼ်း "ႁူႉႁင်းၵူၺ်း" (Conventions) ၸိူင်ႉၼႆၶႃႈ:
* **Table Name:** တေပဵၼ်ၸိုဝ်ႈ `DbSet` ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ (မိူၼ်ၼင်ႇ `Students`)။
* **Primary Key:** သင်ႁဝ်းတႅမ်ႈ Property ၸိုဝ်ႈဝႃႈ **`Id`** ဢမ်ႇၼၼ် **`StudentId`** ၼႆ EF Core တေမၵ်းမၼ်ႈပဵၼ် Primary Key (PK) ႁင်းၵူၺ်းမၼ်းၶႃႈ။
* **Data Types:** * `int` ၼႂ်း C# -> တေပဵၼ် `int` ၼႂ်း SQL။
    * `string` ၼႂ်း C# -> တေပဵၼ် `nvarchar(max)` ၼႂ်း SQL (တွၼ်ႈတႃႇလိၵ်ႈ Unicode တႆးႁဝ်း)။



### 2. တူဝ်ယင်ႇ Class `Student`
ႁဝ်းမႃးတႅမ်ႈ Class တွၼ်ႈတႃႇၵဵပ်းသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း တူဝ်တႄႉတူၺ်းၶႃႈ:

```csharp
public class Student
{
    // EF Core တေႁူႉဝႃႈၼႆႉပဵၼ် Primary Key ႁင်းၵူၺ်း
    public int Id { get; set; }

    public string FirstName { get; set; }
    
    public string LastName { get; set; }

    public int Age { get; set; }

    // DateTime တွၼ်ႈတႃႇမၢႆဝၼ်းၶဝ်ႈႁဵၼ်း
    public DateTime EnrollmentDate { get; set; }
}
```

### 3. Data Annotations (ၵၢၼ်မၵ်းမၼ်ႈထႅမ်)
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈသင်ႇပၵ်းၵၢၼ်ထႅမ် (မိူၼ်ၼင်ႇ ႁႂ်ႈလိၵ်ႈယၢဝ်းလႆႈၵႃႈႁိုဝ်) ႁဝ်းၸၢင်ႈၸႂ်ႉ **Attributes** ၽၢႆႇၼိူဝ် Property လႆႈၶႃႈ:

```csharp
using System.ComponentModel.DataAnnotations;

public class Student
{
    [Key] // မၵ်းမၼ်ႈပဵၼ် PK တႅတ်ႉတေႃး
    public int StudentId { get; set; }

    [Required] // ဢမ်ႇပၼ်ဝႆႉပဝ်ႇ (NOT NULL)
    [MaxLength(50)] // မၵ်းမၼ်ႈႁႂ်ႈမီးလိၵ်ႈၼမ်ႇသုတ်ႉ 50 တူဝ်ၵူၺ်း
    public string FirstName { get; set; }

    public string VillageName { get; set; }
}
```

---

### ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇမၵ်းမၼ်ႈ Model လီလီ?
1. **Validation:** ႁႄႉၵၢင်ႈဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းၽိတ်းပိူင် ၶဝ်ႈၵႂႃႇၼႂ်း Database။
2. **Performance:** သင်ႁဝ်းမၵ်းမၼ်ႈ `MaxLength` ၼႆ Database တေႁဵတ်းၵၢၼ်ဝႆးလိူဝ်ၵၢၼ်ပၼ်ဝႆႉ `max` တႃႇသေႇၶႃႈ။
3. **Clarity:** ၸွႆးႁႂ်ႈ Developer တၢင်ႇၵေႃႉပွင်ႇၸႂ်ဝႃႈ "Data ၼႆႉမီးပိူင်သၢင်ႈၸိူင်ႉႁိုဝ်?" ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Entity:** Class ဢၼ်တေပဵၼ်တူဝ်တႅၼ်းၶွင် Table ၼႂ်း Database။
* **Convention:** ပၵ်းၵၢၼ်ဢၼ် EF Core မၢႆတွင်းႁင်းၵူၺ်း (Default behavior)။
* **Data Annotation:** Attribute `[ ]` ဢၼ်ၸႂ်ႉမၵ်းမၼ်ႈပၵ်းၵၢၼ်ထႅမ်ၼိူဝ် Property။
* **Migration:** ၵၢၼ်ဢဝ် "ပိူင်ၽႅၼ်" (Model) တႅမ်ႈလူင်းၵႂႃႇၼႂ်း Database တႄႉတႄႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း တႅမ်ႈ Property ၸိုဝ်ႈဝႃႈ `int Id` ၼႂ်း Class ၼႆ EF Core တေမၵ်းမၼ်ႈမၼ်းပဵၼ်သင် ၼႂ်း Table SQL?
2. Attribute **`[Required]`** ၸွႆးလွင်ႈသင် ၼႂ်းၵၢၼ်ၵဵပ်းၶေႃႈမုၼ်း?