# Lesson 213: "Callbacks: Passing Logic as a Parameter"

**Callback** ပွင်ႇဝႃႈ "ၵၢၼ်ႁွင်ႉၶိုၼ်း" ၶႃႈ။ မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းၸႂ်ႉၵူၼ်းၵေႃႉၼိုင်ႈၵႂႃႇသိုဝ်ႉၶွင် သေလၢတ်ႈၼႄမၼ်းဝႃႈ "သင်သိုဝ်ႉယဝ်ႉယဝ်ႉ... **ပိုၼ်ႈၶၢဝ်ႇ** မႃးပၼ်ႁဝ်းၵမ်းၼိုင်ႈၼႃ" ၼႆၶႃႈ။ 
တွၼ်ႈ "ပိုၼ်ႈၶၢဝ်ႇမႃးပၼ်" ၼၼ်ႉယဝ်ႉ ဢၼ်ႁွင်ႉဝႃႈ Callback ၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Asynchronous Operations:** ၸႂ်ႉမိူဝ်ႈႁဝ်း Download ၶေႃႈမုၼ်းယဝ်ႉ သေၶႂ်ႈႁႂ်ႈမၼ်းၼႄၽွၼ်းလႆႈ။
2.  **Flexibility:** ႁဝ်းၸၢင်ႈသူင်ႇ Logic ဢၼ်ပႅၵ်ႇပိူင်ၵၼ် ၶဝ်ႈၵႂႃႇၼႂ်း Method တူဝ်လဵဝ်ၵၼ်လႆႈ။
3.  **Decoupling:** ႁဵတ်းႁႂ်ႈ Method ဢၼ်ႁဵတ်းၵၢၼ်ၼၵ်း (မိူၼ်ၼင်ႇ Save File) ဢမ်ႇလူဝ်ႇႁူႉဝႃႈ တေလႆႈၼႄၽွၼ်းလႆႈၸိူင်ႉႁိုဝ်၊ မၼ်းၵူၺ်းႁွင်ႉၸႂ်ႉ Callback ဢၼ်ႁဝ်းသူင်ႇပၼ်ၼၼ်ႉၵူၺ်းၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းၵႆႉၸႂ်ႉ **`Action`** ဢမ်ႇၼၼ် **`Func`** မႃးပဵၼ် Parameter ၶႃႈ။

```csharp
public void ProcessData(int data, Action<string> callback) {
    // 1. ႁဵတ်းၵၢၼ်
    Console.WriteLine("Processing data...");
    
    // 2. မိူဝ်ႈယဝ်ႉယဝ်ႉ... ႁွင်ႉၸႂ်ႉ Callback (ပိုၼ်ႈၶၢဝ်ႇၶိုၼ်း)
    callback?.Invoke("Done with: " + data);
}
```



### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇမိူဝ်ႈ "ပိၼ်ႇလိၵ်ႈ" ယဝ်ႉ
ဝူၼ်ႉတူၺ်း App **"Shan Translator"** ဢၼ်သူင်ႇ Method ၵႂႃႇၼႄၽွၼ်းလႆႈၶႃႈ။

```csharp
using System;

class Program {
    static void Main() {
        // ႁွင်ႉၸႂ်ႉ Method သေသူင်ႇ Lambda ပဵၼ် Callback
        Translate("Hello", (result) => {
            Console.WriteLine($"[Callback] ၽွၼ်းလႆႈပဵၼ်: {result}");
        });
    }

    static void Translate(string text, Action<string> onFinished) {
        Console.WriteLine($"\n[System] တိုၵ်ႉပိၼ်ႇလိၵ်ႈ: {text}...");
        
        // သၢင်ႈပိူင်ပိၼ်ႇလိၵ်ႈ (Pseudo-logic)
        string translatedText = "မႂ်ႇသုင်"; 
        
        // မိူဝ်ႈယဝ်ႉယဝ်ႉ... ပိုၼ်ႈၶၢဝ်ႇၵႂႃႇၶိုၼ်း Callback
        onFinished?.Invoke(translatedText);
    }
}
```

### 4. လွင်ႈပႅၵ်ႇပိူင် ၼႂ်းၵႄႈ Events လႄႈ Callbacks
* **Callback:** ၵႆႉပဵၼ်ၵၢၼ် "သူင်ႇၵႂႃႇ ႁွင်ႉၶိုၼ်းပွၵ်ႈလဵဝ်" (One-to-one)။
* **Event:** ၵႆႉပဵၼ်ၵၢၼ် "ပိုၼ်ႈၶၢဝ်ႇ" ဢွၵ်ႇၵႂႃႇၸူးၵူၼ်းလၢႆလၢႆၵေႃႉ (One-to-many)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Callback:** Method ဢၼ်ထုၵ်ႇသူင်ႇၵႂႃႇပဵၼ် Parameter သေတေထုၵ်ႇႁွင်ႉၸႂ်ႉဝၢႆးလင်။
* **Higher-Order Function:** Method ဢၼ်ႁပ်ႉဢဝ် Method တၢင်ႇဢၼ် မႃးပဵၼ် Parameter။
* **Delegate Parameter:** ၵၢၼ်ၸႂ်ႉ Action/Func ၼႂ်းသဵၼ်ႈမၢႆ Parameter ၶွင် Method။
* **Asynchronous:** ၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်ဢမ်ႇလူဝ်ႇမုင်ႈမွင်း (Wait) ႁႂ်ႈယဝ်ႉၸင်ႇသိုပ်ႇလႆႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ၸၢမ်းတႅမ်ႈ Method **`DownloadFile(string url, Action<bool> completion)`**။
1.  ၼႂ်း Method ႁႂ်ႈ `Console.WriteLine` ၼႄဝႃႈတိုၵ်ႉ Download ယူႇ။
2.  မိူဝ်ႈယဝ်ႉယဝ်ႉ... ႁွင်ႉၸႂ်ႉ `completion(true)`။
3.  ၼႂ်း `Main` ႁွင်ႉၸႂ်ႉ `DownloadFile` သေသူင်ႇ Lambda ဢၼ်ၼႄၶေႃႈၵႂၢမ်းဝႃႈ "Download Successful!" ၶႃႈ။