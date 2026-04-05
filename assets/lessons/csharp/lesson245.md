# Lesson 245: "Exception Handling in Async"

ၵၢၼ်ၸႂ်ႉ `try-catch` ၼႂ်း Async Code ၼၼ်ႉ မၼ်းမိူၼ်တင်း Code ယူဝ်းယူဝ်းယူႇၶႃႈ၊ 
ၵူၺ်းၵႃႈ မၼ်းမီး "လွၵ်းလၢႆး" ဢၼ် C# ၸတ်းၵၢၼ်ပၼ်ၽၢႆႇလင် ဢၼ်ႁဝ်းလူဝ်ႇပွင်ႇၸႂ်ဝႆႉၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉ try-catch ၸွမ်းတင်း await
မိူဝ်ႈႁဝ်း **`await`** Task ၼိုင်ႈဢၼ်ၼၼ်ႉ သင် Task ၼၼ်ႉမီး Error (Exception)၊ မၼ်းတေ "တႅၵ်ႇ" (Throw) ဢွၵ်ႇမႃးတီႈထႅဝ် `await` ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။ 
ၼႆႉႁဵတ်းႁႂ်ႈႁဝ်း ႁပ်ႉမၼ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။

```csharp
public async Task DownloadDataAsync()
{
    try 
    {
        // ၸၢမ်း Download
        string result = await _httpClient.GetStringAsync("https://shan-api.com/data");
        Console.WriteLine("လႆႈၶေႃႈမုၼ်းယဝ်ႉ!");
    }
    catch (HttpRequestException ex)
    {
        // ႁပ်ႉမိုဝ်းမိူဝ်ႈ Internet မီးပၼ်ႁႃ
        Console.WriteLine($"Error တၢင်း Network: {ex.Message}");
    }
    catch (Exception ex)
    {
        // ႁပ်ႉမိုဝ်းပၼ်ႁႃတၢင်ႇပိူင်
        Console.WriteLine($"Error ဢမ်ႇထၢင်ႇပၼ်: {ex.Message}");
    }
    finally 
    {
        // တေလႅၼ်ႈတႃႇသေႇ (မိူၼ်ၼင်ႇ ပိၵ်ႉ Loading Spinner)
        Console.WriteLine("ယဝ်ႉတူဝ်ႈၵၢၼ် Download ၶႃႈ။");
    }
}
```



### 2. ပၼ်ႁႃၶွင် 'async void' လႄႈ Exceptions
ၼႆႉပဵၼ်လွင်ႈတၢင်းဢၼ်ႁဝ်း "ႁႄႉၵၢင်ႈ" ဢမ်ႇႁႂ်ႈၸႂ်ႉ `async void` ၶႃႈ။
* သင် `async Task` မီး Error ၼႆ Error ၼၼ်ႉတေထုၵ်ႇသိမ်းဝႆႉၼႂ်း **Task Object** သေ ပႂ်ႉႁႂ်ႈႁဝ်းမႃး `await` ၸင်ႇတေဢွၵ်ႇမႃးၶႃႈ။
* ၵူၺ်းၵႃႈ သင်ႁဝ်းၸႂ်ႉ **`async void`** လႄႈ မီး Error ၼႆ မၼ်းဢမ်ႇမီး Task Object တႃႇသိမ်း Error ၼၼ်ႉဝႆႉ။ မၼ်းတေၵႂႃႇတီႈ **Thread Stack** သေ ႁဵတ်းႁႂ်ႈ App ႁဝ်း **Crash** ၵမ်းလဵဝ် လူၺ်ႈႁဝ်းၸႂ်ႉ `try-catch` ႁေႃႇဝႆႉၵေႃႈ ဢမ်ႇၸွႆးလႆႈၶႃႈ။

### 3. AggregateException
မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်လၢႆလၢႆ Task ၸွမ်းၵၼ် (မိူၼ်ၼင်ႇ `Task.WhenAll` ဢၼ်ႁဝ်းတေႁဵၼ်းမိူဝ်းၼႃႈ)၊ သင်မၼ်းမီး Error လၢႆလၢႆဢၼ်ၸွမ်းၵၼ်ၼႆ .NET တေဢဝ် Error တင်းမူတ်းမႃးႁေႃႇဝႆႉၼႂ်း **`AggregateException`** ၶႃႈ။

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Async Safety
* **Always await:** သင်ႁဝ်းဢမ်ႇ `await` Task ၼၼ်ႉၼႆ ႁဝ်းတေဢမ်ႇႁူႉလႆႈသေပွၵ်ႈဝႃႈ မၼ်းမီး Error ႁႃႉ ဢမ်ႇမီးႁႃႉ။
* **Catch Specific:** ႁပ်ႉပၼ်ႁႃ ၸွမ်းၼင်ႇလွင်ႈတၢင်းမၼ်း (မိူၼ်ၼင်ႇ `TaskCanceledException`) ၸင်ႇတေပၼ်ၶေႃႈမုၼ်းၸူး User လႆႈတႅတ်ႈတေႃးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Exception Propagation:** ၵၢၼ်သူင်ႇပၼ်ႁႃလုၵ်ႉတီႈ Background Thread မႃးၸူး UI Thread ၽၢၼ်ႇ `await`။
* **Task Faulted:** Status ၶွင် Task မိူဝ်ႈမၼ်းယဝ်ႉတူဝ်ႈလူၺ်ႈၵၢၼ်မီး Error။
* **Unobserved Exception:** Error ဢၼ်ၵဵတ်းၶိုၼ်းၼႂ်း Task သေ ႁဝ်းဢမ်ႇလႆႈ `await` တႃႇလူတူၺ်းမၼ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းမီး Method `async void MyMethod()` သေမၼ်းမီး Error ၼႂ်းယၢမ်းလႅၼ်ႈယူႇၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `try-catch` ၽၢႆႇၼွၵ်ႈ (တီႈဢၼ်ႁွင်ႉၸႂ်ႉမၼ်း) တႃႇႁပ်ႉ Error ၼၼ်ႉလႆႈႁႃႉ?
2.  သင်ႁဝ်း `await` Task ဢၼ်ပဵၼ် `Faulted` (Error) ၼၼ်ႉ Code ႁဝ်းတေသိုပ်ႇလႅၼ်ႈထႅဝ်တႂ်ႈ `await` ၼၼ်ႉႁႃႉ ဢမ်ႇၼၼ် တေၵျွၵ်းၵႂႃႇတီႈ `catch`?