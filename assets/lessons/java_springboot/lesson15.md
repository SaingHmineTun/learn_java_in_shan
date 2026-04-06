# Lesson 15: "Dependency Injection & Autowired" (ၵၢၼ်သူင်ႇ Object ႁင်းၵူၺ်း)

ၼႂ်း Java ပိူင်ၵဝ်ႇၼၼ်ႉ သင်ႁဝ်းၶႂ်ႈၸႂ်ႉ Class တူဝ်ၼိုင်ႈ ႁဝ်းတေလႆႈတႅမ်ႈ `new WordRepository()` ႁင်းၵူၺ်းၶႃႈ။ 
ၵူၺ်းၵႃႈၼႂ်း Spring Boot ၸႂ်ႉ **Dependency Injection (DI)** လႄႈ Object ၵူႈလွင်ႈလွင်ႈၼၼ်ႉ Spring တေၶူင်ပၼ်ႁဝ်းၶႃႈ။

### 1. Dependency Injection (DI) ၼႆႉ ပဵၼ်သင်?
DI မိူၼ်ၼင်ႇ "ၵၢၼ်သင်ႇတၢင်းၵိၼ်" ၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇႁဵတ်းၵိၼ်ႁင်းၵူၺ်း (new Object)၊ ႁဝ်းၵူၺ်းလူဝ်ႇလၢတ်ႈဝႃႈ "ႁဝ်းၶႂ်ႈလႆႈသင်" သေ Spring Boot (The Waiter) တေဢဝ်မႃးသူင်ႇပၼ်ႁဝ်းတီႈၼႃႈၵၢၼ်ၶႃႈ။



### 2. Annotation `@Autowired`
ႁဝ်းၸႂ်ႉ `@Autowired` တွၼ်ႈတႃႇပၼ်သိတ်ႇၼႄႇၸူး Spring ဝႃႈ: "ၶႅၼ်းတေႃႈ ႁႃ Object (Bean) ဢၼ်မၢၼ်ႇမႅၼ်ႈမႃးသႂ်ႇပၼ်ၼႂ်း Variable ၼႆႉသေၵမ်း" ၼႆၶႃႈ။
* ႁဝ်းၸႂ်ႉလႆႈ 3 လၢႆး: **Field Injection**, **Setter Injection**, လႄႈ **Constructor Injection**။

---

### 3. Constructor Injection (The Best Practice)
ၼႂ်းၵၢၼ်တႅမ်ႈ App **TaiGlish** ႁဝ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉလၢႆး **Constructor Injection** ၵွပ်ႈဝႃႈမၼ်း "ၼိမ်" လႄႈ "ၸၢမ်း" (Test) လႆႈငၢႆႈသုတ်းၶႃႈ။

```java
@Service
public class WordService {

    private final WordRepository wordRepository;

    // Spring တေႁၼ် Constructor ၼႆႉ သေသူင်ႇ WordRepository မႃးပၼ်ႁင်းၵူၺ်း
    @Autowired 
    public WordService(WordRepository wordRepository) {
        this.wordRepository = wordRepository;
    }
    
    // ... methods ...
}
```
*မၢႆတွင်း:* သင် Class ၼၼ်ႉမီး Constructor တူဝ်လဵဝ်ၵူၺ်း ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ `@Autowired` ၵေႃႈ Spring Boot ႁူႉၸၵ်းသေ သူင်ႇပၼ်ယူႇၶႃႈ။

---

### 4. ၵွပ်ႈသင်ႁဝ်းဢမ်ႇၸႂ်ႉ `new` Keyword?
* **Decoupling:** ႁဵတ်းႁႂ်ႈ Class သွင်တူဝ် ဢမ်ႇလူဝ်ႇ "ၵွင်ႉတၢႆ" ၸူးၵၼ်။
* **Spring Container:** Spring တေပဵၼ်ၵေႃႉၵုမ်းၵမ် Lifecycle ၶွင် Object တင်းမူတ်း (သၢင်ႈမိူဝ်ႈလႂ်၊ ပႅတ်ႈမိူဝ်ႈလႂ်)။
* **Easy Testing:** ႁဝ်းၸၢင်ႈသူင်ႇ "Object ပွမ်" (Mock Object) ၶဝ်ႈၵႂႃႇၸၢမ်းတူၺ်းလႆႈငၢႆႈၶႃႈ။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Dependency:** Object ဢၼ် Class ၼိုင်ႈတူဝ်လူဝ်ႇပိုင်ႈဢိင် (မိူၼ်ၼင်ႇ Service လူဝ်ႇ Repository)။
* **Injection:** ၵၢၼ် "သႂ်ႇ" ဢမ်ႇၼၼ် "သူင်ႇ" Object ၶဝ်ႈၵႂႃႇ။
* **IoC (Inversion of Control):** ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်းၵုမ်းၵမ် Object ပၼ် Framework။
* **Loose Coupling:** ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈ Class ၵူႈတူဝ်ပႅၵ်ႇဢွၵ်ႇၵၼ်၊ ဢမ်ႇပိုင်ႈဢိင်ၵၼ်ႁႅင်းပူၼ်ႉတီႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ၼႂ်းၵႄႈ ၵၢၼ်တႅမ်ႈ `new WordService()` ႁင်းၵူၺ်း လႄႈ ၵၢၼ်ပၼ် Spring သူင်ႇမႃးပၼ် (DI) ၼၼ်ႉ တူဝ်လႂ်ဢၼ်လီလိူဝ် တွၼ်ႈတႃႇၵၢၼ်ၸၢမ်း (Testing)?
2.  Annotation **`@Autowired`** ၼႆႉ မီးၼႃႈတီႈသင်ၼႂ်း Dependency Injection?