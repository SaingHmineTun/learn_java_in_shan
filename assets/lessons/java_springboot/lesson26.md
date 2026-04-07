# Lesson 26: "Bean Validation with Hibernate Validator"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသွၼ်လၢႆး "ၵူတ်ႇထတ်း" (Validate) ၶေႃႈမုၼ်းဢၼ် User သူင်ႇမႃးၼႆၶႃႈ။ 
သင် User သူင်ႇလိၵ်ႈပဝ်ႇမႃး ဢမ်ႇၼၼ် တႅမ်ႈလိၵ်ႈယၢဝ်းပူၼ်ႉတီႈ ႁဝ်းတေဢမ်ႇပၼ်မၼ်းၶဝ်ႈၵႂႃႇၼႂ်း Database ၶႃႈ။

### 1. Bean Validation ၼႆႉ ပဵၼ်သင်?
မၼ်းပဵၼ် Standard ၶွင် Java ဢၼ်ၸႂ်ႉ **Annotations** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ "ပိူင်ၵၢၼ်" (Rules) ၶွင်ၶေႃႈမုၼ်းၶႃႈ။ 
**Hibernate Validator** သမ်ႉပဵၼ်တူဝ်ဢၼ်မႃးႁဵတ်းၵၢၼ်ပၼ်တႄႉတႄႉ (Implementation) ၼၼ်ႉၶႃႈ။



---

### 2. ၵၢၼ်သႂ်ႇ Dependency
ဢွၼ်တၢင်းသုတ်း ႁဝ်းတေလႆႈၵႂႃႇထႅမ် Dependency တူဝ်ၼႆႉ ဝႆႉၼႂ်း `pom.xml` ၶႃႈ:

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-validation</artifactId>
</dependency>
```

---

### 3. ၵၢၼ်ၸႂ်ႉ Annotations ၼႂ်း DTO
ႁဝ်းတေမႃးမႄး `WordDTO.java` ဢမ်ႇၼၼ် `Word.java` (Entity) ႁဝ်း ႁႂ်ႈမၼ်းမီးပိူင်ၵၢၼ်ၶႃႈ:

* **`@NotNull`**: ဢမ်ႇပၼ်ဝႆႉပဝ်ႇ (Null)။
* **`@NotEmpty`**: ဢမ်ႇပၼ်ပဵၼ် List ဢမ်ႇၼၼ် String ဢၼ်ပဝ်ႇ။
* **`@NotBlank`**: ဢမ်ႇပၼ်ဝႆႉပဝ်ႇ လႄႈ ဢမ်ႇပၼ်မီး Space လၢႆလၢႆၵူၺ်း (ၼႆႉလီသုတ်းတွၼ်ႈတႃႇ String)။
* **`@Size(min, max)`**: မၵ်းမၼ်ႈတၢင်းယၢဝ်းတူဝ်လိၵ်ႈ။

**တူဝ်ယၢင်ႈ Code:**
```java
public class WordDTO {

    @NotBlank(message = "လိၵ်ႈတႆး လူဝ်ႇလႆႈသႂ်ႇဝႆႉၶႃႈ!")
    private String shanWord;

    @NotBlank(message = "English meaning cannot be blank")
    @Size(min = 2, message = "တေလႆႈမီးတူဝ်လိၵ်ႈယၢဝ်းလိူဝ် 2 တူဝ်ၶႃႈ")
    private String englishMeaning;

    @NotBlank(message = "Part of speech is required")
    private String partOfSpeech;
}
```



---

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇမီး Message?
မိူဝ်ႈ User သူင်ႇၶေႃႈမုၼ်းၽိတ်းမႃးၼၼ်ႉ **Validation Message** ၼႆႉ တေပဵၼ်တူဝ်ဢၼ်သူင်ႇပၼ် User ႁႂ်ႈၶဝ်ပွင်ႇၸႂ်ဝႃႈ "ၵွပ်ႈသင်မၼ်းၸင်ႇၽိတ်း" ၼႆၶႃႈ။

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constraint:** ၶေႃႈၶတ်းၶႂၢင် ဢမ်ႇၼၼ် ပိူင်ၵၢၼ်ဢၼ်ႁဝ်း မၵ်းမၼ်ႈဝႆႉ။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းမၢၼ်ႇၸွမ်း Constraint ႁႃႉ?
* **Metadata:** ၶေႃႈမုၼ်းဢၼ် သပ်းလႅင်းပၼ်ၶေႃႈမုၼ်း (Annotation ၼႆႉပဵၼ် Metadata ၶႃႈ)။
* **Hibernate Validator:** တူဝ်ႁဵတ်းၵၢၼ်ပိူင်လူင် တွၼ်ႈတႃႇ Bean Validation။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  Annotation **`@NotBlank`** လႄႈ **`@NotNull`** ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်?
2.  သင်ၸဝ်ႈၶူးၶႂ်ႈမၵ်းမၼ်ႈဝႃႈ "တူဝ်လိၵ်ႈဢင်းၵိတ်း လူဝ်ႇလႆႈမီး တၢင်းယၢဝ်း တီႈဢေႇသုတ်း 5 တူဝ်" ၼၼ်ႉ တေလႆႈၸႂ်ႉ Annotation လႂ်ၶႃႈ?
