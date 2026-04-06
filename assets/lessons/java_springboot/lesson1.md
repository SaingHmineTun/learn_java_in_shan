# Lesson 1: "Spring Boot Awakening" (တိုၼ်ႇၾိုၼ်ႉၵၢၼ်တႅမ်ႈ Java)

တွၼ်ႈတႃႇတေတႅမ်ႈ Application (API) ၼိုင်ႈဢၼ်ၼၼ်ႉ မိူဝ်ႈၵွၼ်ႇႁဝ်းလႆႈမႄး Config ၼမ်ၼႃႇၶႃႈ။ 
မိူဝ်ႈလဵဝ် Spring Boot မႃးၸွႆးႁႂ်ႈၵၢၼ်တႅမ်ႈ Web API ႁဝ်း ငၢႆႈမိူၼ်ၼင်ႇ "ၵိၼ်ၵူၺ်ႈ" ယဝ်ႉၶႃႈ။

### 1. Spring Boot ၼႆႉ ပဵၼ်သင်?
သင်ႁဝ်းတေတႅမ်ႈ Java Web ပိူင်ၵဝ်ႇၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈဢဝ် "သႃႇပႃႇ" (Server) မႃးသႂ်ႇ၊ လူဝ်ႇလႆႈမႄး "ၶိူင်ႈ" (XML Config) ၼမ်ၼႃႇၶႃႈ။ 
ၵူၺ်းၵႃႈ **Spring Boot** ၼႆႉ မိူၼ်ၼင်ႇ "ၵႃးဢၼ်တူဝ်တႅတ်ႈ" (Opinionated Framework) ဢၼ်မီးတင်း သႃႇပႃႇ (Embedded Tomcat)၊ မီးတင်း ၼမ်ႉမၼ်း (Dependencies) မႃးပႃးၵမ်းလဵဝ်ၶႃႈ။

* **Spring Framework:** ပဵၼ်ပိုၼ်ႉထၢၼ် (Foundation) ဢၼ်ယႂ်ႇလူင်။
* **Spring Boot:** ပဵၼ်တူဝ်ၸွႆး (Helper) ဢၼ်ႁႂ်ႈ Spring ႁဵတ်းၵၢၼ်လႆႈ ဝႆးဝႆးလူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Config ၼမ်ၶႃႈ။

### 2. ပိူင်သၢင်ႈ IoC (Inversion of Control)
ၼႂ်း Java Basic ၼၼ်ႉ ႁဝ်းလႆႈသၢင်ႈ Object ႁင်းၵူၺ်း (Manual):
```java
Word word = new Word(); // ႁဝ်းပဵၼ်ၵေႃႉၵုမ်းၵမ်
```
ၵူၺ်းၵႃႈၼႂ်း **Spring Boot** ၼၼ်ႉ ႁဝ်းတေဢဝ် "ပုၼ်ႈၽွၼ်း" ၼၼ်ႉပၼ် Framework ၶႃႈ။ 
မၼ်းတေပဵၼ်ၵေႃႉသၢင်ႈ Object ပၼ်ႁဝ်း ၼႂ်းၶိူင်ႈဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Spring Container** ၼၼ်ႉၶႃႈ။



---

### 3. ၵွပ်ႈသင်ႁဝ်းလႆႈလိူၵ်ႈၸႂ်ႉ Spring Boot တွၼ်ႈတႃႇ TaiGlish?
* **Auto-Configuration:** မၼ်းတေၸတ်းၵၢၼ်ပၼ်ႁင်းၵူၺ်း (Convention over Configuration)။
* **Starter Dependencies:** ႁဝ်းသႂ်ႇၶဝ်ႈ (Import) ဢဝ်ၶိူင်ႈမၼ်းမႃးၸႂ်ႉလႆႈငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ Spring Web, Spring Data)။
* **Embedded Server:** ဢမ်ႇလူဝ်ႇလူတ်ႇလူင်း Tomcat မႃးသႂ်ႇသေမႄး Config ႁင်းၵူၺ်း။ မၼ်းတေႁဵတ်းပၼ်ႁဝ်း Run လႆႈၵမ်းလဵဝ်ၶႃႈ။

### 4. ၶိူင်ႈမိုဝ်းဢၼ်တေၸႂ်ႉ (The Ecosystem)
ႁဝ်းတေလႆႈ သႂ်ႇၸႂ်ႉၶိူင်ႈၸိူဝ်းၼႆႉၶႃႈ:
* **JDK 17/21:** ပဵၼ်ဝိူဝ်းသျိၼ်း (Version) ဢၼ်မႂ်ႇသုတ်း။
* **IntelliJ IDEA:** ၶိူင်ႈတႅမ်ႈ Code ဢၼ်ငၢႆႈသုတ်းတွၼ်ႈတႃႇ Java။
* **Maven:** ၶိူင်ႈၸတ်းၵၢၼ် Dependency။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Framework:** ပိူင်သၢင်ႈ ဢၼ်မီးၶိူင်ႈမိုဝ်းတူဝ်ႈတႅတ်ႈ တွၼ်ႈတႃႇတႅမ်ႈ App။
* **IoC (Inversion of Control):** ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်းပၼ် Framework ပဵၼ်ၵေႃႉၵုမ်းၵမ် Object။
* **Dependency:** Library ဢမ်ႇၼၼ် ၶိူင်ႈမိုဝ်းတၢင်ႇဢၼ် ဢၼ် App ႁဝ်းလူဝ်ႇၸႂ်ႉ။
* **Embedded Server:** Server (Tomcat) ဢၼ်မီးဝႆႉၼႂ်း Code ႁဝ်းၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇလူတ်ႇလူင်းမႃးသႂ်ႇၽၢႆႇၼွၵ်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်းၵႄႈ **Spring Framework** တင်း **Spring Boot** ၼၼ်ႉ တူဝ်လႂ်ဢၼ်ၸွႆးႁႂ်ႈႁဝ်း Start Project လႆႈဝႆးလိူဝ်?
2. ပေႃးႁဝ်းတႅမ်ႈ Code `new Word()` ႁင်းၵူၺ်းၼၼ်ႉ မၼ်းပဵၼ်ၵၢၼ်ၸႂ်ႉ IoC ယူႇႁႃႉ? (ၸႂ်ႈ ႁႃႉ ဢမ်ႇၸႂ်ႈ?)