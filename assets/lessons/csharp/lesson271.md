# Lesson 271: "Introduction to ORM with EF Core"

မိူဝ်ႈႁဝ်းတႅမ်ႈ App ၸွမ်တင်း Database ၼၼ်ႉ ပၼ်ႁႃဢၼ်ယႂ်ႇသုတ်းပဵၼ်: **"C# ၸႂ်ႉ Objects (Classes) ၵူၺ်းၵႃႈ Database ၸႂ်ႉ Tables"** ၶႃႈ။ 
ၶဝ်သွင်ဢၼ်ၼႆႉ လၢတ်ႈၵႂၢမ်းဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

### 1. ORM ပဵၼ်သင်?
**ORM** (Object-Relational Mapping) ပဵၼ် Software ဢၼ်မီးၼႃႈၵၢၼ် "ပိၼ်ႇ" (Map) ၶေႃႈမုၼ်း ၼႂ်းၵႄႈ C# လႄႈ SQL ႁင်းၵူၺ်းမၼ်းၶႃႈ။
* ႁဝ်းတႅမ်ႈ C# Code -> ORM ပိၼ်ႇပဵၼ် SQL Code -> သူင်ႇၸူး Database။
* Database သူင်ႇ Data မႃး -> ORM ပိၼ်ႇပဵၼ် C# Objects -> ပၼ်ႁဝ်းၸႂ်ႉၶႃႈ။

### 2. Entity Framework Core (EF Core) ပဵၼ်သင်?
**EF Core** ပဵၼ် ORM ဢၼ် Microsoft သၢင်ႈဝႆႉတွၼ်ႈတႃႇ .NET ၶႃႈ။ 
မၼ်းပဵၼ်တူဝ်ဢၼ်ၵူၼ်းတႅမ်ႈ C# ၸႂ်ႉၼမ်သုတ်း ၼႂ်းလုမ်ႈၾႃႉၶႃႈဢေႃႈ။



### 3. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ EF Core?
1. **No SQL Strings:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ SQL ၼႂ်းလိၵ်ႈ String (ဢၼ်ၵႆႉမီး Error)။
2. **Type Safety:** ႁဝ်းၸၢင်ႈၸႂ်ႉ LINQ တႃႇသွၵ်ႈႁႃ Data၊ သင်တႅမ်ႈၸိုဝ်ႈ Column ၽိတ်းၼႆ Visual Studio တေၼႄသီလႅင် လၢတ်ႈၼႄႁဝ်းၵမ်းလဵဝ်ၶႃႈ။
3. **Database Independence:** သင်မိူဝ်ႈၼႆႉႁဝ်းၸႂ်ႉ SQL Server၊ မိူဝ်းၼႃႈၶႂ်ႈလႅၵ်ႈပဵၼ် MySQL ၼႆၵေႃႈ ႁဝ်းၵူၺ်းလႆႈမႄး Code ဢိတ်းဢွၼ်ႇၵူၺ်းၶႃႈ။
4. **Automated Schema:** ႁဝ်းတႅမ်ႈ C# Class သေ EF Core တေၵႂႃႇသၢင်ႈ Table ၼႂ်း Database ပၼ်ႁင်းၵူၺ်းၶႃႈ။

### 4. တူဝ်ယင်ႇၵၢၼ်ႁဵတ်းၵၢၼ်
* **C# Class (Model):** ႁဝ်းမီး Class `Student` ဢၼ်မီး `ID`, `Name`။
* **Mapping:** EF Core တေႁူႉဝႃႈ `Student` Class ၼႆႉ ထုၵ်ႇလီၵွင်ႉၸူး `Students` Table ၼႂ်း Database ၶႃႈ။

```csharp
// လၢႆးသွၵ်ႈႁႃ Data လူၺ်ႈ EF Core (ဢမ်ႇၸႂ်ႉ SQL)
var student = context.Students.FirstOrDefault(s => s.ID == 101);
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမႆတွင်း

* **ORM:** ၶိူင်ႈမိုဝ်းပိၼ်ႇ Object ၵႂႃႇပဵၼ် Table။
* **Entity:** Class ဢၼ်ပဵၼ်တူဝ်တႅၼ်းၶွင် Table ၼႂ်း Database (မိူၼ်ၼင်ႇ Student class)။
* **EF Core:** ORM Standard ၶွင် .NET။
* **Provider:** Plugin ဢၼ်ၸွႆးႁႂ်ႈ EF Core လၢတ်ႈၵႂၢမ်းၸွမ် Database ၼိုင်ႈပိူင် (မိူၼ် SQL Server Provider)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၸႂ်ႉ EF Core ၼႆ ႁဝ်းတိုၵ်ႉလူဝ်ႇတႅမ်ႈ SQL Code (မိူၼ် `SELECT * FROM...`) ႁင်းၵူၺ်းယူႇႁႃႉ? ဢမ်ႇၼၼ် EF Core တေတႅမ်ႈပၼ်ႁဝ်း?
2. **Entity** ၼႂ်း EF Core ပွင်ႇဝႃႈသင်?