# Lesson 288: "Introduction to Web APIs"

### 1. Web API ပဵၼ်သင်?
**API** (Application Programming Interface) ပဵၼ် "ၵူၼ်းၵႄႈၵၢင်" ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Software သွင်ဢၼ် လၢတ်ႈၵႂၢမ်းတေႃႇၵၼ်ၶႃႈ။
* **Web API** ၸႂ်ႉ HTTP Protocol တႃႇသူင်ႇၶေႃႈမုၼ်း။
* မၼ်းဢမ်ႇသူင်ႇ HTML (ၼႃႈတႃ UI)၊ ၵူၺ်းၵႃႈမၼ်းသူင်ႇ **Data** (ၵႆႉပဵၼ်ပိူင် JSON) ၶႃႈဢေႃႈ။

### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇ Web API?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းသၢင်ႈ Database ၵဵပ်းသဵၼ်ႈမၢႆ "ပပ်ႉလိၵ်ႈတႆး" ဝႆႉတီႈလဵဝ်။ ႁဝ်းၶႂ်ႈႁႂ်ႈ:
1.  **Website** ၵေႃႈၼႄသဵၼ်ႈမၢႆပပ်ႉလႆႈ။
2.  **Android/iOS App** ၵေႃႈၼႄသဵၼ်ႈမၢႆပပ်ႉလႆႈ။
3.  **Desktop App** ၵေႃႈၼႄသဵၼ်ႈမၢႆပပ်ႉလႆႈ။
* **Solution:** ႁဝ်းတႅမ်ႈ **Web API** ဝႆႉတီႈလဵဝ် သေပၼ် App တင်းမူတ်းၸိူဝ်းၼၼ်ႉ မႃး "ယွၼ်း" (Request) ဢဝ် Data လုၵ်ႉတီႈ API ၼၼ်ႉ ၵႂႃႇၼႄႁင်းၵူၺ်းၽႂ်မၼ်းၶႃႈ။



### 3. လွင်ႈပႅၵ်ႇပိူင်ၵႄႈ MVC Controller လႄႈ API Controller
| Features | MVC Controller | API Controller |
| :--- | :--- | :--- |
| **Output** | တွပ်ႇၶိုၼ်းပဵၼ် **View (HTML)** | တွပ်ႇၶိုၼ်းပဵၼ် **Data (JSON/XML)** |
| **User** | ပဵၼ် "ၵူၼ်း" (လူၽၢၼ်ႇ Browser) | ပဵၼ် "Software" (Mobile App, JavaScript) |
| **Attributes** | ၸႂ်ႉ `Inherits Controller` | ၸႂ်ႉ `Inherits ControllerBase` လႄႈ `[ApiController]` |

### 4. တူဝ်ယင်ႇ API Action
ၼႂ်း Web API, ႁဝ်းၵႆႉမၵ်းမၼ်ႈ Method ၸွမ်းတင်း HTTP Verbs (GET, POST...) ၶႃႈ:

```csharp
[ApiController]
[Route("api/[controller]")] // URL: api/book
public class BookController : ControllerBase
{
    // GET: api/book
    [HttpGet]
    public IActionResult GetAllBooks()
    {
        var books = new List<string> { "ပိုၼ်းတႆး", "လိၵ်ႈလၢႆးတႆး" };
        return Ok(books); // သူင်ႇ Data ဢွၵ်ႇပဵၼ် JSON (Status 200)
    }
}
```
---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **JSON (JavaScript Object Notation):** ပိူင်လိၵ်ႈဢၼ်ၸႂ်ႉသူင်ႇၶေႃႈမုၼ်း ဢၼ် Software ၵူႈပိူင်ပွင်ႇၸႂ်ငၢႆႈ။
* **REST (Representational State Transfer):** ပိူင်သၢင်ႈ Standard တွၼ်ႈတႃႇသၢင်ႈ Web API ဢၼ်ၸႂ်ႉ HTTP Verbs။
* **Stateless:** API တေဢမ်ႇမၢႆတွင်းဝႃႈ ၽႂ်ယွၼ်းသင်ဝႆႉ၊ Request ၵူႈဢၼ် တေလႆႈပႃးၶေႃႈမုၼ်းတဵမ်ထူၼ်ႈ (မိူၼ်ၼင်ႇ Token တႃႇ Login)။
* **Base Class `ControllerBase`:** Class ဢၼ်ပႃး Feature တွၼ်ႈတႃႇ API ၵူၺ်း (ဢမ်ႇပႃးလွင်ႈၼႄ View)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း တႅမ်ႈ Web API ၼႆ ႁဝ်းတေတွပ်ႇၶိုၼ်း (Return) ပဵၼ် **HTML View** ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ် **Data (JSON)**?
2. ႁဵတ်းသင် **Mobile App** ၸင်ႇလူဝ်ႇၸႂ်ႉ Web API တႅၼ်းၵၢၼ်ၵွင်ႉၸူး Database ၵမ်းလဵဝ်?