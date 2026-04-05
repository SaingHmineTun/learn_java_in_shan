# Lesson 251: Project - "Shan Image Downloader"

ၼႂ်း Project ၼႆႉ **ႁဝ်း** တေလႆႈၸႂ်ႉ:

* **`Task`** တႃႇႁဵတ်းၵၢၼ်ၽၢႆႇလင် (Background)။
* **`await`** တႃႇပႂ်ႉၵၢၼ်ယဝ်ႉတူဝ်ႈ လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ UI Freeze။
* **`IProgress<T>`** တႃႇသူင်ႇ % ၵၢၼ် Download ၶိုၼ်းမႃး။
* **`CancellationToken`** တႃႇပၼ်သုၼ်ႇ User ၼဵၵ်း "Cancel"။

### 1. ပိူင်သၢင်ႈ Code (The Implementation)

```csharp
using System;
using System.Threading;
using System.Threading.Tasks;

public class ShanDownloader
{
    // Method တႃႇ Download ဢၼ်ၸႂ်ႉ Async/Await တႄႉတႄႉ
    public async Task DownloadImageAsync(string fileName, IProgress<int> progress, CancellationToken ct)
    {
        Console.WriteLine($"--- တႄႇ Download: {fileName} ---");

        for (int i = 0; i <= 100; i += 10)
        {
            // 1. ၵူတ်ႇထတ်းဝႃႈ User ၼဵၵ်း Cancel ႁႃႉ?
            ct.ThrowIfCancellationRequested();

            // 2. ၸၢမ်းႁဵတ်းၵၢၼ်ၼၵ်း (Delay 500ms)
            await Task.Delay(500, ct); 

            // 3. သူင်ႇ % ၶိုၼ်းမိူဝ်းၸူး UI
            progress?.Report(i);
        }

        Console.WriteLine($"\n--- {fileName} Download ယဝ်ႉတူဝ်ႈယဝ်ႉ! ---");
    }
}

class Program
{
    static async Task Main()
    {
        var downloader = new ShanDownloader();
        var cts = new CancellationTokenSource();

        // 1. Setup Progress Handler
        var progressHandler = new Progress<int>(percent => {
            Console.Write($"\rၵၢၼ်ႁဵတ်းၵၢၼ်: {percent}% [");
            Console.Write(new string('#', percent / 5).PadRight(20, '.'));
            Console.Write("]");
        });

        try 
        {
            // ၸၢမ်း Cancel ဝၢႆးလင် 3 ၸႅၵ်ႉၵႅၼ်ႉ (တူဝ်ယင်ႇ User ဢမ်ႇၶႂ်ႈသိုပ်ႇပႂ်ႉယဝ်ႉ)
            // cts.CancelAfter(3000); 

            await downloader.DownloadImageAsync("Shan_Landscape.jpg", progressHandler, cts.Token);
        }
        catch (OperationCanceledException)
        {
            Console.WriteLine("\n[!] User ၼဵၵ်း Cancel ပႅတ်ႈယဝ်ႉၶႃႈ။");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"\n[!] Error: {ex.Message}");
        }
    }
}
```

### 2. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း

* **Responsiveness:** App ႁဝ်းတိုၵ်ႉ "တူင်ႉၼိုင်" လႆႈယူႇ ၼႂ်းယၢမ်းဢၼ် `Task.Delay` ႁဵတ်းၵၢၼ် (ယွၼ်ႉႁဝ်း `await` မၼ်းဝႆႉ)။
* **User Feedback:** ၵၢၼ်ၸႂ်ႉ `IProgress` ႁဵတ်းႁႂ်ႈ User ႁူႉဝႃႈ App ပႆႇၶမ် (Not Frozen)။
* **Safe Exit:** ၵၢၼ်ၸႂ်ႉ `CancellationToken` ၸွႆးလူတ်းၵၢၼ်ၸႂ်ႉ Resource လၢႆလၢႆ မိူဝ်ႈၵၢၼ်ၼၼ်ႉဢမ်ႇလူဝ်ႇယဝ်ႉ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Asynchronous Simulation:** ၵၢၼ်ၸၢမ်းတႅမ်ႈ Code Async ၼႂ်းယၢမ်းဢၼ်ပႆႇမီး Data တႄႉတႄႉ (ၸႂ်ႉ Task.Delay တႅၼ်း Network)။
* **Thread Context:** တီႈယူႇၶွင်ၵၢၼ်လႅၼ်ႈ Code (UI Thread vs Background Thread)။
* **Graceful Cancellation:** ၵၢၼ်ယႃႉၵၢၼ်လူၺ်ႈလၢႆးဢၼ်သႅတ်းလီ (ဢမ်ႇႁဵတ်းႁႂ်ႈ App Crash)။

-----