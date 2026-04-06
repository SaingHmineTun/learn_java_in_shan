# Lesson 16: "Business Logic & CRUD Operations" (ၵၢၼ်ၸတ်းၵၢၼ် Logic ၼႂ်း Service)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Method တွၼ်ႈတႃႇႁပ်ႉၶေႃႈမုၼ်း လႄႈ သူင်ႇၶေႃႈမုၼ်းၵႂႃႇၸူး Database ၶႃႈ။ 
ၼႆႉပဵၼ်တီႈဢၼ် **Business Logic** (ပိူင်ၵၢၼ်တႅပ်းတတ်း) ႁဝ်းတေယူႇဝႆႉၶႃႈ။

### 1. CRUD ၼႂ်း Service Layer
ႁဝ်းတေမႄးထႅမ် Method ၼႂ်း `WordService` ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်လႆႈ 4 ယၢင်ႈ (CRUD):

```java
@Service
public class WordService {

    private final WordRepository wordRepository;

    public WordService(WordRepository wordRepository) {
        this.wordRepository = wordRepository;
    }

    // 1. READ: လူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း
    public List<Word> findAll() {
        return wordRepository.findAll();
    }

    // 2. CREATE: သိမ်းၶေႃႈမုၼ်းလိၵ်ႈတႆးမႂ်ႇ
    public Word save(Word word) {
        // Business Logic: သင်လိၵ်ႈတႆးပဝ်ႇဝႆႉ ယႃႇပၼ်သိမ်း
        if (word.getShanWord() == null || word.getShanWord().isEmpty()) {
            throw new RuntimeException("လိၵ်ႈတႆးလူဝ်ႇလႆႈသႂ်ႇၶႃႈ!");
        }
        return wordRepository.save(word);
    }

    // 3. DELETE: လူတ်းၶေႃႈမုၼ်းပႅတ်ႈလူၺ်ႈ ID
    public void delete(Long id) {
        wordRepository.deleteById(id);
    }
}
```



---

### 2. Business Logic ပဵၼ်သင်?
Business Logic မၢႆထိုင် "ပိူင်ၵၢၼ်" ဢၼ် App ႁဝ်းလူဝ်ႇလႆႈၸွမ်းၶႃႈ။
* **Example:** မိူဝ်ႈၵူၼ်းၸႂ်ႉတိုဝ်းထႅမ်သႂ်ႇၶေႃႈၵႂၢမ်းမႂ်ႇၼၼ်ႉ ႁဝ်းလူဝ်ႇ Check တူၺ်းဝႃႈ "ၶေႃႈၵႂၢမ်းၼႆႉ မီးဝႆႉၼႂ်း Database ယဝ်ႉႁႃႉ?" ၼႆၶႃႈ။
* ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် Logic ၸိူဝ်းၼႆႉၵႂႃႇတႅမ်ႈဝႆႉၼႂ်း Controller ၶႃႈ၊ လူဝ်ႇဝႆႉၼႂ်း Service တႃႇသေႇ။

### 3. ၵၢၼ်ၸတ်းၵၢၼ် ID (Finding by ID)
မိူဝ်ႈႁဝ်းႁႃၶေႃႈမုၼ်းလူၺ်ႈ ID ၼၼ်ႉ JpaRepository တေတွပ်ႇပၼ်ပဵၼ် `Optional` ၶႃႈ (တေသိုပ်ႇလၢတ်ႈလွင်ႈၼႆႉတီႈ Lesson 17)။

```java
public Word findById(Long id) {
    return wordRepository.findById(id).orElse(null);
}
```

---

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Service Methods?
1.  **Validation:** တွၼ်ႈတႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေသူင်ႇၵႂႃႇ Database။
2.  **Transformation:** တွၼ်ႈတႃႇမႄးႁၢင်ႈၾၢင်ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ: ပိၼ်ႇလိၵ်ႈတူဝ်ဢွၼ်ႇ ပဵၼ် တူဝ်ယႂ်ႇ)။
3.  **Security:** တွၼ်ႈတႃႇ Check ဝႃႈ ၵူၼ်းၵေႃႉၼႆႉ မီးသုၼ်ႇမႄးၶေႃႈမုၼ်းၼႆႉႁႃႉ?

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Business Logic:** ပိူင်ၵၢၼ်တႅပ်းတတ်း ဢၼ်ၵဵဝ်ႇလူၺ်ႈၼႃႈၵၢၼ်တႄႉတႄႉ (Domain Rules)။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်းဝႃႈ မၼ်းမၢၼ်ႇမႅၼ်ႈယူႇႁႃႉ (မိူၼ်ၼင်ႇ: Not Empty)။
* **Runtime Exception:** တူဝ်ပၼ်သိတ်ႇၼႄႇ (Signal) မိူဝ်ႈမီး Error ၼႂ်းၵၢၼ်လႅၼ်ႈ App။
* **Service Method:** Function ၼႂ်း Service ဢၼ်ႁူမ်ႈဢဝ် Logic လႄႈ ၵၢၼ်ၵွင်ႉ Database ၸွမ်းၵၼ်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းတႅမ်ႈ Code Check ဝႃႈ "လိၵ်ႈတႆးလူဝ်ႇလႆႈသႂ်ႇ" ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီဝႆႉၼႂ်း **Controller** ႁႃႉ ဢမ်ႇၼၼ် **Service**?
2.  Method **`save()`** ၼႂ်း JpaRepository ၼၼ်ႉ ၸႂ်ႉလႆႈတင်းၵၢၼ် "သႂ်ႇမႂ်ႇ" (Create) လႄႈ ၵၢၼ် "မႄးၶေႃႈမုၼ်းၵဝ်ႇ" (Update) ယူႇႁႃႉ?
