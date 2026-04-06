# Lesson 13: "Custom Query Methods" (ၵၢၼ်သၢင်ႈ Method ႁႃၶေႃႈမုၼ်း)

ၼႂ်း App **TaiGlish** ႁဝ်းၼၼ်ႉ ၵူၼ်းၸႂ်ႉတိုဝ်းတေလူဝ်ႇ "ႁႃ" (Search) ၶေႃႈၵႂၢမ်းတႆး ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်းဢင်းၵိတ်းၶႃႈ။ 
Spring Data JPA ပၼ်ႁဝ်းသၢင်ႈ Method ႁႃၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ လူၺ်ႈၵၢၼ် "ပၼ်ၸိုဝ်ႈ Method" ႁႂ်ႈမၼ်းၵူၺ်းၶႃႈ။

### 1. Derived Query Methods ၼႆႉ ပဵၼ်သင်?
ၼႆႉပဵၼ်ၵၢၼ်ဢၼ် Spring Boot တေ "ပိၼ်ႇ" ၸိုဝ်ႈ Method ႁဝ်း ႁႂ်ႈပဵၼ် SQL `SELECT` ႁင်းၵူၺ်းၶႃႈ။ 
ႁဝ်းၵူၺ်းလူဝ်ႇတႅမ်ႈၸွမ်းပိူင် **`findBy + [FieldName]`** ၶႃႈ။



### 2. ၵၢၼ်မႄး `WordRepository`
ပိုတ်ႇၾၢႆႇ `WordRepository` သေထႅမ်သႂ်ႇ Method ၸိူဝ်းၼႆႉၶႃႈ:

```java
package it.saimao.taiglish.repository;

import it.saimao.taiglish.model.Word;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface WordRepository extends JpaRepository<Word, Long> {

    // 1. ႁႃလူၺ်ႈၸႂ်ႉ လိၵ်ႈတႆး (Exact Match)
    List<Word> findByShanWord(String shanWord);

    // 2. ႁႃလူၺ်ႈၸႂ်ႉ လိၵ်ႈဢင်းၵိတ်း (Containing - တွၼ်ႈတႃႇ Search Box)
    List<Word> findByEnglishMeaningContaining(String word);

    // 3. ႁႃလူၺ်ႈၸႂ်ႉ ထၢၼ်ႈၵႂၢမ်း (Part of Speech)
    List<Word> findByPartOfSpeech(String pos);
}
```

---

### 3. Keywords ဢၼ်လမ်ႇလွင်ႈၼႂ်း Query
Spring Data JPA မီး Keywords တင်းၼမ် ဢၼ်ႁဝ်းဢဝ်မႃးၸႂ်ႉၼႂ်းၸိုဝ်ႈ Method လႆႈၶႃႈ:
* **`Containing`**: မိူၼ်ၼင်ႇ SQL `LIKE %word%` (ၸႂ်ႉတွၼ်ႈတႃႇႁႃၶေႃႈမုၼ်းဢၼ်ပႃးလိၵ်ႈတူဝ်ၼၼ်ႉ)။
* **`StartingWith`**: ႁႃၶေႃႈမုၼ်းဢၼ် "တႄႇငဝ်ႈ" လူၺ်ႈလိၵ်ႈတူဝ်ၼၼ်ႉ။
* **`And` / `Or`**: ႁႃလူၺ်ႈၸႂ်ႉသွင် Fields ၸွမ်ၵၼ် (မိူၼ်ၼင်ႇ: `findByShanWordAndPartOfSpeech`)။

### 4. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ `List<Word>`?
ၵွပ်ႈဝႃႈၶေႃႈၵႂၢမ်းတႆးၼိုင်ႈၶေႃႈ ၸၢင်ႈပႃးၶေႃႈပိၼ်ႇ (Meaning) တင်းၼမ် ဢမ်ႇၼၼ် ၸၢင်ႈမီးလၢႆလၢႆထၢၼ်ႈၵႂၢမ်း (POS)။ 
ၵူၺ်းၵႃႈ သင်ႁဝ်းၼႄႉၼမ်းၸႂ်ဝႃႈမၼ်းတေမီး "တူဝ်လဵဝ်" ႁဝ်းၸၢင်ႈၸႂ်ႉ `Optional<Word>` ၵေႃႈလႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Derived Query:** ၵၢၼ်သၢင်ႈ SQL Query လူၺ်ႈၵၢၼ်ပၼ်ၸိုဝ်ႈ Method ၼႂ်း Interface။
* **Keyword:** ၶေႃႈၵႂၢမ်းဢၼ် Spring JPA ပွင်ႇၸႂ် (မိူၼ်ၼင်ႇ: `findBy`, `Containing`, `Between`)။
* **Exact Match:** ၵၢၼ်ႁႃၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းမိူၼ်လီလီ (မိူၼ်ၼင်ႇ: `findByShanWord`)။
* **Partial Match:** ၵၢၼ်ႁႃၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းမီးလိၵ်ႈပႃးယူႇၼႂ်းၼၼ်ႉ (မိူၼ်ၼင်ႇ: `Containing`)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈသၢင်ႈ Method တွၼ်ႈတႃႇႁႃၶေႃႈၵႂၢမ်းဢင်းၵိတ်း ဢၼ် "တႄႇငဝ်ႈ" လူၺ်ႈလိၵ်ႈတူဝ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ: ႁႃ 'A' ႁႂ်ႈႁၼ် 'Apple', 'Ant') ၼၼ်ႉ ႁဝ်းတေလႆႈပၼ်ၸိုဝ်ႈ Method ဝႃႈၸိူင်ႉႁိုဝ်?
2. ၼႂ်းၵႄႈ `findByShanWord` လႄႈ `findByShanWordContaining` ၼၼ်ႉ တူဝ်လႂ်ဢၼ်တေႁဵတ်းႁႂ်ႈႁဝ်းႁၼ်ၶေႃႈမုၼ်း "ၼမ်လိူဝ်"?

---