# Lesson 11: "The Repository Layer" (ၵၢၼ်ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလူၺ်ႈ JPA)

ၼႂ်း Spring Boot ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ SQL Query (မိူၼ်ၼင်ႇ `SELECT * FROM words`) ႁင်းၵူၺ်းၼမ်ၼႃႇယဝ်ႉၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ **Repository** ဢၼ်ပဵၼ် Interface တွၼ်ႈတႃႇလၢတ်ႈတေႃႇတင်း Database ငၢႆႈငၢႆႈၶႃႈ။

### 1. Repository ၼႆႉ ပဵၼ်သင်?
Repository ပဵၼ် "ၸၼ်ႉ" (Layer) ဢၼ်ယူႇၵႄႈ **Java Code** ႁဝ်း လႄႈ **MySQL Database** ၶႃႈ။
* မၼ်းပႃး Method ၸိူင်ႉၼင်ႇ `save()`, `findAll()`, `findById()`, လႄႈ `delete()` ဝႆႉယဝ်ႉတူဝ်ႈၶႃႈ။



### 2. ၵၢၼ်သၢင်ႈ `WordRepository`
ဢွၼ်တၢင်းသုတ်ႉ ႁဝ်းၶူင်သၢင်ႈ Package မႂ်ႇၸိုဝ်ႈဝႃႈ `it.saimao.taiglish.repository` သေ သၢင်ႈၾၢႆႇဢၼ်ပဵၼ် **Interface** ၸိုဝ်ႈဝႃႈ `WordRepository` ၶႃႈ။

```java
package it.saimao.taiglish.repository;

import it.saimao.taiglish.model.Word;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository // မၢႆတွင်းဝႃႈ Interface ၼႆႉ တေၸတ်းၵၢၼ် Database
public interface WordRepository extends JpaRepository<Word, Long> {
    // ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code သင်ၼႂ်းၼႆႉၵေႃႈ ၸႂ်ႉလႆႈယဝ်ႉၶႃႈ!
}
```

* **`JpaRepository<Word, Long>`:** ႁဝ်းလၢတ်ႈပၼ် Spring Boot ဝႃႈ ႁဝ်းၶႂ်ႈၸတ်းၵၢၼ် Entity `Word` လႄႈ Primary Key (ID) ႁဝ်းပဵၼ် Type `Long` ၶႃႈ။

---

### 3. ၽွၼ်းလီၶွင် JpaRepository
မိူဝ်ႈႁဝ်း `extends JpaRepository` ယဝ်ႉၼၼ်ႉ ႁဝ်းတေလႆႈ Method ၸိူဝ်းၼႆႉမႃးၸႂ်ႉလႆႈ ၵမ်းလဵဝ်ၶႃႈ:
* **`repository.findAll()`**: လူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်းၼႂ်း Table `words`။
* **`repository.save(word)`**: သိမ်းၶေႃႈမုၼ်းမႂ်ႇ ဢမ်ႇၼၼ် မႄး (Update) ၶေႃႈမုၼ်းၵဝ်ႇ။
* **`repository.findById(id)`**: ႁႃၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ ID။
* **`repository.deleteById(id)`**: လူတ်းပႅတ်ႈၶေႃႈမုၼ်း။

### 4. ႁဵတ်းသင်ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code?
ၼႆႉပဵၼ် "ၼမ်ႉၵတ်ႉ" (Magic) ၶွင် **Spring Data JPA** ၶႃႈ။ Spring တေပဵၼ်ၵေႃႉသၢင်ႈ Class တႄႉမၼ်း (Proxy) ပၼ်ႁဝ်းၼႂ်း RAM မိူဝ်ႈ App လႅၼ်ႈယူႇၼၼ်ႉၶႃႈ။ မၼ်းတေပိၼ်ႇ Method ၸိူဝ်းၼၼ်ႉ ႁႂ်ႈပဵၼ် SQL ၵႂႃႇၸူး MySQL ႁင်းၵူၺ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Repository Layer:** ၸၼ်ႉဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၵွင်ႉလႄႈၸတ်းၵၢၼ်ၶေႃႈမုၼ်း (Data Access Layer)။
* **Interface:** ပိူင်သၢင်ႈဢၼ်မၵ်းမၼ်ႈ "သဵၼ်ႈမၢႆၵၢၼ်ႁဵတ်း" ၵူၺ်း၊ ဢမ်ႇပႆႇပႃး Code တႄႉမၼ်း။
* **Generic Types (`<Word, Long>`):** ၵၢၼ်မၵ်းမၼ်ႈဝႃႈ Repository ၼႆႉ တေၸႂ်ႉၸွမ်းတင်း Entity တူဝ်လႂ်။
* **CRUD:** မၢႆထိုင် **C**reate, **R**ead, **U**pdate, **D**elete (ၵၢၼ်ပိုၼ်ႉထၢၼ် 4 ယၢင်ႈၼႂ်း Database)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈသိမ်းၶေႃႈၵႂၢမ်းတႆးမႂ်ႇၼိုင်ႈၶေႃႈ ၶဝ်ႈၵႂႃႇၼႂ်း MySQL ၼၼ်ႉ ႁဝ်းလူဝ်ႇႁွင်ႉၸႂ်ႉ Method ဢၼ်ၸိုဝ်ႈဝႃႈသင် ၼႂ်း Repository?
2. ၼႂ်း `JpaRepository<Word, Long>` ၼၼ်ႉ... တူဝ် `Long` မၢႆထိုင်သင်ၶႃႈ?