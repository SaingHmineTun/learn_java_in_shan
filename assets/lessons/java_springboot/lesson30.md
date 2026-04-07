# Lesson 30: "Global Exception Handling with @RestControllerAdvice"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Class ၼိုင်ႈဢၼ် ဢၼ်တေပဵၼ် "တီႈၵၢင်" (Centralized) တွၼ်ႈတႃႇၸတ်းၵၢၼ် Error ၵူႈပိူင်။ 
ဢမ်ႇဝႃႈ Error တေၵိူတ်ႇတီႈ Controller, Service, ဢမ်ႇၼၼ် Repository ၵေႃႈယႃႇ၊ Class ၼႆႉတေၺွပ်းဢဝ်တင်းမူတ်းၶႃႈ။

### 1. @RestControllerAdvice ၼႆႉ ပဵၼ်သင်?
မၼ်းပဵၼ် Annotation ဢၼ်လၢတ်ႈပၼ် Spring Boot ဝႃႈ: *"Class ၼႆႉ ပဵၼ်ၵူၼ်းပၼ်ၶေႃႈၵႂၢမ်းသင်ႇ (Advice) ၸူး Controller တင်းမူတ်းၶႃႈဢေႃႈ"* ၼႆၶႃႈ။
* မၼ်းတေ "ထွမ်ႇ" (Intercept) တူၺ်းဝႃႈ မီး Exception (Error) သင်ၵိူတ်ႇမႃး?
* သင်မီးၼႆ မၼ်းတေၸႂ်ႉ Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ တွပ်ႇပၼ် JSON Error ႁၢင်ႈလီၶႃႈ။



---

### 2. ၵၢၼ်သၢင်ႈ `GlobalExceptionHandler.java`
ႁဝ်းၶူင်သၢင်ႈ Class ၼႆႉဝႆႉၼႂ်း Package `exception` ၶႃႈ:

```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    // 1. ၸတ်းၵၢၼ်မိူဝ်ႈႁႃ ID ဢမ်ႇႁၼ် (Resource Not Found)
    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ErrorResponse> handleRuntimeException(RuntimeException ex, WebRequest request) {
        
        ErrorResponse error = new ErrorResponse(
                LocalDateTime.now(),
                HttpStatus.NOT_FOUND.value(),
                "Not Found",
                ex.getMessage(),
                request.getDescription(false)
        );
        
        return new ResponseEntity<>(error, HttpStatus.NOT_FOUND);
    }

    // 2. ၸတ်းၵၢၼ် Error တၢင်ႇပိူင်တင်းမူတ်း (General Error)
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResponse> handleGlobalException(Exception ex, WebRequest request) {
        
        ErrorResponse error = new ErrorResponse(
                LocalDateTime.now(),
                HttpStatus.INTERNAL_SERVER_ERROR.value(),
                "Internal Server Error",
                "မီးပၼ်ႁႃၼႂ်း Server ၶႃႈ၊ ထႅင်ႈၵမ်းဢွၼ်ႇၼိုင်ႈ ၸင်ႇၶဝ်ႈတူၺ်းၶိုၼ်းၶႃႈ",
                request.getDescription(false)
        );
        
        return new ResponseEntity<>(error, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
```

---

### 3. Annotation `@ExceptionHandler`
Annotation ၼႆႉ ၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ: *"Method ၼႆႉ တေၸတ်းၵၢၼ် Error ပိူင်လႂ်?"*
* သင်ပဵၼ် `RuntimeException.class` => မၼ်းတေမႃးၶဝ်ႈ Method ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉၶႃႈ။

### 4. ၽွၼ်းလီၶွင် Global Handling
1. **Clean Code:** Controller ႁဝ်းတေဢမ်ႇလူဝ်ႇမီး `try-catch` ၼမ်ၼမ်ယဝ်ႉ။
2. **Consistency:** Error Message တင်းမူတ်း တေဢွၵ်ႇမႃးၼႂ်းႁၢင်ႈၾၢင် (Format) လဵဝ်ၵၼ်ၵူႈတီႈ။
3. **Control:** ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ HTTP Status Code (404, 500, 400) လႆႈၸွမ်းၼင်ႇၸႂ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Intercept:** ၵၢၼ်ၺွပ်းဢဝ် ၼႂ်းၵႄႈတၢင်း။
* **Centralized:** ၵၢၼ်ႁူမ်ႈဝႆႉတီႈလဵဝ် (တီႈၵၢင်)။
* **WebRequest:** Object ဢၼ်သိမ်းၶေႃႈမုၼ်းလွင်ႈ Request (မိူၼ်ၼင်ႇ URL Path)။
* **Advice:** ၼႂ်း Spring မၢႆထိုင် Code ဢၼ်မႃးၸွႆးထႅမ်ပၼ် Class တၢင်ႇတူဝ်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ **`@RestControllerAdvice`** တႅၼ်းတၢင်ၵၢၼ်ၸႂ်ႉ `try-catch` ၼႂ်း Controller ၵူႈဢၼ်?
2. Method လႂ်ၼႂ်း `GlobalExceptionHandler` ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈမီး Error ဢၼ်ႁဝ်းဢမ်ႇႁူႉၸၵ်းၵိူတ်ႇမႃး?
