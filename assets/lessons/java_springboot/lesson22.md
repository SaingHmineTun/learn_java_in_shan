# Lesson 22: "POST Mapping (Creating Data)" (ၵၢၼ်သၢင်ႈၶေႃႈမုၼ်းလိၵ်ႈတႆးမႂ်ႇ)

ၼႂ်း REST API ၼၼ်ႉ **POST** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉတွၼ်ႈတႃႇ "သူင်ႇ" (Submit) ၶေႃႈမုၼ်းမႂ်ႇၵႂႃႇၸူး Server ၶႃႈ။ 
မိူၼ်ၼင်ႇ ႁဝ်းတႅမ်ႈ Status မႂ်ႇၼႂ်း Facebook ဢမ်ႇၼၼ် သႂ်ႇၶေႃႈၵႂၢမ်းမႂ်ႇၼႂ်း Dictionary ႁဝ်းၼၼ်ႉၶႃႈ။

### 1. ၵၢၼ်ႁပ်ႉ JSON Body
မိူဝ်ႈ User သူင်ႇလိၵ်ႈတႆးမႃးၼၼ်ႉ ၶဝ်တေသူင်ႇမႃးပဵၼ် **JSON** ၼႂ်း "တူဝ်" (Body) ၶွင် Request ၶႃႈ။ 
ႁဝ်းလူဝ်ႇလႆႈသင်ႇပၼ် Spring Boot ႁႂ်ႈမၼ်းပိၼ်ႇ JSON ၼၼ်ႉပဵၼ် Java Object ႁင်းၵူၺ်းၶႃႈ။



---

### 2. ၵၢၼ်တႅမ်ႈ Code ၼႂ်း `WordController`
ႁႂ်ႈၸဝ်ႈၶူးထႅမ် Method ၼႆႉၶဝ်ႈၵႂႃႇၼႂ်း `WordController` ၶႃႈ:

```java
@PostMapping
public WordDTO createWord(@RequestBody Word word) {
    // ႁွင်ႉၸႂ်ႉ Service တွၼ်ႈတႃႇသိမ်းၶဝ်ႈ Database
    Word savedWord = wordService.save(word);
    
    // ပိၼ်ႇ Entity ဢၼ်သိမ်းယဝ်ႉၼၼ်ႉ ႁႂ်ႈပဵၼ် DTO သေတွပ်ႇပၼ်ၶိုၼ်း
    return wordService.convertToDto(savedWord);
}
```

---

### 3. Annotation ဢၼ်လမ်ႇလွင်ႈ
* **`@PostMapping`**: မၵ်းမၼ်ႈဝႃႈ Method ၼႆႉ တေႁပ်ႉ Request ပဵၼ် POST (တွၼ်ႈတႃႇသၢင်ႈၶေႃႈမုၼ်းမႂ်ႇ) ၵူၺ်းၶႃႈ။
* **`@RequestBody`**: ၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ! မၼ်းမီးၼႃႈတီႈ "ၵႄႈဢဝ်" ၶေႃႈမုၼ်း JSON တီႈ Body သေ မႃးသႂ်ႇပၼ်ၼႂ်း Parameter `Word word` ႁဝ်းႁင်းၵူၺ်းၶႃႈ။



---

### 4. လၢႆးႁဵတ်းၵၢၼ်ၶွင် POST Request
မိူဝ်ႈ User သူင်ႇ Request မႃးၸူး `http://localhost:8081/api/words`:
1.  **Request Body (JSON):**
    ```json
    {
      "shanWord": "ၼွၼ်း",
      "englishWord": "Sleep",
      "partOfSpeech": "v"
    }
    ```
2.  **Spring Boot** တေႁၼ် `@RequestBody` သေ သၢင်ႈ Object `Word` မႃးပၼ်ၶႃႈ။
3.  **Controller** သူင်ႇ Word ၼၼ်ႉၸူး **Service** => **Repository** => **MySQL**။
4.  သင်သိမ်းယဝ်ႉတူဝ်ႈ Server တေတွပ်ႇပၼ်ၶိုၼ်း (Response) ၸွမ်းၼင်ႇၶေႃႈမုၼ်းဢၼ်သိမ်းလႆႈၼၼ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Request Body:** တွၼ်ႈဢၼ်သိမ်းၶေႃႈမုၼ်း (Data) ဢၼ်သူင်ႇမႃးၸွမ်း Request။
* **Deserialization:** ၵၢၼ်ပိၼ်ႇလိၵ်ႈ JSON ႁႂ်ႈပဵၼ် Java Object (Spring ၸတ်းၵၢၼ်ပၼ်)။
* **HTTP Status 201 (Created):** ၶေႃႈတွပ်ႇပိူင်ထမ်ႇမတႃႇ ဢၼ်မၢႆထိုင်ဝႃႈ သၢင်ႈၶေႃႈမုၼ်းယဝ်ႉတူဝ်ႈလီ (တေသိုပ်ႇလၢတ်ႈလွင်ႈၼႆႉတီႈ Lesson 25)။
* **Payload:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင်ၶေႃႈမုၼ်းဢၼ်သူင်ႇမႃးၼႂ်း Body။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  Annotation **`@RequestBody`** ၼၼ်ႉ ပႅၵ်ႇပိူင်ႈတင်း **`@PathVariable`** ၸိူင်ႉႁိုဝ်?
2.  ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **POST** တႅၼ်းတၢင်ၵၢၼ်ၸႂ်ႉ **GET** မိူဝ်ႈႁဝ်းၶႂ်ႈသၢင်ႈၶေႃႈမုၼ်းလိၵ်ႈတႆးမႂ်ႇ?