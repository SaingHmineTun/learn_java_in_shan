# Lesson 29: "Custom Error Response Object" (ၵၢၼ်သၢင်ႈ Object တွၼ်ႈတႃႇ Error)

ၼႂ်း REST API ၼၼ်ႉ သင်ပဵၼ်လႆႈၼႆ ႁဝ်းဢမ်ႇထုၵ်ႇလီသူင်ႇ Error ပဝ်ႇပဝ်ႇၵႂႃႇၶႃႈ။ 
ႁဝ်းထုၵ်ႇလီသူင်ႇ JSON ဢၼ်မီး **Timestamp**, **Status Code**, လႄႈ **Message** ဢၼ်ၸႅင်ႈလႅင်းၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇသၢင်ႈ Class ႁင်းၵူၺ်း?
1. **Consistency:** ႁႂ်ႈ Error ၵူႈတူဝ်ၼႂ်း App ႁဝ်း မီးႁၢင်ႈၾၢင် (Structure) မိူၼ်ၵၼ်တင်းမူတ်း။
2. **Frontend Friendly:** တွၼ်ႈတႃႇႁႂ်ႈၵူၼ်းတႅမ်ႈ Flutter ဢမ်ႇၼၼ် Website ၶဝ် "ၺွပ်း" (Catch) ဢဝ် Error ႁဝ်းသေ ၼႄပၼ် User လႆႈငၢႆႈငၢႆႈၶႃႈ။



---

### 2. ၵၢၼ်သၢင်ႈ `ErrorResponse.java`
ႁဝ်းၶူင်သၢင်ႈ Class ၼႆႉဝႆႉၼႂ်း Package `dto` ဢမ်ႇၼၼ် သၢင်ႈ Package မႂ်ႇၸိုဝ်ႈဝႃႈ `exception` ၵေႃႈလႆႈၶႃႈ:

```java
package it.saimao.taiglish.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class ErrorResponse {
    private LocalDateTime timestamp;
    private int status;
    private String error;
    private String message;
    private String path;
}
```

---

### 3. ႁၢင်ႈၾၢင် JSON ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ
မိူဝ်ႈမီး Error ၵိူတ်ႇမႃး (မိူၼ်ၼင်ႇ ႁႃ ID ဢမ်ႇႁၼ်) ႁဝ်းၶႂ်ႈႁႂ်ႈ App ႁဝ်းတွပ်ႇပၼ်ၸိူင်ႉၼႆၶႃႈ:

```json
{
  "timestamp": "2026-04-07T16:00:00",
  "status": 404,
  "error": "Not Found",
  "message": "ဢမ်ႇႁၼ်လိၵ်ႈတႆး ဢၼ်မီး ID: 99",
  "path": "/api/words/99"
}
```

---

### 4. ၵၢၼ်ၸတ်းၵၢၼ် Validation Errors (Advanced)
သင်ပဵၼ် Error ဢၼ်မႃးတီႈ **Validation** (Lesson 26) ၼၼ်ႉ ႁဝ်းၸၢင်ႈထႅမ် `List<String> errors` ၶဝ်ႈၵႂႃႇၼႂ်း Class ၼႆႉထႅင်ႈ တွၼ်ႈတႃႇၼႄဝႃႈ "Fields လႂ်ၽိတ်းဝႆႉ" ၼႆၶႃႈ။

```java
// ထႅမ်ဝႆႉတွၼ်ႈတႃႇ Validation Errors
private List<String> details; 
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Timestamp:** ဝၼ်းထိ လႄႈ ၶၢဝ်းယၢမ်း ဢၼ် Error ၵိူတ်ႇမႃး။
* **Payload:** ၶေႃႈမုၼ်း (Data) ဢၼ်ႁဝ်းသူင်ႇၵႂႃႇၼႂ်း Response Body။
* **Structure:** ပိူင်သၢင်ႈ ဢမ်ႇၼၼ် ႁၢင်ႈၾၢင်ၶွင် Object။
* **Custom Object:** Object ဢၼ် Developer သၢင်ႈၶိုၼ်ႈမႃးႁင်းၵူၺ်း တွၼ်ႈတႃႇၸႂ်ႉၼႂ်း App။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း Class **`ErrorResponse`**, ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇလႆႈသႂ်ႇ **`LocalDateTime`**?
2. Field **`path`** ၼၼ်ႉ မီးၼႃႈတီႈတွၼ်ႈတႃႇသင် ၼႂ်းၵၢၼ်ၸတ်းၵၢၼ် Error?