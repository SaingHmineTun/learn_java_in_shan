# Lesson 9: "Creating the Word Entity" (ၵၢၼ်သၢင်ႈ Class Entity တွၼ်ႈတႃႇလိၵ်ႈတႆး)

ၼႂ်း JPA ၼၼ်ႉ Class ဢၼ်ႁဝ်းတေဢဝ်ၵဵပ်းဝႆႉၼႂ်း Database ႁဝ်းႁွင်ႉဝႃႈ **Entity** ၶႃႈ။ 
တွၼ်ႈတႃႇ App **TaiGlish** ႁဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး Entity ဢၼ်ၸိုဝ်ႈဝႃႈ `Word` တွၼ်ႈတႃႇသိမ်း ၶေႃႈၵႂၢမ်းတႆး လႄႈ ၶေႃႈပိၼ်ႇမၼ်းၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈ Package `model`
ႁဝ်းမႃးသၢင်ႈ Package မႂ်ႇၼိုင်ႈဢၼ် ၸိုဝ်ႈဝႃႈ `it.saimao.taiglish.model` သေ သၢင်ႈၾၢႆႇ Java ဢၼ်ၸိုဝ်ႈဝႃႈ `Word.java` ၶဝ်ႈၵႂႃႇၼႂ်းမၼ်းၶႃႈ။

### 2. ၵၢၼ်တႅမ်ႈ Code `Word` Entity
ႁဝ်းတေၸႂ်ႉ Annotation ၶွင် JPA တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ Class ၼႆႉ တေပဵၼ် Table ၼႂ်း MySQL ၶႃႈ။

```java
package it.saimao.taiglish.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity // မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် Table ၼႂ်း Database
@Table(name = "words") // တင်ႈၸိုဝ်ႈ Table ၼႂ်း MySQL ဝႃႈ "words"
@Data // Lombok: ၸွႆးသၢင်ႈ Getter, Setter, toString ႁင်းၵူၺ်း
public class Word {

    @Id // မၵ်းမၼ်ႈပဵၼ် Primary Key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ႁႂ်ႈ ID တူဝ်ၼပ်ႉၶိုၼ်ႈႁင်းၵူၺ်း (Auto Increment)
    private Long id;

    @Column(name = "shan_word", nullable = false) // မၵ်းမၼ်ႈၸိုဝ်ႈ Column လႄႈ ဢမ်ႇပၼ်ဝႆႉပဝ်ႇ
    private String shanWord;

    @Column(name = "english_meaning", nullable = false)
    private String englishMeaning;

    @Column(name = "part_of_speech")
    private String partOfSpeech; // တူဝ်ၼၢမ်ႇ၊ တူဝ်ၵိရိယႃႇ
}
```



---

### 3. Annotation ဢၼ်လမ်ႇလွင်ႈၼႂ်း JPA
* **`@Entity`:** သင်ဢမ်ႇသႂ်ႇတူဝ်ၼႆႉ Spring Boot တေဢမ်ႇႁူႉၸၵ်းဝႃႈ Class ၼႆႉ တေလႆႈၵႂႃႇသၢင်ႈပဵၼ် Table ၶႃႈ။
* **`@Id`:** ၵူႈ Table တေလႆႈမီး Primary Key တွၼ်ႈတႃႇမၢႆတွင်းၶေႃႈမုၼ်းဢၼ်ဢမ်ႇသွၼ်ႉၵၼ်။
* **`@GeneratedValue`:** ၼႆႉမိူၼ်ၼင်ႇ `AUTO_INCREMENT` ၼႂ်း MySQL ၶႃႈ။ ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ ID ႁင်းၵူၺ်း၊ Hibernate တေၸတ်းၵၢၼ်ပၼ်ၶႃႈ။
* **`@Column`:** ၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ ၸိုဝ်ႈ Column ဢမ်ႇၼၼ် တၢင်းယၢဝ်းလိၵ်ႈ (Length) ၼႂ်း Database။

### 4. ၵၢၼ်ၵူတ်ႇထတ်း (Check Result)
သင်ႁဝ်းတႅမ်ႈ Class ၼႆႉယဝ်ႉယဝ်ႉၼၼ်ႉ ႁႂ်ႈ **Restart App** ၵမ်းၼိုင်ႈၶႃႈ။
1. တူၺ်းၼႂ်း **Console (Log)**: ႁဝ်းတေႁၼ်လိၵ်ႈ `create table words...` ၼႄဝႆႉ (ၵွပ်ႈႁဝ်းသႂ်ႇ `show-sql=true` ဝႆႉ)။
2. ပိုတ်ႇ **MySQL Workbench** ဢမ်ႇၼၼ် **DBeaver**: ႁဝ်းတေႁၼ် Table ဢၼ်ၸိုဝ်ႈဝႃႈ `words` ဢွၵ်ႇမႃးႁင်းၵူၺ်းၼႂ်း Database `taiglish` ယဝ်ႉၶႃႈ!

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Entity:** Class Java ဢၼ်ၵွင်ႉၸူး Database Table။
* **Primary Key (PK):** ၶေႃႈမုၼ်းဢၼ်ၸႂ်ႉမၢႆတွင်း တူဝ်လႂ်တူဝ်ၼၼ်ႉ ႁႂ်ႈပႅၵ်ႇပိူင်ႈၵၼ် (မိူၼ်ၼင်ႇ ID)။
* **Auto Increment:** ၵၢၼ်သင်ႇႁႂ်ႈတူဝ်ၼပ်ႉ ID ၶိုၼ်ႈၵႂႃႇႁင်းၵူၺ်း (1, 2, 3...)။
* **Nullable:** ၵၢၼ်မၵ်းမၼ်ႈဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ ဝႆႉပဝ်ႇ (Null) လႆႈ ႁႃႉ ဢမ်ႇလႆႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. Annotation တူဝ်လႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ **Primary Key**?
2. သင်ႁဝ်းဢမ်ႇသႂ်ႇ Annotation **`@Table`** ဝႆႉၼၼ်ႉ Hibernate တေပၼ်ၸိုဝ်ႈ Table ႁဝ်းပဵၼ်ၸိူင်ႉႁိုဝ်? (တေဢဝ်ၸိုဝ်ႈ Class မႃးပၼ် ႁႃႉ? ဢမ်ႇၼၼ် တေပဵၼ် Error?)