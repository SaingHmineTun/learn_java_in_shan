# Lesson 239: "Exercise: Building a Shan Personal Diary"

ၼႂ်း Project ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ App ဢၼ်ၸၢင်ႈသိမ်း "တွၼ်ႈလိၵ်ႈ Diary" ႁဝ်းဝႆႉၼႂ်း File JSON ၶႃႈ။

### 1. ဝၢင်းၽႅၼ် (The Plan)
1.  **Model:** သၢင်ႈ Class `DiaryEntry` တႃႇသိမ်း Date လႄႈ Content။
2.  **Save Logic:** ဢဝ် List ၶွင် Diary ၵႂႃႇပိၼ်ႇပဵၼ် JSON သေသိမ်းဝႆႉ။
3.  **Load Logic:** လူ JSON လုၵ်ႉတီႈ File သေပိၼ်ႇၶိုၼ်းပဵၼ် List တႃႇၼႄၽွၼ်းလႆႈ။

### 2. တႅမ်ႈ Code (The Implementation)

```csharp
using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using System.Text.Encodings.Web;
using System.Text.Unicode;

public class DiaryEntry {
    public DateTime Date { get; set; }
    public string Content { get; set; }
}

class Program {
    static string filePath = "my_diary.json";

    static void Main() {
        // 1. ၵေႃႇသၢင်ႈၶေႃႈမုၼ်း (Initial Data)
        var diaryList = LoadDiary();

        Console.WriteLine("--- Shan Personal Diary ---");
        Console.Write("တႅမ်ႈ Diary ဝၼ်းမိူဝ်ႈၼႆႉ: ");
        string input = Console.ReadLine();

        // 2. ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ
        diaryList.Add(new DiaryEntry { 
            Date = DateTime.Now, 
            Content = input 
        });

        // 3. သိမ်းဝႆႉၼႂ်း File
        SaveDiary(diaryList);

        // 4. ၼႄၶေႃႈမုၼ်းတင်းမူတ်း ဢၼ်လူမႃးၶိုၼ်း
        Console.WriteLine("\n--- Diary တင်းမူတ်း ဢၼ်သိမ်းဝႆႉ ---");
        foreach (var entry in diaryList) {
            Console.WriteLine($"[{entry.Date:yyyy-MM-dd}] : {entry.Content}");
        }
    }

    static void SaveDiary(List<DiaryEntry> entries) {
        var options = new JsonSerializerOptions {
            Encoder = JavaScriptEncoder.Create(UnicodeRanges.All),
            WriteIndented = true
        };
        string json = JsonSerializer.Serialize(entries, options);
        File.WriteAllText(filePath, json);
    }

    static List<DiaryEntry> LoadDiary() {
        if (!File.Exists(filePath)) return new List<DiaryEntry>();

        string json = File.ReadAllText(filePath);
        return JsonSerializer.Deserialize<List<DiaryEntry>>(json) ?? new List<DiaryEntry>();
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈၸႂ်ႉ
* **System.IO:** ၸႂ်ႉ `File.Exists` လႄႈ `File.WriteAllText` တႃႇၸတ်းၵၢၼ် File။
* **JSON Serialization:** ၸႂ်ႉ `JsonSerializer` တႃႇပိၼ်ႇ Object ၵႂႃႇမႃး။
* **UTF-8 & Encoding:** ၸႂ်ႉ `UnicodeRanges.All` တႃႇႁႂ်ႈလိၵ်ႈတႆးပေႃႇမႃးလီလီ။
* **Persistence:** ၶေႃႈမုၼ်းတေတိုၵ်ႉမီးယူႇ ဢမ်ႇႁၢႆၵႂႃႇ မိူဝ်ႈႁဝ်းပိၵ်ႉ App ယဝ်ႉပိုတ်ႇမႂ်ႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Data Persistence:** ၵၢၼ်သိမ်းၶေႃႈမုၼ်း ႁႂ်ႈယူႇမၼ်ႈၵႂႃႇတႃႇသေႇ။
* **Load/Save Pattern:** ပိူင်သၢင်ႈပိုၼ်ႉထၢၼ် ၶွင် App ဢၼ်မီးၵၢၼ်သိမ်း လႄႈ လူၶေႃႈမုၼ်း။
* **JSON Storage:** ၵၢၼ်ၸႂ်ႉ File JSON တႅၼ်း Database တႃႇ App ဢေႇဢေႇ။

---