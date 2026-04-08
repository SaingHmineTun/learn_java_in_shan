# Lesson 283: "Routing: Mapping URLs to Your Shan App Logic"

**Routing** ပဵၼ်ပိူင်သၢင်ႈၼႂ်း ASP.NET Core ဢၼ်မီးၼႃႈၵၢၼ် "ပိၼ်ႇ URL" ဢၼ် User တႅမ်ႈမႃးၼၼ်ႉ ႁႂ်ႈပဵၼ် Code C# ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ URL ပိုၼ်ႉထၢၼ် (Default Route)
ASP.NET Core MVC ၵႆႉၸႂ်ႉပိူင်သၢင်ႈ URL ၸိူင်ႉၼႆၶႃႈ:
`https://localhost:xxxx/Controller/Action/Id`

* **Controller:** ၸိုဝ်ႈ Class ဢၼ်တေႁပ်ႉၵၢၼ် (မိူၼ်ၼင်ႇ `Student`).
* **Action:** ၸိုဝ်ႈ Method ၼႂ်း Class ၼၼ်ႉ (မိူၼ်ၼင်ႇ `Details`).
* **Id (Optional):** မၢႆတူဝ်ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းၶႂ်ႈသွၵ်ႈႁႃ (မိူၼ်ၼင်ႇ `101`).



### 2. တူဝ်ယင်ႇၵၢၼ်ႁဵတ်းၵၢၼ်
သင် User တႅမ်ႈ URL ဝႃႈ: `/Student/Details/5`
1.  Routing တေသွၵ်ႈႁႃ Class ၸိုဝ်ႈဝႃႈ **`StudentController`**.
2.  မၼ်းတေၵႂႃႇႁွင်ႉၸႂ်ႉ Method ၸိုဝ်ႈဝႃႈ **`Details`**.
3.  မၼ်းတေသူင်ႇမၢႆ **`5`** ၶဝ်ႈၵႂႃႇပဵၼ် Parameter ၼႂ်း Method ၼၼ်ႉၶႃႈ။

### 3. ၵၢၼ်မၵ်းမၼ်ႈ Route ၼႂ်း Program.cs
ၼႂ်းၾၢႆႇ `Program.cs` ႁဝ်းတေႁၼ် Code ဢၼ်မၵ်းမၼ်ႈ "ပၢႆႉၸီႉတၢင်း" ပိုၼ်ႉထၢၼ်ဝႆႉၸိူင်ႉၼႆၶႃႈ:

```csharp
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
```
* **{controller=Home}**: သင် User ဢမ်ႇတႅမ်ႈၸိုဝ်ႈ Controller ၼႆ ႁႂ်ႈၵႂႃႇၸူး `HomeController` ႁင်းၵူၺ်း (Default).
* **{action=Index}**: သင်ဢမ်ႇတႅမ်ႈၸိုဝ်ႈ Action ၼႆ ႁႂ်ႈၵႂႃႇၸူး Method `Index` ႁင်းၵူၺ်း.
* **{id?}**: တူဝ်မၢႆ `?` ပွင်ႇဝႃႈ "တေမီး ဢမ်ႇၼၼ် ဢမ်ႇမီးၵေႃႈလႆႈ" ၶႃႈ။

### 4. Attribute Routing (ၵၢၼ်ၸီႉတၢင်းၼိူဝ် Controller)
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈ URL ႁင်းၵူၺ်း (Custom URL) ႁႂ်ႈမၼ်းလူငၢႆႈ၊ ႁဝ်းၸၢင်ႈတႅမ်ႈဝႆႉၼိူဝ် Method ၵမ်းလဵဝ်ၶႃႈ:

```csharp
[Route("shan-community/students")]
public IActionResult ListStudents() 
{
    // ... code ...
}
```
*(ယၢမ်းလဵဝ် User ၵူၺ်းလႆႈတႅမ်ႈ `/shan-community/students` ၵေႃႈ ၶဝ်ႈတူၺ်းလႆႈယဝ်ႉၶႃႈ)*

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Endpoint:** URL တႅတ်ႈတေႃး ဢၼ်ၵွင်ႉၸူး Logic (မိူၼ်ၼင်ႇ ၼႃႈတႃ Web).
* **Segment:** သုၼ်ႇၶွင် URL ဢၼ်ၸႅၵ်ႇဝႆႉလူၺ်ႈတူဝ် `/`.
* **Parameter:** ၶေႃႈမုၼ်းဢၼ်သူင်ႇပႃးၵႂႃႇၸွမ်း URL (မိူၼ်ၼင်ႇ ID).
* **Pattern:** ပိူင်သၢင်ႈ ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ တႃႇၵူတ်ႇထတ်း URL.

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် User တႅမ်ႈ URL ဝႃႈ `https://localhost:7001/Event/Register/2` ၼႆ Routing တေသူင်ႇ User ၵႂႃႇၸူး **Controller** လႄႈ **Action** ၸိုဝ်ႈဝႃႈသင်?
2. ၼႂ်း Pattern `{id?}` ၼၼ်ႉ တူဝ်မၢႆ **`?`** မီးၼႃႈၵၢၼ်သင်?