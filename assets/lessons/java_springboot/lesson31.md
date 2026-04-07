# Lesson 31: "Handling MethodArgumentNotValidException" (ၵၢၼ်ၸတ်းၵၢၼ် Validation Error)

မိူဝ်ႈ User သူင်ႇ JSON ဢၼ်ဢမ်ႇမႃးၸွမ်း Constraints (မိူၼ်ၼင်ႇ `shanWord` ပဝ်ႇဝႆႉ) ၼၼ်ႉ ႁဝ်းဢမ်ႇၶႂ်ႈတွပ်ႇပၼ် Error ပဝ်ႇပဝ်ႇၶႃႈ။ 
ႁဝ်းၶႂ်ႈလၢတ်ႈၼႄၶဝ်ၸႅင်ႈလႅင်းဝႃႈ "လိၵ်ႈတႆး လူဝ်ႇလႆႈသႂ်ႇဝႆႉၶႃႈ!" ၸိူင်ႉၼႆၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ် Exception ၼႆႉ?
* **Precision:** တွၼ်ႈတႃႇလၢတ်ႈပၼ် User ႁူႉဝႃႈ ၶဝ်တႅမ်ႈၽိတ်းတီႈလႂ်တႄႉတႄႉ။
* **User Experience:** ႁဵတ်းႁႂ်ႈၵူၼ်းတႅမ်ႈ Flutter ၼႄ Error Message ပၼ် User လႆႈငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ ၼႄလိၵ်ႈလႅင်တႂ်ႈ TextField) ၶႃႈ။



---

### 2. ၵၢၼ်ထႅမ် Method ၼႂ်း `GlobalExceptionHandler`
ႁဝ်းထႅမ်သႂ်ႇ Method ၼႆႉ ၶဝ်ႈၵႂႃႇၼႂ်း Class **`GlobalExceptionHandler`** ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ:

```java
@ExceptionHandler(MethodArgumentNotValidException.class)
public ResponseEntity<Object> handleValidationExceptions(MethodArgumentNotValidException ex) {
    
    // 1. သၢင်ႈ Map တွၼ်ႈတႃႇသိမ်း Error ၵူႈ Field (Field Name -> Error Message)
    Map<String, String> errors = new HashMap<>();
    
    ex.getBindingResult().getAllErrors().forEach((error) -> {
        String fieldName = ((FieldError) error).getField();
        String errorMessage = error.getDefaultMessage();
        errors.put(fieldName, errorMessage);
    });

    // 2. သၢင်ႈ Error Response ဢၼ်မီး Detail ၸႅၼ်ႇလႅင်း
    Map<String, Object> body = new LinkedHashMap<>();
    body.put("timestamp", LocalDateTime.now());
    body.put("status", HttpStatus.BAD_REQUEST.value());
    body.put("errors", errors); // ၼႄ List ၶွင် Fields ဢၼ်ၽိတ်းတင်းမူတ်း

    return new ResponseEntity<>(body, HttpStatus.BAD_REQUEST);
}
```

---

### 3. ၽွၼ်းလႅၼ်ႈ JSON ဢၼ်တေလႆႈ (Result)
မိူဝ်ႈႁဝ်းသူင်ႇ JSON ဢၼ်ပဝ်ႇဝႆႉ (Empty) ၵႂႃႇၸၢမ်းၼႂ်း Postman ၼၼ်ႉ ႁဝ်းတေလႆႈႁၼ်ၶေႃႈတွပ်ႇႁၢင်ႈလီၸိူင်ႉၼႆၶႃႈ:

```json
{
  "timestamp": "2026-04-07T16:20:00",
  "status": 400,
  "errors": {
    "shanWord": "လိၵ်ႈတႆး လူဝ်ႇလႆႈသႂ်ႇဝႆႉၶႃႈ!",
    "englishMeaning": "တေလႆႈမီးတူဝ်လိၵ်ႈယၢဝ်းလိူဝ် 2 တူဝ်ၶႃႈ",
    "partOfSpeech": "Part of speech is required"
  }
}
```

---

### 4. ႁဵတ်းသင်မၼ်းၸင်ႇသူင်ႇလႆႈလၢႆ Error ၸွမ်ၵၼ်?
ၵွပ်ႈႁဝ်းၸႂ်ႉ **`ex.getBindingResult().getAllErrors()`** ၶႃႈ။ 
မၼ်းတေၵႂႃႇတူၺ်း Annotations တင်းမူတ်းၼႂ်း DTO ႁဝ်း သေ "ႁူမ်ႈ" (Collect) ဢဝ် Error တင်းမူတ်းမႃးတွပ်ႇပၼ်ၼႂ်း Request လဵဝ်ၵၼ်ၶႃႈ။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **BindingResult:** Object ၼႂ်း Spring ဢၼ်သိမ်းၽွၼ်းလႅၼ်ႈလွင်ႈၵူတ်ႇထတ်း (Validation Results)။
* **FieldError:** Object ဢၼ်သပ်းလႅင်းပၼ်ဝႃႈ Error ၼၼ်ႉၵိူတ်ႇတီႈ Field လႂ်။
* **Bad Request (400):** Status Code ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Validation Error တႃႇသေႇ။
* **Map (Key-Value):** ပိူင်သိမ်းၶေႃႈမုၼ်းဢၼ်မီး "ၸိုဝ်ႈ" (Key) လႄႈ "ၶေႃႈမုၼ်း" (Value)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် User သူင်ႇ Fields ၽိတ်းမႃး 3 တူဝ်ၼႆ Method ၼႆႉတေတွပ်ႇပၼ် Error ၸိူင်ႉႁိုဝ်ၶႃႈ?
2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **`HashMap`** တွၼ်ႈတႃႇသိမ်း Error Messages ၼႂ်း Lesson ၼႆႉ?
