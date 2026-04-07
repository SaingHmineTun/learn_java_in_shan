# Lesson 21: "GET Mapping (Reading Data)" (ၵၢၼ်လူၶေႃႈမုၼ်းလိၵ်ႈတႆး)

ၼႂ်း REST API ၼၼ်ႉ **GET** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်းၶႃႈ။ မၼ်းမီးၼႃႈတီႈ "ဢဝ်" (Fetch) ၶေႃႈမုၼ်းတီႈ Server သေသူင်ႇပၼ် User ၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈ GET Endpoints
ႁဝ်းတေမႃးထႅမ် Method ၼႂ်း `WordController` တွၼ်ႈတႃႇႁႃလိၵ်ႈတႆး 2 လၢႆးၶႃႈ:
1.  **Get All:** လူဢဝ်လိၵ်ႈတႆးတင်းမူတ်း။
2.  **Get by ID:** ႁႃလိၵ်ႈတႆးၶေႃႈလဵဝ် လူၺ်ႈၸႂ်ႉ ID။



---

### 2. ၵၢၼ်တႅမ်ႈ Code ၼႂ်း `WordController`

```java
@RestController
@RequestMapping("/api/words")
public class WordController {

    private final WordService wordService;

    public WordController(WordService wordService) {
        this.wordService = wordService;
    }

    // 1. GET ALL WORDS (URL: /api/words)
    @GetMapping
    public List<WordDTO> getAllWords() {
        return wordService.findAll();
    }

    // 2. GET WORD BY ID (URL: /api/words/{id})
    @GetMapping("/{id}")
    public WordDTO getWordById(@PathVariable Long id) {
        return wordService.getWordById(id);
    }
}
```

---

### 3. Annotation ဢၼ်လမ်ႇလွင်ႈ
* **`@GetMapping`**: မၵ်းမၼ်ႈဝႃႈ Method ၼႆႉ တေႁပ်ႉ Request ပဵၼ် GET ၵူၺ်းၶႃႈ။
* **`@PathVariable`**: ၸႂ်ႉတွၼ်ႈတႃႇ "ၵႄႈဢဝ်" (Extract) တူဝ်ၼပ်ႉ ID ဢၼ်မႃးၸွမ်း URL (မိူၼ်ၼင်ႇ: `/api/words/5`) မႃးသႂ်ႇပၼ်ၼႂ်း Variable `Long id` ၶႃႈ။



---

### 4. လၢႆးႁဵတ်းၵၢၼ်ၶွင် GET Request
မိူဝ်ႈ User ၶဝ်ႈ URL `http://localhost:8081/api/words/1` ၼၼ်ႉ:
1.  **Spring Boot** တေႁၼ်ဝႃႈမၼ်းပဵၼ် GET လႄႈ မီး `/1` ၸွမ်းလင်ၼႆၶႃႈ။
2.  မၼ်းတေသူင်ႇ `1` ၵႂႃႇပၼ် Method **`getWordById`**။
3.  **Controller** ႁွင်ႉၸႂ်ႉ **Service** => **Repository** => **Database**။
4.  သင်ႁၼ်ၶေႃႈမုၼ်း မၼ်းတေတွပ်ႇပၼ်ပဵၼ် **JSON** ၸိူင်ႉၼႆၶႃႈ:
    ```json
    {
      "shanWord": "ၵိၼ်",
      "englishWord": "Eat",
      "partOfSpeech": "v"
    }
    ```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Fetch:** ၵၢၼ်ၵႂႃႇဢဝ်ၶေႃႈမုၼ်းမႃး။
* **Path Variable:** တူဝ်လႅၵ်ႈလၢႆႈ (Variable) ဢၼ်ပႃးဝႆႉၼႂ်း သဵၼ်ႈတၢင်း URL။
* **Response Body:** ၶေႃႈမုၼ်းတႄႉမၼ်း ဢၼ် Server တွပ်ႇပၼ်ၶိုၼ်း (ပဵၼ် JSON)။
* **Idempotent:** REST Principle ဢၼ်မၢႆထိုင်ဝႃႈ ႁဝ်းႁွင်ႉ GET လၢႆပၢၵ်ႇပွၵ်ႈၵေႃႈ ၶေႃႈမုၼ်းတေမိူၼ်ၵဝ်ႇ (သင်ဢမ်ႇလႆႈမႄး DB ဝႆႉ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းၶႂ်ႈႁႃလိၵ်ႈတႆး ဢၼ်မီး ID = 10 ၼၼ်ႉ URL ႁဝ်းတေပဵၼ်ၸိူင်ႉႁိုဝ်?
2.  Annotation **`@PathVariable`** ၼၼ်ႉ မီးၼႃႈတီႈသင်ၼႂ်း Controller?