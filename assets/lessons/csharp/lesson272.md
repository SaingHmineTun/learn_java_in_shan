# Lesson 272: "Installing EF Core NuGet Packages"

တွၼ်ႈတႃႇတေၸႂ်ႉ EF Core ၼႂ်း C# Project ႁဝ်း (မိူၼ်ၼင်ႇ Console ဢမ်ႇၼၼ် WPF) ၼၼ်ႉ 
ႁဝ်းလူဝ်ႇ Packages ပိူင်လူင် 3 ဢၼ်ၼႆႉၶႃႈ:

### 1. Microsoft.EntityFrameworkCore.SqlServer
ၼႆႉပဵၼ် "တူဝ်လၢတ်ႈၵႂၢမ်း" (Provider) ဢၼ်တေၸွႆးႁႂ်ႈ EF Core ၵွင်ႉၸူး SQL Server ႁဝ်းလႆႈၶႃႈ။
* **ၼႃႈၵၢၼ်:** ပိၼ်ႇ C# Code ႁႂ်ႈပဵၼ် SQL ဢၼ် SQL Server ပွင်ႇၸႂ်။

### 2. Microsoft.EntityFrameworkCore.Tools
ၼႆႉပဵၼ် "ၶိူင်ႈမိုဝ်း" ဢၼ်တေၸွႆးႁႂ်ႈႁဝ်းသင်ႇၵၢၼ် (Command) ၼႂ်း Visual Studio လႆႈၶႃႈ။
* **ၼႃႈၵၢၼ်:** ၸႂ်ႉတႃႇသၢင်ႈ Table (Migrations) လုၵ်ႉတီႈ C# Class ႁဝ်း။

### 3. Microsoft.EntityFrameworkCore.Design
ၼႆႉပဵၼ် Package ဢၼ်လူဝ်ႇၸႂ်ႉ မိူဝ်ႈၽွင်း "သၢင်ႈ" (Build) Database ၶႃႈ။



---

### လၢႆး 2 လၢႆး တွၼ်ႈတႃႇ Install (How to Install)

**လၢႆး 1: ၸႂ်ႉ UI (NuGet Package Manager)**
1. ၼဵၵ်းၶႂႃ (Right Click) ၼိူဝ် **Project Name** ၼႂ်း Solution Explorer။
2. လိူၵ်ႈ **Manage NuGet Packages...**။
3. ၵႂႃႇတီႈ Tab **Browse** သေ တႅမ်ႈႁႃၸိုဝ်ႈ Packages ၽၢႆႇၼိူဝ်ၼၼ်ႉ။
4. ၼဵၵ်း **Install** ၶႃႈ။

**လၢႆး 2: ၸႂ်ႉ Command (Package Manager Console)**
1. ၵႂႃႇတီႈ Menu **Tools** > **NuGet Package Manager** > **Package Manager Console**။
2. တႅမ်ႈ Code ၸိူင်ႉၼႆသေ ၼဵၵ်း Enter ၶႃႈ:
```powershell
Install-Package Microsoft.EntityFrameworkCore.SqlServer
Install-Package Microsoft.EntityFrameworkCore.Tools
Install-Package Microsoft.EntityFrameworkCore.Design
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **NuGet:** တီႈၵဵပ်း (Library) ၶွင် .NET ဢၼ်မီး Package တင်းၼမ်တင်းလၢႆ ဢၼ်ႁဝ်း Download လႆႈ Free။
* **Package:** ၾၢႆႇ (File) ဢၼ်မီး Code ဢၼ်ပိူၼ်ႈတႅမ်ႈဝႆႉယဝ်ႉသေ ႁဝ်းဢဝ်မႃးၸႂ်ႉၼႂ်း Project ႁဝ်း။
* **Dependency:** Library ဢၼ် Project ႁဝ်းလူဝ်ႇၸႂ်ႉ ၸင်ႇတေႁဵတ်းၵၢၼ်လႆႈ။
* **Provider:** Plugin ဢၼ်မၵ်းမၼ်ႈဝႃႈ ႁဝ်းတေၵွင်ႉၸူး Database ပိူင်လႂ် (SQL Server, MySQL, etc.)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈၵွင်ႉၸူး SQL Server ၼႆ ႁဝ်းထုၵ်ႇလီ Install Package ဢၼ်မီးၸိုဝ်ႈဝႃႈသင်?
2. **NuGet Package Manager** မီးၼႃႈၵၢၼ်သင် ၼႂ်း Visual Studio?