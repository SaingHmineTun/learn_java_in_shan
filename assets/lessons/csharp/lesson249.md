# Lesson 249: "Progress Reporting with IProgress<T>"

ၼႂ်း Async Code ႁဝ်းဢမ်ႇထုၵ်ႇလီ Update UI လုၵ်ႉတီႈ Background Thread ၵမ်းလဵဝ်ၶႃႈ။ 
ႁဝ်းတေလႆႈၸႂ်ႉ Interface **`IProgress<T>`** ဢၼ် .NET ပၼ်မႃး တႃႇသူင်ႇၶေႃႈမုၼ်းၶိုၼ်းမႃးၸူး UI Thread ႁႂ်ႈလွတ်ႈၽေးၶႃႈ။

### 1. တူဝ်ၸွႆးသွင်ဢၼ် (The Two Parts)

* **`Progress<T>` (The Handler):** ယူႇတီႈ UI Thread။ မၼ်းပဵၼ်တူဝ်ဢၼ်မၵ်းမၼ်ႈဝႃႈ "သင်မီးၶေႃႈမုၼ်း Progress မႃး ႁဝ်းတေ Update UI ၸိူင်ႉႁိုဝ်?" ၶႃႈ။
* **`IProgress<T>` (The Reporter):** ယူႇတီႈ Background Task။ မၼ်းပဵၼ် "သဵၼ်ႈတၢင်း" ဢၼ်ၸႂ်ႉသူင်ႇ % ဢမ်ႇၼၼ် ၶေႃႈမုၼ်းၶိုၼ်းမႃးၶႃႈ။

### 2. လၢႆးတႅမ်ႈ Code

ႁဝ်းတေလႆႈသၢင်ႈ Object `Progress` သေသူင်ႇမၼ်းၶဝ်ႈၵႂႃႇၼႂ်း Async Method ႁဝ်းၶႃႈ။

```csharp
public async Task StartDownloadAsync()
{
    // 1. သၢင်ႈတူဝ်ပႂ်ႉႁပ်ႉ Progress (ၼႂ်း UI Thread)
    var progress = new Progress<int>(value => 
    {
        Console.WriteLine($"Progress: {value}%");
        // တီႈၼႆႉ ႁဝ်းၸၢင်ႈ Update ProgressBar ၼႂ်း App ႁဝ်းလႆႈၶႃႈ
    });

    await DoWorkAsync(progress);
}

public async Task DoWorkAsync(IProgress<int> progress)
{
    for (int i = 0; i <= 100; i += 10)
    {
        await Task.Delay(500); // ၸၢမ်းႁဵတ်းၵၢၼ်ၼၵ်းၼၵ်း

        // 2. သူင်ႇၶေႃႈမုၼ်း Progress ၶိုၼ်းမိူဝ်း
        progress?.Report(i); 
    }
}
```

### 3. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?

1.  **Thread Safety:** မၼ်းၸွႆးႁႂ်ႈႁဝ်း Update UI လႆႈလူၺ်ႈဢမ်ႇ Crash (ယွၼ်ႉ UI Thread ၵူၺ်း ဢၼ်မီးသုၼ်ႇမႄး UI လႆႈၶႃႈ)။
2.  **User Peace of Mind:** User တေႁူႉဝႃႈ "ဢေႃႈ... တိုၵ်ႉလႅၼ်ႈယူႇ တွၼ်ႈၼႆႉလႆႈ 50% ယဝ်ႉ" ၼႆၶႃႈ။
3.  **Decoupling:** Task ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ UI ႁဝ်းပဵၼ်သင် (Android ႁႃႉ ဢမ်ႇၼၼ် Windows ႁႃႉ)၊ မၼ်းမီးၼႃႈၵၢၼ်သူင်ႇတူဝ်ၼပ်ႉၶိုၼ်းမႃးၵူၺ်းၶႃႈ။

### 4. ပၵ်းၵၢၼ်တွင်း

* **T can be anything:** ဢမ်ႇၸႂ်ဝႃႈ ႁဝ်းသူင်ႇလႆႈ `int` (0-100) ၵူၺ်းၶႃႈ။ ႁဝ်းၸၢင်ႈသူင်ႇ `string` (ၸိုဝ်ႈ File ဢၼ်တိုၵ်ႉ Download ယူႇ) ဢမ်ႇၼၼ် `Class` ဢၼ်မီးၶေႃႈမုၼ်း လၢႆလၢႆယိူင်ႈၵေႃႈလႆႈၶႃႈ။
* **Null Check:** ၸႂ်ႉ `progress?.Report()` တႃႇႁႄႉၵၢင်ႈ Error မိူဝ်ႈ User ဢမ်ႇလႆႈသူင်ႇတူဝ် Progress မႃးပၼ်ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Progress Reporting:** ၵၢၼ်ပိုၼ်ၶၢဝ်ႇ လွင်ႈတၢင်းၵၢၼ်ႁဵတ်းၵၢၼ် ၼႂ်းယၢမ်းဢၼ်မၼ်းတိုၵ်ႉလႅၼ်ႈယူႇ။
* **Thread Marshalling:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း လုၵ်ႉတီႈ Thread ဢၼ်ၼိုင်ႈ ၵႂႃႇၸူးထႅင်ႈ Thread ဢၼ်ၼိုင်ႈ ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်။
* **Interface (IProgress):** ပၵ်းၵၢၼ်ဢၼ်မၵ်းမၼ်ႈဝႃႈ Method ၼၼ်ႉ တေလႆႈမီး `Report()` ၶႃႈ။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**

1.  သင်ႁဝ်းမီးၵၢၼ် "Upload ၶႅပ်းႁၢင်ႈ 10 ႁၢင်ႈ" သေႁဝ်းၶႂ်ႈၼႄ User ဝႃႈ "တိုၵ်ႉ Upload ႁၢင်ႈမၢႆ [i] ယူႇၼႆ" ႁဝ်းထုၵ်ႇလီၸႂ်ႉ `IProgress<T>` ဢၼ်ပဵၼ် Type **`T`** သင်? (Hint: `int` ဢမ်ႇၼၼ် `string`?)
2.  ႁဵတ်းသင်ႁဝ်းၸင်ႇဢမ်ႇထုၵ်ႇလီတႅမ်ႈ `progressBar.Value = i;` ဝႆႉၼႂ်း Method ဢၼ်ပဵၼ် Async (Background Task) ၼၼ်ႉၶႃႈ?
