# Lesson 14: "The Service Layer Pattern" (ပိူင်သၢင်ႈ Service Layer)

ၼႂ်းၵၢၼ်တႅမ်ႈ App ယႂ်ႇယႂ်ႇၼၼ်ႉ ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် Code ဢၼ်ၸတ်းၵၢၼ် Database (Repository) ၵႂႃႇဝႆႉၸွမ်းတင်း Code ဢၼ်ႁပ်ႉၵႂၢမ်းထၢမ်တီႈ Browser (Controller) ၶႃႈ။ 
ႁဝ်းလူဝ်ႇမီး **Service Layer** မႃးပဵၼ် "ၵူၼ်းၵႄႈၵၢင်" ၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇ Service Layer?
* **Separation of Concerns:** တႅၵ်ႇဢွၵ်ႇၼႃႈတီႈၵၼ်ႁႂ်ႈၸႅၼ်ႇလႅင်း။ Controller မီးၼႃႈတီႈႁပ်ႉ Request၊ Service မီးၼႃႈတီႈတႅပ်းတတ်း Logic၊ Repository မီးၼႃႈတီႈၵွင်ႉ Database။
* **Reusability:** ႁဝ်းတႅမ်ႈ Logic ဝႆႉၼႂ်း Service ၵမ်းလဵဝ်၊ ဝၢႆးၼႃးမႃး သင်ႁဝ်းၶႂ်ႈၸႂ်ႉၼႂ်း Website ႁႃႉ ဢမ်ႇၼၼ် ၼႂ်း Mobile App ႁႃႉ ႁဝ်းၵေႃႈႁွင်ႉၸႂ်ႉ Service တူဝ်လဵဝ်ၵၼ်ၼၼ်ႉလႆႈၶႃႈ။
* **Clean Code:** ႁဵတ်းႁႂ်ႈ Controller ႁဝ်းသႅၼ်ႈသႂ် (Clean) လႄႈ လူငၢႆႈၶႃႈ။



### 2. Annotation `@Service`
တွၼ်ႈတႃႇ Spring Boot တေႁူႉၸၵ်းဝႃႈ Class ၼႆႉပဵၼ် Service ၼၼ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Annotation **`@Service`** ဝႆႉၼိူဝ် Class ၼၼ်ႉၶႃႈ။ မၼ်းတေႁဵတ်းႁႂ်ႈ Spring Boot သၢင်ႈ Object (Bean) ဝႆႉပၼ်ႁဝ်းၼႂ်း Application Context ႁင်းၵူၺ်းၶႃႈ။

---

### 3. ၵၢၼ်သၢင်ႈ `WordService`
ႁဝ်းၶူင်သၢင်ႈ Package မႂ်ႇၸိုဝ်ႈဝႃႈ `it.saimao.taiglish.service` သေ သၢင်ႈၾၢႆႇ Java ၸိုဝ်ႈဝႃႈ `WordService.java` ၶႃႈ:

```java
package it.saimao.taiglish.service;

import it.saimao.taiglish.model.Word;
import it.saimao.taiglish.repository.WordRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service // မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ်တီႈသိမ်း Business Logic
public class WordService {

    // တွၼ်ႈတႃႇလၢတ်ႈတေႃႇတင်း Database
    private final WordRepository wordRepository;

    // Constructor Injection (တေသွၼ်လိုၵ်ႉၼႂ်း Lesson 15)
    public WordService(WordRepository wordRepository) {
        this.wordRepository = wordRepository;
    }

    // Method တွၼ်ႈတႃႇလူဢဝ်လိၵ်ႈတႆးတင်းမူတ်း
    public List<Word> getAllWords() {
        return wordRepository.findAll();
    }
}
```

---

### 4. လၢႆးႁဵတ်းၵၢၼ်ၶွင် Service
မိူဝ်ႈမီးၵူၼ်းႁႃလိၵ်ႈတႆးၼၼ်ႉ:
1.  **Controller** တေႁပ်ႉၵႂၢမ်းထၢမ် (Request)။
2.  **Controller** တေသူင်ႇၵႂႃႇၸူး **Service**။
3.  **Service** တေၵူတ်ႇထတ်း (Check Logic) သေၸင်ႇႁွင်ႉၸႂ်ႉ **Repository**။
4.  **Repository** ၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတီႈ **MySQL** သေတွပ်ႇပၼ်ၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Business Logic:** ပိူင်ၵၢၼ်တႅပ်းတတ်းၶွင် App (မိူၼ်ၼင်ႇ: "သင်လိၵ်ႈဢင်းၵိတ်းဢမ်ႇပႃး ယႃႇပၼ်သိမ်း")။
* **Bean:** Object ဢၼ် Spring Boot ပဵၼ်ၵေႃႉၵုမ်းၵမ်လႄႈသၢင်ႈဝႆႉပၼ် (မိူၼ်ၼင်ႇ Class @Service)။
* **Three-Tier Architecture:** ပိူင်သၢင်ႈ 3 ၸၼ်ႉ (Web -> Service -> Data)။
* **Component Scanning:** ၵၢၼ်ဢၼ် Spring ႁႃ Class ဢၼ်မီး @Service တွၼ်ႈတႃႇသၢင်ႈ Bean။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ၵွပ်ႈသင်ႁဝ်းဢမ်ႇထုၵ်ႇလီတႅမ်ႈ SQL Logic ဝႆႉၼႂ်း Controller ၵမ်းလဵဝ်?
2.  Annotation **`@Service`** ၼႆႉ မီးၼႃႈတီႈသင်ၼႂ်း Spring Boot?
