# Lesson 212: "Event Best Practices: Avoiding Memory Leaks"

မိူဝ်ႈႁဝ်းၸႂ်ႉ **`+=`** တႃႇတူၵ်းလူင်းႁပ်ႉၶၢဝ်ႇၼၼ်ႉ Publisher တေၵဵပ်း "Reference" (သဵၼ်ႈတၢင်းၵွင်ႉ) ၸူး Subscriber ဝႆႉၶႃႈ။ 
သင်ႁဝ်းဢမ်ႇလူတ်ႇမၼ်းဢွၵ်ႇၶိုၼ်း... ၶိူင်ႈၽဵဝ်ႈမူၺ်ႉ (Garbage Collector) တေဢမ်ႇၸၢင်ႈလူတ်ႇ Subscriber ၼၼ်ႉဢွၵ်ႇ Memory လႆႈ၊ 
ယွၼ်ႉမၼ်းဝူၼ်ႉဝႃႈ "တိုၵ်ႉမီးၵူၼ်းၸႂ်ႉယူႇ" ၼႆၶႃႈ။ ၼႆႉႁွင်ႉဝႃႈ **Memory Leak** ယဝ်ႉ။

### 1. လၢႆးလူတ်ႇၶၢဝ်ႇ (Unsubscribing)
ႁဝ်းတေလႆႈၸႂ်ႉ Operator **`-=`** တႃႇလူတ်ႇ Method ဢွၵ်ႇပႅတ်ႈ မိူဝ်ႈႁဝ်းဢမ်ႇလူဝ်ႇမၼ်းယဝ်ႉၶႃႈ။

```csharp
// 1. တူၵ်းလူင်းႁပ်ႉၶၢဝ်ႇ (Subscribe)
publisher.OnNewsPublished += HandleNews;

// 2. လူတ်ႇၶၢဝ်ႇဢွၵ်ႇၶိုၼ်း (Unsubscribe)
publisher.OnNewsPublished -= HandleNews;
```

### 2. ပၼ်ႁႃတင်း Lambda Expression
သင်ႁဝ်းၸႂ်ႉ Lambda Expression (`=>`) တႃႇ Subscribe... ႁဝ်းတေဢမ်ႇၸၢင်ႈလူတ်ႇမၼ်းဢွၵ်ႇလႆႈငၢႆႈငၢႆႈ ၶႃႈ၊ 
ယွၼ်ႉမၼ်းဢမ်ႇမီး "ၸိုဝ်ႈ Method" တႃႇဢဝ်မႃး `-=` ၶိုၼ်းၼၼ်ႉယဝ်ႉ။

**❌ လၢႆးတႅမ်ႈဢၼ်ၸၢင်ႈမီးပၼ်ႁႃ:**
```csharp
publisher.OnNewsPublished += (s, e) => Console.WriteLine("Hello");
// ႁဝ်းဢမ်ႇၸၢင်ႈလူတ်ႇဢွၵ်ႇလႆႈ တႅတ်ႉတေႃး
```

**✅ လၢႆးတႅမ်ႈဢၼ်လီသုတ်း (Best Practice):**
ႁႂ်ႈၸႂ်ႉ Method ဢၼ်မီးၸိုဝ်ႈ (Named Method) တႃႇ Subscribe တႃႇသေႇၶႃႈ။

### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်လူတ်ႇၶၢဝ်ႇၼႂ်း App
ဝူၼ်ႉတူၺ်း App **"Shan Dictionary"** ဢၼ်ပိုၼ်ႈၶၢဝ်ႇလွင်ႈ "Update" ၶႃႈ။

```csharp
public class AppManager {
    public void Start() {
        // 1. Subscribe
        ShanNews.UpdateEvent += DisplayUpdate;
    }

    public void Stop() {
        // 2. Unsubscribe (လမ်ႇလွင်ႈၼႃႇ!)
        ShanNews.UpdateEvent -= DisplayUpdate;
        Console.WriteLine("လူတ်ႇၶၢဝ်ႇဢွၵ်ႇယဝ်ႉ၊ Memory သႅတ်းလီၶႃႈ။");
    }

    private void DisplayUpdate(object sender, EventArgs e) {
        Console.WriteLine("မီးတွၼ်ႈသွၼ်မႂ်ႇၶႃႈ!");
    }
}
```

### 4. Checklist တႃႇ Avoiding Memory Leaks
1.  **Always Unsubscribe:** သင် Subscriber မီးဢႃႇယုပွတ်းလိူဝ် Publisher... တေလႆႈလူတ်ႇၶၢဝ်ႇဢွၵ်ႇတႃႇသေႇ။
2.  **Use Named Methods:** ၸႂ်ႉတိုဝ်း Method ဢၼ်မီးၸိုဝ်ႈ တႃႇလူတ်ႇဢွၵ်ႇၶိုၼ်းလႆႈၶႃႈ။
3.  **Weak Events:** တွၼ်ႈတႃႇ App ဢၼ်ယႂ်ႇၼႃႇ (Advanced)... ႁဝ်းၸၢင်ႈၸႂ်ႉ Weak Event Pattern လႆႈၶႃႈ။
4.  **IDisposable:** ၸႂ်ႉပိူင် `Dispose()` တႃႇလူတ်ႇၶၢဝ်ႇတင်းမူတ်း မိူဝ်ႈ Class ၼၼ်ႉဢမ်ႇၸႂ်ႉယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Memory Leak:** ၵၢၼ်ဢၼ် App ၵိၼ် RAM တိၵ်းတိၵ်း ယွၼ်ႉဢမ်ႇလၢင်ႉပႅတ်ႈ ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇၸႂ်ႉယဝ်ႉ။
* **Unsubscribe:** ၵၢၼ်လူတ်ႇ Method ဢွၵ်ႇပႅတ်ႈလုၵ်ႉတီႈ Event။
* **Garbage Collector (GC):** ပိူင်သၢင်ႈၼႂ်း .NET ဢၼ်ၸွႆႈလူတ်ႇ Memory ဢၼ်ဢမ်ႇၸႂ်ႉယဝ်ႉဢွၵ်ႇ။
* **Reference:** သဵၼ်ႈတၢင်းၵွင်ႉၵၢႆႇ ဢၼ်ႁဵတ်းႁႂ်ႈ GC ဝူၼ်ႉဝႃႈ Object ၼိုင်ႈဢၼ်တိုၵ်ႉမီးၵူၼ်းၸႂ်ႉယူႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ဝူၼ်ႉတူၺ်းလွင်ႈတူဝ်ယင်ႇ 2 ယိူင်ႈၼႆႉ သေတႅပ်းတတ်းဝႃႈ ဢၼ်လႂ်ၸၢင်ႈပဵၼ် **Memory Leak**:
1.  ႁဝ်း Subscribe ဝႆႉၼႂ်း `Main` သေ App လႅၼ်ႈယဝ်ႉၵေႃႈပိတ်းၵႂႃႇၵမ်းလဵဝ်။
2.  ႁဝ်းမီး Class ဢၼ်ပိုတ်ႇမႃးလၢႆလၢႆပွၵ်ႈ (မိူၼ်ၼင်ႇ Window/Page) သေ Subscribe ၸူး Static Event တႃႇသေႇ လူၺ်ႈဢမ်ႇလူတ်ႇဢွၵ်ႇၶိုၼ်း။
