# Lesson 4: "REST Fundamentals & GetMapping" (ပိုၼ်ႉထၢၼ် REST လႄႈ ၵၢၼ်လူ Data)

တွၼ်ႈတႃႇ App **TaiGlish** ႁဝ်းတေလၢတ်ႈတေႃႇတင်း လူၵ်ႈၽၢႆႇၼွၵ်ႈ (မိူၼ်ၼင်ႇ Browser ဢမ်ႇၼၼ် Flutter) လႆႈၼၼ်ႉ 
ႁဝ်းတေလႆႈၸႂ်ႉပိူင်ဢၼ်ႁွင်ႉဝႃႈ **REST API** ၶႃႈ။

### 1. REST API ၼႆႉ ပဵၼ်သင်?
REST မိူၼ်ၼင်ႇ "လၢႆးလၢတ်ႈၵႂၢမ်း" ၵၼ်ၼႂ်းဢိၼ်ႇထိူဝ်ႇၼႅတ်ႉၶႃႈ။
* **Client:** (Browser/Phone) ပဵၼ်ၵေႃႉ "ထၢမ်" (Request)။
* **Server:** (TaiGlish App) ပဵၼ်ၵေႃႉ "တွပ်ႇ" (Response)။
* ႁဝ်းၸႂ်ႉ **URL** (မိူၼ်ၼင်ႇ `/api/hello`) တွၼ်ႈတႃႇမၢႆထိုင် တီႈယူႇၶေႃႈမုၼ်းၶႃႈ။

### 2. ၵၢၼ်သၢင်ႈ Controller
ႁဝ်းမႃးသၢင်ႈၾၢႆႇ Java မႂ်ႇၼိုင်ႈဢၼ် ၸိုဝ်ႈဝႃႈ `HelloController.java` ဝႆႉၼႂ်း Package `it.saimao.taiglish.controller` သေတႅမ်ႈၸိူင်ႉၼႆၶႃႈ:

```java
@RestController
public class HelloController {

    @GetMapping("/api/hello")
    public String sayHello() {
        return "မႂ်ႇသုင် TaiGlish!";
    }
}
```

* **`@RestController`:** ပဵၼ်ၵၢၼ်မၢႆတွင်းဝႃႈ Class ၼႆႉ တေပဵၼ်ၵေႃႉႁပ်ႉ "ၵႂၢမ်းထၢမ်" (Request) ၶႃႈ။
* **`@GetMapping`:** မၢႆထိုင်ဝႃႈ သင်မီးၵူၼ်းၶဝ်ႈမႃးတီႈ URL `/api/hello` ၼႆ ႁႂ်ႈႁဵတ်းၵၢၼ် (Method) ဢၼ်မီးတီႈတႂ်ႈမၼ်းၼၼ်ႉၶႃႈ။



---

### 3. ၵၢၼ်ၸၢမ်းတူၺ်း (Testing)
မိူဝ်ႈႁဝ်း Run App ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁႂ်ႈပိုတ်ႇ Browser သေတႅမ်ႈ URL ၸိူင်ႉၼႆၶႃႈ:
`http://localhost:8081/api/hello`
(တေလႆႈႁၼ်လိၵ်ႈၼႄဝႃႈ: **မႂ်ႇသုင် TaiGlish!**)

### 4. ၵၢၼ်သႂ်ႇ Path တင်းၼမ်
ႁဝ်းလႆႈတႅမ်ႈ Method လႆႈတင်းၼမ်ၼႂ်း Controller ၼိုင်ႈဢၼ်ၶႃႈ:

```java
@GetMapping("/api/version")
public String getVersion() {
    return "TaiGlish API Version 1.0";
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Controller:** Class ဢၼ်ၸတ်းၵၢၼ် HTTP Request (ၵႂၢမ်းထၢမ်) တၢင်းမူတ်း။
* **Endpoint:** URL ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ တွၼ်ႈတႃႇပၼ်ၵူၼ်းတၢင်ႇၵေႃႉမႃးၸႂ်ႉ (မိူၼ်ၼင်ႇ `/api/hello`)။
* **GetMapping:** Annotation ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ "လူဢဝ်" (Read/Get) ၶေႃႈမုၼ်း။
* **HTTP Status Code:** မၢႆတူဝ်ၼပ်ႉ ဢၼ် Server တွပ်ႇမႃး (မိူၼ်ၼင်ႇ 200 မၢႆထိုင် "တူဝ်ႈတႅတ်ႈ"၊ 404 မၢႆထိုင် "ဢမ်ႇႁၼ်")။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈသၢင်ႈ Endpoint မႂ်ႇ ဢၼ်တေၼႄၸိုဝ်ႈ "မူႇၸုမ်း" (Sect) ႁဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Annotation တူဝ်လႂ်?
2. ၼႂ်း Browser ၼၼ်ႉ ပိူင်ထမ်ႇမတႃႇ (Default) မၼ်းသူင်ႇ Request ပဵၼ် Method သင်? (**GET** ႁႃႉ? ဢမ်ႇၼၼ် **POST**?)