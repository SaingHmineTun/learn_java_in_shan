# Lesson 243: "The 'async' and 'await' Keywords"

မိူဝ်ႈၵွၼ်ႇ ႁဝ်းလႆႈၸႂ်ႉ "Callback" (မိူၼ်ၼင်ႇတွၼ်ႈ Delegate) တႃႇႁပ်ႉၶိုၼ်း ၵၢၼ်ဢၼ်ယဝ်ႉတူဝ်ႈၶႃႈ။ 
ၵူၺ်းၵႃႈ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူယၢပ်ႇၼႃႇၶႃႈ။ 
ယၢမ်းလဵဝ် ႁဝ်းမီးဝႆႉ keyword (2) ဢၼ် ၼႆႉယဝ်ႉၶႃႈ။

### 1. 'async' Keyword (တူဝ်မၵ်းမၼ်ႈ)

ႁဝ်းၸႂ်ႉ **`async`** ဝႆႉၽၢႆႇၼႃႈ Method တႃႇပိုၼ်ၽၢဝ်ႇဝႃႈ "Method ၼႆႉ တေမီးၵၢၼ်ႁဵတ်း လၢႆလၢႆဢၼ်ၸွမ်းၵၼ်" ၼႆၶႃႈ။

* မၼ်းပၼ်သုၼ်ႇႁႂ်ႈႁဝ်းၸႂ်ႉ Keyword `await` ၼႂ်း Method ၼၼ်ႉလႆႈ။
* မၼ်းတေလႆႈသူင်ႇ Type ပဵၼ် **`Task`** ဢမ်ႇၼၼ် **`Task<T>`** တႃႇသေႇၶႃႈ (လိူဝ်သေ Event Handler)။

### 2. 'await' Keyword (တူဝ်ပႂ်ႉလၢႆးလွတ်ႈၽေး)

မိူဝ်ႈႁဝ်းၸႂ်ႉ **`await`** တီႈ Task ၼိုင်ႈဢၼ်ၼႆ:

1.  မၼ်းတေ "ၵိုတ်း" ၵၢၼ်ႁဵတ်းၵၢၼ်ၼႂ်း Method ၼၼ်ႉဝႆႉၸူဝ်ႈၶၢဝ်း။
2.  မၼ်းတေ **ပွႆႇ UI Thread** ႁႂ်ႈမိူဝ်းႁဵတ်းၵၢၼ်တၢင်ႇပိူင် (မိူၼ်ၼင်ႇႁပ်ႉ Click) တႅၼ်းၵၢၼ်ၸုၵ်းပႂ်ႉ (Blocking)။
3.  မိူဝ်ႈ Task ၼၼ်ႉယဝ်ႉတူဝ်ႈယဝ်ႉ၊ မၼ်းတေသိုပ်ႇလႅၼ်ႈ Code ထႅဝ်တႂ်ႈ `await` ၼၼ်ႉပၼ်ႁင်းၵူၺ်းၶႃႈ။

### 3. တူဝ်ယင်ႇ Code: Download Data

ဝူၼ်ႉတူၺ်းလၢႆးတႅမ်ႈ ဢၼ်လူငၢႆႈလိူဝ်ပိူၼ်ႈၶႃႈ:

```csharp
// 1. ပိုၼ်ၽၢဝ်ႇ method ပဵၼ် async
public async Task DownloadFileAsync() 
{
    Console.WriteLine("တႄႇ Download...");

    // 2. ၸႂ်ႉ await တႃႇပႂ်ႉ Task (ဢမ်ႇႁဵတ်းႁႂ်ႈ UI Freeze)
    string content = await File.ReadAllTextAsync("data.txt");

    // 3. မိူဝ်ႈလူယဝ်ႉယဝ်ႉ Code တႂ်ႈၼႆႉတေသိုပ်ႇလႅၼ်ႈ
    Console.WriteLine("လူယဝ်ႉယဝ်ႉ: " + content);
}
```

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Async/Await

* **Async all the way:** သင် Method တူဝ်ၼိုင်ႈပဵၼ် async ၼႆၸိုင် တူဝ်ဢၼ်ႁွင်ႉၸႂ်ႉမၼ်းၵေႃႈ ထုၵ်ႇလီပဵၼ် async ၸွမ်းၵၼ် ၵႂႃႇၸိူင်ႉၼၼ် တေႃႇပေႃးသုတ်းၶႃႈ။
* **Avoid 'async void':** ႁဝ်းထုၵ်ႇလီၸႂ်ႉ `async Task` တႃႇသေႇ။ ၸႂ်ႉ `async void` တွၼ်ႈတႃႇ **Event Handlers** (မိူၼ်ၼင်ႇ Button Click) ၵူၺ်းၶႃႈ။
* **Naming:** ႁဝ်းၵႆႉထႅမ်ၶေႃႈၵႂၢမ်း **"Async"** ဝႆႉတီႈပၢႆၸိုဝ်ႈ Method (မိူၼ်ၼင်ႇ `GetDataAsync`) တႃႇႁႂ်ႈႁူႉဝႃႈမၼ်းပဵၼ်ၵၢၼ် လၢႆလၢႆဢၼ်ၸွမ်ၵၼ်ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **awaitable:** Task ဢမ်ႇၼၼ် Object ဢၼ်ႁဝ်းၸၢင်ႈၸႂ်ႉ await ပႂ်ႉလႆႈ။
* **Suspension:** လွင်ႈၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ် ၼႂ်း Method ဝႆႉၸူဝ်ႈၶၢဝ်း။
* **Resumption:** လွင်ႈသိုပ်ႇလႅၼ်ႈ Code ၶိုၼ်း ဝၢႆးလင် Task ယဝ်ႉတူဝ်ႈ။
* **State Machine:** ပိူင်သၢင်ႈၽၢႆႇလင် ဢၼ် C# Compiler သၢင်ႈပၼ် တႃႇမၢႆတွင်းဝႃႈ Code လႅၼ်ႈထိုင်တီႈလႂ်ယဝ်ႉ။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းမႄး Code ၼႆႉ ႁႂ်ႈမၼ်းပဵၼ် **Asynchronous** တႅတ်ႉတေႃးၶႃႈ:

1.  `public void SaveData() { File.WriteAllText("s.txt", "hi"); }`
2.  ႁႂ်ႈပိၼ်ႇ `void` ပဵၼ်သင်?
3.  ႁႂ်ႈထႅမ် Keyword သင်ၽၢႆႇၼႃႈ `public`?
4.  ႁႂ်ႈၸႂ်ႉ Method **`WriteAllTextAsync`** သေထႅမ် Keyword သင်ၽၢႆႇၼႃႈမၼ်း?
