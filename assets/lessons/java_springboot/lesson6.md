# Lesson 6: "Professional Testing with Postman" (ၵၢၼ်ၸၢမ်း API လူၺ်ႈ Postman)

မိူဝ်ႈႁဝ်းတႅမ်ႈ API ယဝ်ႉၼၼ်ႉ ႁဝ်းဢမ်ႇထုၵ်ႇလီၸႂ်ႉ Browser (Chrome/Edge) တွၼ်ႈတႃႇၸၢမ်းတူၺ်းၶႃႈ။
ၵွပ်ႈဝႃႈ Browser မၼ်းၼႄလႆႈ Method `GET` ၵူၺ်းၶႃႈ။ တွၼ်ႈတႃႇတႅမ်ႈ App **TaiGlish** ႁႂ်ႈမီးပိူင်မီးသၢင်ႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Postman** ၶႃႈ။

### 1. Postman ၼႆႉ ပဵၼ်သင်?
Postman ၼႆႉပဵၼ် ၶိူင်ႈမိုဝ်း (Tool) ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇ HTTP Request ၵႂႃႇၸူး Server ၶႃႈ။
* မၼ်းၸွႆးႁႂ်ႈႁဝ်းသူင်ႇလႆႈတင်း `GET`, `POST`, `PUT`, `DELETE`။
* မၼ်းၼႄပၼ်ၶေႃႈမုၼ်း (Response) ဢၼ်ပဵၼ်ပိူင် **JSON** ႁႂ်ႈႁဝ်းလူလႆႈငၢႆႈငၢႆႈၶႃႈ။

### 2. ၵၢၼ်သၢင်ႈ Collection တွၼ်ႈတႃႇ TaiGlish
တွၼ်ႈတႃႇၸတ်းၵၢၼ် Endpoint ႁဝ်း ႁႂ်ႈၵွင်ႉၵၢႆႇၵၼ်ၼၼ်ႉ...
* သၢင်ႈ **New Collection** သေတင်ႈၸိုဝ်ႈဝႃႈ `TaiGlish API`။
* သၢင်ႈ Request မႂ်ႇၼိုင်ႈဢၼ် ပၼ်ၸိုဝ်ႈဝႃႈ `Get Welcome Message`။
* သႂ်ႇ URL: `http://localhost:8081/api/welcome` သေၼဵၵ်း **Send**။



---

### 3. JSON ၼႆႉ ပဵၼ်သင်? (The Language of APIs)
JSON (JavaScript Object Notation) ပဵၼ်ပိူင် "လိၵ်ႈ" ဢၼ် API ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်းၶႃႈ။ မၼ်းတေမီးပိူင်ၸိူင်ႉၼႆ:

```json
{
  "id": 1,
  "word": "မႂ်ႇသုင်",
  "meaning": "Hello"
}
```
ၼႂ်းတွၼ်ႈလိုၼ်းသုတ်း ၶွင် App **TaiGlish** ႁဝ်းၼၼ်ႉ ႁဝ်းတေသူင်ႇၶေႃႈမုၼ်းဢၼ်ပဵၼ် JSON ၸိူင်ႉၼႆ ၵႂႃႇၸူး Android ဢမ်ႇၼၼ် Flutter ၶႃႈ။

### 4. ၵၢၼ်တူၺ်း HTTP Status Codes
မိူဝ်ႈႁဝ်း Send Request ယဝ်ႉၼၼ်ႉ ႁႂ်ႈတူၺ်းတီႈၸဵင်ႇၶႂႃၽၢႆႇၼိူဝ် ၼႂ်း Postman ၶႃႈ:
* **200 OK:** မၢႆထိုင်ဝႃႈ TaiGlish App ႁဝ်းႁဵတ်းၵၢၼ်တူဝ်ႈတႅတ်ႈ။
* **404 Not Found:** မၢႆထိုင်ဝႃႈ URL ဢၼ်ႁဝ်းတႅမ်ႈၼၼ်ႉ ဢမ်ႇမီးဝႆႉတႄႉ။
* **500 Internal Server Error:** မၢႆထိုင်ဝႃႈ Code ႁဝ်းမီးတီႈၽိတ်း (Bug)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Postman:** ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇၸၢမ်းတူၺ်း (Test) API ႁႂ်ႈမီးပိူင်မီးသၢင်ႈ။
* **Collection:** ၾူဝ်ႇတႃႇ (Folder) ၼႂ်း Postman ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၵဵပ်းဝႆႉ သဵၼ်ႈမၢႆ Request ၸိူဝ်းဢၼ်ၵွင်ႉၵၢႆႇၵၼ်။
* **JSON:** ပိူင်ၶေႃႈမုၼ်းဢၼ် API ၸႂ်ႉတွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈၵၼ် (Data Interchange Format)။
* **Status Code:** မၢႆတူဝ်ၼပ်ႉ ဢၼ် Server တွပ်ႇမႃး တွၼ်ႈတႃႇမၢႆထိုင်ဝႃႈ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၼၼ်ႉ တူဝ်ႈတႅတ်ႈ ဢမ်ႇၼၼ် ၽိတ်းပိူင်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၵွပ်ႈသင် Backend Developer ၶဝ် ဢမ်ႇထုၵ်ႇလီၸႂ်ႉ Browser တွၼ်ႈတႃႇၸၢမ်း API ၵူၺ်း?
2. ၼႂ်း Postman ၼၼ်ႉ သင်ႁဝ်းႁၼ် Status Code ပဵၼ် **200 OK** ၼႆ မၼ်းမၢႆထိုင်သင်ၶႃႈ?

---