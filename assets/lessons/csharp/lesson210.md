# Lesson 210: "The EventHandler and EventArgs Classes"

မိူဝ်ႈႁဝ်းသၢင်ႈ Event ၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Custom Delegate ႁင်းၵူၺ်းၵူႈပွၵ်ႈယဝ်ႉၶႃႈ။ 
C# မီး **`EventHandler`** ဢၼ်ပဵၼ် Built-in Delegate ဝႆႉပၼ်ယဝ်ႉ။

### 1. EventHandler ပဵၼ်သင်?

**EventHandler** ပဵၼ် Delegate ဢၼ်မီး Signature တႅတ်ႉတေႃးယူႇ 2 ဢၼ်ၶႃႈ:

1.  **`object sender`**: တူဝ်ဢၼ်သူင်ႇၶၢဝ်ႇဢွၵ်ႇ (Publisher)။
2.  **`EventArgs e`**: ၶေႃႈမုၼ်းဢၼ်ၵွင်ႉၵၢႆႇတင်းပၼ်ႁႃ ဢမ်ႇၼၼ် လွင်ႈတၢင်းၼၼ်ႉ။

### 2. EventArgs ပဵၼ်သင်?

**`EventArgs`** ပဵၼ် Class မႄႈ ဢၼ်ၸႂ်ႉတႃႇသူင်ႇ "ၶေႃႈမုၼ်း" ၵႂႃႇၸွမ်တင်း Event ၶႃႈ။ 
သင်ႁဝ်းဢမ်ႇမီးၶေႃႈမုၼ်းသင်တေသူင်ႇ ႁဝ်းၸႂ်ႉ `EventArgs.Empty` လႆႈၶႃႈ။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈသူင်ႇၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ ၸိုဝ်ႈၶၢဝ်ႇ) ႁဝ်းတေလႆႈသၢင်ႈ Class မႂ်ႇ ဢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်းလုၵ်ႉတီႈ `EventArgs` ၶႃႈ။

### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇၸွမ်းပိူင် Standard

ဝူၼ်ႉတူၺ်းလွင်ႈ App **"Shan News"** ဢၼ်ပိုၼ်ႈၶၢဝ်ႇမိူဝ်ႈမီးၶၢဝ်ႇမႂ်ႇၶႃႈ။

```csharp
using System;

// 1. သၢင်ႈ Class တႃႇသူင်ႇၶေႃႈမုၼ်းၶၢဝ်ႇ
public class ShanNewsEventArgs : EventArgs {
    public string Title { get; set; }
}

public class NewsPublisher {
    // 2. ပိုၼ်ၽၢဝ်ႇ Event လူၺ်ႈၸႂ်ႉ EventHandler<T>
    public event EventHandler<ShanNewsEventArgs> OnNewsPublished;

    public void Publish(string title) {
        Console.WriteLine($"\nတိုၵ်ႉပိုၼ်ႈၶၢဝ်ႇ: {title}");
        
        // 3. ပိုၼ်ႈၶၢဝ်ႇ (Raise Event)
        OnNewsPublished?.Invoke(this, new ShanNewsEventArgs { Title = title });
    }
}

class Program {
    static void Main() {
        NewsPublisher publisher = new NewsPublisher();

        // 4. Subscriber: တူၵ်းလူင်းႁပ်ႉၶၢဝ်ႇ
        publisher.OnNewsPublished += (sender, e) => {
            Console.WriteLine($"[Subscriber] လႆႈႁပ်ႉၶၢဝ်ႇယဝ်ႉ: {e.Title}");
        };

        publisher.Publish("ဝၼ်းပီႊမႂ်ႇတႆး ၶိုၼ်းမႃးထိုင်ယဝ်ႉ!");
    }
}
```

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ EventHandler?

* **Consistency:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမိူၼ်တင်း Standard ဢၼ် Microsoft လႄႈ Developer တၢင်ႇၵေႃႉၸႂ်ႉ။
* **Flexibility:** ႁဝ်းၸၢင်ႈသူင်ႇ `sender` (တူဝ်ပိုၼ်ႈၶၢဝ်ႇ) ၵႂႃႇၸွမ် ႁဵတ်းႁႂ်ႈ Subscriber ႁူႉဝႃႈ ၶၢဝ်ႇၼႆႉလုၵ်ႉတီႈလႂ်မႃးတႄႉတႄႉ။
* **Generic Support:** ၸႂ်ႉ `EventHandler<T>` တႃႇမၵ်းမၼ်ႈ Type ၶွင်ၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ ၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **EventHandler:** Delegate ဢၼ်ပဵၼ်ပိူင် Standard တႃႇသၢင်ႈ Event။
* **EventArgs:** Class ဢၼ်သိမ်းၶေႃႈမုၼ်း ဢၼ်တေသူင်ႇၵႂႃႇၸွမ်း Event။
* **Sender:** Object ဢၼ်ပဵၼ်တူဝ် "ပိုၼ်ႈၶၢဝ်ႇ"။
* **Generic Delegate:** Delegate ဢၼ်ၸႂ်ႉ `<T>` တႃႇႁပ်ႉလႆႈ Type လၢႆလၢႆပိူင်။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ Class **`ShanBattery`**။

1.  သၢင်ႈ Class **`BatteryEventArgs`** ဢၼ်မီး Property `int Level`။
2.  ၼႂ်း Class `ShanBattery` သၢင်ႈ Event ၸိုဝ်ႈဝႃႈ **`OnLowBattery`** လူၺ်ႈၸႂ်ႉ `EventHandler<BatteryEventArgs>`။
3.  သင် Level ဢေႇလိူဝ် 20 ႁႂ်ႈမၼ်း **"ပိုၼ်ႈၶၢဝ်ႇ"** ဢွၵ်ႇမႃးၶႃႈ။
