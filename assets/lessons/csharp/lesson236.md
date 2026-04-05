# Lesson 236: "Deserializing JSON back to C\# Objects"

ၵၢၼ် **Deserialization** ပဵၼ်ၵၢၼ် "ႁဵတ်းၶိုၼ်းလင်" ၶွင် Serialization ၶႃႈ။ 
မၼ်းတေလူဢဝ် String JSON သေ ပိၼ်ႇမၼ်းပဵၼ် Object ၼႂ်း RAM ၶိုၼ်းၶႃႈ။

### 1. ၵၢၼ်လူၶေႃႈမုၼ်း

1.  ၵူတ်ႇထတ်းဝႃႈ မီး File ၼၼ်ႉယူႇတႄႉႁႃႉ (`File.Exists`)။
2.  လူလိၵ်ႈတင်းမူတ်းၼႂ်း File မႃးဝႆႉၼႂ်း Variable `string` (`File.ReadAllText`)။
3.  ၸႂ်ႉ **`JsonSerializer.Deserialize<T>`** တႃႇပိၼ်ႇ String ၼၼ်ႉ ႁႂ်ႈပဵၼ် Type ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ။

### 2. တူဝ်ယင်ႇ Code: Loading Student List

```csharp
using System.Text.Json;
using System.IO;

string filePath = "students.json";

if (File.Exists(filePath)) {
    // 1. လူ JSON String လုၵ်ႉတီႈ File
    string jsonString = File.ReadAllText(filePath);

    // 2. ပိၼ်ႇ JSON ၶိုၼ်းပဵၼ် List<Student>
    // <List<Student>> ပွင်ႇဝႃႈ ႁဝ်းၶႂ်ႈလႆႈၽွၼ်းလႆႈပဵၼ် Type ၼႆႉၶႃႈ
    List<Student> loadedStudents = JsonSerializer.Deserialize<List<Student>>(jsonString);

    // 3. ၸႂ်ႉၵၢၼ်လႆႈၵမ်းလဵဝ်
    foreach (var s in loadedStudents) {
        Console.WriteLine($"လုၵ်ႈႁဵၼ်း: {s.Name}, ဢႃႇယု: {s.Age}");
    }
} else {
    Console.WriteLine("ဢမ်ႇႁႃႁၼ် File ၶေႃႈမုၼ်းၶႃႈ!");
}
```

### 3. တူဝ်ၸွႆႈ 'PropertyNameCaseInsensitive'

မၢင်ပွၵ်ႈ JSON ႁဝ်းတႅမ်ႈဝႆႉပဵၼ် `name` (တူဝ်လဵၵ်ႉ) ၵူၺ်းၵႃႈ Property ၼႂ်း C# ပဵၼ် `Name` (တူဝ်ယႂ်ႇ)။ 
ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Options ႁႂ်ႈမၼ်း "ဢမ်ႇတူၺ်း တူဝ်လဵၵ်ႉ/တူဝ်ယႂ်ႇ" (Case Insensitive) လႆႈၶႃႈ။

```csharp
var options = new JsonSerializerOptions { 
    PropertyNameCaseInsensitive = true 
};

var student = JsonSerializer.Deserialize<Student>(jsonString, options);
```

### 4. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Deserialization

* **Generic Type `<T>`:** ႁဝ်းတေလႆႈမၵ်းမၼ်ႈပၼ် **`<...>`** တႅတ်ႈတေႃးဝႃႈ ႁဝ်းၶႂ်ႈပိၼ်ႇ JSON ၼၼ်ႉ ႁႂ်ႈပဵၼ် Class လႂ်ၶႃႈ။
* **Empty Constructor:** Class ဢၼ်ႁဝ်းတေ Deserialize ၼၼ်ႉ တေလႆႈမီး **Parameterless Constructor** (Constructor ဢၼ်ဢမ်ႇႁပ်ႉသင်) ၸင်ႇတေႁဵတ်းၵၢၼ်လႆႈၶႃႈ။
* **Property Match:** ၸိုဝ်ႈ Property ၼႂ်း JSON လႄႈ ၼႂ်း C# တေလႆႈမိူၼ်ၵၼ် (သင်ဢမ်ႇၼၼ် ၸႂ်ႉ Options ၸွႆႈလႆႈ)။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Deserialization:** ၵၢၼ်ပိၼ်ႇ Data ၶိုၼ်းႁႂ်ႈပဵၼ် Object ၼႂ်း RAM.
* **Generic Method:** Method ဢၼ်ႁပ်ႉ Type `<T>` တႃႇလႅၵ်ႈၽွၼ်းလႆႈ ႁႂ်ႈပဵၼ်ၼင်ႇႁဝ်းၶႂ်ႈလႆႈ
* **Case Insensitive:** ၵၢၼ်ဢမ်ႇထတ်းတူၺ်း လွင်ႈပႅၵ်ႇပိူင် ၼႂ်းၵႄႈတူဝ်လိၵ်ႈယႂ်ႇ လႄႈ တူဝ်လိၵ်ႈလဵၵ်ႉ။
* **Type Safety:** ၵၢၼ်မၵ်းမၼ်ႈ Type ၶေႃႈမုၼ်း ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင် ဢွၼ်တၢင်းတေၸႂ်ႉၵၢၼ်။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanStudentLoader`**။

1.  လူၶေႃႈမုၼ်းလုၵ်ႉတီႈ File **`shan_students.json`** ဢၼ်ႁဝ်းသိမ်းဝႆႉၼႂ်း Lesson 235 ၼၼ်ႉ။
2.  Deserialize မၼ်းၶိုၼ်းပဵၼ် **`List<Student>`**။
3.  ၸႂ်ႉ **LINQ** (တွၼ်ႈဢွၼ်တၢင်း) တႃႇႁႃလုၵ်ႈႁဵၼ်းဢၼ် "ဢႃႇယု ယႂ်ႇလိူဝ် 21" သေၼႄဢွၵ်ႇ Console ၶႃႈ။
