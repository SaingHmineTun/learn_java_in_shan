# Lesson 28: "Pagination & Sorting" (ၵၢၼ်တႅၵ်ႇၼႃႈလိၵ်ႈ လႄႈ ၸတ်းထႅဝ်)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးလဵပ်ႈႁဵၼ်း လၢႆး "ၸႅၵ်ႇၼႃႈလိၵ်ႈ" (မိူၼ်ၼင်ႇ Google Search ဢၼ်မီး Page 1, 2, 3) လႄႈ လၢႆးၸတ်းထႅဝ်လိၵ်ႈ (Sorting) ႁႂ်ႈမၼ်း ၸွမ်းတူဝ်လိၵ်ႈ A-Z ဢမ်ႇၼၼ် ၵ-ႁ ၶႃႈ။

### 1. Pagination ၼႆႉ ပဵၼ်သင်?
မၼ်းပဵၼ်ၵၢၼ် "ၸႅၵ်ႇ" ၶေႃႈမုၼ်းဢၼ်ၼမ်ၼၼ်ႉ ႁႂ်ႈပဵၼ်တွၼ်ႈဢွၼ်ႇၶႃႈ။
* **Page Number:** ၼႃႈလိၵ်ႈဢၼ်ႁဝ်းၶႂ်ႈတူၺ်း (တႄႇလူၺ်ႈ 0)။
* **Page Size:** ၼႃႈလိၵ်ႈ ၼိုင်ႈၼႃႈၼႆႉ ႁဝ်းၶႂ်ႈႁႂ်ႈၼႄ လၢႆၶေႃႈ (မိူၼ်ၼင်ႇ 10 ၶေႃႈ)။



---

### 2. ၵၢၼ်မႄး `WordRepository`
Spring Data JPA ၸွႆးႁဝ်းငၢႆႈငၢႆႈၶႃႈ။ ႁဝ်းၵူၺ်းလူဝ်ႇသူင်ႇ **`Pageable`** ၶဝ်ႈၵႂႃႇၼႂ်း Method ႁဝ်းၵူၺ်းၶႃႈ:

```java
// ၼႂ်း WordRepository.java
Page<Word> findByShanWordContaining(String shanWord, Pageable pageable);
```

---

### 3. ၵၢၼ်တႅမ်ႈ Logic ၼႂ်း `WordService`
ႁဝ်းလူဝ်ႇလႆႈသၢင်ႈ `PageRequest` တွၼ်ႈတႃႇမၵ်းမၼ်ႈ "ၼႃႈလိၵ်ႈ" လႄႈ "ၵၢၼ်ၸတ်းထႅဝ်" ၶႃႈ:

```java
public Page<WordDTO> getWords(int page, int size, String sortBy) {
    // 1. သၢင်ႈ Pageable Object (ၼႃႈလိၵ်ႈ, တၢင်းၼမ်, ၸတ်းၸွမ်းသင်)
    Pageable pageable = PageRequest.of(page, size, Sort.by(sortBy).ascending());
    
    // 2. ႁွင်ႉ Repo သေ တွပ်ႇပၼ်ပဵၼ် Page
    return wordRepository.findAll(pageable)
            .map(this::convertToDto);
}
```

---

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉၼႂ်း `WordController`
ႁဝ်းတေၸႂ်ႉ **`@RequestParam`** တွၼ်ႈတႃႇႁပ်ႉၶေႃႈမုၼ်းတီႈ URL ၶႃႈ:

```java
@GetMapping("/search")
public Page<WordDTO> getPagedWords(
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "10") int size,
        @RequestParam(defaultValue = "shanWord") String sortBy) {
    
    return wordService.getWords(page, size, sortBy);
}
```

---

### 5. လၢႆးၸမ်းတူၺ်း (URL Example)
မိူဝ်ႈၸဝ်ႈၶူးၸမ်းၼႂ်း Postman:
* `http://localhost:8081/api/words/search?page=0&size=5&sortBy=englishMeaning`
* **Result:** မၼ်းတေတွပ်ႇပၼ်လိၵ်ႈတႆး 5 ၶေႃႈ ဢွၼ်တၢင်းသုတ်း လႄႈ ၸတ်းထႅဝ်ၸွမ်းလိၵ်ႈဢင်းၵိတ်းၶႃႈ။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Pagination:** ၵၢၼ်ၸႅၵ်ႇၶေႃႈမုၼ်းပဵၼ်ၼႃႈလိၵ်ႈ။
* **Sorting:** ၵၢၼ်ၸတ်းထႅဝ်ၶေႃႈမုၼ်း (Ascending/Descending)။
* **Pageable:** Interface ၼႂ်း Spring ဢၼ်သိမ်းၶေႃႈမုၼ်း Pagination။
* **Offset:** တီႈတႄႇႁွင်ႉဢဝ်ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Page 1, Size 10 => Offset = 10)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းၶႂ်ႈတူၺ်း "ၼႃႈလိၵ်ႈမၢႆ 3" (Page 2) သေ ႁႂ်ႈမၼ်းၼႄ "20 ၶေႃႈ" ... URL ႁဝ်းတေပဵၼ်ၸိူင်ႉႁိုဝ်?
2.  ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **`Page<WordDTO>`** တႅၼ်းတၢင် **`List<WordDTO>`** မိူဝ်ႈႁဵတ်း Pagination?