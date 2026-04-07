# Lesson 27: "Triggering Validation in Controller" (ၵၢၼ်ပိုတ်ႇၵၢၼ်ၵူတ်ႇထတ်း)

သင်ႁဝ်းတႅမ်ႈ `@NotBlank` ဝႆႉၼႂ်း DTO ၵူၺ်း သမ်ႉဢမ်ႇသင်ႇပၼ်ၼႂ်း Controller ၼၼ်ႉ
Spring Boot တေဢမ်ႇၵူတ်ႇထတ်းသင်သေ တေလွတ်ႈပၼ်ၶေႃႈမုၼ်းပဝ်ႇၼၼ်ႉ ၶဝ်ႈၵႂႃႇၸူး Service ၶႃႈ။ 
ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ Annotation ဢၼ်ၸိုဝ်ႈဝႃႈ **`@Valid`** ၶႃႈ။

### 1. Annotation `@Valid` ၼႆႉ ပဵၼ်သင်?
`@Valid` ပဵၼ်ၵႂၢမ်းသင်ႇဢၼ်လၢတ်ႈပၼ် Spring ဝႃႈ: *"မိူဝ်ႈသူင်ႇ JSON Body မႃးၼၼ်ႉ
ယႃႇပႆႇသူင်ႇၸူး Service ၵမ်းလဵဝ်၊ ၵႂႃႇၵူတ်ႇထတ်းတူၺ်း Annotations ၸိူဝ်းဢၼ်တႅမ်ႈဝႆႉၼႂ်း Class ၼၼ်ႉဢွၼ်တၢင်းၶႃႈ"* ၼႆၶႃႈ။



---

### 2. ၵၢၼ်မႄး Code ၼႂ်း `WordController`
ႁဝ်းၵႂႃႇထႅမ် `@Valid` ဝႆႉၼႃႈ `@RequestBody` ၼႂ်း Method **POST** လႄႈ **PUT** ၶႃႈ:

```java
@PostMapping
public ResponseEntity<WordDTO> createWord(@Valid @RequestBody WordDTO wordDto) {
    // သင်ၶေႃႈမုၼ်းၽိတ်း... Code ၼႂ်းၼႆႉတေဢမ်ႇႁဵတ်းၵၢၼ်
    // Spring တေ Throw Exception ပၼ်ႁင်းၵူၺ်းၶႃႈ
    WordDTO savedWord = wordService.save(wordDto);
    return new ResponseEntity<>(savedWord, HttpStatus.CREATED);
}

@PutMapping("/{id}")
public ResponseEntity<WordDTO> updateWord(
        @PathVariable Long id, 
        @Valid @RequestBody WordDTO wordDto) {
    WordDTO updatedWord = wordService.update(id, wordDto);
    return ResponseEntity.ok(updatedWord);
}
```

---

### 3. တေပဵၼ်သင် သင် User သူင်ႇၶေႃႈမုၼ်းၽိတ်းမႃး?
မိူဝ်ႈႁဝ်းၸႂ်ႉ `@Valid` ယဝ်ႉၼၼ်ႉ သင် User သူင်ႇလိၵ်ႈပဝ်ႇ (Blank) မႃး:
1.  **Validation Fail:** Spring Boot တေႁူႉၵမ်းလဵဝ်ဝႃႈမၼ်းၽိတ်းပိူင်။
2.  **Exception:** မၼ်းတေ Throw **`MethodArgumentNotValidException`**။
3.  **Response:** User တေလႆႈ Status **400 Bad Request** ၵမ်းလဵဝ်ၶႃႈ။

---

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ `@Valid`?
* **Security:** ႁႄႉၵင်ႈ ယႃႇႁႂ်ႈၶေႃႈမုၼ်းဢၼ်ဢမ်ႇတူဝ်ႈတႅတ်ႈ (Junk Data) ၶဝ်ႈၵႂႃႇၼႂ်း Database ၶႃႈ။
* **Consistency:** ႁႂ်ႈၼႄႉၸႂ်ဝႃႈ ၶေႃႈမုၼ်းလိၵ်ႈတႆးၵူႈၶေႃႈ တေလႆႈမီးတင်း လိၵ်ႈတႆး လႄႈ လိၵ်ႈဢင်းၵိတ်း ၸွမ်းၵၼ်တႃႇသေႇ။
* **Cleaner Service:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `if (word == null)` ၼမ်ၼမ်ၼႂ်း Service ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Bad Request (400):** HTTP Status ဢၼ်မၢႆထိုင်ဝႃႈ ၶေႃႈမုၼ်းဢၼ် Client သူင်ႇမႃးၼၼ်ႉၽိတ်းပိူင်။
* **Trigger:** ၵၢၼ်ပိုတ်ႇႁႂ်ႈၵၢၼ်သင်ႇၼိုင်ႈဢၼ် တႄႇႁဵတ်းၵၢၼ်။
* **Binding:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်း JSON မႃးၵွင်ႉၸူး Java Object။
* **Validation Error:** ၽွၼ်းလႅၼ်ႈမိူဝ်ႈၶေႃႈမုၼ်း ဢမ်ႇမၢၼ်ႇၸွမ်း Constraints ဢၼ်တင်ႈဝႆႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းဢမ်ႇသႂ်ႇ **`@Valid`** ၼႃႈ `@RequestBody` ၼၼ်ႉ Annotations ၸိူင်ႉၼင်ႇ `@NotBlank` ၼႂ်း DTO တေႁဵတ်းၵၢၼ်ယူႇႁႃႉ?
2.  Status Code လႂ် ဢၼ် Spring Boot တွပ်ႇပၼ် User မိူဝ်ႈ Validation ၽိတ်း?
