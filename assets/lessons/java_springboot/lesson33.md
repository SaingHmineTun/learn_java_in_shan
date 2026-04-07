# Lesson 33: "API Documentation with Swagger (SpringDoc)"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးၸႂ်ႉ **SpringDoc OpenAPI** တွၼ်ႈတႃႇ Generate Website ဢၼ်ၼႄသဵၼ်ႈတၢင်း (Endpoints) တင်းမူတ်းၼႂ်း App ႁဝ်း ႁူမ်ႈတင်းလၢႆးၸၢမ်း API ၼိူဝ် Browser ၵမ်းလဵဝ်ၶႃႈ။

### 1. Swagger / OpenAPI ၼႆႉ ပဵၼ်သင်?
မၼ်းပဵၼ်ၶိူင်ႈမိုဝ်း ဢၼ်တေလူတူၺ်း Code Controller ႁဝ်း သေသၢင်ႈလိၵ်ႈသပ်းလႅင်း (Documentation) ႁင်းၵူၺ်း (Automatically) ၶႃႈ။
* **Interactive UI:** ႁဝ်းၸၢင်ႈတဵၵ်း "Try it out" သေၸၢမ်း API လႆႈမိူၼ်ၼင်ႇ Postman ၶႃႈ။
* **Standard:** မၼ်းပဵၼ် Standard ဢၼ် Developer တင်းလူၵ်ႈ ၸႂ်ႉၵၼ်ၶႃႈ။



---

### 2. ၵၢၼ်သႂ်ႇ Dependency
ႁဝ်းၵႂႃႇထႅမ် Dependency တႂ်ႈၼႆႉ ဝႆႉၼႂ်း `pom.xml` ၶႃႈ:

```xml
<!--  Use 3.0.0 to work with Spring Boot 4      -->
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
    <version>3.0.0-RC1</version>
</dependency>
```

---

### 3. လၢႆးပိုတ်ႇၸႂ်ႉတိုဝ်း (How to Access)
ဝၢႆးသေႁဝ်း Restart App ယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈၶဝ်ႈတူၺ်း Swagger UI လႆႈတီႈ URL ၼႆႉၶႃႈ:
* **UI DOC:** `http://localhost:8081/swagger-ui/index.html`
* **API DOC:** `http://localhost:8081/v3/api-docs`



---

### 4. ၵၢၼ်မၵ်းမၼ်ႈ (Customizing) လိၵ်ႈသပ်းလႅင်း
ႁဝ်းၸၢင်ႈသႂ်ႇ Annotation တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ API ၼႆႉၸႂ်ႉႁဵတ်းသင်ၶႃႈ:

* **`@Operation`**: သပ်းလႅင်းၼႃႈတီႈၶွင် Method။
* **`@ApiResponse`**: သပ်းလႅင်း Status Code ဢၼ်တေတွပ်ႇပၼ်။

**တူဝ်ယၢင်ႈၼႂ်း `WordController`:**
```java
@Operation(summary = "ႁႃလိၵ်ႈတႆးလူၺ်ႈ ID", description = "တွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်းလိၵ်ႈတႆး 1 ၶေႃႈ လူၺ်ႈၸႂ်ႉ ID ၶွင်မၼ်း")
@GetMapping("/{id}")
public WordDTO getWordById(@PathVariable Long id) {
    return wordService.getWordById(id);
}
```

---

### 5. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Swagger?
1. **Time Saving:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Document ၼႂ်း Word/Excel သေသူင်ႇပၼ်ပိူၼ်ႈယဝ်ႉ။
2. **Always Up-to-date:** ပေႃးႁဝ်းမႄး Code ၼႆ Swagger ၵေႃႈတေမႄးၸွမ်းႁင်းၵူၺ်းၶႃႈ။
3. **Collaboration:** ၸွႆးႁႂ်ႈၵူၼ်းတႅမ်ႈ Flutter ၶဝ်ႁူႉဝႃႈ တေလႆႈသူင်ႇ JSON ႁၢင်ႈၾၢင်ၸိူင်ႉႁိုဝ်မႃးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **OpenAPI:** ၸိုဝ်ႈ Standard ၶွင်ၵၢၼ်တႅမ်ႈ API Documentation။
* **Swagger UI:** Website ဢၼ်ၼႄ JSON ၶွင် OpenAPI ႁႂ်ႈလူငၢႆႈ လႄႈ ၸၢမ်းလႆႈ။
* **Annotation-based:** ၵၢၼ်ၸႂ်ႉ Annotation တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Logic ဢမ်ႇၼၼ် Documentation။
* **Interactive:** ၵၢၼ်ဢၼ်ႁဝ်းတဵၵ်းလႅၼ်ႈ (Click) သေ တွပ်ႇၵႂၢမ်းၵၼ်လႆႈၵမ်းလဵဝ်။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. URL လႂ် ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉ တွၼ်ႈတႃႇပိုတ်ႇတူၺ်း **Swagger UI**?
2. Annotation လႂ် ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉ တွၼ်ႈတႃႇသပ်းလႅင်းၼႃႈတီႈ (Summary) ၶွင် API Endpoint?

---