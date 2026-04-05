# Lesson 234: "Working with JSON: System.Text.Json"

**JSON** ပေႃႇမႃးလုၵ်ႉတီႈ **JavaScript Object Notation** ၶႃႈ။ 
မၼ်းပဵၼ်လၢႆးတႅမ်ႈၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉ `{ }` တႃႇႁေႃႇ Object လႄႈ `[ ]` တႃႇႁေႃႇ List ၶႃႈ။

### 1. ႁၢင်ႈၽၢင် JSON (JSON Structure)
ဝူၼ်ႉတူၺ်းဝႃႈ Object `Student` ႁဝ်း ၼႂ်း C# မၼ်းတေပိၼ်ႇပဵၼ် JSON ၸိူင်ႉႁိုဝ်:

```json
{
  "Name": "ၸၢႆးသႅင်",
  "Age": 20,
  "IsActive": true
}
```



### 2. JsonSerializer Class
ၼႂ်း C# ႁဝ်းၸႂ်ႉ Class **`JsonSerializer`** (Static Class) တႃႇႁဵတ်းၵၢၼ် Serialization တင်းမူတ်းၶႃႈ။

* **Serialize:** ပိၼ်ႇလုၵ်ႉတီႈ Object ၵႂႃႇပဵၼ် String (JSON).
* **Deserialize:** ပိၼ်ႇလုၵ်ႉတီႈ String (JSON) ၶိုၼ်းမႃးပဵၼ် Object.

### 3. တူဝ်ယင်ႇ Code: Serialization (Object -> JSON)
```csharp
using System.Text.Json;

var student = new Student { Name = "ၸၢႆးသႅင်", Age = 20 };

// ပိၼ်ႇပဵၼ် String JSON
string jsonString = JsonSerializer.Serialize(student);

Console.WriteLine(jsonString); 
// ၽွၼ်းလႆႈ: {"Name":"ၸၢႆးသႅင်","Age":20}
```

### 4. တူဝ်ၸွႆႈ 'WriteIndented' (ႁႂ်ႈလူငၢႆႈ)
မၢင်ပွၵ်ႈ JSON ဢၼ်လႆႈမႃး မၼ်းတေ "တိတ်းၸပ်းၵၼ်" ၵႂႃႇတင်းမူတ်း။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`JsonSerializerOptions`** တႃႇႁႂ်ႈမၼ်းမီး ထႅဝ်၊ မီး Space ႁႂ်ႈလူငၢႆႈၶႃႈ။

```csharp
var options = new JsonSerializerOptions { WriteIndented = true };
string prettyJson = JsonSerializer.Serialize(student, options);
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ JSON
* **Public Properties Only:** `JsonSerializer` တေသိမ်းပၼ် Property ဢၼ်ပဵၼ် **`public`** ၵူၺ်းၶႃႈ။ သင်ပဵၼ် `private` မၼ်းတေၶၢမ်ႈပူၼ်ႉပႅတ်ႈၶႃႈ။
* **Naming:** JSON ၵႆႉၸႂ်ႉ camelCase ၵူၺ်းၵႃႈ C# ၸႂ်ႉ PascalCase။ ႁဝ်းၸၢင်ႈမႄးပိၼ်ႇမၼ်းလႆႈ ၼႂ်း Options ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Key-Value Pair:** ပိူင်သိမ်းၶေႃႈမုၼ်း JSON ဢၼ်မီး "ၸိုဝ်ႈ" (Key) လႄႈ "ၵႃႈၶၼ်" (Value)။
* **Serialization Options:** ၵၢၼ် (Settings) တႃႇမၵ်းမၼ်ႈဝႃႈ တေပိၼ်ႇ JSON ဢွၵ်ႇမႃးၸိူင်ႉႁိုဝ်။
* **WriteIndented:** ၵၢၼ်ၸတ်းထႅဝ်လိၵ်ႈ JSON ႁႂ်ႈမီး Space သေလူငၢႆႈလိူဝ်ၵဝ်ႇ။
* **UTF-8:** ပိူင်မၵ်းမၼ်ႈတူဝ်လိၵ်ႈ ဢၼ် JSON ၸႂ်ႉပဵၼ် Standard (လမ်ႇလွင်ႈၼႃႇ တႃႇလိၵ်ႈတႆးႁဝ်းၶႃႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanJsonMaker`**။
1.  သၢင်ႈ Class `DiaryEntry` ဢၼ်မီး `Title` လႄႈ `Content`။
2.  သၢင်ႈ Instance ၶွင်မၼ်း ၼိုင်ႈဢၼ်။
3.  ၸႂ်ႉ **`JsonSerializer.Serialize`** တႃႇပိၼ်ႇမၼ်းပဵၼ် JSON။
4.  ၸႂ်ႉ **`WriteIndented = true`** တႃႇၼႄၽွၼ်းလႆႈ ႁႂ်ႈတူၺ်းငၢႆႈ ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။