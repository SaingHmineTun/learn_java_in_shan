# Lesson 235: "Serializing Objects to JSON Files"

ၵၢၼ်သိမ်း List ၶဝ်ႈၼႂ်း File လူၺ်ႈၸႂ်ႉတိုဝ်း JSON format ၼၼ်ႉ မီးၼင်ႇၼႆၶႃႈ:
1.  သၢင်ႈ List ၶွင် Object ဢွၼ်တၢင်း။
2.  ပိၼ်ႇ List ၼၼ်ႉ ႁႂ်ႈပဵၼ် JSON String။
3.  ဢဝ် JSON String ၼၼ်ႉ ၵႂႃႇတႅမ်ႈသိမ်းဝႆႉၼႂ်း File (ၸႂ်ႉ `File.WriteAllText`)။

### 1. ၵၢၼ်သိမ်း List ၶွင် Object
မိူဝ်ႈႁဝ်းမီးလုၵ်ႈႁဵၼ်းလၢႆလၢႆၵေႃႉၼၼ်ႉ JSON တေႁေႃႇၶဝ်ဝႆႉၼႂ်း Array `[ ]` ပၼ်ႁင်းၵူၺ်းၶႃႈ။

```csharp
using System.Text.Json;
using System.IO;

var students = new List<Student> {
    new Student { Name = "ၸၢႆးသႅင်", Age = 20 },
    new Student { Name = "ၼၢင်းမိူင်း", Age = 22 }
};

// 1. ၶူင်ႊသၢင်ႈ Options တႃႇႁႂ်ႈလူငၢႆႈ
var options = new JsonSerializerOptions { WriteIndented = true };

// 2. Serialize List ၵႂႃႇပဵၼ် JSON String
string jsonString = JsonSerializer.Serialize(students, options);

// 3. သိမ်းဝႆႉၼႂ်း File
string filePath = "students.json";
File.WriteAllText(filePath, jsonString);

Console.WriteLine("သိမ်းၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းတင်းမူတ်း ဝႆႉၼႂ်း students.json ယဝ်ႉၶႃႈ!");
```



### 2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇသိမ်းပဵၼ် List?
* **Bulk Storage:** တႅၼ်းဢၼ်တေသိမ်း 1 ၵေႃႉ 1 File... ႁဝ်းသိမ်း 1,000 ၵေႃႉ ဝႆႉၼႂ်း 1 File ဢၼ်လဵဝ်ၵေႃႈလႆႈၶႃႈ။
* **Easy Management:** မိူဝ်ႈလူၶိုၼ်းၵေႃႈ ႁဝ်းတေလႆႈ List တူဝ်ၵဝ်ႇၼၼ်ႉၶိုၼ်းမႃးၵမ်းလဵဝ်။

### 3. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ JSON File
* **File Extension:** ႁဝ်းထုၵ်ႇလီၸႂ်ႉပၢႆလိၵ်ႈ **`.json`** တႃႇသေႇ တႃႇႁႂ်ႈႁူႉဝႃႈမၼ်းပဵၼ် File JSON ၶႃႈ။
* **Data Security:** သိမ်းဝႆႉၼႂ်း File JSON ၼႆႉ ၵူၼ်းတၢင်ႇၵေႃႉၸၢင်ႈပိုတ်ႇလူလႆႈငၢႆႈငၢႆႈ ၶႃႈ။ သင်ပဵၼ် Password ဢမ်ႇထုၵ်ႇလီသိမ်းလၢႆးၼႆႉၶႃႈ။
* **Encoding:** တႃႇလိၵ်ႈတႆးႁဝ်းၸိုင် `File.WriteAllText` ၼႂ်း .NET ပဵၼ် UTF-8 ဝႆႉယူႇယဝ်ႉ ႁဵတ်းႁႂ်ႈတူဝ်လိၵ်ႈတႆးႁဝ်းဢမ်ႇလႅဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Data Persistence:** ၵၢၼ်သိမ်းၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းတိုၵ်ႉမီးယူႇ မိူဝ်ႈပိုတ်ႇ App မႂ်ႇ။
* **JSON Array:** ႁၢင်ႈၽၢင် JSON ဢၼ်တႄႇလူၺ်ႈ `[` သေၸတ်းၸုမ်း Object လၢႆလၢႆတူဝ်ဝႆႉၸွမ်ၵၼ်။
* **File Path:** တီႈယူႇၶွင် File ဢၼ်ႁဝ်းတေၵႂႃႇသိမ်း။
* **Formatting:** ၵၢၼ်ၸတ်းပိူင် JSON ႁႂ်ႈတူၺ်းႁၢင်ႈလီ/လူငၢႆႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanStudentSaver`**။
1.  သၢင်ႈ `List<Student>` သေထႅမ်လုၵ်ႈႁဵၼ်းဝႆႉ 3 ၵေႃႉ။
2.  ၸႂ်ႉ **`JsonSerializer`** တႃႇပိၼ်ႇမၼ်းပဵၼ် String။
3.  ၸႂ်ႉ **`File.WriteAllText`** တႃႇသိမ်းဝႆႉၼႂ်း **`shan_students.json`**။
4.  ၸၢမ်းပိုတ်ႇတူၺ်း File ၼၼ်ႉၼႂ်း Notepad တူၺ်းဝႃႈ လိၵ်ႈတႆးႁဝ်းဢွၵ်ႇလီယူႇႁႃႉ?
