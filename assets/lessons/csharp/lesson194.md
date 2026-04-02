# Lesson 194: "The 'finally' Block: Cleaning Up Resources"

မိူဝ်ႈႁဝ်းၸႂ်ႉ `try-catch` ၼၼ်ႉ မၢင်ပွၵ်ႈ Code ႁဝ်းၸၢင်ႈ "ၵျွၵ်း" (Jump) ၶၢမ်ႇထႅဝ်လိၵ်ႈၵႂႃႇ မိူဝ်ႈမီးပၼ်ႁႃ။ 
သင်ႁဝ်းတိုၵ်ႉ "ပိုတ်ႇ" File ဝႆႉ ဢမ်ႇၼၼ် တိုၵ်ႉ "ၵွင်ႉ" တင်း Database ဝႆႉသေ App ၵျွၵ်းၵႂႃႇၼႆ... 
File ၼၼ်ႉတေ "ပိုတ်ႇ" ဝႆႉတႃႇသေႇသေ ႁဵတ်းႁႂ်ႈ Program တၢင်ႇဢၼ် ၸႂ်ႉဢမ်ႇလႆႈလီၶႃႈ။

**`finally`** ပဵၼ် Block ဢၼ်တေ **"လႅၼ်ႈတႃႇသေႇ"** ဢမ်ႇဝႃႈၼႂ်း `try` တေမီးပၼ်ႁႃ ဢမ်ႇၼၼ် ဢမ်ႇမီးၵေႃႈယဝ်ႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ (Syntax)

```csharp
try {
    // ၸၢမ်းပိုတ်ႇ File ဢမ်ႇၼၼ် Database
} 
catch (Exception ex) {
    // ႁပ်ႉပၼ်ႁႃ
} 
finally {
    // Code တီႈၼႆႉ တေလႅၼ်ႈ "တႃႇသေႇ" (Always Runs)
    // ၸႂ်ႉတႃႇ "ပိၵ်ႉ" (Close) Resource ၸိူဝ်းပိုတ်ႇဝႆႉ
}
```



### 2. တူဝ်ယင်ႇ Code: ၵၢၼ်ပိုတ်ႇ File

```csharp
FileStream file = null;
try {
    file = File.Open("shan_dict.txt", FileMode.Open);
    // ၸၢမ်းလူၶေႃႈမုၼ်း... (သင်လူၽိတ်း မၼ်းတေၵျွၵ်းၵႂႃႇတီႈ catch)
} 
catch (Exception ex) {
    Console.WriteLine($"မီးပၼ်ႁႃ: {ex.Message}");
} 
finally {
    // ဢမ်ႇဝႃႈတေလူလႆႈ ဢမ်ႇၼၼ် လူဢမ်ႇလႆႈလႄႈ မီးလွင်ႈၽိတ်း... ႁဝ်းတေလႆႈပိၵ်ႉ File တႃႇသေႇ
    if (file != null) {
        file.Close();
        Console.WriteLine("ပိတ်း File ယဝ်ႉတူဝ်ႈလီငၢႆႈယဝ်ႉၶႃႈ။");
    }
}
```

### 3. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ `finally`?
1.  **Guaranteed Execution:** ႁဝ်းမၼ်ႈၸႂ်လႆႈဝႃႈ Code ဢၼ်လမ်ႇလွင်ႈ (မိူၼ်ၼင်ႇၵၢၼ်ပိၵ်ႉ Connection) တေႁဵတ်းၵၢၼ် တႃႇသေ။
2.  **Resource Management:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ် Memory ဢမ်ႇၼၼ် Connection လႅၼ်ႈမူတ်း (Memory Leak)။
3.  **Clean Code:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမီးပိူင်မီႈ လႄႈ လူငၢႆႈ။

### 4. ၶေႃႈမၢႆတွင်းလမ်ႇလွင်ႈ
* သင်ၼႂ်း `try` မီး Keyword **`return`** ၵေႃႈယဝ်ႉ... `finally` တေတိုၵ်ႉလႅၼ်ႈဢွၼ်တၢင်း ၸင်ႇတေ `return` ဢွၵ်ႇၵႂႃႇၶႃႈ။
* ႁဝ်းၸၢင်ႈၸႂ်ႉ `try-finally` လူၺ်ႈဢမ်ႇမီး `catch` ၵေႃႈလႆႈ (သင်ႁဝ်းဢမ်ႇၶႂ်ႈႁပ်ႉပၼ်ႁႃ ၵူၺ်းၵႃႈ ၶႂ်ႈပိၵ်ႉ Resource)။

---

### ၶေႃႈၵႂမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Resource Leak:** ၵၢၼ်ဢၼ် App ၵိၼ် Memory ဢမ်ႇၼၼ် File ၵႂႃႇတိၵ်းတိၵ်း ယွၼ်ႉဢမ်ႇပိၵ်ႉမၼ်းၶိုၼ်း။
* **File Stream:** သၢႆၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉတႃႇၵွင်ႉတင်း File။
* **Database Connection:** သဵၼ်ႈတၢင်းၵၢၼ်ၵွင်ႉၸူး တီႈသိမ်းၶေႃႈမုၼ်း (Database)။

---