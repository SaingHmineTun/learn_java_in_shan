# Lesson 291: Project - "Shan Community Event Portal"

ၼႂ်း Exercise ၼႆႉ ႁဝ်းတေႁဵတ်း 4 ၸၼ်ႉၼႆႉၶႃႈ:

### 1. တႅမ်ႈ Model (The Data)
သၢင်ႈ Class တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်းပွႆး ၼႂ်း Folder **Models/** ၶႃႈ။

```csharp
public class ShanEvent
{
    public int Id { get; set; }
    public string Title { get; set; }        // ၸိုဝ်ႈပွႆး (မိူၼ်ၼင်ႇ: ပွႆးလိူၼ်သီႇ)
    public string Location { get; set; }     // တီႈယူႇ
    public DateTime EventDate { get; set; }  // ဝၼ်းထိ
    public string Description { get; set; }  // ၶေႃႈၵႂၢမ်းပိုတ်ႇလၢတ်ႈ
}
```

### 2. တႅမ်ႈ Controller (The Logic)
သၢင်ႈ **EventController** တွၼ်ႈတႃႇၸတ်းၵၢၼ် Request ၶႃႈ။

```csharp
public class EventController : Controller
{
    // ၼႄသဵၼ်ႈမၢႆပွႆးတင်းမူတ်း
    public IActionResult Index()
    {
        var events = new List<ShanEvent>
        {
            new ShanEvent { Id = 1, Title = "ပွႆးပီမႂ်ႇတႆး", Location = "မူႇၸေႊ", EventDate = DateTime.Now },
            new ShanEvent { Id = 2, Title = "ပွႆးလိူၼ်သီႇ", Location = "ၼမ်ႉၶမ်း", EventDate = DateTime.Now.AddMonths(1) }
        };
        return View(events); // သူင်ႇ List ၵႂႃႇၸူး View
    }

    // ၼႄ Form တႃႇထႅမ်ပွႆးမႂ်ႇ
    [HttpGet]
    public IActionResult Create() => View();

    // ႁပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈ Form
    [HttpPost]
    public IActionResult Create(ShanEvent newEvent)
    {
        if (ModelState.IsValid)
        {
            // (တွၼ်ႈၼႆႉ ႁဝ်းၸၢင်ႈသိမ်းၸွမ် Database လႆႈ)
            return RedirectToAction("Index");
        }
        return View(newEvent);
    }
}
```

### 3. တႅမ်ႈ View (The UI)
ၸႂ်ႉ **Razor** တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆပွႆးၼႂ်း **Views/Event/Index.cshtml** ၶႃႈ။

```razor
@model IEnumerable<ShanEvent>

<h2>သဵၼ်ႈမၢႆပွႆးႁဝ်း</h2>

<table class="table">
    <thead>
        <tr>
            <th>ၸိုဝ်ႈပွႆး</th>
            <th>တီႈယူႇ</th>
            <th>ဝၼ်းထိ</th>
        </tr>
    </thead>
    <tbody>
        @foreach (var item in Model)
        {
            <tr>
                <td>@item.Title</td>
                <td>@item.Location</td>
                <td>@item.EventDate.ToShortDateString()</td>
            </tr>
        }
    </tbody>
</table>

<a asp-action="Create" class="btn btn-primary">ထႅမ်ပွႆးမႂ်ႇ</a>
```

### 4. တႅမ်ႈ Web API (The Service)
သၢင်ႈ **EventsApiController** တွၼ်ႈတႃႇသူင်ႇ Data ပဵၼ် JSON ပၼ် Mobile App ၶႃႈ။

```csharp
[ApiController]
[Route("api/events")]
public class EventsApiController : ControllerBase
{
    [HttpGet]
    public IActionResult GetEvents()
    {
        var events = new List<ShanEvent> { /* Data ... */ };
        return Ok(events); // တွပ်ႇၶိုၼ်းပဵၼ် JSON ႁင်းၵူၺ်း
    }
}
```

---

### လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း (Summary)
* **MVC Pattern:** ႁဝ်းၸႅၵ်ႇၼႃႈၵၢၼ်ၽႂ်မၼ်း (Model, View, Controller) ႁႂ်ႈ App ႁဝ်းၶႃႈ။
* **Form Handling:** ႁဝ်းႁူႉလၢႆးႁပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈ User ၶဝ်ႈမႃးၼႂ်း System ႁဝ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Portal:** Website ဢၼ်ပဵၼ်သုၼ်ႇၵၢင် တွၼ်ႈတႃႇၶဝ်ႈတူၺ်းၶေႃႈမုၼ်းလၢႆလၢႆပိူင်။
* **IEnumerable:** ပိူင်သၢင်ႈ List ၼႂ်း C# ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ "Loop" လူတူၺ်းၶေႃႈမုၼ်း။
* **Action Link:** တုမ်ႇ ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈ ဢၼ်ၼဵၵ်းသေ သူင်ႇ User ၵႂႃႇၸူး Action တၢင်ႇဢၼ်။
* **Data Transfer:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၵႄႈ Server လႄႈ Client (Browser/Mobile)။

---

**ယဝ်ႉတူဝ်ႈလီငၢႆႈယဝ်ႉၶႃႈၶူး!** ယၢမ်းလဵဝ်ၶူး Sai Mao သၢင်ႈလႆႈတင်း Desktop App, Database, လႄႈ Website (Web App) ယဝ်ႉၶႃႈဢေႃႈ။ ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ်ဢၼ်ၵႅၼ်ႇၶႅင်ၼႃႇ တွၼ်ႈတႃႇတေၵႂႃႇသၢင်ႈ Android Application တူဝ်တႄႉၶႃႈ။

တွၼ်ႈၼႆႉ ၶူးၶႂ်ႈလႆႈ **100 Quizzes** (Format List<Quiz>) တွၼ်ႈတႃႇ Module 23 ၼႆႉဢွၼ်တၢင်း ႁႃႉၶႃႈ? ဢမ်ႇၼၼ် ၶႂ်ႈၵျွၵ်းၶဝ်ႈၵႂႃႇတီႈ **Module 24: Mobile Apps: Flutter & Dart for Shan Community** ဢၼ်ၶူးၵတ်ႉၶႅၼ်ႇဝႆႉယူႇယဝ်ႉၼၼ်ႉ ႁႃႉၶႃႈ?

1. Request 100 Quizzes for Module 23 (Dart List format, starting ID 2751)
2. Move to Module 24: Mobile Apps (Flutter & Dart)
3. Review Web App Project logic

ႁဝ်းတေသိုပ်ႇၵႂႃႇလၢႆးလႂ်ၶႃႈ?