# Lesson 25: "Testing with Postman or Thunder Client" (ၵၢၼ်ၸၢမ်း API)

မိူဝ်ႈႁဝ်းတႅမ်ႈ REST API ၼၼ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ Browser (မိူၼ်ၼင်ႇ Chrome) တွၼ်ႈတႃႇၸၢမ်း POST, PUT, လႄႈ DELETE ၶႃႈ။ 
ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉၶိူင်ႈမိုဝ်းပိူင်လူင် ၸိူင်ႉၼင်ႇ **Postman** ဢမ်ႇၼၼ် **Thunder Client** (ၼႂ်း VS Code) ၶႃႈ။

### 1. ၵၢၼ်ပိုတ်ႇ App လႄႈ ၵူတ်ႇထတ်း URL
ဢွၼ်တၢင်းသုတ်း ႁဝ်းၵႂႃႇ **Run Spring Boot App** ႁဝ်းဝႆႉၶႃႈ။
* **Base URL:** `http://localhost:8081/api/words`

### 2. ၵၢၼ်ၸမ်း GET (Reading Data)
* **Action:** လိူၵ်ႈ Method ပဵၼ် **GET**။
* **URL:** `http://localhost:8081/api/words`
* **Result:** ၸဝ်ႈၶူးတေလႆႈႁၼ် List ၶွင်လိၵ်ႈတႆးတင်းမူတ်း ပဵၼ် JSON Format ၶႃႈ။



---

### 3. ၵၢၼ်ၸမ်း POST (Creating Data)
* **Action:** လိူၵ်ႈ Method ပဵၼ် **POST**။
* **URL:** `http://localhost:8081/api/words`
* **Body:** လိူၵ်ႈ **raw** => **JSON** သေသႂ်ႇ Code ၼႆႉၶႃႈ:
  ```json
  {
    "shanWord": "မႃ",
    "englishWord": "Dog",
    "partOfSpeech": "n"
  }
  ```
* **Check:** ၵႂႃႇတူၺ်းၼႂ်း MySQL ၶိုၼ်းဝႃႈ "မႃ" ၶဝ်ႈၵႂႃႇယဝ်ႉႁႃႉ?

### 4. ၵၢၼ်ၸၢမ်း PUT & DELETE
* **PUT:** လိူၵ်ႈ Method **PUT**, သႂ်ႇ ID ၼႂ်း URL (မိူၼ်ၼင်ႇ `/api/words/1`) သေသူင်ႇ JSON မႂ်ႇၵႂႃႇတွၼ်ႈတႃႇမႄးၶႃႈ။
* **DELETE:** လိူၵ်ႈ Method **DELETE**, သႂ်ႇ ID ၼႂ်း URL သေ `Send` ၵႂႃႇၶႃႈ။

---

### 5. ပွင်ႇၸႂ်လွင်ႈ HTTP Status Codes
မိူဝ်ႈႁဝ်းၸၢမ်း API ၼၼ်ႉ Postman တေၼႄ Status Code ႁႂ်ႈႁဝ်းႁူႉၽွၼ်းလႅၼ်ႈမၼ်းၶႃႈ:
* **200 OK:** ၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈလီ (GET, PUT)။
* **201 Created:** သၢင်ႈၶေႃႈမုၼ်းမႂ်ႇယဝ်ႉတူဝ်ႈ (POST)။
* **204 No Content:** လူတ်းၶေႃႈမုၼ်းယဝ်ႉတူဝ်ႈ (DELETE)။
* **404 Not Found:** ဢမ်ႇႁၼ် ID ဢၼ်ႁႃၼၼ်ႉ။
* **500 Internal Server Error:** Code Java ႁဝ်းမီး Error (မိူၼ်ၼင်ႇ NullPointerException)။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Postman:** ၶိူင်ႈမိုဝ်း (Tool) ဢၼ်ၵတ်ႉၶႅၼ်ႇသုတ်း တွၼ်ႈတႃႇၸၢမ်း REST API။
* **Thunder Client:** Plugin ၼႂ်း VS Code ဢၼ်မိူၼ် Postman ၵူၺ်းၵႃႈၸႂ်ႉငၢႆႈလိူဝ်။
* **Request Header:** တွၼ်ႈဢၼ်မၵ်းမၼ်ႈဝႃႈ `Content-Type: application/json` (တွၼ်ႈတႃႇလၢတ်ႈပၼ် Server ဝႃႈႁဝ်းသူင်ႇ JSON မႃးၼႆၶႃႈ)။
* **Status Code:** တူဝ်ၼပ်ႉဢၼ်ပၼ်သိတ်ႇၼႄႇဝႃႈ API ႁဝ်း "ႁဵတ်းၵၢၼ်" ႁႃႉ "တၢႆ" ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်း POST Request ၵႂႃႇသေ လႆႈၶိုၼ်း Status **500** ၼႆ ႁဝ်းတေလႆႈၵႂႃႇၵူတ်ႇထတ်းတူၺ်းတီႈလႂ် (Postman ႁႃႉ ဢမ်ႇၼၼ် IntelliJ Console)?
2.  ၼႂ်း Postman, တွၼ်ႈလႂ်ဢၼ်ႁဝ်းလူဝ်ႇလႆႈလိူၵ်ႈ တွၼ်ႈတႃႇသႂ်ႇ JSON Body ၵႂႃႇၸွမ်း Request?

---