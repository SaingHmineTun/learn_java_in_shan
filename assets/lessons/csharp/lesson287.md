# Lesson 287: "Form Handling and Model Binding"

### 1. HTML Form ၼႂ်း MVC
တွၼ်ႈတႃႇႁပ်ႉၶေႃႈမုၼ်းၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ Tag **`<form>`** ၼႂ်း View ၶႃႈ။ ႁဝ်းၵႆႉၸႂ်ႉ **Tag Helpers** (မိူၼ်ၼင်ႇ `asp-for`) တွၼ်ႈတႃႇၵွင်ႉ Input ၸူး Property ၼႂ်း Model ႁဝ်းၶႃႈ။

```html
<form asp-controller="Student" asp-action="Create" method="post">
    <label>ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း:</label>
    <input asp-for="FullName" class="form-control" />
    
    <label>ဢႃႇယု:</label>
    <input asp-for="Age" class="form-control" />
    
    <button type="submit">မၢႆတွင်း</button>
</form>
```

### 2. Model Binding (ၵၢၼ်ပိၼ်ႇၶေႃႈမုၼ်းႁင်းၵူၺ်း)
**Model Binding** ပဵၼ်ၵၢၼ်ဢၼ် ASP.NET Core ၵႂႃႇသွၵ်ႈႁႃၶေႃႈမုၼ်းၼႂ်း HTTP Request (လုၵ်ႉတီႈ Form ဢမ်ႇၼၼ် URL) သေ ဢဝ်မႃးသႂ်ႇပၼ်ၼႂ်း Parameter ၶွင် Action Method ႁင်းၵူၺ်းမၼ်းၶႃႈ။



### 3. Handling POST Request ၼႂ်း Controller
ႁဝ်းတေလႆႈသၢင်ႈ Action 2 ဢၼ်: ဢၼ်ၼိုင်ႈတွၼ်ႈတႃႇ "ၼႄ Form" (GET) လႄႈ ထႅင်ႈဢၼ်ၼိုင်ႈတွၼ်ႈတႃႇ "ႁပ်ႉ Data" (POST) ၶႃႈ။

```csharp
public class StudentController : Controller
{
    // 1. GET: /Student/Create (တွၼ်ႈတႃႇၼႄၼႃႈတႅမ်ႈလိၵ်ႈ)
    [HttpGet]
    public IActionResult Create() {
        return View();
    }

    // 2. POST: /Student/Create (တွၼ်ႈတႃႇႁပ်ႉ Data မိူဝ်ႈ User ၼဵၵ်း Submit)
    [HttpPost]
    public IActionResult Create(Student student) 
    {
        if (ModelState.IsValid) {
            // တွၼ်ႈၼႆႉႁဝ်းၸၢင်ႈဢဝ် 'student' ၵႂႃႇသိမ်းၼႂ်း Database (Module 22)
            return RedirectToAction("Index");
        }
        // သင်မီးလွင်ႈၽိတ်းပိူင် ႁႂ်ႈၼႄ Form ၸွမ်း Error
        return View(student);
    }
}
```

---

### 4. ModelState Validation (ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း)
ႁဝ်းၸၢင်ႈၸႂ်ႉ `ModelState.IsValid` တႃႇၵူတ်ႇထတ်းဝႃႈ User တႅမ်ႈၶေႃႈမုၼ်းမႅၼ်ႈၸွမ်းပၵ်းၵၢၼ် (မိူၼ်ၼင်ႇ `[Required]` ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼႂ်း Model) ႁႃႉ? 
သင်ၶဝ်လိုမ်းတႅမ်ႈၸိုဝ်ႈၼႆ App ႁဝ်းတေလၢတ်ႈၼႄၶဝ်လႆႈၵမ်းလဵဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Model Binding:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Form ၵႂႃႇပဵၼ် C# Object ႁင်းၵူၺ်း။
* **Tag Helpers:** ၶေႃႈသင်ႇပိုၼ်ႉထၢၼ် (Attributes) ၼႂ်း HTML ဢၼ်ၸွႆးၵွင်ႉၸူး C# Code။
* **HTTP POST:** Method ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ သူင်ႇၶေႃႈမုၼ်း ၵႂႃႇၸူး Server။
* **ModelState:** တီႈၵဵပ်းၶေႃႈမုၼ်းဝႃႈ "Data ဢၼ်သူင်ႇမႃးၼၼ်ႉ မႅၼ်ႈၸွမ်းပိူင်ႁႃႉ?"။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈ Form ၼႆ ႁဝ်းထုၵ်ႇလီမၵ်းမၼ်ႈ `method="..."` ၼႂ်း Tag `<form>` ႁႂ်းပဵၼ်သင်? (GET ႁႃႉ? ဢမ်ႇၼၼ် POST?)
2. **Model Binding** ၸွႆး Developer လႆႈၸိူင်ႉႁိုဝ်? (ႁဝ်းတိုၵ်ႉလူဝ်ႇတႅမ်ႈ `Request.Form["Name"]` ႁင်းၵူၺ်းယူႇႁႃႉ?)
