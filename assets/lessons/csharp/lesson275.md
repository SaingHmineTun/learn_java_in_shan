# Lesson 275: "EF Core Migrations"

**Migration** မိူၼ်တင်း "ၵၢၼ်မၢႆတွင်းပိုၼ်း" (Version Control) ၶွင် Database ၶႃႈ။ 
မိူဝ်ႈႁဝ်းမႄး Class ၼႂ်း C# ၼၼ်ႉ ႁဝ်းတေလႆႈသၢင်ႈ Migration တႃႇႁႂ်ႈ Database လႅၵ်ႈပိၼ်ႇၸွမ်းၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇ Migration?
* **Safety:** ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇမႄး Table ၼႂ်း SQL Server ႁင်းၵူၺ်း (ဢၼ်ၸၢင်ႈႁဵတ်းႁႂ်ႈ Data ႁၢႆ)။
* **Synchronization:** ႁဵတ်းႁႂ်ႈ C# Model လႄႈ SQL Schema "မိူၼ်ၵၼ်" တႃႇသေႇ။
* **Teamwork:** သင်ႁဝ်းသူင်ႇ Code ၵႂႃႇပၼ်ၵူၼ်းတၢင်ႇၵေႃႉၼႆ ၶဝ်ၵူၺ်းလႆႈသင်ႇ Migration ၵေႃႈတေမီး Database မိူၼ်ႁဝ်းၵမ်းလဵဝ်ၶႃႈ။

### 2. ၶေႃႈသင်ႇပိူင်လူင် 2 ဢၼ် (Commands)
ႁဝ်းတေလႆႈတႅမ်ႈ Code ၼႂ်း **Package Manager Console** ၶႃႈ:

**ပွၵ်ႈၵမ်း 1: `Add-Migration [ၸိုဝ်ႈ]`**
* ၼႆႉပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ EF Core "ၵူတ်ႇထတ်း" Model ႁဝ်း သေတႅမ်ႈၾၢႆႇ C# မႂ်ႇဢၼ်ၼိုင်ႈ (Migration File) ဢၼ်မီး SQL Code ဝႆႉၽၢႆႇၼႂ်းၶႃႈ။
* *တူဝ်ယင်ႇ:* `Add-Migration InitialCreate`

**ပွၵ်ႈၵမ်း 2: `Update-Database`**
* ၼႆႉပဵၼ်ၵၢၼ် "သူင်ႇ" Migration ၼၼ်ႉၵႂႃႇလႅၼ်ႈၼိူဝ် SQL Server တႄႉတႄႉၶႃႈ။
* ဝၢႆးသေသင်ႇယဝ်ႉၼႆ ႁဝ်းတေႁၼ် Table ပဵၼ်တူဝ်ပဵၼ်တူၼ်းၼႂ်း SSMS ၵမ်းလဵဝ်ၶႃႈ။



---

### 3. လၢႆးႁဵတ်းၵၢၼ်မိူဝ်ႈမီးၵၢၼ်လႅၵ်ႈပိၼ်ႇ
သင် **ႁဝ်း** ထႅမ် Property မႂ်ႇ (မိူၼ်ၼင်ႇ `string Email`) ၶဝ်ႈၼႂ်း Class `Student` ၼႆ ႁဝ်းတေလႆႈႁဵတ်းၸိူင်ႉၼႆၶႃႈ:
1. မႄး Class `Student` ၼႂ်း C#။
2. တႅမ်ႈ `Add-Migration AddStudentEmail`။
3. တႅမ်ႈ `Update-Database`။

### 4. ၾၢႆႇ Migration မီးသင်ပႃး?
ၼႂ်းၾၢႆႇ Migration တေမီး Method ပိူင်လူင် 2 ဢၼ်ၶႃႈ:
* **`Up()`**: Code တွၼ်ႈတႃႇသၢင်ႈ ဢမ်ႇၼၼ် မႄး Table (လႅၼ်ႈမိူဝ်ႈ `Update-Database`)။
* **`Down()`**: Code တွၼ်ႈတႃႇ "ပိၼ်ႇၶိုၼ်း" (Rollback) မိူဝ်ႈႁဝ်းၶႂ်ႈယႃႉ Migration ၼၼ်ႉဢွၵ်ႇပႅတ်ႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Schema:** ပိူင်သၢင်ႈၶွင် Database (Tables, Columns)။
* **Initial Migration:** Migration ၵမ်းဢွၼ်တၢင်းသုတ်း ဢၼ်သၢင်ႈ Tables တင်းမူတ်း။
* **Snapshot:** ၾၢႆႇဢၼ် EF Core ၵဵပ်းဝႆႉတႃႇမၢႆတွင်းဝႃႈ Database ယၢမ်းလဵဝ်မီးႁၢင်ႈၸိူင်ႉႁိုဝ်။
* **Apply Migration:** ၵၢၼ်ဢဝ် Code Migration ၵႂႃႇလႅၼ်ႈၼိူဝ် Server။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. မိူဝ်ႈႁဝ်း မႄး Class ၼႂ်း C# ယဝ်ႉၼၼ်ႉ ႁဵတ်းသင် Database ၼႂ်း SQL Server ၸင်ႇပႆႇလႅၵ်ႈပိၼ်ႇၸွမ်းၵမ်းလဵဝ်? ႁဝ်းတေလႆႈသင်ႇၶေႃႈသင်ႇသင်ၵွၼ်ႇ?
2. ၶေႃႈသင်ႇ **`Update-Database`** မီးၼႃႈၵၢၼ်သင် တႄႉတႄႉ?