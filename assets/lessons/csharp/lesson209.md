# Lesson 209: "Introduction to Events"

**Events** ပဵၼ်ၵၢၼ်ၸႂ်ႉ Delegate ၼႂ်းလၢႆးဢၼ်သုင်လိူဝ်ၵဝ်ႇ။ မၼ်းမိူၼ်ၼင်ႇ "ၵၢၼ်ပၢႆးပိုၼ်ၽၢဝ်ႇ" ၶႃႈ။

### 1. Publisher-Subscriber Pattern ပဵၼ်သင်?

ပိူင်ၼႆႉ မီးပိူင်ယႂ်ႇဝႆႉယူႇ 2 တွၼ်ႈၶႃႈ:
* **Publisher (ၽူႈပိုၼ်ၽၢဝ်ႇ):** ပဵၼ် Class ဢၼ်သူင်ႇ "ၶၢဝ်ႇ" ဢွၵ်ႇမႃး မိူဝ်ႈမီးလွင်ႈတၢင်းသေလွင်ႈလွင်ႈ (မိူၼ်ၼင်ႇ Button ထုၵ်ႇၼဵၵ်း)။
* **Subscriber (ၽူႈတူၵ်းလူင်းႁပ်ႉ):** ပဵၼ် Class ဢၼ် "ထွမ်ႇ" ဝႆႉ သေ တေႁဵတ်းၵၢၼ်သေလွင်ႈလွင်ႈ မိူဝ်ႈလႆႈႁပ်ႉ ၶၢဝ်ႇၼၼ်ႉ။



### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ Events?
1.  **Loose Coupling:** Publisher ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ မီးၽူႈလႂ်ထွမ်ႇယူႇၽၢႆႇၼွၵ်ႈ၊ မၼ်းၵူၺ်းမီးၼႃႈၵၢၼ် "ပွႆႇ Event" ဢွၵ်ႇၵႂႃႇၵူၺ်း။
2.  **Modular Code:** ႁဝ်းၸၢင်ႈထႅမ် ဢမ်ႇၼၼ် လူတ်ႇ Subscriber ဢွၵ်ႇလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code ၼႂ်း Publisher။
3.  **Real-world Logic:** မိူၼ်ၼင်ႇ App **"Shan News"**... မိူဝ်ႈမီးၶၢဝ်ႇမႂ်ႇ (Event)၊ ၽူႈၸႂ်ႉၵူႈၵေႃႉ ဢၼ် Register ဝႆႉ (Subscribers) တေလႆႈထွမ်ႇငိၼ်းၵမ်းလဵဝ်ၶႃႈ။

### 3. ပိူင်သၢင်ႈပိုၼ်ႉထၢၼ် (The `event` Keyword)
Events တေၸႂ်ႉ Delegate ပဵၼ်ပိုၼ်ႉထၢၼ် တႃႇမၵ်းမၼ်ႈ Signature ၶႃႈ။

```csharp
// 1. ပိုၼ်ၽၢဝ်ႇ Delegate ဢွၼ်တၢင်း
public delegate void ShanNewsHandler();

public class NewsPublisher {
    // 2. ပိုၼ်ၽၢဝ်ႇ Event လူၺ်ႈၸႂ်ႉ Keyword 'event'
    public event ShanNewsHandler OnNewsPublished;

    public void Publish() {
        Console.WriteLine("တိုၵ်ႉပိုၼ်ၽၢဝ်ႇၶၢဝ်ႇမႂ်ႇ...");
        // 3. ပွႆႇ Event (Raise Event)
        if (OnNewsPublished != null) {
            OnNewsPublished();
        }
    }
}
```

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Subscribing)
Subscriber တေၸႂ်ႉ Operator **`+=`** တႃႇ "တူၵ်းလူင်းႁပ်ႉ" ၶၢဝ်ႇၶႃႈ။

```csharp
NewsPublisher publisher = new NewsPublisher();

// Subscriber: တူၵ်းလူင်းႁပ်ႉၶၢဝ်ႇ
publisher.OnNewsPublished += () => Console.WriteLine("လႆႈႁပ်ႉၶၢဝ်ႇယဝ်ႉၶႃႈ!");

// ပွႆႇၶၢဝ်ႇ
publisher.Publish();
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Publisher:** Class ဢၼ်မီး Event သေပိုၼ်ႈၶၢဝ်ႇဢွၵ်ႇမႃး။
* **Subscriber:** Class ဢၼ်ထွမ်ႇ Event သေႁဵတ်းၵၢၼ်ၸွမ်း။
* **Raise Event:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Delegate ၼႂ်း Publisher တႃႇသူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇၵႂႃႇ။
* **Loose Coupling:** ၵၢၼ်ဢၼ် Code ၼိုင်ႈတွၼ်ႈ ဢမ်ႇလူဝ်ႇၵွင်ႉၵၢႆႇတင်း ထႅင်ႈတွၼ်ႈၼိုင်ႈၼမ်လိူဝ်ပူၼ်ႉတီႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်း App **"Shan Messenger"** ၶႃႈ။
1.  သင်မီး Event **`OnMessageReceived`**။
2.  ၽူႈလႂ်တေပဵၼ် **Publisher** (တူဝ်ပိုၼ်ၽၢဝ်ႇ)?
3.  ၽူႈလႂ်တေပဵၼ် **Subscriber** (တူဝ်ႁပ်ႉတိူၼ်း)? (တူဝ်ယင်ႇ: Sound Player, Notification Bar)
