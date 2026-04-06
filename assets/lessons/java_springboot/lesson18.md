# Lesson 18: "Data Transfer Objects (DTOs)" (ၵၢၼ်ၸႂ်ႉ DTO တွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်း)

ၼႂ်းၵၢၼ်တႅမ်ႈ App ဢၼ် Professional ၶဝ်ၶူင်ၼၼ်ႉ ႁဝ်းဢမ်ႇထုၵ်ႇလီသူင်ႇ **Entity Class** (ဢၼ်ၵွင်ႉၸူး Database) ဢွၵ်ႇၵႂႃႇပၼ် UI ဢမ်ႇၼၼ် Browser ၵမ်းလဵဝ်ၶႃႈ။ 
ႁဝ်းလူဝ်ႇမီး **DTO** မႃးပဵၼ် "ၵူၼ်းသူင်ႇလိၵ်ႈ" ၶႃႈ။

### 1. DTO ၼႆႉ ပဵၼ်သင်?
DTO မၢႆထိုင် Class ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ တွၼ်ႈတႃႇ "သူင်ႇၶေႃႈမုၼ်း" (Transfer Data) ၵူၺ်းၶႃႈ။
* **Entity:** ပဵၼ် Class ဢၼ်မီး Annotation `@Entity` လႄႈ `@Id` (ၵွင်ႉၸူး MySQL)။
* **DTO:** ပဵၼ် Class ပဝ်ႇပဝ်ႇ (POJO) ဢၼ်မီး Fields ဢၼ်ႁဝ်းၶႂ်ႈၼႄပၼ် User ၵူၺ်းၶႃႈ။



---

### 2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇ DTO?
1.  **Security:** ႁႄႉၵင်ႈယႃႇႁႂ်ႈ User ႁၼ်ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇလူဝ်ႇႁၼ် (မိူၼ်ၼင်ႇ: ID ၼႂ်း DB ဢမ်ႇၼၼ် Password)။
2.  **Performance:** သူင်ႇၶေႃႈမုၼ်း ဢၼ်လူဝ်ႇၸႂ်ႉတႄႉတႄႉ၊ ႁဵတ်းႁႂ်ႈ App လႅၼ်ႈဝႆးလိူဝ်။
3.  **Flexibility:** ႁဝ်းၸၢင်ႈမႄးႁၢင်ႈၾၢင်ၶေႃႈမုၼ်း ႁႂ်ႈမၼ်းငၢႆႈ တွၼ်ႈတႃႇ UI လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Database Table ၶႃႈ။

### 3. ၵၢၼ်သၢင်ႈ `WordDTO`
ႁဝ်းၶူင် Package `dto` သေ သၢင်ႈ Class `WordDTO.java` ၶႃႈ:

```java
package it.saimao.taiglish.dto;

import lombok.Data;

@Data
public class WordDTO {
    private String shanWord;
    private String englishWord;
    private String partOfSpeech;
    // ႁဝ်းဢမ်ႇသႂ်ႇ ID ၶဝ်ႈမႃးၸွမ်ၵေႃႈလႆႈ သင်ႁဝ်းဢမ်ႇၶႂ်ႈၼႄ
}
```

---

### 4. ၵၢၼ်ပိၼ်ႇ (Mapping) ၼႂ်း Service
ၼႂ်း `WordService` ႁဝ်းတေလႆႈပိၼ်ႇ Entity ႁႂ်ႈပဵၼ် DTO ဢွၼ်တၢင်းတေသူင်ႇဢွၵ်ႇၵႂႃႇၶႃႈ:

```java
public WordDTO getWordDto(Long id) {
    Word word = wordRepository.findById(id).orElseThrow();
    
    // Mapping Entity to DTO
    WordDTO dto = new WordDTO();
    dto.setShanWord(word.getShanWord());
    dto.setEnglishWord(word.getEnglishWord());
    dto.setPartOfSpeech(word.getPartOfSpeech());
    
    return dto;
}
```



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **DTO (Data Transfer Object):** Class ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်းၵႄႈ Layers တၢင်ႇတူဝ်။
* **POJO (Plain Old Java Object):** Class Java ထမ်ႇမတႃႇ ဢမ်ႇပႃး Annotation ၶွင် Framework တၢင်ႇတူဝ်။
* **Mapping:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းတီႈ Object တူဝ်ၼိုင်ႈ ၵႂႃႇသႂ်ႇပၼ် Object ထႅင်ႈတူဝ်ၼိုင်ႈ။
* **Encapsulation:** ၵၢၼ်ၵႅတ်ႇႁႄႉၶေႃႈမုၼ်း ဢမ်ႇႁႂ်ႈၽၢႆႇၼွၵ်ႈႁူႉၸၵ်းပိူင်သၢင်ႈ Database တႄႉတႄႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းသူင်ႇ **Entity** ဢွၵ်ႇၵႂႃႇပၼ် User ၵမ်းလဵဝ်ၼၼ်ႉ မၼ်းၸၢင်ႈမီးပၼ်ႁႃလွင်ႈသင် (Security)?
2.  Annotation လႂ် ၼႂ်း Lombok ဢၼ်ႁဝ်းၸႂ်ႉသၢင်ႈ Getter/Setter ႁႂ်ႈ DTO ႁဝ်းငၢႆႈသုတ်း?
