# Lesson 305: "Consuming Web APIs with HttpClient"

### 1. HttpClient ပဵၼ်သင်?
**HttpClient** ပဵၼ် Class ၼႂ်း .NET ဢၼ်မီးၼႃႈၵၢၼ်သူင်ႇ HTTP Requests (GET, POST, PUT, DELETE) ၵႂႃႇၸူး Server သေႁပ်ႉဢဝ် Response ၶိုၼ်းမႃးၶႃႈ။

### 2. လၢႆးႁဵတ်းၵၢၼ် (Workflow)
မိူဝ်ႈ App ႁဝ်းၶႂ်ႈလႆႈ "ၶၢဝ်ႇတႆး" (Shan News) မႂ်ႇမႂ်ႇၼၼ်ႉ:
1.  **Request:** App သူင်ႇ GET Request ၵႂႃႇၸူး URL ၶွင် API (မိူၼ်ၼင်ႇ `https://api.shannews.com/latest`)။
2.  **Response:** Server သူင်ႇ Data ၶိုၼ်းမႃးပဵၼ်လိၵ်ႈ **JSON**။
3.  **Deserialization:** App ႁဝ်းပိၼ်ႇလိၵ်ႈ JSON ၼၼ်ႉ ႁႂ်ႈပဵၼ် **C# Objects** (List<News>) တွၼ်ႈတႃႇဢဝ်ၵႂႃႇၼႄၼိူဝ် CollectionView (Module 298) ၶႃႈ။



### 3. တူဝ်ယင်ႇ Code ၵၢၼ်လူၶၢဝ်ႇ

```csharp
public async Task<List<News>> GetShanNewsAsync()
{
    using HttpClient client = new HttpClient();
    
    // 1. သူင်ႇ Request ၵႂႃႇဢဝ် Data
    var response = await client.GetAsync("https://api.itaimao.com/news");

    if (response.IsSuccessStatusCode)
    {
        // 2. လူလိၵ်ႈ JSON လုၵ်ႉတီႈ Response
        string json = await response.Content.ReadAsStringAsync();

        // 3. ပိၼ်ႇ JSON ႁႂ်ႈပဵၼ် C# List (လူဝ်ႇၸႂ်ႉ System.Text.Json)
        var newsList = JsonSerializer.Deserialize<List<News>>(json);
        return newsList;
    }
    return new List<News>();
}
```

---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1.  **Real-time Data:** App ႁဝ်းတေမီးၶေႃႈမုၼ်းမႂ်ႇတႃႇသေႇ လူၺ်ႈဢမ်ႇလူဝ်ႇ Update App ၼႂ်း Play Store ၶႃႈ။
2.  **Centralized Data:** ၶေႃႈမုၼ်းယူႇဝႆႉတီႈ Server လဵဝ်၊ ႁဵတ်းႁႂ်ႈ Website လႄႈ Mobile App ႁၼ်ၶေႃႈမုၼ်းမိူၼ်ၵၼ်ၶႃႈ။
3.  **Integration:** ၸွႆးႁႂ်ႈ App ႁဝ်းၵွင်ႉၸူး System တၢင်ႇဢၼ်လႆႈ (မိူၼ်ၼင်ႇ ၵူတ်ႇထတ်းယၢမ်းၾိင်ႈၾႃႉ ဢမ်ႇၼၼ် ပိၼ်ႇၵႃႈငိုၼ်း)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **HttpClient:** ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇလၢတ်ႈၵႂၢမ်းတင်း Web Server။
* **JSON Serialization:** ၵၢၼ်ပိၼ်ႇ Objects ႁႂ်ႈပဵၼ်လိၵ်ႈ JSON (တႃႇသူင်ႇၵႂႃႇ)။
* **JSON Deserialization:** ၵၢၼ်ပိၼ်ႇလိၵ်ႈ JSON ႁႂ်ႈပဵၼ် Objects (တႃႇဢဝ်မႃးၸႂ်ႉ)။
* **Asynchronous (async/await):** ၵၢၼ်သူင်ႇ Request ၽၢႆႇလင် (Background) တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈၼႃႈတႃ App "ၶမ်" (Freeze) မိူဝ်ႈပႂ်ႉ Data ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈပိၼ်ႇလိၵ်ႈ JSON ဢၼ်ႁပ်ႉမႃး ႁႂ်ႈပဵၼ် C# List ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Method ၸိုဝ်ႈဝႃႈသင်?
2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ **`await`** မိူဝ်ႈႁွင်ႉၸႂ်ႉ `client.GetAsync()`?
