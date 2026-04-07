# Lesson 23: "PUT Mapping (Updating Data)" (ၵၢၼ်မႄးၶေႃႈမုၼ်းလိၵ်ႈတႆး)

ၼႂ်း REST API ၼၼ်ႉ **PUT** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉတွၼ်ႈတႃႇ "လႅၵ်ႈလၢႆႈ" (Replace/Update) ၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယူႇယဝ်ႉၼႂ်း Database ၶႃႈ။ 
မိူၼ်ၼင်ႇ ႁဝ်းတႅမ်ႈလိၵ်ႈတႆးၽိတ်း သေၶႂ်ႈမႃးမႄးႁႂ်ႈမၼ်းထုၵ်ႇၼၼ်ႉၶႃႈ။

### 1. ပႅၵ်ႇပိူင်ႈတင်း POST ၸိူင်ႉႁိုဝ်?
* **POST:** ၸႂ်ႉတွၼ်ႈတႃႇ "သႂ်ႇမႂ်ႇ" (Create)၊ ႁဝ်းဢမ်ႇလူဝ်ႇသူင်ႇ ID ၵႂႃႇၸွမ်း။
* **PUT:** ၸႂ်ႉတွၼ်ႈတႃႇ "မႄး" (Update)၊ ႁဝ်းလူဝ်ႇသူင်ႇ **ID** ၵႂႃႇတွၼ်ႈတႃႇလၢတ်ႈပၼ် Server ဝႃႈ "တေလႆႈမႄးတူဝ်လႂ်" ၼႆၶႃႈ။



---

### 2. ၵၢၼ်တႅမ်ႈ Code ၼႂ်း `WordController`
ႁဝ်းထႅမ်သႂ်ႇ Method ၼႆႉၶဝ်ႈၵႂႃႇၼႂ်း `WordController` ၶႃႈ:

```java
@PutMapping("/{id}")
public WordDTO updateWord(@PathVariable Long id, @RequestBody Word wordDetails) {
    // 1. ႁႃ Word တူဝ်ဢၼ်တေမႄးၼၼ်ႉဢွၼ်တၢင်း
    Word existingWord = wordService.findById(id);
    
    // 2. မႄးၶေႃႈမုၼ်းမႂ်ႇသႂ်ႇပၼ်
    existingWord.setShanWord(wordDetails.getShanWord());
    existingWord.setEnglishWord(wordDetails.getEnglishWord());
    existingWord.setPartOfSpeech(wordDetails.getPartOfSpeech());
    
    // 3. သိမ်းၶဝ်ႈ Database ၶိုၼ်း
    Word updatedWord = wordService.save(existingWord);
    
    return wordService.convertToDto(updatedWord);
}
```

---

### 3. Annotation ဢၼ်လမ်ႇလွင်ႈ
* **`@PutMapping("/{id}")`**: မၵ်းမၼ်ႈဝႃႈ Method ၼႆႉ တေႁပ်ႉ Request ပဵၼ် PUT တွၼ်ႈတႃႇမႄးၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ ID ၶႃႈ။
* **`@PathVariable` + `@RequestBody`**: ၼႂ်း PUT ႁဝ်းၸႂ်ႉတင်းသွင်ယၢင်ႈၸွမ်ၵၼ်ၶႃႈ။ `id` တွၼ်ႈတႃႇႁူႉတူဝ်ဢၼ်တေမႄး၊ `wordDetails` တွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်းမႂ်ႇမႃးသႂ်ႇၶႃႈ။



---

### 4. လၢႆးႁဵတ်းၵၢၼ်ၶွင် PUT Request
မိူဝ်ႈ User သူင်ႇ Request မႃးၸူး `http://localhost:8081/api/words/1`:
1.  **URL:** `/api/words/1` (မႄးတူဝ် ID = 1)
2.  **Request Body (JSON):**
    ```json
    {
      "shanWord": "ၵိၼ်ၶဝ်ႈ",
      "englishWord": "Eat Rice",
      "partOfSpeech": "v"
    }
    ```
3.  **Spring Boot** တေၵႂႃႇႁႃ ID 1 သေ ဢဝ် "ၵိၼ်" ဢၼ်ၵဝ်ႇၼၼ်ႉ လႅၵ်ႈပဵၼ် "ၵိၼ်ၶဝ်ႈ" ၸွမ်းၼင်ႇ JSON ဢၼ်သူင်ႇမႃးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Update:** ၵၢၼ်မႄးၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယူႇယဝ်ႉ။
* **Idempotent:** PUT ပဵၼ် Idempotent မၢႆထိုင်ဝႃႈ သင်ႁဝ်းသူင်ႇၶေႃႈမုၼ်းတူဝ်လဵဝ်ၵၼ်ၼၼ်ႉ 10 ပွၵ်ႈၵေႃႈ ၽွၼ်းလႅၼ်ႈမၼ်းတေမိူၼ်ၵဝ်ႇ (ၶေႃႈမုၼ်းတေမိူၼ်ၵဝ်ႇ) ၶႃႈ။
* **Replace vs Patch:** PUT ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇ "လႅၵ်ႈတင်းမူတ်း" (Replace)၊ သင်ၶႂ်ႈမႄး "ၵမ်းဢိတ်း" ႁဝ်းတေၸႂ်ႉ PATCH ၶႃႈ (ၵူၺ်းၵႃႈ ၵူၼ်းၵႆႉၸႂ်ႉ PUT ႁူမ်ႈၵၼ်ၵႂႃႇၵမ်းလဵဝ်ၶႃႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ၼႂ်းၵၢၼ်ၸႂ်ႉ **PUT**, သင်ႁဝ်းသူင်ႇ JSON ဢၼ်ဢမ်ႇပႃး `partOfSpeech` ၵႂႃႇၼၼ်ႉ ၶေႃႈမုၼ်းၼႂ်း Database တေပဵၼ်ၸိူင်ႉႁိုဝ်? (တေၵိုတ်းဢၼ်ၵဝ်ႇ ႁႃႉ ဢမ်ႇၼၼ် တေပဵၼ် null?)
2.  ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇလႆႈသူင်ႇ **ID** ၵႂႃႇၸွမ်း URL မိူဝ်ႈႁဝ်းၸႂ်ႉ PUT?