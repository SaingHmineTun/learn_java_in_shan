# Lesson 10: "Lombok Deep Dive" (ၵၢၼ်ၸႂ်ႉ Lombok ႁႂ်ႈတိူဝ်းၶႅမ်ႉ)

မိူဝ်ႈႁဝ်းတႅမ်ႈ Java Class ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းၵႆႉလႆႈတႅမ်ႈ Code ဢၼ်သွၼ်ႉၵၼ်ၼမ်ၼႃႇ (Boilerplate) မိူၼ်ၼင်ႇ Getter, Setter, လႄႈ Constructor ၶႃႈ။
**Lombok** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်တေမႃး "တႅမ်ႈတႅၼ်း" ပၼ်ႁဝ်း ႁႂ်ႈ Code ႁဝ်းၵိုတ်းဢေႇဢေႇၵူၺ်းၶႃႈ။

### 1. @Data: တူဝ်ၸွႆႈၶိုၵ်ႉ (The All-in-One)
Annotation တူဝ်ၼႆႉ မၼ်းႁူမ်ႈဢဝ် Annotations တင်းၼမ်ဝႆႉၸွမ်ၵၼ်ၶႃႈ:
* **Getter/Setter:** တွၼ်ႈတႃႇလူလႄႈမႄးၶေႃႈမုၼ်း။
* **toString():** တွၼ်ႈတႃႇ Print တူၺ်းၶေႃႈမုၼ်းၼႂ်း Object ႁႂ်ႈလူငၢႆႈ။
* **equals() & hashCode():** တွၼ်ႈတႃႇၸႅၵ်ႇဝႃႈ Object သွင်တူဝ်မိူၼ်ၵၼ်ႁႃႉ။



### 2. Constructors (ၵၢၼ်သၢင်ႈ Object)
ၼႂ်းၵၢၼ်ၸႂ်ႉ JPA ႁဝ်းလူဝ်ႇမီး Constructor လၢႆလၢႆပိူင်ၶႃႈ:
* **`@NoArgsConstructor`:** သၢင်ႈ Constructor ပဝ်ႇ (ဢမ်ႇပႃး Parameter)။ JPA လူဝ်ႇတူဝ်ၼႆႉ တွၼ်ႈတႃႇသၢင်ႈ Object မိူဝ်ႈလူၶေႃႈမုၼ်းတီႈ Database။
* **`@AllArgsConstructor`:** သၢင်ႈ Constructor ဢၼ်ပႃး Fields တင်းမူတ်း။ ၸွႆးႁႂ်ႈႁဝ်းသႂ်ႇၶေႃႈမုၼ်းလႆႈၵမ်းလဵဝ် မိူဝ်ႈသၢင်ႈ Object မႂ်ႇ။

### 3. @Builder: လၢႆးသၢင်ႈ Object ဢၼ်ႁၢင်ႈလီ
တူဝ်ၼႆႉပဵၼ်တူဝ်ဢၼ် Developer ၶဝ်လုမ်းလႆႈသုတ်းၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းသၢင်ႈ Object လႆႈ "မိူၼ်လၢတ်ႈၵႂၢမ်း" ၶႃႈ:

```java
Word myWord = Word.builder()
                .shanWord("ၵိၼ်")
                .englishMeaning("Eat")
                .partOfSpeech("v")
                .build();
```
*လွင်ႈလီ:* ႁဝ်းဢမ်ႇလူဝ်ႇမၢႆတွင်းဝႃႈ တူဝ်လႂ်ယူႇၼႃႈ ယူႇလင် မိူၼ်ၼင်ႇၼႂ်း Constructor ပိူင်ၵဝ်ႇၶႃႈ။

---

### 4. ၵၢၼ်မႄး `Word` Entity ႁႂ်ႈတူဝ်ႈတႅတ်ႈ
ႁႂ်ႈၸဝ်ႈၶူးထႅမ်သႂ်ႇ Annotations ၸိူဝ်းၼႆႉၼိူဝ် Class `Word` ၶႃႈ:

```java
@Entity
@Table(name = "words")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Word {
    // ... fields ...
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Boilerplate Code:** Code ဢၼ်ႁဝ်း တေလႆႈၵမ်းၵမ်းတႅမ်ႈ ၵူၺ်းၵႃႈဢမ်ႇပႆႇပဵၼ် Logic ပိူင်လူင် (မိူၼ်ၼင်ႇ Getter/Setter)။
* **Annotation Processor:** ၶိူင်ႈမိုဝ်းၼႂ်း IntelliJ ဢၼ်လူဝ်ႇပိုတ်ႇ (Enable) ဝႆႉ တွၼ်ႈတႃႇႁႂ်ႈ Lombok ႁဵတ်းၵၢၼ်လႆႈ။
* **Constructor:** Method ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ Object မႂ်ႇ။
* **Builder Pattern:** လၢႆးသၢင်ႈ Object ဢၼ်ၸွႆးႁႂ်ႈ Code လူငၢႆႈ လႄႈ လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းလႆႈတႅတ်ႈတေႃး။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၸႂ်ႉ **`@Data`** ယဝ်ႉၼၼ်ႉ ႁဝ်းတိုၵ်ႉလူဝ်ႇတႅမ်ႈ `public String getShanWord()` ႁင်းၵူၺ်းယူႇႁႃႉ?
2. ၵွပ်ႈသင် JPA ၸင်ႇလူဝ်ႇ **`@NoArgsConstructor`** တွၼ်ႈတႃႇ Entity ၶွင်ႁဝ်း?