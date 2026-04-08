# Lesson 289: "Returning Data as JSON"

### 1. JSON ပဵၼ်သင်?
**JSON** ပဵၼ်ပိူင်လိၵ်ႈဢၼ်လဵၵ်ႉသေ လူငၢႆႈ တွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်းၶႃႈ။ မၼ်းၸႂ်ႉ "Key" လႄႈ "Value" တွၼ်ႈတႃႇမၵ်းမၼ်ႈၶေႃႈမုၼ်းၶႃႈဢေႃႈ။

**တူဝ်ယင်ႇ JSON:**
```json
{
  "id": 101,
  "fullName": "ၸၢႆးသႅင်မိူင်း",
  "age": 20,
  "isStudent": true
}
```

### 2. Serialization: ပိၼ်ႇ C# ပဵၼ် JSON
မိူဝ်ႈႁဝ်းသူင်ႇ Object လုၵ်ႉတီႈ API Controller ၵႂႃႇၼၼ်ႉ ASP.NET Core တေႁဵတ်းၵၢၼ် **Serialization** (ၵၢၼ်ပိၼ်ႇ Class ႁႂ်ႈပဵၼ် လိၵ်ႈ JSON) ပၼ်ႁင်းၵူၺ်းမၼ်းၶႃႈ။



**ၼႂ်း C# Code:**
```csharp
[HttpGet("{id}")]
public IActionResult GetStudent(int id)
{
    var student = new Student { Id = id, FullName = "ၸၢႆးသႅင်မိူင်း", Age = 20 };
    
    // ASP.NET Core တေပိၼ်ႇ 'student' ပဵၼ် JSON သေသူင်ႇဢွၵ်ႇၵႂႃႇႁင်းၵူၺ်း
    return Ok(student); 
}
```

### 3. ႁဵတ်းသင် API ၸင်ႇၸႂ်ႉ JSON?
1.  **Lightweight:** မၼ်းမီးတူဝ်လိၵ်ႈဢေႇသေ XML တင်းၼမ်၊ ႁဵတ်းႁႂ်ႈသူင်ႇၶေႃႈမုၼ်းလႆႈဝႆး။
2.  **Language Independent:** ဢမ်ႇဝႃႈႁဝ်းတေတႅမ်ႈ App လူၺ်ႈ **Dart (Flutter)**, **Java (Android)**, ဢမ်ႇၼၼ် **Swift (iOS)** ၵေႃးယဝ်ႉ ၶဝ်တင်းမူတ်း ပွင်ႇၸႂ် JSON ၶႃႈ။
3.  **Human Readable:** ၵူၼ်းတႅမ်ႈ App ၵေႃႈလူတူၺ်းသေ ပွင်ႇၸႂ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 4. ၵူတ်ႇထတ်း JSON လူၺ်ႈ Browser
မိူဝ်ႈႁဝ်းလႅၼ်ႈ (Run) API Project ၼၼ်ႉ ႁဝ်းၸၢင်ႈတႅမ်ႈ URL ၼႂ်း Browser (မိူၼ်ၼင်ႇ `https://localhost:xxxx/api/student/101`) သေ ႁဝ်းတေႁၼ်လိၵ်ႈ JSON ၼႄမႃးၼိူဝ်ၼႃႈလိၵ်ႈၵမ်းလဵဝ်ၶႃႈ။ (တွၼ်ႈတႃႇၵၢၼ်ၸၢမ်း API ဢၼ် "ၸတ်းၵၢၼ်" လီလိူဝ်ၼၼ်ႉ ႁဝ်းၵႆႉၸႂ်ႉ **Swagger** ဢၼ်ပႃးမႃးၸွမ်း .NET ၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Serialization:** ၵၢၼ်ပိၼ်ႇ Object (Memory) ႁႂ်ႈပဵၼ် String (JSON) တွၼ်ႈတႃႇသူင်ႇၵႂႃႇ။
* **Deserialization:** ၵၢၼ်ပိၼ်ႇ String (JSON) ဢၼ်ႁပ်ႉမႃး ႁႂ်ႈပဵၼ် Object (C#) ၶိုၼ်း။
* **Key-Value Pair:** ပိူင်သၢင်ႈၶေႃႈမုၼ်း JSON (မိူၼ်ၼင်ႇ `"Name"` ပဵၼ် Key, `"Sai Mao"` ပဵၼ် Value)။
* **Camel Case:** လၢႆးတႅမ်ႈၸိုဝ်ႈ Key ၼႂ်း JSON ဢၼ်တႄႇလူၺ်ႈတူဝ်လဵၵ်ႉ (မိူၼ်ၼင်ႇ `studentName`)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်း API ၼၼ်ႉ **Serialization** ပွင်ႇဝႃႈသင်?
2. JSON ပႅၵ်ႇပိူင်တင်း HTML ၸိူင်ႉႁိုဝ်? (တူဝ်လႂ်တွပ်ႇပၼ် "ၼႃႈတႃ UI" သေ တူဝ်လႂ်တွပ်ႇပၼ် "ၶေႃႈမုၼ်း (Data)"?)
