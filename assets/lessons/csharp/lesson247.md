# Lesson 247: "Parallel Programming: Task.WhenAll"

မိူဝ်ႈႁဝ်းမီး Task လၢႆလၢႆဢၼ် ဢၼ်ဢမ်ႇလူဝ်ႇပႂ်ႉၵၼ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`Task.WhenAll`** တႃႇႁဵတ်းၵၢၼ်ၸွမ်းၵၼ်ၶႃႈ။

### 1. Sequential vs. Parallel
* **Sequential (ၸွမ်းထႅဝ်):** ႁဵတ်း A ယဝ်ႉ -> ၸင်ႇႁဵတ်း B -> ၸင်ႇႁဵတ်း C။ သင်ၵူႈဢၼ် ႁိုင် 2 ၸႅၵ်ႉၵႅၼ်ႉၼႆ တင်းမူတ်းတေႁိုင် **6 ၸႅၵ်ႉၵႅၼ်ႉ** ၶႃႈ။
* **Parallel (ၸွမ်းၵၼ်):** ႁဵတ်း A, B, C ၸွမ်ၵၼ်ၵမ်းလဵဝ်။ တင်းမူတ်းတေႁိုင် **2 ၸႅၵ်ႉၵႅၼ်ႉ** (ၶၢဝ်းယၢမ်းတူဝ်ဢၼ်ယၢဝ်းသုတ်း) ၵူၺ်းၶႃႈ။



### 2. လၢႆးၸႂ်ႉ Task.WhenAll
ႁဝ်းတေလႆႈသၢင်ႈ Task ဝႆႉလၢႆလၢႆဢၼ် (လူၺ်ႈဢမ်ႇတႅမ်ႈ `await` ၽၢႆႇၼႃႈမၼ်းၵမ်းလဵဝ်) သေၸင်ႇၵွႆႈ `await` တီႈ `Task.WhenAll` ၶႃႈ။

```csharp
public async Task DownloadMultipleFilesAsync()
{
    // 1. တႄႇ Task တင်းမူတ်း (မၼ်းတေတႄႇလႅၼ်ႈၵမ်းလဵဝ် ၽၢႆႇလင်)
    Task task1 = DownloadFileAsync("image1.jpg");
    Task task2 = DownloadFileAsync("image2.jpg");
    Task task3 = DownloadFileAsync("image3.jpg");

    // 2. ၸႂ်ႉ Task.WhenAll တႃႇပႂ်ႉႁႂ်ႈ "ၵူႈဢၼ်" ယဝ်ႉတူဝ်ႈ
    await Task.WhenAll(task1, task2, task3);

    Console.WriteLine("Download ယဝ်ႉတင်းမူတ်းယဝ်ႉၶႃႈ!");
}
```

### 3. ၵၢၼ်ႁပ်ႉၽွၼ်းလႆႈ (Handling Results)
သင် Task ၸိူဝ်းၼၼ်ႉသူင်ႇၵႃႈၶၼ်ၶိုၼ်း (မိူၼ်ၼင်ႇ `Task<int>`) ၼႆၸိုင် `Task.WhenAll` တေသူင်ႇၽွၼ်းလႆႈမႃးပဵၼ် **Array** ၶႃႈ။

```csharp
Task<int> score1 = GetScoreAsync("ၸၢႆးသႅင်");
Task<int> score2 = GetScoreAsync("ၼၢင်းမိူင်း");

int[] results = await Task.WhenAll(score1, score2);

// results[0] တေပဵၼ်မၢႆတွၼ်ႈ ၸၢႆးသႅင်
// results[1] တေပဵၼ်မၢႆတွၼ်ႈ ၼၢင်းမိူင်း
```

### 4. ပၼ်ႁႃ Exception ၼႂ်း WhenAll
သင်ၼႂ်း 3 Task ၼၼ်ႉ မီး ဢၼ်ၼိုင်ႈ ပဵၼ် Error ၼႆ `Task.WhenAll` တေသူင်ႇ Error ၼၼ်ႉဢွၵ်ႇမႃးၸူးႁဝ်းၶႃႈ။ 
(သင်ပဵၼ် Error လၢႆလၢႆဢၼ် မၼ်းတေႁပ်ႉဝႆႉၼႂ်း `AggregateException` မိူၼ်ၼင်ႇႁဝ်းႁဵၼ်းဝႆႉၼၼ်ႉၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parallelism:** ၵၢၼ်ႁဵတ်းၵၢၼ်လၢႆဢၼ် ၼႂ်းယၢမ်းလဵဝ်ၵၼ် တႄႉတႄႉ။
* **Concurrency:** ၵၢၼ်ၸတ်းၵၢၼ်လၢႆဢၼ် ႁႂ်ႈမိူၼ်ၼင်ႇႁဵတ်းၸွမ်ၵၼ် (Task Switching)။
* **Sequential:** ၵၢၼ်ႁဵတ်းၸွမ်းထႅဝ် ၼိုင်ႈဢၼ်ယဝ်ႉ ၸင်ႇသိုပ်ႇၼိုင်ႈဢၼ်။
* **Awaitable Collection:** ၸုမ်းၶွင် Task ဢၼ်ႁဝ်းၸၢင်ႈပႂ်ႉလႆႈတင်းမူတ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ႁဝ်းမီး Task 5 ဢၼ် တႃႇသူင်ႇ Email။ သင်ႁဝ်းၸႂ်ႉ `await` ၸွမ်းထႅဝ် 5 ပွၵ်ႈ တင်း `Task.WhenAll` ဢၼ်လႂ်တေဝႆးလိူဝ်?
2.  သင်ႁဝ်းၸႂ်ႉ `Task.WhenAll` သေ Task တူဝ်ၼိုင်ႈ Error... ၸွင်ႇ Task တၢင်ႇတူဝ် တေသိုပ်ႇလႅၼ်ႈတေႃႇပေႃးယဝ်ႉႁႃႉ? (Hint: Task.WhenAll တေပႂ်ႉတေႃႇၵူႈဢၼ်ယဝ်ႉ သေၸင်ႇၵွႆႈသူင်ႇ Error ဢွၵ်ႇမႃးၶႃႈ)။