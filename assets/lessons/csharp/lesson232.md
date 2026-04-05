# Lesson 232: "StreamWriter and StreamReader"

မိူဝ်ႈႁဝ်းမီး File ဢၼ်မီးမၢႆထႅဝ်လိၵ်ႈပဵၼ်လၢၼ်ႉ (Millions of lines)၊ ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `ReadAllText` 
ယွၼ်ႉမၼ်းတေဢဝ် ၶေႃႈမုၼ်းတင်းမူတ်းၵႂႃႇဝႆႉၼႂ်း RAM သေ ႁဵတ်းႁႂ်ႈၶွမ်း (ဢမ်ႇၼၼ် ၾူၼ်း) ႁဝ်းၶမ်ၵႂႃႇၶႃႈ။

### 1. StreamWriter (ၵၢၼ်တႅမ်ႈလၢႆးလႆ)
**`StreamWriter`** ၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈၶေႃႈမုၼ်းၶဝ်ႈ File ၵမ်းဢိတ်းၵမ်းဢိတ်း။ 
မၼ်းတေဢမ်ႇပိုတ်ႇ/ပိၵ်ႉ File ၵမ်းၵမ်း မိူၼ် `AppendAllText` ႁဵတ်းႁႂ်ႈမၼ်းဝႆးလိူဝ်ၵဝ်ႇၶႃႈ။

```csharp
string path = "large_data.txt";

// သၢင်ႈ StreamWriter (ၸႂ်ႉ using တႃႇပိၵ်ႉ File ႁင်းၵူၺ်း)
using (StreamWriter writer = new StreamWriter(path)) {
    writer.WriteLine("ထႅဝ်မၢႆ 1");
    writer.WriteLine("ထႅဝ်မၢႆ 2");
    for (int i = 3; i <= 1000; i++) {
        writer.WriteLine($"ထႅဝ်မၢႆ {i}");
    }
} // တီႈၼႆႈ မၼ်းတေပိၵ်ႉ File ပၼ်ႁင်းၵူၺ်းၶႃႈ
```

### 2. StreamReader (ၵၢၼ်လူလၢႆးလႆ)
**`StreamReader`** ၸွႆးႁႂ်ႈႁဝ်းလူ File ၵမ်းၼိုင်ႈထႅဝ် (Line by line)။ 
ၼႆႉပဵၼ်လၢႆးဢၼ်လီသုတ်း တွၼ်ႈတႃႇလူ File ဢၼ်ယႂ်ႇၶႃႈ။

```csharp
using (StreamReader reader = new StreamReader(path)) {
    string line;
    // လူတေႃႇပေႃးသုတ်း File
    while ((line = reader.ReadLine()) != null) {
        Console.WriteLine("လူႁၼ်: " + line);
    }
}
```



### 3. လွင်ႈပႅၵ်ႇပိူင် (Helper Methods vs. Streams)

| Feature | File.ReadAllText              | StreamReader / StreamWriter           |
| :--- |:------------------------------|:--------------------------------------|
| **Memory** | ၵိၼ်ၼမ် (လူတင်းမူတ်းၵမ်းလဵဝ်) | **ၵိၼ်ဢေႇ (လူၵမ်းဢိတ်း)**             |
| **Speed** | ဝႆးတွၼ်ႈတႃႇ File လဵၵ်ႉ        | **ဝႆးလိူဝ် တွၼ်ႈတႃႇ File ယႂ်ႇ**       |
| **Usage** | တႅမ်ႈ Code ပွတ်း (Easy)       | တႅမ်ႈ Code လၢႆထႅဝ် (Efficient)        |
| **Control** | ဢမ်ႇမီး Control ၼမ်           | မီး Control လွင်ႈ Buffer လႄႈ Encoding |

### 4. တူဝ်ၸွႆး 'using' Statement
မိူဝ်ႈႁဝ်းပိုတ်ႇ Stream ၼၼ်ႉ ႁဝ်းတိုၵ်ႉ "ၵွင်ႉ" (Lock) ဝႆႉတင်း File ၼၼ်ႉယူႇ။ 
သင်ႁဝ်းဢမ်ႇပိၵ်ႉ (Close) မၼ်းၼႆ App တၢင်ႇဢၼ်တေဢမ်ႇၸၢင်ႈမႃးၸႂ်ႉ File ၼၼ်ႉလႆႈ။ 
**`using`** တေၸွႆးႁႂ်ႈ App ႁဝ်းပိၵ်ႉ File ပၼ်ႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Buffer:** တီႈသိမ်းၶေႃႈမုၼ်းၸူဝ်ႈၶၢဝ်း ၼႂ်း RAM တႃႇႁႂ်ႈၵၢၼ်သူင်ႇ Stream လႅၼ်ႈလီ။
* **Line by Line:** ၵၢၼ်လူ ဢမ်ႇၼၼ် တႅမ်ႈ ၼိုင်ႈၵမ်းၼိုင်ႈထႅဝ်။
* **Resource Management:** ၵၢၼ်ၸတ်းၵၢၼ်ၶိူင်ႈမိုဝ်း (မိူၼ်ၼင်ႇ File) ႁႂ်ႈမီးၵၢၼ်ပိုတ်ႇ လႄႈ ပိၵ်ႉ တႅတ်ႈတေႃး။
* **End of File (EOF):** တွၼ်ႈပၢႆသုတ်းၶွင် File ဢၼ်ဢမ်ႇမီးၶေႃႈမုၼ်းသင်သိုပ်ႇယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁႂ်ႈႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanLogWriter`**။
1.  ၸႂ်ႉ **`StreamWriter`** တႃႇသၢင်ႈ File `log.txt`။
2.  ၸႂ်ႉ Loop ပၼ်ႇ 10 ပွၵ်ႈ သေသႂ်ႇၶေႃႈၵႂၢမ်းဝႃႈ `"Log Entry #[i] at [DateTime.Now]"`။
3.  ၸႂ်ႉ **`StreamReader`** တႃႇလူ **"5 ထႅဝ်ဢွၼ်တၢင်း"** သေၼႄဢွၵ်ႇ Console ၶႃႈ။
