# Lesson 32: "Custom Business Exceptions" (ၵၢၼ်သၢင်ႈ Error ႁင်းၵူၺ်း)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Exception ဢၼ်မၵ်းမၼ်ႈဝႆႉတွၼ်ႈတႃႇ App **TaiGlish** ႁဝ်းၵူၺ်း။ 
မိူၼ်ၼင်ႇ: သင် User သႂ်ႇလိၵ်ႈတႆးၶေႃႈဢၼ်မီးဝႆႉယူႇယဝ်ႉ (Duplicate) ႁဝ်းၶႂ်ႈပၼ် Error ႁင်းၵူၺ်းၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇသၢင်ႈ Custom Exception?
1. **Meaningful Errors:** တႅၼ်းတၢင်ၵၢၼ်ၸႂ်ႉ `RuntimeException` ပဝ်ႇပဝ်ႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `WordNotFoundException` ဢၼ်လူယဝ်ႉပွင်ႇၸႂ်ၵမ်းလဵဝ်ၶႃႈ။
2. **Specific Handling:** ႁဝ်းၸၢင်ႈၸတ်းၵၢၼ် Error ပိူင်ၼိုင်ႈ ႁႂ်ႈပႅၵ်ႇပိူင်ႈတင်းထႅင်ႈပိူင်ၼိုင်ႈ ၼႂ်း `GlobalExceptionHandler` ၶႃႈ။

---

### 2. ၵၢၼ်သၢင်ႈ `ResourceNotFoundException`
ႁဝ်းသၢင်ႈ Class ၼႆႉဝႆႉၼႂ်း Package `exception` ၶႃႈ:

```java
package it.saimao.taiglish.exception;

// သၢင်ႈ Class ႁႂ်ႈမၼ်း Extend တီႈ RuntimeException
public class ResourceNotFoundException extends RuntimeException {
    public ResourceNotFoundException(String message) {
        super(message);
    }
}
```

---

### 3. ၵၢၼ်ၸႂ်ႉၼႂ်း `WordService`
မိူဝ်ႈႁဝ်းႁႃၶေႃႈမုၼ်းဢမ်ႇႁၼ် ႁဝ်းတေ "ပွႆႇ" (Throw) Exception ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉဢွၵ်ႇၵႂႃႇၶႃႈ:

```java
public WordDTO getWordById(Long id) {
    Word word = wordRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("ဢမ်ႇႁၼ်လိၵ်ႈတႆး ဢၼ်မီး ID: " + id));
    return convertToDto(word);
}
```

---

### 4. ၵၢၼ်ၺႃပ်း (Catch) ၼႂ်း `GlobalExceptionHandler`
မိူဝ်ႈလဵဝ်ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Status Code ႁင်းၵူၺ်း တွၼ်ႈတႃႇ Exception တူဝ်ၼႆႉၶႃႈ:

```java
@ExceptionHandler(ResourceNotFoundException.class)
public ResponseEntity<ErrorResponse> handleResourceNotFound(ResourceNotFoundException ex, WebRequest request) {
    
    ErrorResponse error = new ErrorResponse(
            LocalDateTime.now(),
            HttpStatus.NOT_FOUND.value(), // တွပ်ႇပၼ် 404
            "Not Found",
            ex.getMessage(),
            request.getDescription(false)
    );
    
    return new ResponseEntity<>(error, HttpStatus.NOT_FOUND);
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Business Exception:** Error ဢၼ်ၵဵဝ်ႇလူၺ်ႈပိူင်ၵၢၼ် (Logic) ၶွင် App ႁဝ်း။
* **Extend:** ၵၢၼ်သိုပ်ႇၸိူဝ်ႉ (Inherit) ဢဝ်ၼႃႈတီႈတီႈ Class ပိူင်လူင်။
* **Throw:** ၵၢၼ်ပွႆႇသိတ်ႇၼႄႇ Error ဢွၵ်ႇၵႂႃႇ မိူဝ်ႈမီးပၼ်ႁႃ။
* **Custom Exception:** Class ဢၼ် Developer သၢင်ႈမႂ်ႇ တွၼ်ႈတႃႇၸတ်းၵၢၼ် Error။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈသၢင်ႈ Exception တွၼ်ႈတႃႇ "လိၵ်ႈတႆးဢၼ်မီးဝႆႉယူႇယဝ်ႉ" (Duplicate) ၼၼ်ႉ ႁဝ်းတေတင်ႈၸိုဝ်ႈ Class ၼၼ်ႉဝႃႈၸိူင်ႉႁိုဝ်?
2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **`super(message)`** ၼႂ်း Constructor ၶွင် Custom Exception ႁဝ်း?
