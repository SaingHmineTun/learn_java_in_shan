# Lesson 19: "Advanced Searching Logic" (ၵၢၼ်သၢင်ႈ Logic ႁႃၶေႃႈမုၼ်းဢၼ်ၵတ်ႉၶႅၼ်ႇ)

ၼႂ်းၵၢၼ်ၸႂ်ႉ Dictionary တႄႉတႄႉၼၼ်ႉ ၵူၼ်းၸႂ်ႉတိုဝ်း (User) တေဢမ်ႇလႅၵ်ႈ Mode ၵူႈပွၵ်ႈၶႃႈ။ 
ၶဝ်ၶႂ်ႈတႅမ်ႈ "ၵိၼ်" ၵေႃႈႁႂ်ႈႁၼ် "Eat"၊ တႅမ်ႈ "Sleep" ၵေႃႈႁႂ်ႈႁၼ် "ၼွၼ်း" ၼႂ်း Search Box တူဝ်လဵဝ်ၵၼ်ၶႃႈ။

### 1. ၵၢၼ်ႁူမ်ႈ Repository Methods
ႁဝ်းတေဢဝ် Method ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း `WordRepository` (Lesson 13) မႃးႁူမ်ႈၵၼ်ၼႂ်း Service ၶႃႈ:
* `findByShanWordContaining`
* `findByEnglishWordContaining`



---

### 2. ၵၢၼ်တႅမ်ႈ Search Logic ၼႂ်း `WordService`
ႁဝ်းတေမႃးသၢင်ႈ Method ဢၼ်ၸိုဝ်ႈဝႃႈ `searchWords` ဢၼ်တေ Check တူၺ်းတင်းသွင်ၽၢႆႇၶႃႈ:

```java
public List<WordDTO> searchWords(String query) {
    // 1. ႁႃၼႂ်းလိၵ်ႈတႆးဢွၼ်တၢင်း
    List<Word> shanResults = wordRepository.findByShanWordContaining(query);

    // 2. ႁႃၼႂ်းလိၵ်ႈဢင်းၵိတ်းထႅင်ႈ
    List<Word> englishResults = wordRepository.findByEnglishWordContaining(query);

    // 3. ဢဝ် Results တင်းသွင်မႃးႁူမ်ႈၵၼ် (Combine)
    Set<Word> allResults = new HashSet<>();
    allResults.addAll(shanResults);
    allResults.addAll(englishResults);

    // 4. ပိၼ်ႇ Entity ပဵၼ် DTO သေတွပ်ႇပၼ်ၶိုၼ်း
    return allResults.stream()
            .map(this::convertToDto)
            .toList();
}
```

---

### 3. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ `Set`?
မိူဝ်ႈႁဝ်းႁႃၶေႃႈမုၼ်းၼၼ်ႉ ၸၢင်ႈမီးပၼ်ႁႃ "ၶေႃႈမုၼ်းသွၼ်ႉၵၼ်" (Duplicates) ၶႃႈ။
* **Example:** သင် User တႅမ်ႈလိၵ်ႈဢၼ်မီးၼႂ်းတင်းသွင်ၽၢႆႇ ႁဝ်းဢမ်ႇၶႂ်ႈၼႄၶေႃႈၵႂၢမ်းတူဝ်လဵဝ်ၵၼ်ၼၼ်ႉ 2 ပွၵ်ႈၶႃႈ။
* **Set** တေၸွႆႈ "လူတ်းပႅတ်ႈ" တူဝ်ဢၼ်သွၼ်ႉၵၼ် ႁႂ်ႈၵိုတ်းတူဝ်လဵဝ်ႁင်းၵူၺ်းၶႃႈ။

### 4. ၵၢၼ်မႄး Logic ႁႂ်ႈလႅၼ်ႈဝႆး (Optimization)
သင်ၶေႃႈမုၼ်းႁဝ်းၼမ်လိူဝ် 10,000 ၶေႃႈၼႆ ႁဝ်းၸၢင်ႈမႄး Logic ႁႂ်ႈမၼ်း Check တူၺ်း "တူဝ်လိၵ်ႈ" ဢွၼ်တၢင်းၶႃႈ:
* သင်ပဵၼ်တူဝ်လိၵ်ႈတႆး => ႁႃၼႂ်း `shan_word` ၵူၺ်း။
* သင်ပဵၼ်တူဝ်လိၵ်ႈဢင်းၵိတ်း => ႁႃၼႂ်း `english_word` ၵူၺ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Advanced Search:** ၵၢၼ်ႁႃၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉသၢႆငၢႆ (Criteria) တင်းၼမ်ၸွမ်းၵၼ်။
* **HashSet:** ပိူင်သိမ်းၶေႃႈမုၼ်း (Collection) ဢၼ်ဢမ်ႇပၼ်မီး ၶေႃႈမုၼ်းသွၼ်ႉၵၼ်။
* **Stream API:** ၶိူင်ႈမိုဝ်းၼႂ်း Java တွၼ်ႈတႃႇၸတ်းၵၢၼ် List လႄႈ ၵၢၼ်ပိၼ်ႇ (Mapping) ၶေႃႈမုၼ်းႁႂ်ႈဝႆး။
* **Duplicates:** ၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ်သေ ဢွၵ်ႇမႃးသွၼ်ႉၵၼ် ၼမ်လိူဝ်ၼိုင်ႈပွၵ်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ **`Set`** တႅၼ်းတၢင်ၵၢၼ်ၸႂ်ႉ **`List`** မိူဝ်ႈႁဝ်းႁူမ်ႈ Results တင်းသွင်ၽၢႆႇ?
2.  သင်ႁဝ်းၶႂ်ႈႁႃၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ "ထၢၼ်ႈၵႂၢမ်း" (Part of Speech) ၸွမ်ၵၼ်တင်း Search Box ၼၼ်ႉ ႁဝ်းတေလႆႈထႅမ် Logic ၼႂ်း **Repository** ႁႃႉ ဢမ်ႇၼၼ် **Service**?