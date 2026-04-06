# Lesson 5: "Configuration & The .properties File" (ၵၢၼ်သင်ႇၵၢၼ် လႄႈ ၾၢႆႇ Settings)

ၼႂ်း App **TaiGlish** ႁဝ်းၼၼ်ႉ မီးၶေႃႈမုၼ်းလၢႆလၢႆၸိူဝ်း ဢၼ်ႁဝ်းဢမ်ႇထုၵ်ႇလီ "တႅမ်ႈတၢႆ" (Hardcode) ဝႆႉၼႂ်း Code Java ၶႃႈ။ 
ႁဝ်းတေလႆႈဢဝ်မႃးသိမ်းဝႆႉၼႂ်းၾၢႆႇ Settings ၶႃႈ။

### 1. ၾၢႆႇ `application.properties` ၼႆႉ ပဵၼ်သင်?
ၾၢႆႇၼႆႉမီးဝႆႉၼႂ်း `src/main/resources` ၶႃႈ။ မၼ်းမိူၼ်ၼင်ႇ "ၵၢင်း" ဢၼ်ၵုမ်းၵမ် App ႁဝ်းတင်းမူတ်းၶႃႈ။
* ႁဝ်းၸႂ်ႉပိူင် `key=value` တွၼ်ႈတႃႇမၢႆထိုင် Settings ၶႃႈ။

### 2. ၵၢၼ်မႄး Port လႄႈ ၸိုဝ်ႈ App
ပိူင်ထမ်ႇမတႃႇ (Default) Spring Boot တေလႅၼ်ႈၼႂ်း Port 8080 ၶႃႈ။ သင်ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈ ႁႂ်ႈတႅမ်ႈၸိူင်ႉၼႆၶႃႈ:

```properties
# လႅၵ်ႈလၢႆႈ Port Server
server.port=8081

# တင်ႈၸိုဝ်ႈ Application
spring.application.name=taiglish-service
```



---

### 3. ၵၢၼ်ၸႂ်ႉ `@Value` တွၼ်ႈတႃႇလူၶေႃႈမုၼ်း
သင်ႁဝ်းမီးၶေႃႈမုၼ်း ဢၼ်ၶႂ်ႈလူဢဝ်မႃးၸႂ်ႉၼႂ်း Controller (မိူၼ်ၼင်ႇ Version ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်း Welcome) ႁဝ်းတေလႆႈႁဵတ်းၸိူင်ႉၼႆၶႃႈ:

**ၼႂ်း `application.properties`:**
```properties
taiglish.welcome-message=မႂ်ႇသုင်ၶႃႈ! TaiGlish ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈယူႇၶႃႈ
```

**ၼႂ်း Java Controller:**
```java
@RestController
public class HelloController {

    @Value("${taiglish.welcome-message}")
    private String welcomeMsg;

    @GetMapping("/api/welcome")
    public String welcome() {
        return welcomeMsg;
    }
}
```

### 4. ၵၢၼ်မႄး Banner (Custom Banner)
Spring Boot ပၼ်ႁဝ်းလႅၵ်ႈလၢႆႈ ASCII Art ဢၼ်ၼႄၼႂ်း Console မိူဝ်ႈ App တႄႇလႅၼ်ႈ (Start) ၶႃႈ။
* သၢင်ႈၾၢႆႇ `banner.txt` ဝႆႉၼႂ်း Folder `resources`။
* ဢဝ်လိၵ်ႈ ASCII Art ဢၼ်ပဵၼ်ၸိုဝ်ႈ **TaiGlish** သႂ်ႇၶဝ်ႈၵႂႃႇၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Configuration:** ၵၢၼ်မၵ်းမၼ်ႈ ဢမ်ႇၼၼ် သင်ႇၵၢၼ် ႁႂ်ႈ App ႁဵတ်းၵၢၼ်ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈ။
* **Hardcode:** ၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်း "တၢႆ" ဝႆႉၼႂ်း Code (ဢၼ်လႅၵ်ႈလၢႆႈလႆႈယၢပ်ႇ)။
* **Properties File:** ၾၢႆႇဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသိမ်း Key-Value pairs တွၼ်ႈတႃႇ Config။
* **Annotation `@Value`:** ၶိူင်ႈမိုဝ်း ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ "ၸၼ်" (Inject) ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Properties မႃးသႂ်ႇၼႂ်း Variables။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈ Port Server ႁႂ်ႈပဵၼ် 9090 ၼႆ ႁဝ်းတေလႆႈတႅမ်ႈ Key ဢၼ်ၸိုဝ်ႈဝႃႈသင်?
2. သင်ႁဝ်းတႅမ်ႈ `server.port=8081` ဝႆႉၼႂ်းၾၢႆႇ Properties ယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမႄး Code Java ႁဝ်းယူႇႁႃႉ တွၼ်ႈတႃႇႁႂ်ႈမၼ်းႁူႉၸၵ်း Port မႂ်ႇ? (လူဝ်ႇ ႁႃႉ ဢမ်ႇလူဝ်ႇ?)