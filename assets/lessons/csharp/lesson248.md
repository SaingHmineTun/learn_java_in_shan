# Lesson 248: "CancellationToken: Stopping Tasks Safely"

ၼႂ်း C# ႁဝ်းဢမ်ႇထုၵ်ႇလီ "ႁႅမ်" (Kill) Task ၵမ်းလဵဝ် ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈ Data လႅဝ်လႆႈၶႃႈ။
ႁဝ်းၸႂ်ႉလၢႆး **Cooperative Cancellation** (ၵၢၼ်ယႃႉၵၢၼ်လူၺ်ႈ ၵၢၼ်ႁူမ်ႈမိုဝ်းၵၼ်) ၶႃႈ။

### 1. တူဝ်ၸွႆးသွင်ဢၼ် (The Two Parts)

* **`CancellationTokenSource` (CTS):** ပဵၼ် "တူဝ်ၵုမ်း" ဢၼ်မီးတုမ်ႇၼဵၵ်း Cancel။
* **`CancellationToken` (CT):** ပဵၼ် "မၢႆထႅဝ်" ဢၼ်သူင်ႇၵႂႃႇၼႂ်း Task တႃႇႁႂ်ႈ Task ၼၼ်ႉၵူတ်ႇထတ်းတူၺ်းဝႃႈ "မီးၵူၼ်းသင်ႇ Cancel ႁႃႉ?" ၶႃႈ။

### 2. လၢႆးတႅမ်ႈ Code

ႁဝ်းတေလႆႈသူင်ႇ Token ၶဝ်ႈၵႂႃႇၼႂ်း Method သေ ၸႂ်ႉ `ThrowIfCancellationRequested()` တႃႇၵိုတ်းၵၢၼ်ၶႃႈ။

```csharp
public async Task DownloadWithCancelAsync()
{
    // 1. သၢင်ႈတူဝ်ၵုမ်း
    var cts = new CancellationTokenSource();
    CancellationToken token = cts.Token;

    try 
    {
        Console.WriteLine("တႄႇၵၢၼ်... (ၼဵၵ်း Cancel လႆႈၵူႈယၢမ်း)");
        
        // ၸၢမ်း Cancel ဝၢႆးလင် 2 ၸႅၵ်ႉ (တူဝ်ယင်ႇ)
        cts.CancelAfter(2000); 

        await DoHeavyWorkAsync(token);
    }
    catch (OperationCanceledException)
    {
        Console.WriteLine("ၵၢၼ်ၼႆႉ ထုၵ်ႇယႃႉပႅတ်ႈ (Cancelled) ယဝ်ႉၶႃႈ။");
    }
}

public async Task DoHeavyWorkAsync(CancellationToken ct)
{
    for (int i = 0; i < 100; i++)
    {
        // 2. ၵူတ်ႇထတ်းၵူႈပွၵ်ႈ ဢွၼ်တၢင်းတေသိုပ်ႇႁဵတ်းၵၢၼ်
        ct.ThrowIfCancellationRequested();

        await Task.Delay(500, ct); // သူင်ႇ token ပၼ် Method တၢင်ႇဢၼ်ၸွမ်း
        Console.WriteLine($"ႁဵတ်းၵၢၼ်လႆႈ {i}%");
    }
}
```

### 3. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?

1.  **User Control:** ပၼ်သုၼ်ႇ User ၵိုတ်းၵၢၼ်ဢၼ်ၶဝ်ဢမ်ႇၶႂ်ႈပႂ်ႉယဝ်ႉ။
2.  **Timeout:** တႃႇမၵ်းမၼ်ႈဝႃႈ "သင်ၵၢၼ်ၼႆႉႁိုင်လိူဝ် 10 ၸႅၵ်ႉၵႅၼ်ႉ ႁႂ်ႈၵိုတ်းပႅတ်ႈ" (ၸႂ်ႉ `CancelAfter`)။
3.  **Clean Up:** မိူဝ်ႈပိၵ်ႉ App ၼၼ်ႉ ႁဝ်းၸၢင်ႈသင်ႇ Cancel ၵူႈ Task တႃႇပိၵ်ႉ App ၶႃႈ။

### 4. ပၵ်းၵၢၼ်တွင်း

* **Pass it down:** သင် Method ႁဝ်းႁွင်ႉၸႂ်ႉ Method တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ `HttpClient`) ႁဝ်းထုၵ်ႇလီသူင်ႇ Token ၼၼ်ႉသိုပ်ႇၵႂႃႇတႃႇသေႇၶႃႈ။
* **Check often:** ၼႂ်း Loop ဢၼ်ႁဵတ်းၵၢၼ်ယၢဝ်းၼၼ်ႉ တေလႆႈၵူတ်ႇထတ်း Token ၵူႈပွၵ်ႈၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Cooperative Cancellation:** ၵၢၼ်ယႃႉၵၢၼ် ဢၼ် Task လႄႈ တူဝ်သင်ႇၵၢၼ် တူၵ်းလူင်းႁူမ်ႈမိုဝ်းၵၼ်။
* **Token:** တူဝ်တႅၼ်း ဢၼ်မၢႆတွင်းဝႃႈ ၵၢၼ်ၵိုတ်းယဝ်ႉႁႃႉ ပႆႇၵိုတ်း။
* **Timeout:** ၵၢၼ်မၵ်းမၼ်ႈၶၢဝ်းယၢမ်းသုတ်းတွၼ်ႈ တွၼ်ႈတႃႇၵၢၼ်ၼိုင်ႈဢၼ်။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**

1.  သင်ႁဝ်းၼဵၵ်း `cts.Cancel()` ယဝ်ႉၼႆ Task တေၵိုတ်းၵမ်းလဵဝ်ႁႃႉ? ဢမ်ႇၼၼ် တေလႆႈပႂ်ႉတေႃႇမၼ်းလႅၼ်ႈၵႂႃႇထိုင်ထႅဝ် `ct.ThrowIfCancellationRequested()`?
2.  `OperationCanceledException` ပဵၼ် Exception ဢၼ်လီ ဢမ်ႇၼၼ် ဢၼ်ဢမ်ႇလီ? (Hint: မၼ်းပဵၼ်ပိူင်ထမ်ႇမတႃႇ ၶွင်ၵၢၼ်ယႃႉၵၢၼ်ၶႃႈ)။