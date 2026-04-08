# Lesson 284: "Controllers and Actions"

### 1. Controller ပဵၼ်သင်?
**Controller** ပဵၼ် Class C# ဢၼ်သိုပ်ႇလုၵ်ႉတီႈ `Controller` base class မႃးၶႃႈ။ 
မၼ်းမီးၼႃႈၵၢၼ်ႁပ်ႉ **HTTP Request** လုၵ်ႉတီႈ Browser သေ သူင်ႇ **HTTP Response** ၶိုၼ်းပၼ် User ၶႃႈ။

### 2. Action ပဵၼ်သင်?
**Action** ပဵၼ် Method ဢၼ်ယူႇၼႂ်း Controller ၶႃႈ။ Action ၵူႈဢၼ် တေလႆႈပဵၼ် `public` သေ တေလႆႈတွပ်ႇၶိုၼ်း (Return) ပဵၼ် **`IActionResult`** ၶႃႈဢေႃႈ။



### 3. တူဝ်ယင်ႇၵၢၼ်တႅမ်ႈ Code
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Controller တႃႇၸတ်းၵၢၼ်ပွႆး (Events) ၼႂ်းတႆးႁဝ်းၶႃႈ:

```csharp
using Microsoft.AspNetCore.Mvc;

public class EventController : Controller
{
    // ၼႆႉပဵၼ် Action တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆပွႆးတင်းမူတ်း
    // URL: /Event/Index
    public IActionResult Index()
    {
        // ၼႆႉပဵၼ်ၵၢၼ်တွပ်ႇၶိုၼ်းပဵၼ် "ၼႃႈတႃ" (View)
        return View();
    }

    // ၼႆႉပဵၼ် Action တွၼ်ႈတႃႇၼႄၶေႃႈမုၼ်းပွႆးၼိုင်ႈဢၼ် ၸွမ်းၼင်ႇ ID
    // URL: /Event/Details/5
    public IActionResult Details(int id)
    {
        // ႁဝ်းၸၢင်ႈသူင်ႇလိၵ်ႈၵႂႃႇၸၢမ်းတူၺ်းဢွၼ်တၢင်းလႆႈ
        return Content($"ၶေႃႈမုၼ်းပွႆး မၢႆတူဝ်: {id}");
    }
}
```

### 4. ၵႃႈၶၼ်ဢၼ် Action တွပ်ႇၶိုၼ်းလႆႈ (Action Results)
Action ၼိုင်ႈဢၼ် ၸၢင်ႈတွပ်ႇၶိုၼ်းပၼ် User လႆႈလၢႆလၢႆပိူင်ၶႃႈ:
* **`View()`**: သူင်ႇၼႃႈတႃ HTML ၵႂႃႇၼႄ (ၸႂ်ႉၼမ်သုတ်း)။
* **`Content("...")`**: သူင်ႇလိၵ်ႈၵႂႃႇၼႄ။
* **`Json(...)`**: သူင်ႇၶေႃႈမုၼ်းပဵၼ် JSON တွၼ်ႈတႃႇ Mobile App ဢမ်ႇၼၼ် JavaScript။
* **`RedirectToAction("Index")`**: သူင်ႇ User ၵႂႃႇၸူး Action တၢင်ႇဢၼ်။

---

### ႁဵတ်းသင် Controller ၸင်ႇလမ်ႇလွင်ႈ?
1. **Handling Logic:** ၼႆႉပဵၼ်တီႈဢၼ်ႁဝ်းတႅမ်ႈ Code တႃႇၵႂႃႇလူ Database (Model)။
2. **Decision Making:** မၼ်းတေတႅပ်းတတ်းၸႂ်ဝႃႈ "သင် User ယွၼ်းမႃးၸိူင်ႉၼႆ ထုၵ်ႇလီၼႄၼႃႈတႃလႂ်ပၼ်ၶဝ်?"။
3. **Parameter Binding:** မၼ်းတေဢဝ်မၢႆ ID လုၵ်ႉတီႈ URL မႃးပဵၼ် Variable ၼႂ်း C# ႁႂ်ႈႁဝ်းၸႂ်ႉလႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Base Class:** Class ငဝ်ႈႁၵ်ႈ ဢၼ်ပႃး Feature ပိုၼ်ႉထၢၼ်ဝႆႉယဝ်ႉ။
* **IActionResult:** Interface ဢၼ်ပဵၼ်တူဝ်တႅၼ်းၶွင် ၽွၼ်းလႆႈၵူႈပိူင် ဢၼ် Action တွပ်ႇၶိုၼ်းလႆႈ။
* **Method:** ၼႃႈၵၢၼ် (Logic) ဢၼ်တႅမ်ႈဝႆႉၼႂ်း Class။
* **Request Handling:** ၵၢၼ်ႁပ်ႉတွၼ်ႈ လႄႈ ၸတ်းၵၢၼ် ၶေႃႈယွၼ်း လုၵ်ႉတီႈ Browser။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁႂ်ႈ Action ႁဝ်းတွပ်ႇၶိုၼ်းပဵၼ် "ၼႃႈတႃ Website" (HTML) ၼႆ ႁဝ်းတေလႆႈသႂ်ႇ Code **`return ...`** သင်?
2. Method ၼႂ်း Controller တေလႆႈပဵၼ် `public` ဢမ်ႇၼၼ် `private` ၸင်ႇတေပဵၼ် **Action** ဢၼ် User ၶဝ်ႈတူၺ်းလႆႈ?
