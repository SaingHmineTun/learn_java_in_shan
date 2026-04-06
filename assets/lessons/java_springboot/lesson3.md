# Lesson 3: "Project Anatomy & Main Class" (ပိူင်သၢင်ႈ Project လႄႈ ၾၢႆႇငဝ်ႈတိုၼ်း)

မိူဝ်ႈႁဝ်းပိုတ်ႇ Project **TaiGlish** ႁဝ်းၶဝ်ႈမႃးၼႂ်း IntelliJ ယဝ်ႉၼၼ်ႉ ႁဝ်းတေႁၼ် Folder တင်းၼမ်ၶႃႈ။ 
ၵူၺ်းၵႃႈ ဢၼ်ႁဝ်းလူဝ်ႇသႂ်ႇၸႂ်တႄႉမီး 3-4 တူဝ်ၼႆႉၵူၺ်းၶႃႈ။

### 1. ပိူင်သၢင်ႈ Folder (Project Structure)
* **`src/main/java`:** တီႈၼႆႈပဵၼ် "ႁူဝ်ၸႂ်" App ႁဝ်းၶႃႈ။ Code Java တင်းမူတ်း တေလႆႈတႅမ်ႈဝႆႉတီႈၼႆႉ။
* **`src/main/resources`:** တီႈၼႆႈသိမ်း "ၶေႃႈမုၼ်းၽၢႆႇၼွၵ်ႈ" မိူၼ်ၼင်ႇ ၾၢႆႇ Config (`application.properties`) ဢမ်ႇၼၼ် ၾၢႆႇ HTML/CSS (သင်မီး)။
* **`pom.xml`:** ပဵၼ်ၾၢႆႇ "သဵၼ်ႈမၢႆ" ၶွင် Maven ဢၼ်မၼ်းတေမၢႆဝႆႉဝႃႈ App ႁဝ်းၸႂ်ႉ Dependency တူဝ်လႂ်ပႃး။

### 2. Main Class (ၾၢႆႇငဝ်ႈတိုၼ်း)
ၼႂ်း Package `it.saimao.taiglish` ၼၼ်ႉ ႁဝ်းတေႁၼ်ၾၢႆႇၼိုင်ႈဢၼ် ၸိုဝ်ႈဝႃႈ `TaiglishApplication.java` ၶႃႈ။ မၼ်းတေမီး Code ၸိူင်ႉၼႆ:

```java
@SpringBootApplication
public class TaiglishApplication {
    public static void main(String[] args) {
        SpringApplication.run(TaiglishApplication.class, args);
    }
}
```

* **`@SpringBootApplication`:** ၼႆႉပဵၼ် "တီႈတေႇငဝ်ႈ" (Power Button) ၶွင် App ႁဝ်းၶႃႈ။ မၼ်းတေသင်ႇႁႂ်ႈ Spring Boot တႄႇႁဵတ်းၵၢၼ် (Auto-scan) ႁႃ Code ၸိူဝ်းဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။
* **`SpringApplication.run`:** ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈ Server (Tomcat) တႄႇလႅၼ်ႈ (Start) ၶႃႈ။



---

### 3. ၵၢၼ် Run App ၵမ်းဢွၼ်တၢင်းသုတ်း
ႁဝ်းၼဵၵ်း (Click) တီႈ **Play Button** (သီၶဵဝ်) တီႈၼႂ်း IntelliJ သေတူၺ်းတီႈ **Console** (Log) ၶႃႈ။ သင်ႁဝ်းႁၼ်လိၵ်ႈဝႃႈ:
`Tomcat started on port(s): 8080 (http)`
ၼၼ်ႉ မၢႆထိုင်ဝႃႈ App **TaiGlish** ႁဝ်း တႄႇလႅၼ်ႈယဝ်ႉယဝ်ႉၶႃႈ။

### 4. ၾၢႆႇ `application.properties`
ၾၢႆႇၼႆႉမီးဝႆႉၼႂ်း `src/main/resources` ၶႃႈ။ မၼ်းပဵၼ်တီႈ "သင်ႇၵၢၼ်" (Config) ၸိူဝ်းဢၼ်ႁဝ်းၶႂ်ႈမႄးၶႃႈ။ မိူၼ်ၼင်ႇ:
`spring.application.name=taiglish`
`server.port=8081` (သင်ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈ Port Server ႁဝ်း)

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Main Class:** ၾၢႆႇ Java ဢၼ်မီး Method `main` တွၼ်ႈတႃႇတႄႇ Run Application။
* **Package:** ၾူဝ်ႇတႃႇ (Folder) ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၸတ်းၵၢၼ် ၾၢႆႇ Java ႁႂ်ႈမီးပိူင်မီးသၢင်ႈ (မိူၼ်ၼင်ႇ `it.saimao.taiglish`)။
* **Properties File:** ၾၢႆႇတွၼ်ႈတႃႇသိမ်း Settings/Config ၶွင် App။
* **Console/Log:** တီႈဢၼ် App တေၼႄလိၵ်ႈပၼ်ႁဝ်းႁူႉဝႃႈ မၼ်းႁဵတ်းၵၢၼ်သင်ယူႇ ဢမ်ႇၼၼ် မီး Error သင်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. Annotation တူဝ်လႂ် ဢၼ်ပဵၼ် "တီႈတေႇငဝ်ႈ" (Power Button) တွၼ်ႈတႃႇသင်ႇႁႂ်ႈ Spring Boot တႄႇႁဵတ်းၵၢၼ်?
2. သင်ႁဝ်းၶႂ်ႈမႄး Port ၶွင် Server ႁဝ်း (မိူၼ်ၼင်ႇ 8080 ၵႂႃႇၸူး 9090) ၼၼ်ႉ ႁဝ်းတေလႆႈၵႂႃႇမႄးတီႈၾၢႆႇလႂ်?