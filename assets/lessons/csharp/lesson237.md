# Lesson 237: "Handling Encoding: Saving Shan Script Correctly"

မိူဝ်ႈၶွမ်းသိမ်း File ၼၼ်ႉ မၼ်းဢမ်ႇလႆႈသိမ်းပဵၼ်တူဝ်လိၵ်ႈ "ၵ" "ၶ" "င" ၵမ်းလဵဝ်ၶႃႈ။ 
မၼ်းသိမ်းပဵၼ် "တူဝ်ၼပ်ႉ" (Numbers) သေ ၸႂ်ႉပိူင်မၵ်းမၼ်ႈ (Encoding) တႃႇပိၼ်ႇတူဝ်ၼပ်ႉၸိူဝ်းၼၼ်ႉ ႁႂ်ႈၶိုၼ်းပဵၼ်တူဝ်လိၵ်ႈၶႃႈ။

### 1. UTF-8 ပဵၼ်သင်?
**UTF-8 (Universal Character Set Transformation Format)** ပဵၼ်ပိူင်မၵ်းမၼ်ႈတူဝ်လိၵ်ႈ ဢၼ်ၸႂ်ႉလႆႈတင်း လိၵ်ႈၵူႈမဵဝ်း ဢၼ်မီးၼႂ်းလုမ်ႈၾႃႉၶႃႈ။ ၼႂ်းၼၼ်ႉ ၶဝ်ႈပႃးတင်းလိၵ်ႈတႆးႁဝ်း ဝႆႉယဝ်ႉၶႃႈ။
* **Unicode:** ပဵၼ် "မၢႆၵုတ်ႇ" ၶွင်တူဝ်လိၵ်ႈၵူႈတူဝ်။
* **UTF-8:** ပဵၼ် "လၢႆးသိမ်း" Unicode ၼၼ်ႉ ႁႂ်ႈၵိၼ် Memory ဢေႇသုတ်း။



### 2. ၵၢၼ်သိမ်းလိၵ်ႈတႆး ၼႂ်း System.IO
ၼႂ်း .NET 7/8/9 ၼႆႉ Class `File` ၸႂ်ႉ **UTF-8** ပဵၼ် Standard (Default) ဝႆႉယူႇယဝ်ႉၶႃႈ။ 
ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈ ႁဝ်းတေလႆႈမၵ်းမၼ်ႈမၼ်းႁင်းၵူၺ်း တွၼ်ႈတႃႇႁႂ်ႈမၼ်ႈၸႂ်ၶႃႈ။

```csharp
using System.Text;
using System.IO;

string path = "shan_note.txt";
string content = "မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ်လိၵ်ႈတႆး။";

// မၵ်းမၼ်ႈ Encoding ႁႂ်ႈပဵၼ် UTF8 တႅတ်ႈတေႃး
File.WriteAllText(path, content, Encoding.UTF8);
```

### 3. ပၼ်ႁႃ JSON လႄႈ လိၵ်ႈတႆး
မိူဝ်ႈႁဝ်းၸႂ်ႉ `JsonSerializer` ၼၼ်ႉ မၼ်းၵႆႉပိၼ်ႇတူဝ်လိၵ်ႈတႆးႁဝ်း ႁႂ်ႈပဵၼ် **Unicode Escape Sequences** (မိူၼ်ၼင်ႇ `\u101A`) ၼႂ်း JSON File ၶႃႈ။ မၼ်းဢမ်ႇလႅဝ်ၶႃႈ၊ ၵူၺ်းၵႃႈ ႁဝ်းလူဢမ်ႇပွင်ႇၸႂ်။
* တႃႇႁႂ်ႈ JSON ပေႃႇမႃးပဵၼ်လိၵ်ႈတႆးဢၼ်လူငၢႆႈၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **JavaScriptEncoder** ၶႃႈ။

```csharp
using System.Text.Json;
using System.Text.Encodings.Web;
using System.Text.Unicode;

var options = new JsonSerializerOptions {
    // ပၼ်သုၼ်ႇတူဝ်လိၵ်ႈ Unicode တင်းမူတ်း (ၶဝ်ႈပႃး Myanmar/Shan)
    Encoder = JavaScriptEncoder.Create(UnicodeRanges.All),
    WriteIndented = true
};

string json = JsonSerializer.Serialize(myStudent, options);
File.WriteAllText("data.json", json); // တေပေႃႇပဵၼ်လိၵ်ႈတႆးဢၼ်လူငၢႆႈ
```

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Encoding
* **Never use ASCII:** ASCII ဢမ်ႇမီး တူဝ်လိၵ်ႈတႆးၶႃႈ။ မၼ်းၵူၺ်းမီး တူဝ်လိၵ်ႈ ဢၢင်းၵိတ်ႈ ၵူၺ်းၶႃႈ။
* **UTF-8 with BOM:** မၢင်ပွၵ်ႈ Windows Notepad လူဝ်ႇ "BOM" (Byte Order Mark) တႃႇႁူႉဝႃႈပဵၼ် UTF-8။
* **Consistent:** သိမ်းပဵၼ် UTF-8 ၵေႃႈ တေလႆႈလူၶိုၼ်းလူၺ်ႈ UTF-8 ၸင်ႇတေဢမ်ႇလႅဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Encoding:** လၢႆးပိၼ်ႇတူဝ်လိၵ်ႈ ႁႂ်ႈပဵၼ် Byte (တူဝ်ၼပ်ႉ) တႃႇသိမ်းၼႂ်းၶွမ်း။
* **Unicode:** ပိူင်မၵ်းမၼ်ႈ ဢၼ်ပၼ် "မၢႆၵုတ်ႇ" တူဝ်လိၵ်ႈၵူႈတူဝ် ၼႂ်းလုမ်ႈၾႃႉ။
* **Escape Sequence:** လၢႆးတႅမ်ႈတူဝ်လိၵ်ႈ ၽၢၼ်ႇမၢႆၵုတ်ႇ (မိူၼ်ၼင်ႇ `\uXXXX`)။
* **BOM (Byte Order Mark):** ၶေႃႈမုၼ်းဢေႇဢေႇ တီႈတႄႇ File ဢၼ်မၵ်းမၼ်ႈ Encoding။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanEncodingTest`**။
1.  သၢင်ႈ String ဢၼ်မီးလိၵ်ႈတႆးဝႃႈ `"ၵၢၼ်ႁဵၼ်း C# ၼႆႉ လီၵျေႃႇတႄႉတႄႉ"`။
2.  ၸႂ်ႉ **`JsonSerializerOptions`** သေမၵ်းမၼ်ႈ **`UnicodeRanges.All`**။
3.  သိမ်းဝႆႉၼႂ်း File **`shan_test.json`**။
4.  ပိုတ်ႇတူၺ်း File ၼၼ်ႉၼႂ်း Notepad တူၺ်းဝႃႈ လူပွင်ႇၸႂ်ယူႇႁႃႉ?
