# Lesson 200: "Best Practices: Global Handling and Logging"

သင်ႁဝ်းၸွမ်းပိူင် တၢင်းယၢမ်ႈဢၼ်လီသုတ်း (Best Practices) ၼႆ မၼ်းတေၸွႆးႁႂ်ႈ App ႁဝ်းလူငၢႆႈ လႄႈ ႁႃတီႈၽိတ်းလႆႈဝႆး မိူဝ်ႈၵူၼ်းၸႂ်ႉ (User) ၼမ်မႃးတႄႉတႄႉၶႃႈ။

### 1. Global Exception Handling ပဵၼ်သင်?
ၼႆႉပဵၼ်ၵၢၼ်တႅမ်ႈ Code ဝႆႉတီႈလဵဝ် (မိူၼ်ၼင်ႇၼႂ်း `Main` ဢမ်ႇၼၼ် Middleware) တႃႇႁပ်ႉပၼ်ႁႃ ဢၼ် "ဢမ်ႇလႆႈႁပ်ႉဝႆႉ" (Unhandled) ၼႂ်းတွၼ်ႈတၢင်ႇၸိူဝ်း။
* **ၽွၼ်းလီ:** App တေဢမ်ႇ Crash ပႅတ်ႈလၢႆလၢႆ၊ မၼ်းတေၼႄၶေႃႈၵႂၢမ်းဢၼ်လူငၢႆႈ ၸူးၵူၼ်းၸႂ်ႉ သေပိၵ်ႉၵႂႃႇ (Graceful Exit)။

### 2. ၵၢၼ်မၢႆတွင်း (Logging)
မိူဝ်ႈပၼ်ႁႃပဵၼ်မႃးယူႇတီႈၶွမ်းၵူၼ်းၸႂ်ႉ... ႁဝ်းဢမ်ႇႁၼ်ၼႃႈၸေႃးၶဝ်လႄႈ ၸၢင်ႈဢမ်ႇႁူႉဝႃး ၽိတ်းတီႈလႂ်ၶႃႈ။ 
ႁဝ်းၸင်ႇလူဝ်ႇသိမ်း **`StackTrace`** လႄႈ **`Message`** ဝႆႉၼႂ်း File (မိူၼ်ၼင်ႇ `log.txt`) တႃႇတေမႃးလူတူၺ်း လႄႈ မႄးပၼ်ႁႃၶိုၼ်းၶႃႈ။



### 3. တၢင်းယၢမ်ႈဢၼ်လီ (Best Practices Checklist)

* **ယႃႇပေႁပ်ႉ (Catch) ပၼ်ႁႃသေ "ဝႆႉပဝ်ႇ" (Empty Catch):** ၼႆႉပဵၼ်လွင်ႈဢၼ်ႁၢႆႉၸႃႉသုတ်း ယွၼ်ႉမၼ်းတေႁေႃႇ "ၵၢၼ်ၽိတ်း" ဝႆႉသေ ႁဝ်းတေဢမ်ႇႁူႉဝႃႈ ႁဵတ်းသင် App ၸင်ႇႁဵတ်းၵၢၼ်ၽိတ်းပိူင်။
* **ႁပ်ႉ (Catch) ဢၼ်ႁဝ်း "ၵႄႈလႆႈ" ၵူၺ်း:** သင်ႁဝ်းၵႄႈဢမ်ႇလႆႈ... ႁႂ်ႈပွႆႇမၼ်း "တူၵ်း" (Bubble up) ၵႂႃႇၸူး Global Handler ၶႃႈ။
* **ၼႄလိၵ်ႈဢၼ် "ပွင်ႇၸႂ်ငၢႆႈ" ၸူး User:** ယႃႇပေဢဝ် StackTrace ၵႂႃႇၼႄ User။ ႁႂ်ႈၼႄဝႃႈ "မီးပၼ်ႁႃၵမ်းၼိုင်ႈၶႃႈ၊ ၸၢမ်းတူၺ်းၶိုၼ်းၼႃ" ၼႆၵူၺ်းၵေႃႈလႆႈယဝ်ႉ။
* **ၸႂ်ႉ Standard Exceptions:** သင် C# မီးဝႆႉယဝ်ႉ (မိူၼ်ၼင်ႇ `ArgumentNullException`) ႁႂ်ႈၸႂ်ႉတူဝ်ၼၼ်ႉဢွၼ်တၢင်း၊ ပိူင်သၢင်ႈမႂ်ႇ (Custom) ၼၼ်ႉ သၢင်ႈမိူဝ်ႈလူဝ်ႇတႄႉတႄႉၵူၺ်းၶႃႈ။

### 4. တူဝ်ယင်ႇ Code: Global Catch ၼႂ်း Main

```csharp
static void Main() {
    try {
        StartApp();
    } 
    catch (Exception ex) {
        // 1. မၢႆတွင်း (Log) ဝႆႉၼႂ်း File
        LogToFile(ex);
        
        // 2. ၼႄၶေႃႈၵႂၢမ်းဢၼ်ပွင်ႇၸႂ်ငၢႆႈ ၸူး User
        Console.WriteLine("Sorry! Something went wrong in Shan App. We have logged the error.");
    }
}

static void LogToFile(Exception ex) {
    // ၸၢမ်းတႅမ်ႈလိၵ်ႈသႂ်ႇ File (Pseudo-code)
    string logMsg = $"[{DateTime.Now}] Error: {ex.Message} \n {ex.StackTrace}";
    File.AppendAllText("error_log.txt", logMsg);
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Graceful Exit:** ၵၢၼ်ပိၵ်ႉ App မိူဝ်ႈမီးပၼ်ႁႃ လူၺ်ႈဢမ်ႇႁႂ်ႈၵူၼ်းၸႂ်ႉ လႆႈတူၵ်းၸႂ်။
* **Unhandled Exception:** ပၼ်ႁႃဢၼ်ဢမ်ႇမီး `catch` ႁပ်ႉဝႆႉၼႂ်းတွၼ်ႈၼၼ်ႉ။
* **Logging Framework:** ၶိူင်ႈမိုဝ်းဢၼ်ၸွႆးသိမ်း Log (မိူၼ်ၼင်ႇ Serilog, NLog)။

---