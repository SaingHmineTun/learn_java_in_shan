# Lesson 196: "Exception Filters: The 'when' Keyword"

မိူဝ်ႈပူၼ်ႉမႃးၼၼ်ႉ သင်ႁဝ်းႁပ်ႉ `catch` ယဝ်ႉ... ႁဝ်းတေလႆႈၶဝ်ႈၵႂႃႇၵူတ်ႇထတ်း `if-else` ၼႂ်း block ၼၼ်ႉထႅင်ႈ။ 
ၵူၺ်းၵႃႈ ယၢမ်းလဵဝ်ႁဝ်းၸၢင်ႈၸႂ်ႉ **`when`** တႃႇလၢတ်ႈဝႃႈ "ႁပ်ႉပၼ်ႁႃၼႆႉ မိူဝ်ႈငဝ်းလၢႆးၼႆႉမႅၼ်ႈၵူၺ်း" ၼႆၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Cleaner Code:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `if` ၼႂ်း `catch` ႁႂ်ႈယုင်ႈယၢင်ႈ။
2.  **Specific Handling:** ႁပ်ႉပၼ်ႁႃလၢႆးၼိုင်ႈ မိူဝ်ႈမီး Error Code မၢႆၼိုင်ႈ၊ သေႁပ်ႉထႅင်ႈလၢႆးၼိုင်ႈ မိူဝ်ႈပဵၼ် Error Code တၢင်ႇဢၼ်။
3.  **StackTrace Preservation:** ၼႆႉပဵၼ်တွၼ်ႈ Advanced ဢၼ်မၼ်းတေႁဵတ်းႁႂ်ႈ StackTrace ႁဝ်းတႅတ်ႈၼႅတ်ႈ လိူဝ်ၵၢၼ်ၸႂ်ႉ `if` ၼႂ်း catch ၶႃႈ။

### 2. ပိူင်သၢင်ႈ (Syntax)

```csharp
try {
    // Code ဢၼ်ၸၢင်ႈမီးပၼ်ႁႃ
} 
catch (Exception ex) when (ex.Message.Contains("Unauthorized")) {
    // တေႁပ်ႉမိူဝ်ႈ Message မီးလိၵ်ႈဝႃႈ "Unauthorized" ၵူၺ်း
} 
catch (Exception ex) when (ex.Message.Contains("Timeout")) {
    // တေႁပ်ႉမိူဝ်ႈပဵၼ်လွင်ႈ "Timeout" ၵူၺ်း
}
```



### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ၵူတ်ႇထတ်း Error Code
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတိုၵ်ႉတႅမ်ႈ App **"Shan Database"** သေ မၼ်းသူင်ႇ Error Code မႃးပဵၼ်တူဝ်ၼပ်ႉၶႃႈ။

```csharp
try {
    // ၸၢမ်းၵွင်ႉၸူး Database
    throw new Exception("Error: 500"); // တူဝ်ယၢင်ႇ သၢင်ႈပၼ်ႁႃ
} 
catch (Exception ex) when (ex.Message.Contains("500")) {
    Console.WriteLine("ပၼ်ႁႃ: Server မီးပၼ်ႁႃ (Internal Server Error)။");
} 
catch (Exception ex) when (ex.Message.Contains("404")) {
    Console.WriteLine("ပၼ်ႁႃ: ႁႃၶေႃႈမုၼ်းဢမ်ႇႁၼ် (Not Found)။");
}
```

### 4. ၽွၼ်းလီ (Benefits)
* **Readability:** Code ႁဝ်းလူငၢႆႈလိူဝ်ၵဝ်ႇ ယွၼ်ႉႁဝ်းၸႅၵ်ႇ `catch` ဢွၵ်ႇပဵၼ်တွၼ်ႈ ၸွမ်းၼင်ႇငဝ်းလၢႆး။
* **Flexibility:** ႁဝ်းၸၢင်ႈၸႂ်ႉ Variable တၢင်ႇဢၼ် (ဢၼ်ယူႇၼွၵ်ႈ try-catch) မႃးပဵၼ် Filter ၵေႃႈလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Exception Filter:** ၵၢၼ်လိူၵ်ႈႁပ်ႉပၼ်ႁႃ ၸွမ်းၼင်ႇငဝ်းလၢႆး ဢၼ်မၵ်းမၼ်ႈဝႆႉ။
* **Conditional Catch:** ၵၢၼ်ႁပ်ႉပၼ်ႁႃ လူၺ်ႈမီးၶေႃႈမၼ်ႈၸႂ် (Condition)။
* **Predicate:** ငဝ်းလၢႆးဢၼ်သူင်ႇ `true` ဢမ်ႇၼၼ် `false` ဢွၵ်ႇမႃး။
* **Stack Integrity:** လွင်ႈမၼ်ႈၵႅၼ်ႇၶွင် StackTrace ဢၼ်ၸွႆးႁႂ်ႈႁႃတီႈၽိတ်းလႆႈငၢႆႈ။

---