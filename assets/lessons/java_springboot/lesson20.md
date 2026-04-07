# Lesson 20: "Introduction to REST & @RestController" (ၵၢၼ်သၢင်ႈ REST API)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးလဵပ်ႈႁဵၼ်းလွင်ႈ **REST API** ဢၼ်ပဵၼ်သဵၼ်ႈတၢင်းသူင်ႇၶေႃႈမုၼ်း လႄႈ လၢႆးသၢင်ႈ **Controller** တွၼ်ႈတႃႇႁပ်ႉ Request ၶႃႈ။

### 1. REST API ၼႆႉ ပဵၼ်သင်?
**REST (Representational State Transfer)** ပဵၼ်ပိူင်သၢင်ႈ ဢၼ်ႁဵတ်းႁႂ်ႈ Computer သွင်တူဝ် လၢတ်ႈတေႃႇၵၼ်လႆႈငၢႆႈငၢႆႈလူၺ်ႈၸႂ်ႉ **HTTP Protocol** (မိူၼ်ၼင်ႇ ႁဝ်းပိုတ်ႇ Website) ၶႃႈ။
* **JSON:** ပဵၼ် "ၵႂၢမ်းလၢတ်ႈ" ဢၼ် REST API ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်း (Format ဢၼ်လူငၢႆႈ လႄႈ လႅၼ်ႈဝႆး)။
* **Stateless:** API ဢမ်ႇမၢႆတွင်းဝႃႈ ၽႂ်ပဵၼ်ၽႂ်၊ မၼ်းၵူၺ်း "တွပ်ႇၵႂၢမ်းထၢမ်" ဢၼ်မႃးၼၼ်ႉၵူၺ်းၶႃႈ။



### 2. Annotation `@RestController`
ၼႂ်း Spring Boot, ႁဝ်းၸႂ်ႉ `@RestController` တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Class ၼိုင်ႈဢၼ် ႁႂ်ႈပဵၼ် "ၵူၼ်းတွပ်ႇ API" ၶႃႈ။
* မၼ်းႁူမ်ႈဢဝ် `@Controller` လႄႈ `@ResponseBody` ဝႆႉၸွမ်းၵၼ်။
* မၼ်းတေပိၼ်ႇ (Convert) Java Object ၶွင်ႁဝ်း ႁႂ်ႈပဵၼ် **JSON** ႁင်းၵူၺ်း မိူဝ်ႈသူင်ႇဢွၵ်ႇၵႂႃႇၶႃႈ။

---

### 3. ၵၢၼ်သၢင်ႈ `WordController`
ႁဝ်းၶူင်သၢင်ႈ Package မႂ်ႇၸိုဝ်ႈဝႃႈ `it.saimao.taiglish.controller` သေ သၢင်ႈၾၢႆႇ Java ၸိုဝ်ႈဝႃႈ `WordController.java` ၶႃႈ:

```java
package it.saimao.taiglish.controller;

import it.saimao.taiglish.dto.WordDTO;
import it.saimao.taiglish.service.WordService;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController // မၵ်းမၼ်ႈပဵၼ် REST API Controller
@RequestMapping("/api/words") // တင်ႈသဵၼ်ႈတၢင်း (Path) ပိူင်လူင်
public class WordController {

    private final WordService wordService;

    // Dependency Injection (သူင်ႇ Service ၶဝ်ႈမႃး)
    public WordController(WordService wordService) {
        this.wordService = wordService;
    }

    // တူဝ်ယၢင်ႈ: လူဢဝ်လိၵ်ႈတႆးတင်းမူတ်း
    @GetMapping
    public List<WordDTO> getAllWords() {
        return wordService.findAll(); 
    }
}
```

---

### 4. Annotation ဢၼ်လမ်ႇလွင်ႈ
* **`@RequestMapping("/api/words")`**: မၢႆထိုင်ဝႃႈ Request ၵူႈဢၼ် ဢၼ်မီးၼႆႉ class ၼႆႉ တႄႇလူၺ်ႈ `/api/words` ၼႆႉၶႃႈ။
* **`@GetMapping`**: ၸႂ်ႉတွၼ်ႈတႃႇ "လူ" (Read) ၶေႃႈမုၼ်း။ မိူဝ်ႈ User ၶဝ်ႈ `http://localhost:8081/api/words` ၼၼ်ႉ Method ၼႆႉတေႁဵတ်းၵၢၼ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Endpoint:** သဵၼ်ႈတၢင်း (URL) ဢၼ် API ပိုတ်ႇဝႆႉပၼ် User (မိူၼ်ၼင်ႇ: `/api/words`)။
* **JSON (JavaScript Object Notation):** ပိူင်သၢင်ႈၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉ `{ "key": "value" }`။
* **HTTP Methods:** ၵႂၢမ်းသင်ႇပိူင်လူင် (GET, POST, PUT, DELETE)။
* **Controller Layer:** ၸၼ်ႉဢၼ်ၸတ်းၵၢၼ် Request လႄႈ Response (Web Tier)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  Annotation **`@RestController`** ၼၼ်ႉ ပႅၵ်ႇပိူင်ႈတင်း **`@Controller`** (ဢၼ်ၸႂ်ႉၼႂ်း Thymeleaf) ၸိူင်ႉႁိုဝ်?
2.  သင်ႁဝ်းတင်ႈ `@RequestMapping("/api/words")` ဝႆႉၼၼ်ႉ URL တႃႇၶဝ်ႈတူၺ်းလိၵ်ႈတႆး တေပဵၼ်သင်ၶႃႈ?