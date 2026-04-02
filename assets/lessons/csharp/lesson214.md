# Lesson 214: "Exercise: Shan News Alert System"

### 1. ဝၢင်းၽႅၼ် (The Plan)

ႁဝ်းတေမႃးသၢင်ႈပိူင်သၢင်ႈဢၼ်မီး:

* **Publisher:** Class `ShanNewsStation` ဢၼ်တေပဵၼ်တူဝ်ပိုၼ်ႈၶၢဝ်ႇ။
* **EventArgs:** Class `NewsEventArgs` တႃႇသိမ်းႁူဝ်ၶေႃႈၶၢဝ်ႇ လႄႈ မၢႆတွၼ်ႈၶၢဝ်ႇ။
* **Subscribers:** တူဝ်ႁပ်ႉၶၢဝ်ႇလၢႆလၢႆဢၼ် (မိူၼ်ၼင်ႇ Email ဢမ်ႇၼၼ် SMS)။

### 2\. တႅမ်ႈ Code (The Implementation)

```csharp
using System;

// 1. သၢင်ႈ Class တႃႇသူင်ႇၶေႃႈမုၼ်းၶၢဝ်ႇ
public class NewsEventArgs : EventArgs {
    public string Title { get; set; }
    public string Category { get; set; }
}

// 2. ၽူႈပိုၼ်ႈၶၢဝ်ႇ (Publisher)
public class ShanNewsStation {
    // ပိုၼ်ၽၢဝ်ႇ Event ၸွမ်းပိူင် Standard
    public event EventHandler<NewsEventArgs> NewsPublished;

    public void BroadcastNews(string title, string category) {
        Console.WriteLine($"\n[Station] တိုၵ်ႉပိုၼ်ႈၶၢဝ်ႇမႂ်ႇ: {title} ({category})");
        
        // ပိုၼ်ႈၶၢဝ်ႇ (Raise Event) ၸွမ်းလၢႆး Safe Invoke
        NewsPublished?.Invoke(this, new NewsEventArgs { 
            Title = title, 
            Category = category 
        });
    }
}

// 3. ၵၢၼ်ၸႂ်ႉတႄႉ (Main Program)
class Program {
    static void Main() {
        ShanNewsStation station = new ShanNewsStation();

        // --- Subscriber 1: ႁပ်ႉၶၢဝ်ႇၽၢၼ်ႇ Email (ၸႂ်ႉ Method ဢၼ်မီးၸိုဝ်ႈ) ---
        station.NewsPublished += SendEmailAlert;

        // --- Subscriber 2: ႁပ်ႉၶၢဝ်ႇၽၢၼ်ႇ SMS (ၸႂ်ႉ Lambda Expression) ---
        station.NewsPublished += (sender, e) => {
            Console.WriteLine($"[SMS] တိူၼ်းၶၢဝ်ႇမႂ်ႇ: {e.Title} တီႈတွၼ်ႈ {e.Category}");
        };

        // ၸၢမ်းပိုၼ်ႈၶၢဝ်ႇ ၶမ်းၼိုင်ႈ
        station.BroadcastNews("ပွႆးပီႊမႂ်ႇတႆး တေၸတ်းႁဵတ်းတီႈမူႇၸေႊ", "Culture");

        // --- လူတ်ႇၶၢဝ်ႇ (Unsubscribe) Email ဢွၵ်ႇ ---
        station.NewsPublished -= SendEmailAlert;

        // ၸၢမ်းပိုၼ်ႈၶၢဝ်ႇ ထႅင်ႈၶမ်းၼိုင်ႈ
        station.BroadcastNews("သွၼ်လိၵ်ႈတႆး ၼိူဝ် Online လၢႆလၢႆ", "Education");
        
        Console.WriteLine("\n--- ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇယဝ်ႉတူဝ်ႈယဝ်ႉ ---");
    }

    static void SendEmailAlert(object sender, NewsEventArgs e) {
        Console.WriteLine($"[Email] သူင်ႇၶၢဝ်ႇၸူး Subscriber: {e.Title}");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း

* **EventHandler<T>:** ႁဵတ်းႁႂ်ႈႁဝ်းသူင်ႇၶေႃႈမုၼ်း `NewsEventArgs` ၵႂႃႇလႆႈငၢႆႈငၢႆႈ။
* **Decoupling:** `ShanNewsStation` ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၶၢဝ်ႇတေၵႂႃႇၼႄတီႈ SMS ဢမ်ႇၼၼ် Email၊ မၼ်းၵူၺ်းမီးၼႃႈၵၢၼ် `Invoke` ၵူၺ်း။
* **Dynamic:** ႁဝ်းၸၢင်ႈ `+=` (တူၵ်းလူင်းႁပ်ႉ) ဢမ်ႇၼၼ် `-=` (လူတ်ႇၶၢဝ်ႇ) လႆႈၵူႈမိူဝ်ႈ ၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Event Broadcasting:** ၵၢၼ်သူင်ႇၶၢဝ်ႇဢွၵ်ႇၵႂႃႇၸူး Subscribers တင်းမူတ်း ၼႂ်းၵမ်းလဵဝ်။
* **Standard Pattern:** လၢႆးတႅမ်ႈ Event ဢၼ်ၸႂ်ႉ (object sender, TEventArgs e)။
* **Subscription Management:** ၵၢၼ်ၸတ်းၵၢၼ် ၵွင်ႉ/လူတ်ႇ ၶေႃႈမုၼ်းၶၢဝ်ႇ။

-----