# Lesson 17: "Error Handling & Optional" (ၵၢၼ်ၸတ်းၵၢၼ် Error လႄႈ Optional)

ၼႂ်း Java ပိူင်ၵဝ်ႇၼၼ်ႉ သင်ႁဝ်းႁႃၶေႃႈမုၼ်းၼႂ်း Database ဢမ်ႇႁၼ်ၼႆ မၼ်းၵႆႉတွပ်ႇပၼ် `null` သေ ႁဵတ်းႁႂ်ႈ App ႁဝ်းမီးပၼ်ႁႃ **NullPointerException (NPE)** ၶႃႈ။ 
ၼႂ်း Spring Boot ႁဝ်းၸႂ်ႉ **Optional** တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃၼႆႉၶႃႈ။

### 1. Java `Optional<T>` ၼႆႉ ပဵၼ်သင်?
`Optional` မိူၼ်ၼင်ႇ "ၵွၵ်း" ဢၼ်ပဝ်ႇဝႆႉၶႃႈ။
* သင်မီးၶေႃႈမုၼ်းၼႆ ၼႂ်းၵွၵ်းၼၼ်ႉတေပႃး Object ဝႆႉ။
* သင်ဢမ်ႇမီးၶေႃႈမုၼ်း ၵွၵ်းၼၼ်ႉတေပဝ်ႇ (Empty) ဝႆႉ၊ ၵူၺ်းၵႃႈမၼ်းဢမ်ႇၸႂ်ႉ `null` ၶႃႈ။
  မၼ်းတေၸွႆးႁႂ်ႈႁဝ်း "ၵူတ်ႇထတ်း" (Check) လႆႈငၢႆႈငၢႆႈ ဢွၼ်တၢင်း တေၸႂ်ႉၶေႃႈမုၼ်းၶႃႈ။



### 2. ၵၢၼ်ၸႂ်ႉ Optional ၼႂ်း `WordService`
မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ `findById()` ၼႂ်း Repository ၼၼ်ႉ မၼ်းတေတွပ်ႇပၼ်ပဵၼ် `Optional<Word>` တႃႇသေႇၶႃႈ။

```java
public Word getWordById(Long id) {
    // ႁႃ Word တူၺ်း... သင်ဢမ်ႇႁၼ် ႁႂ်ႈ Throw Exception ပၼ်ၵမ်းလဵဝ်
    return wordRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("ဢမ်ႇႁၼ်လိၵ်ႈတႆး ဢၼ်မီး ID: " + id));
}
```

---

### 3. လၢႆးၸတ်းၵၢၼ် Error (Error Handling)
တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်း "တွပ်ႇၵႂၢမ်း" လႆႈလီလီ မိူဝ်ႈမီး Error ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ Methods ၸိူဝ်းၼႆႉၶႃႈ:
* **`.isPresent()`**: Check ဝႃႈမီးၶေႃႈမုၼ်းယူႇႁႃႉ?
* **`.orElse(defaultValue)`**: သင်ဢမ်ႇႁၼ် ႁႂ်ႈပၼ် Object တူဝ်တၢင် (Default)။
* **`.orElseThrow()`**: သင်ဢမ်ႇႁၼ် ႁႂ်ႈပိုတ်ႈပဵၼ် Error (Exception)။

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇလႆႈ Throw Exception?
1.  **Stop Execution:** ႁႂ်ႈ Code ႁဝ်းၵိုတ်းၵမ်းလဵဝ်၊ ယႃႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၽိတ်း ၵႂႃႇထႅင်ႈ။
2.  **User Feedback:** တွၼ်ႈတႃႇသူင်ႇလိၵ်ႈပၼ်ၵူၼ်းၸႂ်ႉတိုဝ်း (User) ႁႂ်ႈၶဝ်ပွင်ႇၸႂ်ဝႃႈ "ၵွပ်ႈသင်မၼ်းၸင်ႇၽိတ်း"။
3.  **Logging:** တွၼ်ႈတႃႇမၢႆတွင်းဝႆႉၼႂ်း Server ဝႃႈ မီး Error သင်ၵိူတ်ႇမႃးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Optional:** Wrapper Class ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇႁႄႉၵင်ႈ Null Values။
* **NullPointerException (NPE):** Error ဢၼ်ၵိူတ်ႇမႃး မိူဝ်ႈႁဝ်းၵႂႃႇၸႂ်ႉ Object ဢၼ်ပဝ်ႇဝႆႉ (Null)။
* **Exception Handling:** ၵၢၼ်ၸတ်းၵၢၼ် လႄႈ ၵၢၼ်ၵႄႈပၼ်ႁႃ မိူဝ်ႈ App မီး Error။
* **Functional Interface:** လၢႆးတႅမ်ႈ Code ဢၼ်ၸႂ်ႉ `() -> ...` (Lambda Expression) ၼႂ်း Optional။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းၸႂ်ႉ **`Optional`** ယဝ်ႉၼၼ်ႉ App ႁဝ်းတေယင်းမီးပၼ်ႁႃ **NullPointerException** ယူႇႁႃႉ?
2.  Method **`.orElseThrow()`** ၼႆႉ မီးၼႃႈတီႈသင်ၼႂ်းၵၢၼ်ၸတ်းၵၢၼ် Error?